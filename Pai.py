import requests
from bs4 import BeautifulSoup
from urllib.parse import urljoin
import time

# List payload XSS yang lebih bervariasi (untuk berbagai konteks HTML)
XSS_PAYLOADS = [
    "<script>alert(1)</script>",
    '"><script>alert(1)</script>',
    "<img src=x onerror=alert(1)>",
    "javascript:alert(1)",
    "';alert(1);//"
]

# Daftar direktori, file backup, dan panel admin yang lebih lengkap
SENSITIVE_PATHS = [
    "admin.php", "admin/", "admin/login.php", "panel/", "controlpanel/",
    "wp-admin/", "wp-config.php", "config.php", "config.bak", "config.old",
    ".env", ".git/", "database.sql", "db.sql", "backup.sql", "backup.zip",
    "backup/", "robots.txt", "phpinfo.php", "readme.html", "license.txt",
    "api/", "v1/", "v2/", "server-status", ".htaccess", "composer.json"
]

HEADERS = {
    'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AdvancedWebScanner/2.0'
}

def check_security_headers(headers):
    """[1] Memeriksa proteksi HTTP Headers website"""
    print("\n" + "="*50)
    print(" [1] ANALISIS HTTP SECURITY HEADERS")
    print("="*50)
    
    # Header yang WAJIB ada untuk website aman
    important_headers = {
        "Content-Security-Policy": "Mencegah XSS eksekusi skrip tidak dikenal.",
        "X-Frame-Options": "Mencegah Clickjacking (situs di-frame orang lain).",
        "X-Content-Type-Options": "Mencegah MIME-sniffing exploits.",
        "Strict-Transport-Security": "Memaksa koneksi HTTPS yang aman.",
        "Referrer-Policy": "Mengontrol informasi asal yang dibagikan."
    }
    
    missing_count = 0
    for header, desc in important_headers.items():
        if header not in headers and header.lower() not in headers:
            print(f"[-] MISSING: Header '{header}' tidak aktif!")
            print(f"    Dampak  : {desc}")
            missing_count += 1
        else:
            print(f"[+] AMAN   : Header '{header}' terdeteksi.")
            
    if missing_count == 0:
        print("[+] Sempurna! Semua header keamanan utama terpasang.")

def check_cookies(session_cookies):
    """[2] Memeriksa keamanan Cookie Sesi"""
    print("\n" + "="*50)
    print(" [2] ANALISIS KEAMANAN COOKIES")
    print("="*50)
    
    if not session_cookies:
        print("[+] Tidak ada cookie yang diset oleh aplikasi saat ini.")
        return

    for cookie in session_cookies:
        print(f"[*] Meneliti Cookie: '{cookie.name}'")
        if not cookie.has_nonstandard_attr('HttpOnly') and 'httponly' not in [k.lower() for k in cookie._rest.keys()]:
            print(" [!] PERINGATAN: Flag 'HttpOnly' TIDAK AKTIF! Jika web terkena XSS, cookie ini bisa dicuri hacker.")
        else:
            print(" [+] AMAN: Flag 'HttpOnly' aktif.")
            
        if not cookie.secure:
            print(" [!] PERINGATAN: Flag 'Secure' TIDAK AKTIF! Cookie dikirim lewat HTTP biasa (rawan intercept).")
        else:
            print(" [+] AMAN: Flag 'Secure' aktif.")

def scan_directories(base_url):
    """[3] Brute-forcing direktori sensitif"""
    print("\n" + "="*50)
    print(" [3] PEMINDAIAN FILE & JALUR SENSITIF (DIR BUSTER)")
    print("="*50)
    
    found = 0
    for path in SENSITIVE_PATHS:
        url = urljoin(base_url, path)
        try:
            # allow_redirects=False agar tahu letak asli redirect panel admin
            res = requests.get(url, headers=HEADERS, timeout=4, allow_redirects=False)
            
            if res.status_code in [200, 403, 301, 302]:
                print(f"[!] RENTAN/TERBUKA -> {url} (HTTP Status: {res.status_code})")
                found += 1
        except requests.exceptions.RequestException:
            pass
            
    print(f"[+] Selesai. Menemukan {found} jalur potensial dari {len(SENSITIVE_PATHS)} yang diuji.")

def check_csrf(form):
    """Mengecek apakah form punya token anti-CSRF"""
    for input_tag in form.find_all("input"):
        name = input_tag.attrs.get("name", "").lower()
        if "csrf" in name or "token" in name or "xsrf" in name:
            return True
    return False

def scan_xss_and_forms(url):
    """[4 & 5] Memindai Form untuk celah XSS dan proteksi CSRF"""
    print("\n" + "="*50)
    print(" [4 & 5] ANALISIS FORM (XSS & CSRF PROTECTION)")
    print("="*50)
    
    try:
        res = requests.get(url, headers=HEADERS, timeout=5)
        soup = BeautifulSoup(res.content, "html.parser")
        forms = soup.find_all("form")
    except Exception as e:
        print(f"[-] Gagal memproses form di halaman utama: {e}")
        return

    print(f"[+] Mendeteksi {len(forms)} form di halaman web.\n")
    
    for i, form in enumerate(forms, start=1):
        action = form.attrs.get("action", "")
        method = form.attrs.get("method", "get").lower()
        target_url = urljoin(url, action)
        
        print(f"[*] Memeriksa Form #{i} [Method: {method.upper()} -> Target: {target_url}]")
        
        # Cek CSRF
        if method == "post":
            if not check_csrf(form):
                print(" [!] FORM VULNERABLE: Form POST ini tidak memiliki CSRF Token! (Rawan manipulasi aksi user)")
            else:
                print(" [+] CSRF Check: Token keamanan terdeteksi di dalam form.")

        # Ambil input fields
        inputs = []
        for input_tag in form.find_all("input"):
            inp_name = input_tag.attrs.get("name")
            inp_type = input_tag.attrs.get("type", "text")
            if inp_name:
                inputs.append({"name": inp_name, "type": inp_type})
                
        # Lakukan fuzzing XSS
        xss_found = False
        for payload in XSS_PAYLOADS:
            data = {}
            for inp in inputs:
                if inp["type"] in ["text", "search", "email", "url"]:
                    data[inp["name"]] = payload
                else:
                    data[inp["name"]] = "test_data"
            
            try:
                if method == "post":
                    attack_res = requests.post(target_url, data=data, headers=HEADERS, timeout=5)
                else:
                    attack_res = requests.get(target_url, params=data, headers=HEADERS, timeout=5)
                
                # Validasi pintar: cek apakah payload kembali utuh tanpa encoding HTML
                if payload in attack_res.text:
                    print(f" [!] XSS VULNERABILITY DITEMUKAN!")
                    print(f"     -> Parameter Rentan: {inp['name']}")
                    print(f"     -> Payload Berhasil: {payload}")
                    xss_found = True
                    break
            except requests.exceptions.RequestException:
                pass
                
        if not xss_found and inputs:
            print(" [+] XSS Check: Input form tampaknya aman dari payload dasar.")

if __name__ == "__main__":
    print("="*60)
    print("      LENGKAP: Automated Web Vulnerability Scanner v2      ")
    print("="*60)
    target = input("Masukkan URL Target Lengkap (contoh: https://example.com/): ").strip()
    
    if target:
        if not target.startswith("http"):
            target = "http://" + target
            
        try:
            start_time = time.time()
            main_res = requests.get(target, headers=HEADERS, timeout=5)
            
            # Eksekusi semua modul pengujian komprehensif
            check_security_headers(main_res.headers)
            check_cookies(main_res.cookies)
            scan_directories(target)
            scan_xss_and_forms(target)
            
            print(f"\n[+] Pemindaian selesai dalam {round(time.time() - start_time, 2)} detik.")
        except requests.exceptions.RequestException as e:
            print(f"[-] Gagal terhubung ke target halaman utama: {e}")
    else:
        print("[-] URL wajib diisi.")
