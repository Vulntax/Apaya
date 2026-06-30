local api = loadstring(game:HttpGet("https://raw.githubusercontent.com/ADSKerOffical/API/refs/heads/main/Api.lua"))()
 game:GetService("RunService").RenderStepped:Wait()
local api2 = loadstring(game:HttpGet("https://raw.githubusercontent.com/ADSKerOffical/API2/refs/heads/main/Source"))()
 game:GetService("RunService").RenderStepped:Wait()

local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/ionlyusegithubformcmods/1-Line-Scripts/main/Mobile%20Friendly%20Orion')))()

OrionLib:MakeNotification({
	Name = "Budgie Hub | Fayintx",
	Content = '<p><font color="rgb(255, 255, 0)">Loading start</font></p>',
	Image = "rbxassetid://4483345998",
	Time = 5
})

loadstring(game:HttpGet("https://raw.githubusercontent.com/ADSKerOffical/BHU/refs/heads/main/AntiHackBypassers"))()

if game.PlaceId == 4225025295 then -- BES – Fayintx Error Storage 
local success = pcall(function() return game.Players.LocalPlayer end)
 if not success then
  substitute = hookmetamethod(game, "__index", newcclosure(function(self, prop)
 if self == game and game:FindFirstChild(tostring(prop)) then
return game:GetService(tostring(prop)) end
  return substitute(self, prop)
   end))
 end
end

local month = os.date("%B")
local day = os.date("%d")
local Fayintxtext = "Budgie Hub | Fayintx | Universal"

if month == "February" and day == "14" then
 Fayintxtext = Fayintxtext .. "♥️"
  elseif month == "October" and day == "31" then
 Fayintxtext = Fayintxtext .. "🎃"
  elseif month == "January" and day == "1" then
 Fayintxtext = Fayintxtext .. "🎄"
  elseif month == "July" and day == "25" then
 Fayintxtext = Fayintxtext .. "🎉"
  elseif month == "April" and day == "20" then
 Fayintxtext = Fayintxtext .. "🥚"
  elseif month == "May" and day == "31" then
 Fayintxtext = Fayintxtext .. "🦜"
end

local Window = OrionLib:MakeWindow({Name = Fayintxtext, HidePremium = true, IntroEnabled = false, SaveConfig = false, ConfigFolder = "OrionTest"})

local Tab1 = Window:MakeTab({
 Name = "Info",
 Icon = "rbxassetid://4483345998",
 PremiumOnly = false
})

local syst = ""
local GS = game:GetService("GuiService")
local UIS = game:GetService("UserInputService")
    if (GS:IsTenFootInterface()) then
        syst = "Console"
    elseif (UIS.TouchEnabled and not UIS.MouseEnabled) then
        syst = "Mobile"
    else
        syst = "PC"
    end

local LP = game:GetService("Players").LocalPlayer
local realUser = LP.CharacterAppearanceId

getgenv().AntiAfkOn = true
 if getgenv().AntiAfkOn == true then
 for i,v in pairs(getconnections(LP.Idled)) do
  v:Disable()
 end
end

if not workspace:FindFirstChild("PartCheckForWhile") then
  local part = Instance.new("Part", workspace)
  part.Name = "PartCheckForWhile"
  part.Locked = true
  part.Anchored = true
  part.CanCollide = false
  part.Transparency = 1
  part.CFrame = CFrame.new(0, 1e9, 0)
task.spawn(function()
 print("Cycle started")
    while game:GetService("RunService").Heartbeat:Wait() do
        local devConsoleMaster = game:GetService("CoreGui"):FindFirstChild("DevConsoleMaster")
        if devConsoleMaster then 
            for _, v in pairs(devConsoleMaster:GetDescendants()) do 
                if v:IsA("TextLabel") then 
                    v.RichText = true 
                end 
            end 
        end
    end
end)
 end

local function printColor(color, text, size)
    if not typeof(color) == "Color3" then
        warn("Argument 'color' must be a Color3 object")
        return
    end
    
    local r, g, b = color.R * 255, color.G * 255, color.B * 255
    local colorValue = string.format("%d,%d,%d", r, g, b)
    
    local Text = '<font color="rgb(' .. colorValue .. ')"'
    if size then
        Text = Text .. ' size="' .. tostring(size) .. '"'
    end
    Text = Text .. '>' .. tostring(text) .. '</font>'
    print(Text)
end

Tab1:AddLabel("Welcome: " .. tostring(LP.Name))

Tab1:AddButton({
 Name = "The tab is temporarily not working",
 Callback = function()
   print("Not working")
 end
})

local cloneref = cloneref or function(o) return o end
local queueteleport = (syn and syn.queue_on_teleport) or queue_on_teleport or (fluxus and fluxus.queue_on_teleport)
local request = (syn and syn.request) or request or (fluxus and fluxus.request)
local newcclosure = newcclosure or function(f) return f end
local setclipboard = setclipboard or syn_clipboard_set or syn.write_clipboard or nil
local setthreadidentity = setthreadidentity or syn.set_thread_identity
local getthreadidentity = getthreadidentity or syn.get_thread_identity

local Tab = Window:MakeTab({
	Name = "Universal",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Section = Tab:AddSection({
 Name = "Tools"
})

Tab:AddButton({
 Name = "Equip all tools",
 Callback = function()
LP = game.Players.LocalPlayer
for _, tool in ipairs(LP.Backpack:GetDescendants()) do
  if tool:IsA("Tool") then
tool.Parent = LP.Character
  end
end
   end    
})

Tab:AddButton({
 Name = "Drop all tools",
 Callback = function()
LP = game.Players.LocalPlayer
LPH = LP.Character.Humanoid
LPH:UnequipTools()
 for _, tool in ipairs(LP.Backpack:GetDescendants()) do
   if tool:IsA("Tool") then
tool.CanBeDropped = true
tool.Parent = LP.Character
tool.Parent = workspace
   end
 end
   end    
})

Tab:AddToggle({
 Name = "Twirl tools",
 Default = false,
 Callback = function(Value)
toggle1 = Value
while toggle1 and task.wait() do
 for _, tool in ipairs(game.Players.LocalPlayer.Character:GetDescendants()) do
   if tool:IsA("Tool") and tool.Handle then
tool.Grip = CFrame.Angles(math.rad(math.random(-360, 360)), math.rad(math.random(-360, 360)), math.rad(math.random(-360, 360)))
tool.GripPos = tool.GripPos
   end
 end
end
 end    
})

Tab:AddButton({
 Name = "Random GripPos",
 Callback = function()
LP = game.Players.LocalPlayer
for _, tool in ipairs(LP.Character:GetDescendants()) do
 if tool:IsA("Tool") then
tool.GripPos = Vector3.new(math.random(-40, 40), math.random(-25, 25), math.random(-40, 40))
 end
end

for _, tool in ipairs(LP.Backpack:GetDescendants()) do
 if tool:IsA("Tool") then
tool.GripPos = Vector3.new(math.random(-40, 40), math.random(-25, 25), math.random(-40, 40))
 end
end
   end    
})

Tab:AddToggle({
 Name = "Auto click",
 Default = false,
 Callback = function(Value)
LP = game.Players.LocalPlayer
togeo = Value
while togeo and task.wait() do
 for _, tool in ipairs(LP.Character:GetDescendants()) do
  if tool:IsA("Tool") then
tool:Activate()
  end
 end
end
   end    
})

Tab:AddToggle({
 Name = "Enable tools",
 Default = false,
 Callback = function(Value)
   oroi = Value
     while oroi and task.wait() do
       local char = game.Players.LocalPlayer.Character or game.Players.LocalPlayer.CharacterAdded:Wait()
       for _, tool in next, char:GetChildren() do
         if tool:IsA("Tool") then
           tool.Enabled = true
           tool.ManualActivationOnly = false
           tool.RequiresHandle = false
         end
       end
     end
   end    
})

Tab:AddTextbox({
 Name = "Reach tools on character",
 Default = "",
 TextDisappear = true,
 Callback = function(val)
  for _, tool in next, game.Players.LocalPlayer.Character:GetChildren() do
   if tool:IsA("Tool") then
    for _, part in next, tool:GetDescendants() do
      if part:IsA("BasePart") and part:FindFirstChild("TouchInterest") then
local sel = Instance.new("SelectionBox", part)
sel.Adornee = part
part.Transparency = 1
part.Massless = true
part.Size = Vector3.new(val, val, val)
     end
    end
   end
  end
 end   
})

Tab:AddButton({
	Name = "Remove tools",
	Callback = function()
	if table.merger == nil then
      loadstring(game:HttpGet("https://raw.githubusercontent.com/ADSKerOffical/BHU/refs/heads/main/Table%20library%20expanding"))()
    end
for _, tool in next, table.merger(game.Players.LocalPlayer.Character:GetDescendants(), game.Players.LocalPlayer.Backpack:GetDescendants()) do
  if tool:IsA("Tool") then
    tool:Destroy()
  end
end
    end    
})

Tab:AddToggle({
 Name = "Grab tools",
 Default = false,
 Callback = function(Value)
  ygs = Value
     while ygs and task.wait() do
       for _, tool in next, game.Workspace:GetDescendants() do
  if tool:IsA("Tool") and tool:FindFirstChildWhichIsA("BasePart") then
    firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart"), tool:FindFirstChildWhichIsA("BasePart"), 0)
  end
end
     end
   end    
})

Tab:AddButton({
 Name = "Copy all tools from ReplicatedStorage",
 Callback = function()
    for _, tool in next, game.ReplicatedStorage:GetDescendants() do
  if tool:IsA("Tool") then
    local tok = tool:Clone()
    tok.Parent = game.Players.LocalPlayer.Backpack

    for _, con in next, getconnections(tok.Activated) do
      if rawget(con, "Function") then
        tok.Activated:Connect(con.Function)
      end
    end
  end
end
   end    
})

Tab:AddDropdown({
	Name = "Activate all tools",
	Default = "",
	Options = {"and unequip tools", "and not unequip tools", "in the form of a tool"},
	Callback = function(Value)
	  if Value == "and unequip tools" then
if table.merger == nil then loadstring(game:HttpGet("https://raw.githubusercontent.com/ADSKerOffical/BHU/refs/heads/main/Table%20library%20expanding"))() end
for _, tool in next, table.merger(game.Players.LocalPlayer.Character:GetDescendants(), game.Players.LocalPlayer.Backpack:GetDescendants()) do
  if tool:IsA("Tool") or tool:IsA("HopperBin") then
    game.Players.LocalPlayer.Character.Humanoid:EquipTool(tool)
    tool:Activate()
    game.Players.LocalPlayer.Character.Humanoid:UnequipTools()
  end
end
	  elseif Value == "and not unequip tools" then
if table.merger == nil then loadstring(game:HttpGet("https://raw.githubusercontent.com/ADSKerOffical/BHU/refs/heads/main/Table%20library%20expanding"))() end
for _, tool in next, table.merger(game.Players.LocalPlayer.Character:GetDescendants(), game.Players.LocalPlayer.Backpack:GetDescendants()) do
  if tool:IsA("Tool") or tool:IsA("HopperBin") then
    tool.Parent = game.Players.LocalPlayer.Character
    tool:Activate()
  end
end
	  elseif Value == "in the form of a tool" then
local tool = Instance.new("Tool", game.Players.LocalPlayer.Backpack)
tool.Name = "Activate all tools"
tool.RequiresHandle = false

tool.Activated:Connect(function()
 if table.merger == nil then
  loadstring(game:HttpGet("https://raw.githubusercontent.com/ADSKerOffical/BHU/refs/heads/main/Table%20library%20expanding"))()
 end
for _, toool in next, table.merger(game.Players.LocalPlayer.Character:GetDescendants(), game.Players.LocalPlayer.Backpack:GetDescendants()) do
  if toool:IsA("Tool") or toool:IsA("HopperBin") and toool ~= tool then
    game.Players.LocalPlayer.Character.Humanoid:EquipTool(toool)
    toool:Activate()
    game.Players.LocalPlayer.Character.Humanoid:UnequipTools()
  end
end
end)
	  end
	end    
})

Tab:AddButton({
 Name = "Disable tool handle collision",
 Callback = function()
for _, tool in ipairs(LP.Character:GetDescendants()) do
  if tool:IsA("Tool") and tool:FindFirstChild("Handle") then
tool.Handle.CanCollide = false
  end
end

for _, tool in ipairs(LP.Backpack:GetDescendants()) do
  if tool:IsA("Tool") and tool:FindFirstChild("Handle") then
tool.Handle.CanCollide = false
  end
end
   end    
})

Tab:AddToggle({
 Name = "Touch everyone with your handle",
 Default = false,
 Callback = function(Value)
ooj = Value
while ooj and game:GetService("RunService").RenderStepped:Wait() do
    local p = game.Players:GetPlayers()
    for i = 2, #p do local v = p[i].Character
local tool = LP.Character and LP.Character:FindFirstChildOfClass("Tool")
            if tool and tool:FindFirstChild("Handle") then
                tool:Activate()
                for i,v in next, v:GetChildren() do
                    if v:IsA("BasePart") then
                        firetouchinterest(tool.Handle,v,0)
                        firetouchinterest(tool.Handle,v,1)
                    end
                end
            end
        end
     end
 end    
})

Tab:AddToggle({
 Name = "Touch everyone with your handle v2",
 Default= false,
 Callback = function(Value)
uijb = Value
       while uijb and game:GetService("RunService").RenderStepped:Wait() do
 pcall(function()
    local p = game.Players:GetPlayers()
    for i = 2, #p do local v = p[i].Character
local LP = game.Players.LocalPlayer
local tool = LP.Character and LP.Character:FindFirstChildOfClass("Tool")
            if tool then
                tool:Activate()
                for i, v in next, v:GetChildren() do
                  if v:IsA("BasePart") then
                     for _, part in next, tool:GetDescendants() do
                       if part:IsA("BasePart") and part:FindFirstChild("TouchInterest") then
                        firetouchinterest(part, v, 0)
                        firetouchinterest(part, v, 1)
                       end
                     end
                  end
               end
            end
        end
     end)
 end
   end    
})

Tab:AddToggle({
 Name = "Touch models with your handle",
 Default = false,
 Callback = function(Value)
ooj = Value
while ooj and game:GetService("RunService").RenderStepped:Wait() do
    local LP = game:GetService("Players").LocalPlayer
local tool = LP.Character and LP.Character:FindFirstChildOfClass("Tool")
            if tool and tool:FindFirstChild("Handle") then
                tool:Activate()
                for i, v in next, workspace:GetDescendants() do
                    if v:IsA("Humanoid") and not game:GetService("Players"):GetPlayerFromCharacter(v.Parent) then
                       for i, d in next, v.Parent:GetChildren() do
                         if d:IsA("BasePart") then
                           firetouchinterest(tool.Handle, d, 0)
                           firetouchinterest(tool.Handle, d, 1)
                        end
                    end
                 end
             end
         end
     end
 end    
})

Tab:AddToggle({
 Name = "Touch models with your handle v2",
 Default = false,
 Callback = function(Value)
ooj = Value
while ooj and game:GetService("RunService").RenderStepped:Wait() do
    local LP = game:GetService("Players").LocalPlayer
local tool = LP.Character and LP.Character:FindFirstChildOfClass("Tool")
            if tool then
                tool:Activate()
                for i, v in next, workspace:GetDescendants() do
                    if v:IsA("Humanoid") and not game:GetService("Players"):GetPlayerFromCharacter(v.Parent) then
                       for i, d in next, v.Parent:GetDescendants() do
                         if d:IsA("BasePart") then
                           for _, part in next, tool:GetDescendants() do
                             if part:IsA("BasePart") then
                              firetouchinterest(part, d, 0)
                              firetouchinterest(part, d, 1)
                            end
                          end
                       end
                    end
                 end
             end
         end
     end
 end    
})

local Section = Tab:AddSection({
 Name = "Local Humanoid Control"
})

Tab:AddButton({
 Name = "Jump Baki Hanma",
 Callback = function()
LPH = game.Players.LocalPlayer.Character.Humanoid
LPH.Jumping:Connect(function()
LPH.RootPart.Velocity = LPH.RootPart.CFrame.LookVector * 200 + Vector3.new(0, 150, 0)
end)
   end    
})

Tab:AddTextbox({
 Name = "Attract to player",
 Default = "",
 TextDisappear = true,
 Callback = function(Value)
LPH = game.Players.LocalPlayer.Character.Humanoid
   local player = api:GetPlayerByLowerName(Value)
if player and player ~= LP then
repeat task.wait()
LPH:ChangeState("FallingDown")
LPH.RootPart.Velocity += (player.Character.HumanoidRootPart.Position - LPH.RootPart.Position).Unit * 200
until LPH.Health <= 0
end
 end   
})

Tab:AddTextbox({
 Name = "Locked to player",
 Default = "",
 TextDisappear = true,
 Callback = function(Value)
LPH = game.Players.LocalPlayer.Character.Humanoid
LP = game.Players.LocalPlayer
  local player = api:GetPlayerByLowerName(Value)
   if player and player ~= LP then
repeat task.wait()
LPH.RootPart.CFrame = player.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, 3)
until LPH.Health <= 0
   end
 end   
})

Tab:AddButton({
 Name = "Bunny hop",
 Callback = function()
        game.Players.LocalPlayer.Character.Humanoid.Jumping:Connect(function()
 if game.Players.LocalPlayer.Character.HumanoidRootPart.Running.IsPlaying then
  game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity += game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity.Unit * 100
 end
end)
   end    
})

Tab:AddToggle({
 Name = "Anti velocity",
 Default = false,
 Callback = function(Value)
toggle2 = Value
LPH = game.Players.LocalPlayer.Character.Humanoid
while toggle2 and task.wait() do
 if LPH.RootPart.Velocity.Magnitude >= 40 then
LPH.RootPart.Velocity = Vector3.zero
 end
end
 end    
})

Tab:AddToggle({
 Name = "Anti velocity v2",
 Default = false,
 Callback = function(Value)
ttooo = Value
LPH = game.Players.LocalPlayer.Character.Humanoid
while ttooo and task.wait() do
 for _, child in ipairs(LPH.RootPart:GetDescendants()) do
   if child:IsA("BodyVelocity") or child:IsA("BodyThrust") or child:IsA("BodyAngularVelocity") or child:IsA("AngularVelocity") or child:IsA("Glue") or child:IsA("RopeConstraint") or child:IsA("HingeConstraint") or child:IsA("BallSocketConstraint") or child:IsA("BodyGyro") or child:IsA("RocketPropulsion") and ttooo then
child:Destroy()
   end
 end
end
 end    
})

Tab:AddToggle({
 Name = "Anti sit",
 Default = false,
 Callback = function(Value)
         game.Players.LocalPlayer.Character.Humanoid:SetStateEnabled("Seated", not Value)
   end    
})

Tab:AddToggle({
 Name = "Anti bang",
 Default = false,
 Callback = function(Value)
  kiudi = Value
     while kiudi and task.wait() do
       for _, player in next, game.Players:GetPlayers() do
         if player ~= game.Players.LocalPlayer and game.Workspace:FindFirstChild(player.Name) and player.Character:FindFirstChild("Humanoid") and player.Character:FindFirstChild("HumanoidRootPart") and (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - player.Character.HumanoidRootPart.Position).Magnitude <= 10 then
           for _, anim in next, player.Character.Humanoid:GetPlayingAnimationTracks() do
              if anim.Animation.AnimationId == "rbxassetid://148840371" or anim.Animation.AnimationId == "rbxassetid://5918726674" then
    game:GetService("RunService").Heartbeat:Wait()
    last_pick_sin_mrazy = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame 
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(9e8, workspace.FallenPartsDestroyHeight + 1, 9e8) 
    game:GetService("RunService").Heartbeat:Wait()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = last_pick_sin_mrazy
              end
           end
         end
       end
     end
   end    
})

Tab:AddButton({
 Name = "Check Health",
 Callback = function()
LPH = game.Players.LocalPlayer.Character.Humanoid
OrionLib:MakeNotification({
	Name = "Budgie Hub | Fayintx",
	Content = "HP: " .. tostring(LPH.Health) .. " / " .. tostring(LPH.MaxHealth),
	Image = "rbxassetid://4483345998",
	Time = 5
})
   end    
})

Tab:AddButton({
 Name = "Helicopter",
 Callback = function()
LPH = game.Players.LocalPlayer.Character.Humanoid
local spin = 0
bodyvel = Instance.new("BodyAngularVelocity", LPH.RootPart)
bodyvel.MaxTorque = Vector3.new(0, math.huge, 0)
bodyvel.AngularVelocity = Vector3.new(0, 0.1, 0)

local sound = Instance.new("Sound", LPH.RootPart)
sound.SoundId = "rbxassetid://8578316223"
sound.Volume = 2.5
sound.PlaybackSpeed = 1
sound.Looped = true
sound:Play()

repeat wait() until sound.IsPlaying
spawn(function()
repeat wait()
spin += 0.1
bodyvel.AngularVelocity += Vector3.new(0, spin, 0)
until LPH.Health <= 0
end)

 task.wait(12)
LPH.Health = 0
LPH.Parent:BreakJoints()
   end    
})

Tab:AddButton({
 Name = "-2000 aura",
 Callback = function()
LPH = game.Players.LocalPlayer.Character.Humanoid
LPH.RootPart.Velocity = LPH.RootPart.CFrame.LookVector * -300
LPH:ChangeState("FallingDown")

sound = Instance.new("Sound", game.Workspace)
sound.SoundId = "rbxassetid://6794882849"
sound.Volume = 2
sound.TimePosition = 0.99
sound.PlaybackSpeed = 1
sound.Looped = false
sound:Play()
   end    
})

Tab:AddTextbox({
 Name = "Velocity fly",
 Default = "power",
 TextDisappear = true,
 Callback = function(Value)
LP = game.Players.LocalPlayer
LPH = LP.Character.Humanoid
LPH.PlatformStand = true
Mouse = LP:GetMouse()

local det = Mouse.Button1Down:Connect(function()
 LPH.RootPart.Velocity = (LPH.RootPart.Position - Mouse.Hit.Position).Unit * -(tonumber(Value))
end)

spawn(function()
  repeat wait()
LPH.PlatformStand = true
   if LPH.Health <= 0 then
     det:Disconnect()
   end
  until LPH.Health <= 0
end)
 end   
})

Tab:AddButton({
 Name = "Flappy bird fly",
 Callback = function()
LP = game.Players.LocalPlayer
LPH = LP.Character.Humanoid
LPH.PlatformStand = true
Mouse = LP:GetMouse()

local deta = Mouse.Button1Down:Connect(function()
 LPH.RootPart.Velocity = (LPH.RootPart.Position - Mouse.Hit.Position).Unit * -125 + Vector3.new(0, 80, 0)
sound = Instance.new("Sound", LPH.RootPart)
sound.SoundId = "rbxassetid://271111328"
sound.Volume = 1
sound.PlaybackSpeed = 1
sound.Looped = false
sound:Play()
end)

spawn(function()
  repeat wait()
LPH.PlatformStand = true
   if LPH.Health <= 0 then
     deta:Disconnect()
   end
  until LPH.Health <= 0
end)
   end    
})

Tab:AddToggle({
 Name = "Basic Noclip",
 Default = false,
 Callback = function(Value)
tyyc = Value
  while tyyc and game:GetService("RunService").Heartbeat:Wait() do
for _, part in ipairs(game.Players.LocalPlayer.Character:GetDescendants()) do
  if part:IsA("BasePart") then
part.CanCollide = not tyyc
  end
end
  end
 end    
})

Tab:AddDropdown({
	Name = "Change RigType",
	Default = "",
	Options = {"R6", "R15"},
	Callback = function(Value)
  local success, error = pcall(function()
		if Value == "R6" then
 game:GetService("AvatarEditorService"):PromptSaveAvatar(game.Players.LocalPlayer.Character.Humanoid.HumanoidDescription, Enum.HumanoidRigType.R6)
		elseif Value == "R15" then
 game:GetService("AvatarEditorService"):PromptSaveAvatar(game.Players.LocalPlayer.Character.Humanoid.HumanoidDescription, Enum.HumanoidRigType.R15)
		end
	  end)
	   if not success then
OrionLib:MakeNotification({
	Name = "Budgie Hub | Fayintx: BES",
	Content = '<p><font color="rgb(255, 0, 0)">BES: An error occurred probably because your executor was blocked AvatarEditorService:PromptSaveAvatar</font></p>',
	Image = "https://www.roblox.com/asset-thumbnail/image?assetId=12450524090&width=432&height=432&format=png",
	Time = 9
})
	   end
	end    
})

local hiddenfling = false
Tab:AddToggle({
    Name = "Touch fling",
    Default = false,
    Callback = function(value)
 hiddenfling = value
            local hrp, c, vel, movel = nil, nil, nil, 0.1
            local player = game.Players.LocalPlayer

            while player and player.Character and player.Character:FindFirstChild("Humanoid") and player.Character.Humanoid.Health > 0 and hiddenfling == true do
                game:GetService("RunService").Heartbeat:Wait()

                local lp = player
                while hiddenfling == true and not (c and c.Parent and hrp and hrp.Parent) do
                    game:GetService("RunService").Heartbeat:Wait()
                    c = lp.Character
                    hrp = c:FindFirstChild("HumanoidRootPart") or c:FindFirstChild("Torso") or c:FindFirstChild("UpperTorso")
                end

                if hiddenfling == true then
                    vel = hrp.Velocity
                    hrp.Velocity = vel * 10000 + Vector3.new(0, 100000, 0)
                    game:GetService("RunService").RenderStepped:Wait()

                    if c and c.Parent and hrp and hrp.Parent then
                        hrp.Velocity = vel
                    end

                    game:GetService("RunService").Stepped:Wait()

                    if c and c.Parent and hrp and hrp.Parent then
                        hrp.Velocity = vel + Vector3.new(0, movel, 0)
                        movel = movel * -1
                    end
                end
            end
end
})

Tab:AddToggle({
 Name = "Anti fling",
 Default = false,
 Callback = function(Value)
jhg = Value
     while jhg and task.wait() do
       for _, plr in next, game:GetService("Players"):GetPlayers() do
         if plr ~= game:GetService("Players").LocalPlayer and plr.Character and plr.Character:FindFirstChild("HumanoidRootPart") then
for _, part in next, plr.Character:GetChildren() do
  if part:IsA("BasePart") then
 part.CanCollide = not jhg
 part.CanTouch = not jhg
 part.AssemblyLinearVelocity = Vector3.zero
 part.AssemblyAngularVelocity = Vector3.zero
 part.Velocity = Vector3.zero
 part.CustomPhysicalProperties = PhysicalProperties.new(0, 0, 0)
  end
end
         end
       end
     end
   end    
})

Tab:AddToggle({
 Name = "Anti slow",
 Default = false,
 Callback = function(Value)
  pohhg = Value
local char = game.Players.LocalPlayer.Character or game.Players.LocalPlayer.CharacterAdded:Wait()
   while pohhg and char:FindFirstChild("Humanoid") and task.wait() do
       char = game.Players.LocalPlayer.Character or game.Players.LocalPlayer.CharacterAdded:Wait()
       local humanoid = char:WaitForChild("Humanoid")
for _, con in next, getconnections(humanoid.Changed) do con:Disconnect() end
 if humanoid:GetStateEnabled("Running") ~= nil then
  char.Humanoid:SetStateEnabled("Running", true) 
 end
    if char.Humanoid.WalkSpeed <= 14 then
      char.Humanoid.WalkSpeed = 16
    end
 end
   end    
})

Tab:AddToggle({
 Name = "Anti no jumping",
 Default = false,
 Callback = function(Value)
  huuwbh = Value
 local char = game.Players.LocalPlayer.Character or game.Players.LocalPlayer.CharacterAdded:Wait()
   while huuwbh and char:FindFirstChild("Humanoid") and task.wait() do
       char = game.Players.LocalPlayer.Character or game.Players.LocalPlayer.CharacterAdded:Wait()
       local humanoid = char:WaitForChild("Humanoid")
for _, con in next, getconnections(humanoid.Changed) do con:Disconnect() end
 if humanoid:GetStateEnabled("Jumping") ~= nil then
  char.Humanoid:SetStateEnabled("Jupming", true) 
 end
    if char.Humanoid.UseJumpPower then
       if char.Humanoid.JumpPower <= 45 then
          char.Humanoid.JumpPower = 50
       end
      else
       if char.Humanoid.JumpHeight <= 6 then
         char.Humanoid.JumpHeight = 7.2
       end
    end
 end
   end    
})

Tab:AddToggle({
 Name = "Anti void",
 Default = false,
 Callback = function(Value)
      local function getrespawn(): Instance
  for _, part in next, workspace:GetDescendants() do
    if part:IsA("SpawnLocation") then
      return part
   end
  end
end

local thnei = Value
local char = game.Players.LocalPlayer.Character or game.Players.LocalPlayer.CharacterAdded:Wait()

while thnei and task.wait() do
char = game.Players.LocalPlayer.Character or game.Players.LocalPlayer.CharacterAdded:Wait()
  if char:FindFirstChild("HumanoidRootPart") and char.HumanoidRootPart.CFrame.Y <= workspace.FallenPartsDestroyHeight + 10 then
    if getrespawn() then
 char.HumanoidRootPart.CFrame = getrespawn().CFrame
 char.HumanoidRootPart.Velocity = Vector3.zero
     else
 char.HumanoidRootPart.CFrame = CFrame.new(0, 0, 0)
 char.HumanoidRootPart.Velocity = Vector3.zero
    end
  end
end
   end    
})

Tab:AddDropdown({
	Name = "Fun",
	Default = "",
	Options = {"She was fairy"},
	Callback = function(Value)
	   if Value == "She was fairy" then
game.Players.LocalPlayer.Character.Humanoid.PlatformStand = true
 workspace.Gravity = 0
game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(0, 3, 0)
game.Players.LocalPlayer.Character.HumanoidRootPart.AssemblyAngularVelocity = Vector3.new(0, 3, 0)
 
game.Players.LocalPlayer.Character.Humanoid.Died:Connect(function()
  game.Workspace.Gravity = 196.2
end)
	   end
	end    
})

Tab:AddDropdown({
	Name = "Player mass",
	Default = "",
	Options = {"Very heavy mass", "Normal mass", "Zero mass"},
	Callback = function(Value)
		if Value == "Very heavy mass" then
		local plr = game.Players.LocalPlayer
local char = plr.Character
  for _, child in pairs(char:GetChildren()) do
    if child:IsA("BasePart") then
      child.Massless = false
      child.CustomPhysicalProperties = PhysicalProperties.new(math.huge, math.huge, math.huge) 
    end
  end
		end
		if Value == "Normal mass" then
		local plr = game.Players.LocalPlayer
local char = plr.Character

  for _, child in pairs(char:GetChildren()) do
    if child:IsA("BasePart") then
      child.Massless = false
      child.CustomPhysicalProperties = PhysicalProperties.new(1, 0.3, 0.5) 
    end
  end
		end
		if Value == "Zero mass" then
		local plr = game.Players.LocalPlayer
local char = plr.Character

  for _, child in pairs(char:GetChildren()) do
    if child:IsA("BasePart") then
      child.Massless = false
      child.CustomPhysicalProperties = PhysicalProperties.new(0, 0, 0) 
    end
  end
		end
	end    
})

local Section = Tab:AddSection({
 Name = "Players"
})

Tab:AddTextbox({
 Name = "Teleport to player",
 Default = "",
 TextDisappear = true,
 Callback = function(Value)
   local player = api:GetPlayerByLowerName(Value)
    if player and workspace:FindFirstChild(player.Name) then
      game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = player.Character.HumanoidRootPart.CFrame
    end
 end   
})

Tab:AddTextbox({
 Name = "View player",
 Default = "",
 TextDisappear = true,
 Callback = function(Value)
  local player = api:GetPlayerByLowerName(Value)
    if player and workspace:FindFirstChild(player.Name) then
      workspace.CurrentCamera.CameraSubject = player.Character.Humanoid
  else
      workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character.Humanoid
    end
 end   
})

Tab:AddTextbox({
 Name = "Fling player",
 Default = "",
 TextDisappear = true,
 Callback = function(Value)
   local player = api:GetPlayerByLowerName(Value)
    if player and player ~= game.Players.LocalPlayer and workspace:FindFirstChild(player.Name) and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and player.Character:FindFirstChild("HumanoidRootPart") then
        if player.Character.HumanoidRootPart.Anchored == true then
OrionLib:MakeNotification({
  Name = "Budgie Hub | Fayintx",
  Content = "The player cannot be flinged",
  Image = "rbxassetid://4483345998",
  Time = 5
})
           return
        end
        
        if game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("PlayersControl_Fling") then
OrionLib:MakeNotification({
  Name = "Budgie Hub | Fayintx",
  Content = "Wait for the function to complete",
  Image = "rbxassetid://4483345998",
  Time = 5
})
          return
        end
      
local saved = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
local timeout = os.clock()

local flingmet = Instance.new("BodyThrust", game.Players.LocalPlayer.Character.HumanoidRootPart)
flingmet.Force = Vector3.new(55000, 0, 55000)
flingmet.Name = "PlayersControl_Fling"
game.Debris:AddItem(flingmet, 7)

repeat task.wait()
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = player.Character.HumanoidRootPart.CFrame
  flingmet.Location = player.Character.HumanoidRootPart.Position
  game.Players.LocalPlayer.Character.HumanoidRootPart.AssemblyLinearVelocity = Vector3.new(20000, 20000, 20000)
  game.Players.LocalPlayer.Character.HumanoidRootPart.AssemblyAngularVelocity = Vector3.new(20000, 20000, 20000)
  game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(20000, 20000, 20000)
until not player.Character:FindFirstChild("HumanoidRootPart") or os.clock() - timeout >= 7 or not game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") or not flingmet or player.Character.HumanoidRootPart.Velocity.Magnitude >= 120

 flingmet:Destroy()
 game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.zero
 game.Players.LocalPlayer.Character.HumanoidRootPart.AssemblyAngularVelocity = Vector3.zero
 game.Players.LocalPlayer.Character.HumanoidRootPart.AssemblyLinearVelocity = Vector3.zero
 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = saved
 game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
 
    end
 end   
})

Tab:AddTextbox({
 Name = "Visible view (broken)",
 Default = "",
 TextDisappear = true,
 Callback = function(Value)
   local player = api:GetPlayerByLowerName(Value)
    if player and workspace:FindFirstChild(player.Name) and player.Character:FindFirstChild("Humanoid") then
     if Value == "" or Value == " " or player == game.Players.LocalPlayer then
      game.Workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character.Humanoid
       return 
     end
       game.Workspace.CurrentCamera.CameraSubject = player.Character.Humanoid
      
       repeat task.wait()
          game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.CurrentCamera.CFrame
       until game.Workspace.CurrentCamera.CameraSubject ~= player.Character.Humanoid or not game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
       
       game.Workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character.Humanoid
       game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.zero
       game.Players.LocalPlayer.Character.HumanoidRootPart.AssemblyLinearVelocity = Vector3.zero
       game.Players.LocalPlayer.Character.HumanoidRootPart.AssemblyAngularVelocity = Vector3.zero
    end
 end   
})

Tab:AddToggle({
 Name = "Lightweight players",
 Default = false,
 Callback = function(Value)
 uyeihd = Value
        while uyeihd and task.wait() do
  for _, player in next, game.Players:GetPlayers() do
    if player ~= game.Players.LocalPlayer and workspace:FindFirstChild(player.Name) then
      for _, part in next, player.Character:GetDescendants() do
        if part:IsA("BasePart") then
          part.CustomPhysicalProperties = PhysicalProperties.new(0, 0, 1, math.huge, math.huge)
          part.Material = "Air"
        end
      end
    end
  end
end
   end    
})

Tab:AddToggle({
 Name = "Touch nearest parts to all players",
 Default = false,
 Callback = function(Value)
 bubuska = Value
        while bubuska and task.wait() do
 if game.Workspace:FindFirstChild(game.Players.LocalPlayer.Name) and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
  game.Players.LocalPlayer.SimulationRadius = math.huge
  for _, part in next, workspace:GetPartBoundsInRadius(game.Players.LocalPlayer.Character.HumanoidRootPart.Position, 40) do
    if part:FindFirstChild("TouchInterest") then
      for _, player in next, game.Players:GetPlayers() do
         if player ~= game.Players.LocalPlayer and workspace:FindFirstChild(player.Name) then
           for _, parte in next, player.Character:GetChildren() do
             if parte:IsA("BasePart") then
               task.spawn(function()
                 firetouchinterest(part, parte, 0)
                 firetouchinterest(part, parte, 1)
               end)
             end
           end
        end
      end
    end
  end
 end
end
   end    
}) 

Tab:AddToggle({
 Name = "Cbring all",
 Default = false,
 Callback = function(Value)
oep = Value
 while oep and task.wait() do
   for _, player in next, game.Players:GetPlayers() do
     if player ~= game.Players.LocalPlayer and game.Workspace:FindFirstChild(player.Name) and player.Character:FindFirstChild("Humanoid") and game.Workspace:FindFirstChild(game.Players.LocalPlayer.Name) then
       player.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart", 10).CFrame * CFrame.new(0, 0, -3.25)
       for _, part in next, player.Character:GetDescendants() do
         if part:IsA("BasePart") then
           part.CanCollide = false
         end
       end
     end
   end
 end
   end    
})

local Section = Tab:AddSection({
 Name = "Parts Control"
})

Tab:AddButton({
 Name = "Bring all unanchored",
 Callback = function()
for _, part in ipairs(workspace:GetDescendants()) do
  if part:IsA("BasePart") and part.Anchored == false then
part.CFrame = LP.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, -3)
  end
end
   end    
})

Tab:AddButton({
 Name = "Grab tool",
 Callback = function()
local tool = Instance.new("Tool", LP.Backpack)
tool.Name = "Grab tool"
tool.RequiresHandle = false

tool.Activated:Connect(function()
 local mouset = LP:GetMouse().Target
  if mouset and mouset.Anchored == false then
local partTweenn2 = game:GetService("TweenService"):Create(mouset, TweenInfo.new(1, Enum.EasingStyle.Exponential), {
        CFrame = LP.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, -3)
    })
    partTweenn2:Play()
  end
end)
   end    
})

Tab:AddToggle({
 Name = "Attract parts",
 Default = false,
 Callback = function(Value)
yn = Value
while yn and task.wait(0.2) do
 if not LP.Character.HumanoidRootPart then return end
   for _, part in ipairs(workspace:GetDescendants()) do
      if part:IsA("BasePart") and not part.Anchored and not part:IsDescendantOf(game.Players.LocalPlayer.Character) and not game.Players:GetPlayerFromCharacter(part.Parent) then
 part.Velocity = (LP.Character.HumanoidRootPart.Position - part.Position).Unit * 150
      end
   end
end
 end    
})

Tab:AddToggle({
 Name = "Inviolable to objects",
 Default = false,
 Callback = function(Value)
yun = Value
   while yun and task.wait() do
if not LP.Character or not LP.Character.HumanoidRootPart then return end
     for _, part in ipairs(LP.Character:GetDescendants()) do
       if part:IsA("BasePart") then
         part.CanTouch = not yun
         part.CanQuery = not yun
       end
     end
   end
 end    
})

Tab:AddDropdown({
    Name = "Mass Unanchored Objects",
    Default = "koop",
    Options = {"Very heavy parts", "Normal parts", "Very lightweight parts"},
    Callback = function(Value)
        if Value == "Very heavy parts" then
        local Players = game:GetService("Players")
local function isPartOfPlayerCharacter(part)
    for _, player in ipairs(Players:GetPlayers()) do
        local character = player.Character
        if character and part:IsDescendantOf(character) then
            return true
        end
    end
    return false
end

for _, part in ipairs(workspace:GetDescendants()) do
    if part:IsA("BasePart") and not isPartOfPlayerCharacter(part) then
        part.CustomPhysicalProperties = PhysicalProperties.new(9e999, 0, 0, 9e999, 9e999)
    end
end
        end
        if Value == "Normal parts" then
        local Players = game:GetService("Players")
local function isPartOfPlayerCharacter(part)
    for _, player in ipairs(Players:GetPlayers()) do
        local character = player.Character
        if character and part:IsDescendantOf(character) then
            return true
        end
    end
    return false
end

for _, part in ipairs(workspace:GetDescendants()) do
    if part:IsA("BasePart") and not isPartOfPlayerCharacter(part) then
        part.CustomPhysicalProperties = PhysicalProperties.new(1, 1, 1, 1, 1)
    end
end
        end
        if Value == "Very lightweight parts" then
        local Players = game:GetService("Players")
local function isPartOfPlayerCharacter(part)
    for _, player in ipairs(Players:GetPlayers()) do
        local character = player.Character
        if character and part:IsDescendantOf(character) then
            return true
        end
    end
    return false
end

for _, part in ipairs(workspace:GetDescendants()) do
    if part:IsA("BasePart") and not isPartOfPlayerCharacter(part) then
        part.CustomPhysicalProperties = PhysicalProperties.new(-9e9999, 9e9999, 0, 0, 0)
    end
end
        end
    end    
})

Tab:AddButton({
 Name = "Infinite Simulation Radius",
 Callback = function()
sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
sethiddenproperty(game.Players.LocalPlayer, "MaxSimulationRadius", math.huge)
 end    
})

Tab:AddToggle({
 Name = "Infinite Simulation Radius Loop",
 Default = false,
 Callback = function(Value)
geyu = Value
while geyu and task.wait(0.1) do
     sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
     sethiddenproperty(game.Players.LocalPlayer, "MaxSimulationRadius", math.huge)
end
 end    
})

Tab:AddToggle({
 Name = "Part fling aura",
 Default = false,
 Callback = function(Value)
 oppj = Value
while oppj and task.wait() do
  if game.Players.LocalPlayer.Character then
local parts = workspace:GetPartBoundsInRadius(game.Players.LocalPlayer.Character.HumanoidRootPart.Position, 35)
  for _, part in ipairs(parts) do
    if part and part.Anchored == false and not part:IsDescendantOf(game.Players.LocalPlayer.Character) and not game.Players:FindFirstChild(part.Parent.Name) then
part.Velocity = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - part.Position).Unit * -250
      part.CustomPhysicalProperties = PhysicalProperties.new(0, 0, 0) 
      end
    end
  end
end   
   end    
})

Tab:AddToggle({
 Name = "Part fling aura+",
 Default = false,
 Callback = function(Value)
 oppja = Value
while oppja and task.wait() do
  if game.Players.LocalPlayer.Character then
local parts = workspace:GetPartBoundsInRadius(game.Players.LocalPlayer.Character.HumanoidRootPart.Position, 35)
  for _, part in ipairs(parts) do
    if part and part.Anchored == false and not part:IsDescendantOf(game.Players.LocalPlayer.Character) and not game.Players:FindFirstChild(part.Parent.Name) then
part.Velocity = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - part.Position).Unit * -250
part.CustomPhysicalProperties = PhysicalProperties.new(0, 0, 0) 
  if part:FindFirstChild("PrimaryPart") ~= nil and not part.PrimaryPart:IsDescendantOf(game.Players.LocalPlayer.Character) and not part.PrimaryPart.Anchored and not game.Players:FindFirstChild(part.PrimaryPart.Parent.Name) then
     part.Velocity = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - part.PrimaryPart.Position).Unit * -300
  end
  if part:GetRootPart() and not part:GetRootPart():IsDescendantOf(game.Players.LocalPlayer.Character) and not part:GetRootPart().Anchored and not game.Players:FindFirstChild(part:GetRootPart().Parent.Name) then
     part:GetRootPart().Velocity = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - part:GetRootPart().Position).Unit * -300
  end
      end
    end
  end
end   
   end    
})

getgenv().isnetworkowner = isnetworkowner or newcclosure(function(part)
  return (part.ReceiveAge == 0 and gethiddenproperty(part, "NetworkIsSleeping") == false)
end)

Tab:AddToggle({
 Name = "Anti part fling",
 Default = false,
 Callback = function(Value)
  hueey = Value
     while hueey and game:GetService("RunService").PreSimulation:Wait() do
       if game.Workspace:FindFirstChild(game.Players.LocalPlayer.Name) and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
         game.Players.LocalPlayer.SimulationRadius = math.huge
         sethiddenproperty(game.Players.LocalPlayer, "MaxSimulationRadius", math.huge)
         sethiddenproperty(game.Players.LocalPlayer, "MaximumSimulationRadius", math.huge)
         
         for _, part in next, workspace:GetPartBoundsInRadius(game.Players.LocalPlayer.Character.HumanoidRootPart.Position, 50) do
           if part.Anchored == false and not isnetworkowner(part) and part.Velocity.Magnitude >= 5 and not game.Players:GetPlayerFromCharacter(part.Parent) then
              part.Velocity = Vector3.zero
              part.AssemblyLinearVelocity = Vector3.zero
              part.AssemblyAngularVelocity = Vector3.zero
              part.CanCollide = isnetworkowner(part)
              part.CanTouch = isnetworkowner(part)
              part.CanQuery = isnetworkowner(part)
              part.Massless = not isnetworkowner(part)
              part:ResetPropertyToDefault("CustomPhysicalProperties")
              
             for _, mov in next, part:GetDescendants() do
               if mov:IsA("BodyMover") or mov:IsA("Constraint") then
                 mov:Destroy()
               end
             end
           end
         end
       end
     end
   end    
})

Tab:AddDropdown({
	Name = "Fling part tools (too by me)",
	Default = "",
	Options = {"v1", "v2", "v3"},
	Callback = function(Value)
if Value == "v1" then
local tool = Instance.new("Tool")
tool.Name = "Fling part tool v1"
tool.RequiresHandle = false

tool.Activated:Connect(function()
 local correct = nil
local mouset = game.Players.LocalPlayer:GetMouse().Target
  if mouset and mouset.Anchored == false and mouset.Parent ~= game.Players.LocalPlayer.Character and not game.Players:FindFirstChild(mouset.Parent.Name) then
  correct = true
 bodyvel = Instance.new("BodyVelocity", mouset)
 bodyvel.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
 bodyvel.Velocity = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - mouset.Position).Unit * -500
 mouset.CanCollde = false
 mouset.CanTouch = false
  end

local Highlight = Instance.new("Highlight", mouset)
Highlight.Adornee = mouset
Highlight.FillTransparency = 0
  if correct == true then
Highlight.FillColor = Color3.fromRGB(0, 255, 0)
Highlight.OutlineColor = Color3.fromRGB(0, 255, 0)
 else
local sound = Instance.new("Sound", game.Workspace)
sound.SoundId = "rbxassetid://3779045779"
sound.Volume = 1.5
sound.PlaybackSpeed = 1
sound.Looped = false
sound:Play()
game.Debris:AddItem(sound, 3)

Highlight.FillColor = Color3.new(1, 0, 0)
Highlight.OutlineColor = Color3.new(1, 0, 0)
 end
Highlight.OutlineTransparency = 0
game.Debris:AddItem(Highlight, 5)

local partTweenn2 = game:GetService("TweenService"):Create(Highlight, TweenInfo.new(1, Enum.EasingStyle.Sine), {
        OutlineTransparency = 1,
        FillTransparency = 1
    })
    partTweenn2:Play()
end)

tool.Parent = game.Players.LocalPlayer.Backpack
elseif Value == "v2" then
local tool = Instance.new("Tool")
tool.Name = "Fling part tool v2"
tool.RequiresHandle = false

tool.Activated:Connect(function()
 local correct = nil
local mouset = game.Players.LocalPlayer:GetMouse().Target
  if mouset and mouset.Anchored == false and mouset.Parent ~= game.Players.LocalPlayer.Character and not game.Players:FindFirstChild(mouset.Parent.Name) then
  correct = true
 bodyth = Instance.new("BodyThrust", mouset)
 bodyth.Force = Vector3.new(100000, 100000, 100000)
     spawn(function()
repeat task.wait()
  bodyth.Location = mouset.Position
  mouset.CanCollide = false
  mouset.CanTouch = false
until not mouset or not mouset.Parent or mouset == nil
     end)
  end

local Highlight = Instance.new("Highlight", mouset)
Highlight.Adornee = mouset
Highlight.FillTransparency = 0
  if correct == true then
Highlight.FillColor = Color3.fromRGB(0, 255, 0)
Highlight.OutlineColor = Color3.fromRGB(0, 255, 0)
 else
local sound = Instance.new("Sound", game.Workspace)
sound.SoundId = "rbxassetid://3779045779"
sound.Volume = 1.5
sound.PlaybackSpeed = 1
sound.Looped = false
sound:Play()
game.Debris:AddItem(sound, 3)

Highlight.FillColor = Color3.new(1, 0, 0)
Highlight.OutlineColor = Color3.new(1, 0, 0)
 end
Highlight.OutlineTransparency = 0
game.Debris:AddItem(Highlight, 5)

local partTweenn2 = game:GetService("TweenService"):Create(Highlight, TweenInfo.new(1, Enum.EasingStyle.Sine), {
        OutlineTransparency = 1,
        FillTransparency = 1
    })
    partTweenn2:Play()
end)

tool.Parent = game.Players.LocalPlayer.Backpack
elseif Value == "v3" then
local tool = Instance.new("Tool")
tool.Name = "Fling part tool v3"
tool.RequiresHandle = false

tool.Activated:Connect(function()
 local correct = nil
local mouset = game.Players.LocalPlayer:GetMouse().Target
  if mouset and mouset.Anchored == false and mouset.Parent ~= game.Players.LocalPlayer.Character and not game.Players:FindFirstChild(mouset.Parent.Name) then
  correct = true
 bodyav = Instance.new("BodyAngularVelocity", mouset)
 bodyav.AngularVelocity = Vector3.new(100, 100, 100)
 bodyav.MaxTorque = Vector3.new(math.huge, math.huge, math.huge)
 bodyav.P = 25
 mouset.CanCollide = false
 mouset.CanTouch = false
  end

local Highlight = Instance.new("Highlight", mouset)
Highlight.Adornee = mouset
Highlight.FillTransparency = 0
  if correct == true then
Highlight.FillColor = Color3.fromRGB(0, 255, 0)
Highlight.OutlineColor = Color3.fromRGB(0, 255, 0)
 else
local sound = Instance.new("Sound", game.Workspace)
sound.SoundId = "rbxassetid://3779045779"
sound.Volume = 1.5
sound.PlaybackSpeed = 1
sound.Looped = false
sound:Play()
game.Debris:AddItem(sound, 3)

Highlight.FillColor = Color3.new(1, 0, 0)
Highlight.OutlineColor = Color3.new(1, 0, 0)
 end
Highlight.OutlineTransparency = 0
game.Debris:AddItem(Highlight, 5)

local partTweenn2 = game:GetService("TweenService"):Create(Highlight, TweenInfo.new(1, Enum.EasingStyle.Sine), {
        OutlineTransparency = 1,
        FillTransparency = 1
    })
    partTweenn2:Play()
end)

tool.Parent = game.Players.LocalPlayer.Backpack
end
	end
})

Tab:AddDropdown({
	Name = "Black hole creator tools",
	Default = "",
	Options = {"Basic black hole creator", "Endless black hole creator", "White hole creator"},
	Callback = function(Value)
	   if Value == "Basic black hole creator" then
local tool = Instance.new("Tool")
tool.Name = "Black hole creator"
tool.RequiresHandle = false

tool.Activated:Connect(function()
  coroutine.wrap(function()
local mouseh = game.Players.LocalPlayer:GetMouse().Hit
local hole = cloneref(Instance.new("Part", workspace))
hole.Position = mouseh.Position
hole.Anchored = true
hole.CanCollide = false
hole.Shape = "Ball"
hole.Size = Vector3.new(0.1, 0.1, 0.1)
hole.Color = Color3.new(0, 0, 0)
hole.Material = "Neon"
game.Debris:AddItem(hole, 5)

local partTweenn2 = game:GetService("TweenService"):Create(hole, TweenInfo.new(0.3, Enum.EasingStyle.Exponential), {
        Size = Vector3.new(35, 35, 35)
    })
    partTweenn2:Play()
  spawn(function()
repeat task.wait()
local parts = workspace:GetPartBoundsInRadius(hole.Position, 200)
 for _, part in ipairs(parts) do
   if part and part.Anchored == false and not part:IsDescendantOf(game.Players.LocalPlayer.Character) and not game.Players:FindFirstChild(part.Parent.Name) then
  part.Velocity += (hole.Position - part.Position).Unit * 250
   end
 end
until not hole or hole.Size.X <= 0 or hole.Parent == nil or hole == nil
  end)
   end)()
end)

tool.Parent = game.Players.LocalPlayer.Backpack
	    elseif Value == "Endless black hole creator" then
local tool = Instance.new("Tool")
tool.Name = "Endless black hole creator"
tool.RequiresHandle = false

tool.Activated:Connect(function()
  coroutine.wrap(function()
local mouseh = game.Players.LocalPlayer:GetMouse().Hit
local hole = cloneref(Instance.new("Part", workspace))
hole.Position = mouseh.Position
hole.Anchored = true
hole.CanCollide = false
hole.Shape = "Ball"
hole.Size = Vector3.new(0.1, 0.1, 0.1)
hole.Color = Color3.new(0, 0, 0)
hole.Material = "Neon"
game.Debris:AddItem(hole, 5)

local partTweenn2 = game:GetService("TweenService"):Create(hole, TweenInfo.new(0.3, Enum.EasingStyle.Exponential), {
        Size = Vector3.new(35, 35, 35)
    })
    partTweenn2:Play()
  spawn(function()
repeat task.wait()
local parts = workspace:GetPartBoundsInRadius(hole.Position, 1e10)
 for _, part in ipairs(parts) do
   if part and part.Anchored == false and not part:IsDescendantOf(game.Players.LocalPlayer.Character) and not game.Players:FindFirstChild(part.Parent.Name) then
  part.Velocity += (hole.Position - part.Position).Unit * 250
   end
 end
until not hole or hole.Size.X <= 0 or hole.Parent == nil or hole == nil
  end)
   end)()
end)

tool.Parent = game.Players.LocalPlayer.Backpack
	    elseif Value == "White hole creator" then
local tool = Instance.new("Tool")
tool.Name = "White hole creator"
tool.RequiresHandle = false

tool.Activated:Connect(function()
  coroutine.wrap(function()
local mouseh = game.Players.LocalPlayer:GetMouse().Hit
local hole = cloneref(Instance.new("Part", workspace))
hole.Position = mouseh.Position
hole.Anchored = true
hole.CanCollide = false
hole.Shape = "Ball"
hole.Size = Vector3.new(0.1, 0.1, 0.1)
hole.Color = Color3.new(1, 1, 1)
hole.Material = "Neon"
game.Debris:AddItem(hole, 5)

local partTweenn2 = game:GetService("TweenService"):Create(hole, TweenInfo.new(0.3, Enum.EasingStyle.Exponential), {
        Size = Vector3.new(35, 35, 35)
    })
    partTweenn2:Play()
  spawn(function()
repeat task.wait()
local parts = workspace:GetPartBoundsInRadius(hole.Position, 200)
 for _, part in ipairs(parts) do
   if part and part.Anchored == false and not part:IsDescendantOf(game.Players.LocalPlayer.Character) and not game.Players:FindFirstChild(part.Parent.Name) then
  part.Velocity += (hole.Position - part.Position).Unit * -400
   end
 end
until not hole or hole.Size.X <= 0 or hole.Parent == nil or hole == nil
  end)
   end)()
end)

tool.Parent = game.Players.LocalPlayer.Backpack
	   end
	end    
})

Tab:AddDropdown({
	Name = "Part control tools",
	Default = "",
	Options = {"Part flinger", "Part mover", "Attach part", "Suction parts", "Reset parts"},
	Callback = function(Value)
	   if Value == "Part flinger" then
local tool = Instance.new("Tool", game.Players.LocalPlayer.Backpack)
tool.Name = "Part flinger"
tool.RequiresHandle = false

tool.Activated:Connect(function()
 local part = game.Players.LocalPlayer:GetMouse().Target
  if part and part.Anchored == false then
    game.Players.LocalPlayer.SimulationRadius = math.huge
    sethiddenproperty(game.Players.LocalPlayer, "MaxSimulationRadius", math.huge)
    
    part.Velocity = Vector3.new(1000, 1000, 1000)
    part.AssemblyLinearVelocity = Vector3.new(1000, 1000, 1000)
    part.AssemblyAngularVelocity = Vector3.new(1000, 1000, 1000)
  end
end)
	   elseif Value == "Part mover" then
local tool = Instance.new("Tool", game.Players.LocalPlayer.Backpack)
tool.Name = "Part mover"
tool.RequiresHandle = false

tool.Activated:Connect(function()
 local part = game.Players.LocalPlayer:GetMouse().Target
  if part and part.Anchored == false then
    game.Players.LocalPlayer.SimulationRadius = math.huge
    sethiddenproperty(game.Players.LocalPlayer, "MaxSimulationRadius", math.huge)
    
    repeat task.wait()
      part.AssemblyLinearVelocity = (game.Players.LocalPlayer:GetMouse().Hit.Position - part.Position).Unit * 400
    until not part or tool.Parent ~= game.Players.LocalPlayer.Character
  end
end)
         elseif Value == "Attach part" then
local tool = Instance.new("Tool", game.Players.LocalPlayer.Backpack)
tool.Name = "Attach part"
tool.RequiresHandle = false

tool.Activated:Connect(function()
 local part = game.Players.LocalPlayer:GetMouse().Target
  if part and part.Anchored == false then
    game.Players.LocalPlayer.SimulationRadius = math.huge
    sethiddenproperty(game.Players.LocalPlayer, "MaxSimulationRadius", math.huge)
    
    local bv = Instance.new("BodyVelocity", part)
    bv.MaxForce = Vector3.new(math.huge, math.huge,  math.huge)
    bv.Velocity = Vector3.zero
    bv.P = math.huge
  end
end)
     elseif Value == "Suction parts" then
local tool = Instance.new("Tool", game.Players.LocalPlayer.Backpack)
tool.Name = "Suction parts" 
tool.RequiresHandle = false

tool.Activated:Connect(function()
  game.Players.LocalPlayer.SimulationRadius = math.huge
  sethiddenproperty(game.Players.LocalPlayer, "MaxSimulationRadius", math.huge)
  
  for _, par in next, workspace:GetPartBoundsInRadius(game.Players.LocalPlayer.Character.HumanoidRootPart.Position, 40) do
    if par.Anchored == false and not par:IsDescendantOf(game.Players.LocalPlayer.Character) and not game.Players:GetPlayerFromCharacter(par.Parent) then
      task.spawn(function()
        repeat task.wait()
          par.CanCollide = false
          par.AssemblyLinearVelocity = (game.Players.LocalPlayer.Character.Head.Position + Vector3.new(0, 10 + par.Size.Y, 0) - par.Position).Unit * 350
          par.AssemblyAngularVelocity = Vector3.new(100, 100, 100)
        until not par or tool.Parent ~= game.Players.LocalPlayer.Character
      end)
    end
  end
end)
    elseif Value == "Reset parts" then
local tool = Instance.new("Tool", game.Players.LocalPlayer.Backpack)
tool.Name = "Reset parts"
tool.RequiresHandle = false

tool.Activated:Connect(function()
    game.Players.LocalPlayer.SimulationRadius = math.huge
    sethiddenproperty(game.Players.LocalPlayer, "MaxSimulationRadius", math.huge)
    
  for _, part in next, workspace:GetPartBoundsInRadius(game.Players.LocalPlayer.Character.HumanoidRootPart.Position, 90) do
    if part.Anchored == false and not part:IsDescendantOf(game.Players.LocalPlayer.Character) and not game.Players:GetPlayerFromCharacter(part.Parent) then
    
      for _, prop in next, game:GetService("ReflectionService"):GetPropertyNames(part.ClassName) do
        if not table.find({"Color", "Parent", "Size", "Material", "MaterialVariant", "Position", "BrickColor", "CFrame", "CollisionGroup", "Rotation", "Transparency", "LocalTransparencyModifer", "MeshId", "TextureId", "TextureID", "Style"}, prop) then
          part:ResetPropertyToDefault(tostring(prop))
        end
      end
      
      for _, obj in next, part:GetDescendants() do
        if obj:IsA("BodyMover") or obj:IsA("Constraint") then
          obj:Destroy()
        end
      end
    end
  end
end)
	   end
	end    
})

Tab:AddToggle({
 Name = "Xray",
 Default = false,
 Callback = function(Value)
xrayen = Value
for _, part in ipairs(workspace:GetDescendants()) do
  if part:IsA("BasePart") and not part.Parent:FindFirstChildOfClass("Humanoid") and part.Parent ~= game.Players.LocalPlayer.Character then
 part.LocalTransparencyModifier = xrayen and 0.6 or 0
  end
end
 end
})

Tab:AddButton({
 Name = "Simulation Bypass",
 Callback = function()
local bindable = Instance.new("BindableFunction")
function bindable.OnInvoke(response)
     if response == "Yes" then
        loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/ADSKerOffical/BHU/refs/heads/main/SB"))()
     end
end

game:GetService("StarterGui"):SetCore("SendNotification", {
	Title = "Notification",
	Text = "Are you sure you want to run this feature? you can\'t turn it off",
	Duration = math.huge,
	Icon = "rbxassetid://16336200609",
	Callback = bindable,
	Button1 = "Yes",
	Button2 = "No"
})
   end
})

Tab:AddLabel("     Tools that manipulate objects:")

Tab:AddButton({
 Name = "Break model",
 Callback = function()
        tool = Instance.new("Tool", game.Players.LocalPlayer.Backpack)
tool.Name = "Break model"
tool.RequiresHandle = false

tool.Activated:Connect(function()
 local mouset = game.Players.LocalPlayer:GetMouse().Target
  if mouset and mouset.Anchored ~= true and not mouset.Parent:FindFirstChildOfClass("Humanoid") then
mouset.Parent:BreakJoints()
  end
end)
   end    
})

Tab:AddButton({
 Name = "Attract part",
 Callback = function()
        tool = Instance.new("Tool", game.Players.LocalPlayer.Backpack)
tool.Name = "Attract part"
tool.RequiresHandle = false

tool.Activated:Connect(function()
coroutine.wrap(function()
 local fyt = game.Players.LocalPlayer:GetMouse().Target
  if fyt and fyt.Anchored == false then
   spawn(function()
     repeat task.wait()
fyt.CanCollide = false
fyt.Velocity = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - fyt.Position).Unit * 100
     until not fyt
    end)
   end
 end)()
end)
   end    
})

Tab:AddButton({
 Name = "Attract character",
 Callback = function()
        tool = Instance.new("Tool", game.Players.LocalPlayer.Backpack)
tool.Name = "Attract character"
tool.RequiresHandle = false

tool.Activated:Connect(function()
coroutine.wrap(function()
 local fyt = game.Players.LocalPlayer:GetMouse().Target
  if fyt and fyt.Parent:FindFirstChildOfClass("Humanoid") then
print("It Humanoid")
local huma = fyt.Parent:FindFirstChildOfClass("Humanoid")
   spawn(function()
     repeat task.wait()
 for _, part in ipairs(huma.Parent:GetDescendants()) do
   if part:IsA("BasePart") then
 part.CanCollide = false
 part.CanTouch = false
   end
 end
huma.RootPart.Velocity = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - huma.RootPart.Position).Unit * 100
huma:ChangeState("FallingDown")
     until not huma
    end)
  end
 end)()
end)
   end    
})

Tab:AddButton({
 Name = "Attract part with his parent",
 Callback = function()
        tool = Instance.new("Tool", game.Players.LocalPlayer.Backpack)
tool.Name = "Attract part with his parent"
tool.RequiresHandle = false

tool.Activated:Connect(function()
coroutine.wrap(function()
 local fyt = game.Players.LocalPlayer:GetMouse().Target
  if fyt and fyt.Anchored == false then
   spawn(function()
     repeat task.wait()
fyt.CanCollide = false
fyt.Velocity = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - fyt.Position).Unit * 100
   if not fyt.Parent:FindFirstChildOfClass("Humanoid") then
 fyt.Parent:BreakJoints()
   end
 for _, part in ipairs(fyt:GetDescendants()) do
   if part:IsA("BasePart") then
 part.Velocity = fyt.Velocity
   end
 end
     until not fyt or not fyt.Parent
    end)
   end
 end)()
end)
   end    
})

local Section = Tab:AddSection({
 Name = "Lighting Control"
})

Tab:AddButton({
 Name = "Remove effects",
 Callback = function()
for _, light in ipairs(game.Lighting:GetDescendants()) do
 if light:IsA("BlurEffect") or light:IsA("BloomEffect") or light:IsA("ColorCorrectionEffect") or light:IsA("SunRaysEffect") then
light:Destroy()
 end
end
 end    
})

Tab:AddButton({
 Name = "Remove fog",
 Callback = function()
        game.Lighting.FogStart = math.huge
        game.Lighting.FogEnd = math.huge
   end    
})

Tab:AddButton({
 Name = "Fulbright",
 Callback = function()
        game.Lighting.Ambient = Color3.new(1, 1, 1)
	    game.Lighting.Brightness = 1
        game.Lighting.FogEnd = math.huge
        game.Lighting.FogStart = math.huge
        game.Lighting.TimeOfDay = "12:00:00"
        game.Lighting.ExposureCompensation = 1
	      game.Lighting.Changed:Connect(function()
		     game.Lighting.Ambient = Color3.new(1, 1, 1)
		     game.Lighting.Brightness = 1
		     game.Lighting.FogEnd = math.huge
		     game.Lighting.ExposureCompensation = 1
		     game.Lighting.FogStart = math.huge
		     game.Lighting.TimeOfDay = "12:00:00"
	      end)
   end    
})

Tab:AddDropdown({
	Name = "Time set",
	Default = "s",
	Options = {"Day", "Night"},
	Callback = function(Value)
	       if Value == "Day" then
	game.Lighting.TimeOfDay = "12.00"
	end
	      if Value == "Night" then
	game.Lighting.TimeOfDay = "23.59"
	end
	end    
})

local Section = Tab:AddSection({
 Name = "CoreGui Control"
})

Tab:AddDropdown({
	Name = "Enable CoreGui",
	Default = "E",
	Options = {"Enable reset", "Enable inventory", "Enable emotes", "Enable leaderboard", "Enable chat"},
	Callback = function(Value)
		if Value == "Enable reset" then
		local StarterGui = game:GetService("StarterGui")
StarterGui:SetCore("ResetButtonCallback",true)
end
       if Value == "Enable inventory" then
local StarterGui = game:GetService("StarterGui")
StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.Backpack, true)
end
      if Value == "Enable emotes" then
      game:GetService("StarterGui"):SetCoreGuiEnabled(Enum.CoreGuiType.EmotesMenu, true)
      end
      if Value == "Enable leaderboard" then
      sgui = game:GetService("StarterGui")
sgui:SetCoreGuiEnabled(Enum.CoreGuiType.PlayerList, true)
end
      if Value == "Enable chat" then
      local sgui = game:GetService("StarterGui")
sgui:SetCoreGuiEnabled(Enum.CoreGuiType.Chat, true)
end
	end    
})

Tab:AddDropdown({
	Name = "Disable CoreGui",
	Default = "E",
	Options = {"Disable reset", "Disable inventory", "Disable emotes", "Disable leaderboard", "Disable chat"},
	Callback = function(Value)
		if Value == "Enable reset" then
		local StarterGui = game:GetService("StarterGui")
StarterGui:SetCore("ResetButtonCallback",false)
end
       if Value == "Disable inventory" then
local StarterGui = game:GetService("StarterGui")
StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.Backpack, false)
end
      if Value == "Disable emotes" then
      local StarterGui = game:GetService("StarterGui")
      StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.EmotesMenu, false)
      end
      if Value == "Disable leaderboard" then
      sgui = game:GetService("StarterGui")
sgui:SetCoreGuiEnabled(Enum.CoreGuiType.PlayerList, false)
      end
      if Value == "Disable chat" then
      local sgui = game:GetService("StarterGui")
sgui:SetCoreGuiEnabled(Enum.CoreGuiType.Chat, false)
      end
	end    
})

Tab:AddToggle({
 Name = "Cycle through everything",
 Default = false,
 Callback = function(Value)
vgj = Value
   while vgj and game:GetService("RunService").Heartbeat:Wait() do
game:GetService("StarterGui"):SetCoreGuiEnabled(Enum.CoreGuiType.All, true)
   end
 end    
})

local Section = Tab:AddSection({
 Name = "NPC Control"
})

Tab:AddToggle({
 Name = "Kill nearest",
 Default = false,
 Callback = function(Value)
yoo = Value
while yoo and task.wait() do
 if workspace:FindFirstChild(game.Players.LocalPlayer.Name) and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
   local parts = workspace:GetPartBoundsInRadius(game.Players.LocalPlayer.Character.HumanoidRootPart.Position, 45)
    for _, part in next, parts do
      if part.Anchored == false and not game.Players:GetPlayerFromCharacter(part.Parent) and part.Parent:FindFirstChildOfClass("Humanoid") then
       local humanoid = part.Parent:FindFirstChildOfClass("Humanoid")
        game.Players.LocalPlayer.SimulationRadius = math.huge
        humanoid.Health = 0
        humanoid:TakeDamage(math.huge)
      end
    end
  end
 end
   end    
})

Tab:AddToggle({
 Name = "Push nearest",
 Default = false,
 Callback = function(Value)
myyy = Value
while myyy and task.wait() do
 if workspace:FindFirstChild(game.Players.LocalPlayer.Name) and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
   local parts = workspace:GetPartBoundsInRadius(game.Players.LocalPlayer.Character.HumanoidRootPart.Position, 45)
    for _, part in next, parts do
      if part.Anchored == false and not game.Players:GetPlayerFromCharacter(part.Parent) and part.Parent:FindFirstChildOfClass("Humanoid") then
       local humanoid = part.Parent:FindFirstChildOfClass("Humanoid")
        game.Players.LocalPlayer.SimulationRadius = math.huge
        humanoid.RootPart.Velocity = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - humanoid.RootPart.Position).Unit * -200
      end
    end
  end
 end
   end    
})

Tab:AddToggle({
 Name = "Attract nearest",
 Default = false,
 Callback = function(Value)
hhh = Value
while hhh and task.wait() do
 if workspace:FindFirstChild(game.Players.LocalPlayer.Name) and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
   local parts = workspace:GetPartBoundsInRadius(game.Players.LocalPlayer.Character.HumanoidRootPart.Position, 45)
    for _, part in next, parts do
      if part.Anchored == false and not game.Players:GetPlayerFromCharacter(part.Parent) and part.Parent:FindFirstChildOfClass("Humanoid") then
       local humanoid = part.Parent:FindFirstChildOfClass("Humanoid")
        game.Players.LocalPlayer.SimulationRadius = math.huge
        humanoid.RootPart.Velocity = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - humanoid.RootPart.Position).Unit * 200
      end
    end
  end
 end
   end    
})

Tab:AddToggle({
 Name = "Rotate nearest",
 Default = false,
 Callback = function(Value)
oiyj = Value
while oiyj and task.wait() do
 if workspace:FindFirstChild(game.Players.LocalPlayer.Name) and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
   local parts = workspace:GetPartBoundsInRadius(game.Players.LocalPlayer.Character.HumanoidRootPart.Position, 45)
    for _, part in next, parts do
      if part.Anchored == false and not game.Players:GetPlayerFromCharacter(part.Parent) and part.Parent:FindFirstChildOfClass("Humanoid") then
       local humanoid = part.Parent:FindFirstChildOfClass("Humanoid")
        game.Players.LocalPlayer.SimulationRadius = math.huge
        humanoid:ChangeState("FallingDown")
        local angle = tick() * 2
        humanoid.RootPart.Velocity = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position + Vector3.new(20 * math.cos(angle), 0, 20 * math.sin(angle)) - humanoid.RootPart.Position).Unit * 300
      end
    end
  end
 end
   end    
})

Tab:AddButton({
 Name = "Stun Nearest",
 Callback = function()
for _, humanoid in ipairs(workspace:GetDescendants()) do
  if humanoid:IsA("Humanoid") and not game.Players:FindFirstChild(humanoid.Parent.Name) and humanoid.Parent ~= game.Players.LocalPlayer.Character then
    humanoid.WalkSpeed = 0
    humanoid.JumpPower = 0

humanoid:GetPropertyChangedSignal("WalkSpeed"):Connect(function()
  humanoid.WalkSpeed = 0
  humanoid.JumpPower = 0
end)
  end
end
   end    
})

Tab:AddToggle({
 Name = "Void nearest",
 Default = false,
 Callback = function(Value)
oij = Value
while oij and task.wait() do
 if workspace:FindFirstChild(game.Players.LocalPlayer.Name) and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
   local parts = workspace:GetPartBoundsInRadius(game.Players.LocalPlayer.Character.HumanoidRootPart.Position, 30)
    for _, part in next, parts do
      if part.Anchored == false and not game.Players:GetPlayerFromCharacter(part.Parent) and part.Parent:FindFirstChildOfClass("Humanoid") then
       local humanoid = part.Parent:FindFirstChildOfClass("Humanoid")
        for _, part in next, humanoid.Parent:GetChildren() do
           if part:IsA("BasePart") then
   part.CanCollide = false
   part.Velocity = Vector3.new(0, -10000, 0)
   part.AssemblyAngularVelocity = Vector3.new(0, -10000, 0)
   part.AssemblyLinearVelocity = Vector3.new(0, -10000, 0)
           end
        end
       humanoid.JumpPower = 0
       humanoid.WalkSpeed = 0
       humanoid.PlatformStand = true
      end
   end
  end
 end
   end    
})

Tab:AddToggle({
 Name = "Touch nearest parts to all npcs",
 Default = false,
 Callback = function(Value)
        bubusraka = Value
while bubusraka and task.wait() do
 if game.Players.LocalPlayer.Character ~= nil and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
  game.Players.LocalPlayer.SimulationRadius = math.huge
   for _, part in next, workspace:GetPartBoundsInRadius(game.Players.LocalPlayer.Character.HumanoidRootPart.Position, 40) do
     if part:FindFirstChild("TouchInterest") then
       for _, model in next, workspace:GetChildren() do
          if model:IsA("Model") and not game.Players:GetPlayerFromCharacter(model) and model:FindFirstChildOfClass("Humanoid") then
            for _, parte in next, model:GetChildren() do
              if parte:IsA("BasePart") then
                task.spawn(function()
                  firetouchinterest(part, parte, 0)
                  firetouchinterest(part, parte, 1)
                end)
              end
            end
          end
        end
      end
    end
  end
end
   end    
})

local Section = Tab:AddSection({
 Name = "Chat Control"
})

Tab:AddTextbox({
 Name = "Fire invisible chat message",
 Default = "",
 TextDisappear = true,
 Callback = function(Value)
   game.Players:Chat(Value)
 end   
})

Tab:AddToggle({
 Name = "Anti chat spy",
 Default = false,
 Callback = function(Value)
 Enab = Value
 while Enab and task.wait() do
game.Players:Chat(string.rep("AntiChatSpy", 15))
end
 end    
})

Tab:AddButton({
 Name = "Send empty message",
 Callback = function()
if game:GetService("TextChatService").ChatVersion == Enum.ChatVersion.LegacyChatService then
game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("　", "All")
 else
game:GetService("TextChatService").TextChannels.RBXGeneral:SendAsync("　", "All")
end
   end    
})

Tab:AddButton({
 Name = "Check chat version",
 Callback = function()
local chatver = game:GetService("TextChatService").ChatVersion
      if chatver == Enum.ChatVersion.LegacyChatService then
OrionLib:MakeNotification({
	Name = "Budgie Hub | Fayintx",
	Content = "The place uses the old version of chat, you can use ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest",
	Image = "rbxassetid://4483345998",
	Time = 5
})
        else
OrionLib:MakeNotification({
	Name = "Budgie Hub | Fayintx",
	Content = "The place uses a new version of chat, use TexchatService.TextChannels.RBXGeneral:SendAsync",
	Image = "rbxassetid://4483345998",
	Time = 5
})
      end
   end    
})

Tab:AddTextbox({
 Name = "Easy Chat bypass (by me)",
 Default = "",
 TextDisappear = true,
 Callback = function(Value)
if Value == nil or Value == "" or #Value == 0 then return end
 local function AddSymbolToString(str, symbol)
  local newStr = ""
  for i = 1, #str do
    newStr = newStr .. string.sub(str, i, i) .. symbol
  end
  return newStr
end

 local function AddToEnd(str1, str2)
  return tostring(str1) .. tostring(str2)
 end
 
    if game:GetService("TextChatService").ChatVersion == Enum.ChatVersion.TextChatService then
  game:GetService("TextChatService").TextChannels.RBXGeneral:SendAsync(AddSymbolToString(Value, "<"))
    elseif game:GetService("TextChatService").ChatVersion == Enum.ChatVersion.LegacyChatService then
  game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(AddSymbolToString(Value, ";"), "All")
   end
 end   
})

Tab:AddButton({
 Name = "Tall message",
 Callback = function()
       if game:GetService("TextChatService").ChatVersion == Enum.ChatVersion.TextChatService then
  game:GetService("TextChatService").TextChannels.RBXGeneral:SendAsync("." .. string.rep("\r", 197) .. ".")
         else
OrionLib:MakeNotification({
	Name = "Budgie Hub | Fayintx",
	Content = '<p><font color="rgb(255, 0, 0)">The function works only on a new chat</font></p>',
	Image = "rbxassetid://4483345998",
	Time = 5
})
      end
   end    
})

Tab:AddToggle({
 Name = "Russian chat bypass",
 Default = false,
 Callback = function(Value)
 ffbh = Value
     while ffbh and task.wait() do
       game.Players:Chat("/e le le le le le")
       game.Players:Chat("/e can can can can can can can")
     end
   end    
})

Tab:AddButton({
 Name = "/execute command",
 Callback = function()
game.StarterGui:SetCore("SendNotification", {
     Title = "Budgie Hub | Fayintx";
     Text = 'Chat command "/execute" activated';
     Icon = "rbxassetid://16336200609";
     Duration = "2";
 })
        if game.TextChatService.ChatVersion == Enum.ChatVersion.LegacyChatService then

 game.Players.LocalPlayer.Chatted:Connect(function(message)
  local parts = message:split(" ")
  if parts[1] == "/execute" then
    local code_string = table.concat(parts, " ", 2)

    if code_string then
      local func, err = loadstring(code_string)()
    end
   end
  end)
  
 else
 
 game.TextChatService.MessageReceived:Connect(function(info)
  if info.TextSource and info.TextSource.UserId == game.Players.LocalPlayer.UserId then
  local params = Instance.new("TextChatMessageProperties")
   local parts = info.Text:split(" ")
    if parts[1] == "/execute" then
     local code = table.concat(parts, " ", 2)
     if code then loadstring(code)() end
     params.Text = ""
   end
  end
 end)
end
   end    
})

local Section = Tab:AddSection({
 Name = "Camera Control"
})

Tab:AddTextbox({
 Name = "FOV",
 Default = "70",
 TextDisappear = true,
 Callback = function(Value)
local partTweenn2 = game:GetService("TweenService"):Create(workspace.CurrentCamera, TweenInfo.new(1, Enum.EasingStyle.Exponential), {
        FieldOfView = tonumber(Value)
    })
    partTweenn2:Play()
 end   
})

Tab:AddButton({
 Name = "Infinite Max Zoom",
 Callback = function()
        game.Players.LocalPlayer.CameraMaxZoomDistance = math.huge
        game.Players.LocalPlayer.CameraMinZoomDistance = 0
   end    
})

Tab:AddButton({
 Name = "Fix camera",
 Callback = function()
local camera = workspace.CurrentCamera
camera.CameraType = Enum.CameraType.Custom
camera.FieldOfView = 70
camera.CameraSubject = game.Players.LocalPlayer.Character.Humanoid
game.Players.LocalPlayer.Character.Humanoid.CameraOffset = Vector3.zero
game.Players.LocalPlayer.CameraMaxZoomDistance = math.huge
game.Players.LocalPlayer.CameraMinZoomDistance = 0
   end    
})

local Section = Tab:AddSection({
 Name = "Animation Control"
})

Tab:AddButton({
 Name = "Reset animations",
 Callback = function()
        local Humanoid = game.Players.LocalPlayer.Character.Humanoid
local ActiveTracks = Humanoid:GetPlayingAnimationTracks()
for _,v in pairs(ActiveTracks) do
     v:Stop()
end
   end    
})

Tab:AddTextbox({
	Name = "Animation speed",
	Default = "",
	TextDisappear = true,
	Callback = function(Value)
		local Humanoid = game.Players.LocalPlayer.Character.Humanoid
local ActiveTracks = Humanoid:GetPlayingAnimationTracks()
for _,v in pairs(ActiveTracks) do
     v:AdjustSpeed(Value)
end
	end	  
})

Tab:AddToggle({
 Name = "Disable animate",
 Default = false,
 Callback = function(Value)
     pcall(function()
        game.Players.LocalPlayer.Character.Animate.Disabled = Value
     end)
   end    
})

Tab:AddTextbox({
  Name = "Active all animations at player",
  Default = "",
  TextDisappear = true,
  Callback = function(Value)
local player = api2:GetPlayerByLowerName(Value)
    if player and player ~= game.Players.LocalPlayer and player.Character and player.Character.Humanoid then
for _, anim in next, player.Character.Humanoid:GetPlayingAnimationTracks() do
  local anima = Instance.new("Animation")
  anima.AnimationId = anim.Animation.AnimationId
  local an = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(anima)
   an:Play()
   an.Looped = false
end
      else
OrionLib:MakeNotification({
   Name = "Budgie Hub | Fayintx",
   Content = "Player not found",
   Image = "rbxassetid://4483345998",
   Time = 5
})
    end
 end   
})

local Section = Tab:AddSection({
 Name = "Gui Control"
})

Tab:AddToggle({
 Name = "Remove Disconnect Errors",
 Default = false,
 Callback = function(Value)
togg = Value
  while togg and task.wait() do
game:GetService("GuiService"):ClearError()
  end
 end    
})

Tab:AddToggle({
 Name = "Remove Gameplay Paused",
 Default = false,
 Callback = function(Value)
togel = not Value
  game:GetService("GuiService"):SetGameplayPausedNotificationEnabled(togel)
 end    
})

Tab:AddToggle({
 Name = "Clear error after disconnect",
 Default = false,
 Callback = function(Value)
       game:GetService("GuiService").ErrorMessageChanged:Connect(function()
           if Value == false then return end
          game:GetService("GuiService"):ClearError()
       end)
   end    
})

local Section = Tab:AddSection({
 Name = "Network"
})

Tab:AddButton({
 Name = "Get fps count",
 Callback = function()
OrionLib:MakeNotification({
	Name = "Budgie Hub | Fayintx",
    Content = "Your fps: " .. tostring(game:GetService("Stats").Workspace.Heartbeat:GetValue()),
    Image = "rbxassetid://4483345998",
	Time = 5
})
   end    
})

Tab:AddButton({
 Name = "Get ping count",
 Callback = function()
 OrionLib:MakeNotification({
	Name = "Budgie Hub | Fayintx",
    Content = "Your ping: " .. tostring(math.floor(game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValue())),
    Image = "rbxassetid://4483345998",
	Time = 5
})
   end    
})

Tab:AddButton({
 Name = "Get memory usage", 
 Callback = function()
        local Con = math.floor(game:GetService("Stats"):GetTotalMemoryUsageMb())
OrionLib:MakeNotification({
	Name = "Budgie Hub | Fayintx",
	Content = "Your memory usage: " .. tostring(Con) .. "MB",
	Image = "rbxassetid://4483345998",
	Time = 5
})
   end 
})

Tab:AddButton({
 Name = "Instant ReplicationLag",
 Callback = function()
        settings().Network.IncomingReplicationLag = 0
   end    
})

local Section = Tab:AddSection({
 Name = "Teleport Into Places"
})

Tab:AddButton({
 Name = "Rejoin",
 Callback = function()
        game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, game.JobId, game.Players.LocalPlayer)
   end    
})

Tab:AddButton({
 Name = "Server hop",
 Callback = function()
local Player = game.Players.LocalPlayer    
local Http = game:GetService("HttpService")
local TPS = game:GetService("TeleportService")
local Api = "https://games.roblox.com/v1/games/"

local _place,_id = game.PlaceId, game.JobId
local _servers = Api.._place.."/servers/Public?sortOrder=Desc&limit=100"
function ListServers(cursor)
   local Raw = game:HttpGet(_servers .. ((cursor and "&cursor="..cursor) or ""))
   return Http:JSONDecode(Raw)
end

local Next; repeat
   local Servers = ListServers(Next)
   for i,v in next, Servers.data do
       if v.playing < v.maxPlayers and v.id ~= _id then
           local s,r = pcall(TPS.TeleportToPlaceInstance,TPS,_place,v.id,Player)
           if s then break end
       end
   end
   
   Next = Servers.nextPageCursor
until not Next
   end    
})

Tab:AddButton({
    Name = "Get all places in place",
    Callback = function()
        local function getPlaceInfo()
            local places_data = {}
            local places = game:GetService("AssetService"):GetGamePlacesAsync()
            while not places.IsFinished do
                for _, place in ipairs(places:GetCurrentPage()) do
                    table.insert(places_data, {
                        Name = place.Name,
                        PlaceId = place.PlaceId
                    })
                end
                places:AdvanceToNextPageAsync()
            end
            return places_data
        end

        local places = getPlaceInfo()

        if #places <= 1 then
            OrionLib:MakeNotification({
                Name = "Budgie Hub | Fayintx",
                Content = "Places not found",
                Image = "rbxassetid://4483345998",
                Time = 4
            })
        elseif #places > 1 and #places <= 20 then
            local content_string = ""
              for _, place in ipairs(places) do
               content_string = content_string .. "Place name: " .. place.Name .. " Place id: " .. place.PlaceId .. "\n"
              end
            OrionLib:MakeNotification({
                Name = "Budgie Hub | Fayintx",
                Content = content_string,
                Image = "rbxassetid://4483345998",
                Time = 4 + #places
            })
        elseif #places > 1 and #places > 20 then
            OrionLib:MakeNotification({
                Name = "Budgie Hub | Fayintx",
                Content = "There are too many places (" .. #places .. " > 20) . Information sent to console",
                Image = "rbxassetid://4483345998",
                Time = 8
            })
            for _, place in ipairs(places) do
                print("Place name: " .. place.Name .. " Place id: " .. place.PlaceId)
            end
        end
    end
})

Tab:AddTextbox({
 Name = "Teleport to place by id",
 Default = "",
 TextDisappear = true,
 Callback = function(Value)
  if Value == "" or Value == nil or Value <= 0 then return end
    game:GetService("TeleportService"):Teleport(Value)
 local function messag(text)
local hint = Instance.new("Hint", workspace)
hint.Text = tostring(text)
game.Debris:AddItem(hint, 5)
 end
  messag("Teleport...")
local t = game.Players.LocalPlayer.OnTeleport:Connect(function(State)
     if State == Enum.TeleportState.Failed then
messag("Teleport failed")
     end
   end)
 end   
})

Tab:AddButton({
 Name = "Teleport to small server",
 Callback = function()
local Response = game:HttpGet("https://games.roblox.com/v1/games/" .. game.PlaceId .. "/servers/Public?sortOrder=Asc&limit=100")
    local Data = game:GetService("HttpService"):JSONDecode(Response)

local ServerId = nil
    for _, Server in ipairs(Data.data) do
        if Server.playing <= 3 then
            ServerId = Server.id
        end
    end
  if ServerId ~= nil then
game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, ServerId, game.Players.LocalPlayer)
    else
warn("Not found")
  end
   end    
})

Tab:AddButton({
 Name = "Teleport to lonely server",
 Callback = function()
        local Response = game:HttpGet("https://games.roblox.com/v1/games/" .. game.PlaceId .. "/servers/Public?sortOrder=Asc&limit=100")
    local Data = game:GetService("HttpService"):JSONDecode(Response)

local ServerId = nil
    for _, Server in ipairs(Data.data) do
        if Server.playing <= 1 then
            ServerId = Server.id
        end
    end
  if ServerId ~= nil then
game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, ServerId, game.Players.LocalPlayer)
    else
warn("Not found")
  end
   end    
})

Tab:AddButton({
 Name = "Teleport to server with low ping",
 Callback = function()
        local Response = game:HttpGet("https://games.roblox.com/v1/games/" .. game.PlaceId .. "/servers/Public?sortOrder=Asc&limit=100")
    local Data = game:GetService("HttpService"):JSONDecode(Response)

local ServerId = nil
    for _, Server in ipairs(Data.data) do
        if Server.ping <= 80 then
            ServerId = Server.id
        end
    end
  if ServerId ~= nil then
game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, ServerId, game.Players.LocalPlayer)
    else
warn("Not found")
  end
   end    
})

local Section = Tab:AddSection({
 Name = "Id Control"
})

Tab:AddToggle({
 Name = "Set creator id",
 Default = false,
 Callback = function(Value)
vtu = Value
       if vtu == true then
game.Players.LocalPlayer.UserId = game.CreatorId
        else
game.Players.LocalPlayer.UserId = game.Players.LocalPlayer.CharacterAppearanceId
       end
   end    
})

Tab:AddButton({
 Name = "Copy creator id",
 Callback = function()
        setclipboard(tostring(game.CreatorId))
   end    
})

local Section = Tab:AddSection({
  Name = "Place settings"
})

Tab:AddButton({
 Name = "Copy real place id",
 Callback = function()
        setclipboard(string.match(game.Players.LocalPlayer.CharacterAppearance, "?placeId=(%d+)"))
   end    
})

Tab:AddButton({
 Name = "Copy more place ids",
 Callback = function()
       setclipboard("Place Id: " .. tostring(game.PlaceId) .. ", Universe (Game) Id: " .. tostring(game.GameId) .. ", Job Id: " .. tostring(game.JobId) .. ", Version: " .. tostring(game.PlaceVersion) .. ", Creator Id: " .. tostring(game.CreatorId))
   end    
})

Tab:AddTextbox({
 Name = "Set place id",
 Default = "",
 TextDisappear = true,
 Callback = function(Value)
if string.find(Value, "%D") == nil then
 local hook; hook = hookmetamethod(game, "__index", newcclosure(function(self, key)
  if checkcaller() and self == game and key == "PlaceId" then
   if Value == "" then
    return tonumber(string.match(game.Players.LocalPlayer.CharacterAppearance, "?placeId=(%d+)"))
     else
    return tonumber(Value)
   end
  end
   return hook(self, key)
  end))
 
game.StarterGui:SetCore("SendNotification", {
     Title = "Budgie Hub | Fayintx";
     Text = "The ID for the place has been set: " .. tostring(game.PlaceId),
     Icon = "rbxassetid://16336200609";
     Duration = "4";
 })
 else
 OrionLib:MakeNotification({
   Name = "Budgie Hub | Fayintx",
   Content = '<p><font color="rgb(255, 0, 0)">Only numbers are accepted</font></p>',
   Image = "rbxassetid://4483345998",
   Time = 10
  })
end
 end   
})

Tab:AddTextbox({
 Name = "Set creator id",
 Default = "",
 TextDisappear = true,
 Callback = function(Value)
if string.find(Value, "%D") == nil then
 local hook; hook = hookmetamethod(game, "__index", newcclosure(function(self, key)
  if checkcaller() and self == game and key == "CreatorId" then
   if Value == "" then
    return tonumber(string.match(game.Players.LocalPlayer.CharacterAppearance, "?placeId=(%d+)"))
     else
    return tonumber(Value)
   end
  end
   return hook(self, key)
  end))
 
game.StarterGui:SetCore("SendNotification", {
     Title = "Budgie Hub | Fayintx";
     Text = "The ID for the place has been set: " .. tostring(game.PlaceId),
     Icon = "rbxassetid://16336200609";
     Duration = "4";
 })
 else
 OrionLib:MakeNotification({
   Name = "Budgie Hub | Fayintx",
   Content = '<p><font color="rgb(255, 0, 0)">Only numbers are accepted</font></p>',
   Image = "rbxassetid://4483345998",
   Time = 10
  })
end
 end   
})

local Section = Tab:AddSection({
 Name = "Console Control"
})

Tab:AddToggle({
 Name = "Disable console",
 Default = false,
 Callback = function(Value)
if game:GetService("CoreGui"):FindFirstChild("DevConsoleMaster") then
   game:GetService("CoreGui"):FindFirstChild("DevConsoleMaster").Enabled = not Value
end
 end    
})

Tab:AddButton({
 Name = "Open console",
 Callback = function()
        game:GetService("StarterGui"):SetCore("DevConsoleVisible", true)
   end    
})

Tab:AddTextbox({
 Name = "Print green text",
 Default = "",
 TextDisappear = true,
 Callback = function(Value)
   printColor(Color3.new(0, 1, 0), tostring(Value), 15)
 end   
})

local Section = Tab:AddSection({
 Name = "Sky control"
})

sky = Instance.new("Sky", game.Lighting)

Tab:AddTextbox({
 Name = "Change sky id",
 Default = "id",
 TextDisappear = true,
 Callback = function(Value)
   sky.SkyboxRt = "rbxassetid://" .. tostring(Value)
   sky.SkyboxBk = "rbxassetid://" .. tostring(Value)
   sky.SkyboxDn = "rbxassetid://" .. tostring(Value)
   sky.SkyboxFt = "rbxassetid://" .. tostring(Value)
   sky.SkyboxLf = "rbxassetid://" .. tostring(Value)
   sky.SkyboxUp = "rbxassetid://" .. tostring(Value)
 end   
})

local stc = sky.StarCount
Tab:AddToggle({
 Name = "Remove celestial bodies",
 Default = false,
 Callback = function(Value)
      if Value == true then
sky.CelestialBodiesShown = false
sky.StarCount = 0
       else
sky.CelestialBodiesShown = true
sky.StarCount = stc
      end
   end    
})

local Section = Tab:AddSection({
 Name = "ProximityPrompt control"
})

Tab:AddToggle({
 Name = "Enable proximity prompts",
 Default = false,
 Callback = function(Value)
      while gyub and task.wait() do
        for _, class in next, workspace:GetDescendants() do
           if class:IsA("ProximityPrompt") then
class.Enabled = true
class.ClickablePrompt = true
           end
        end
      end
   end    
})

Tab:AddToggle({
 Name = "Enable proximity prompts (hard)",
 Default = false,
 Callback = function(Value)
tofle = Value
 for i, v in next, workspace:GetDescendants() do
   if v:IsA("ProximityPrompt") then
    for _, v in next, getconnections(v.Changed) do
 v:Disconnect()
    end
v.Enabled = true
v.ClickablePrompt = true
     v.Changed:Connect(function(prop)
       if tofle == false then return end
v.Enabled = true
v.ClickablePrompt = true
     end)
   end
 end
 
 game:GetService("ProximityPromptService").Changed:Connect(function(prop)
    if tofle == false then return end
   if prop == "Enabled" then
game.ProximityPromptService.Enabled = true
   elseif prop == "MaxPromptsVisible" and game.ProximityPromptService.MaxPromptsVisible < 1 then
game.ProximityPromptService.MaxPromptsVisible = 10
   end
 end)
 
   end    
})

Tab:AddButton({
 Name = "Activate all proximity prompts",
 Callback = function()
 local oldpos = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
       for _, class in next, workspace:GetDescendants() do
         if class:IsA("ProximityPrompt") and class.Parent["CFrame"] then
 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = class.Parent.CFrame
  task.wait()
 fireproximityprompt(class, 0)
 fireproximityprompt(class, 1)
  task.wait(0.05)
         end
       end
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = oldpos
   end    
})

Tab:AddToggle({
 Name = "Include proximity prompts aura",
 Default = false,
 Callback = function(Value)
vgh = Value
     while vgh and task.wait(0.1) do
       for _, v in next, workspace:GetDescendants() do
          if v:IsA("ProximityPrompt") then
             fireproximityprompt(v, 0)
             fireproximityprompt(v, 1)
          end
       end
     end
   end    
})

Tab:AddToggle({
 Name = "Instant proximity prompts",
 Default = false,
 Callback = function(Value)
       ippx = Value
game:GetService("ProximityPromptService").PromptButtonHoldBegan:Connect(function(prompt) 
 if ippx == false then return end
  prompt.HoldDuration = 0 
end)
   end    
})

local Section = Tab:AddSection({
 Name = "Click Detector control"
})

Tab:AddButton({
 Name = "Activate all click detectors",
 Callback = function()
      for _, detec in next, workspace:GetDescendants() do
         if detec:IsA("ClickDetector") then
     detec.MaxActivationDistance = math.huge
     fireclickdetector(detec)
         end
      end
   end    
})

Tab:AddToggle({
 Name = "Fire click detectors aura",
 Default = false,
 Callback = function(Value)
    oppoj = Value
      while oppoj and task.wait() do
local parts = workspace:GetPartBoundsInRadius(game.Players.LocalPlayer.Character.HumanoidRootPart.Position, 30)
  for _, part in ipairs(parts) do
     if part and part:FindFirstChildOfClass("ClickDetector") then
fireclickdetector(part:FindFirstChildOfClass("ClickDetector"))
     end
  end
      end
   end    
})

local Section = Tab:AddSection({
 Name = "CoreGui Control v2 (open all tabs to make it work)"
})

Tab:AddToggle({
 Name = "Hide leave button",
 Default = false,
 Callback = function(Valu)
      pcall(function()
       game.CoreGui.RobloxGui.SettingsClippingShield.SettingsShield.MenuContainer.PageViewClipper.PageView.PageViewInnerFrame.Players.ButtonsContainer.LeaveButtonButton.Visible = not Valu
      end)
   end    
})

Tab:AddToggle({
 Name = "Hide gamepasses prompt",
 Default = false,
 Callback = function(Value)
      pcall(function()
       game:GetService("CoreGui").PurchasePrompt.Enabled = not Value
      end)
   end    
})

Tab:AddToggle({
 Name = "Hide resume button",
 Default = false,
 Callback = function(Value)
        pcall(function()
         game.CoreGui.RobloxGui.SettingsClippingShield.SettingsShield.MenuContainer.PageViewClipper.PageView.PageViewInnerFrame.Players.ButtonsContainer.ResumeButtonButton = not Value
        end)
   end    
})

local Section = Tab:AddSection({
 Name = "Keyboard / Screen Control"
})

Tab:AddTextbox({
    Name = "Simulate key press",
    Default = "F9",
    TextDisappear = false,
    Callback = function(Value)
if Enum.KeyCode[Value] then
  game:GetService("VirtualInputManager"):SendKeyEvent(true, Enum.KeyCode[Value], false, game)
   else
  printColor(Color3.new(1, 1, 1), "You are trying to use a non-existent KeyCode: " .. tostring(Value) .. " Unable to simulate keypress", 15)
end
    end   
})

Tab:AddToggle({
 Name = "Screen auto clicker",
 Default = false,
 Callback = function(Value)
gyyhh = Value
     while gyyhh and task.wait() do
game:GetService("VirtualInputManager"):SendMouseButtonEvent(0, 0, 0, true, game, 1)
     end
   end    
})

Tab:AddTextbox({
 Name = "Simulate a button press",
 Default = "UDim (x, y)",
 TextDisappear = true,
 Callback = function(Value)
local inputString = Value
local x, y = inputString:match("(%d+),%s*(%d+)")

x = tonumber(x)
y = tonumber(y)
print(x, y)

if x and y then
    game:GetService("VirtualInputManager"):SendMouseButtonEvent(x, y, 1, false, nil, 1)
else
    printColor(Color3.new(1, 1, 1), "Invalid number format", 15)
end
 end   
})

local CVS = workspace.CurrentCamera.ViewportSize
Tab:AddLabel("Your screen size: " .. tostring(CVS))

local Section = Tab:AddSection({
 Name = "Players Doxing \n You can use the first three functions even if the player is not on the server"
})

Tab:AddTextbox({
 Name = "Get all badges count of player",
 Default = "Id",
 TextDisappear = true,
 Callback = function(Value)
OrionLib:MakeNotification({
 Name = "Budgie Hub | Fayintx",
 Content = '<p><font color="rgb(255, 255, 0)">The function may take a long time if the player has a lot of badges</font></p>',
 Image = "rbxassetid://4483345998",
 Time = 7
})
  coroutine.wrap(function()
local badges = api2.Players:GetPlayerBadgeCountFromId(Value)
local plr = api2.Players:GetPlayerNameByIdAsync(Value)
  if badges == nil or plr == nil then
OrionLib:MakeNotification({
 Name = "Budgie Hub | Fayintx",
 Content = '<p><font color="rgb(255, 0, 0)">Invalid user id. Function terminated</font></p>',
 Image = "rbxassetid://4483345998",
 Time = 5
})
    return 
  end
OrionLib:MakeNotification({
	Name = "Budgie Hub | Fayintx",
	Content = "Player " .. plr .. " Has " .. badges .. " Badges",
	Image = "rbxassetid://4483345998",
	Time = 5
})
   end)()
 end   
})

Tab:AddTextbox({
 Name = "Get number of friends player",
 Default = "Id",
 TextDisappear = true,
 Callback = function(Value)
local plr = api2.Players:GetPlayerNameByIdAsync(Value)
local friends = #api2.Players:GetPlayerFriendsCountFromId(Value)
  if friends == nil or plr == nil then
OrionLib:MakeNotification({
 Name = "Budgie Hub | Fayintx",
 Content = '<p><font color="rgb(255, 0, 0)">Invalid user id. Function terminated</font></p>',
 Image = "rbxassetid://4483345998",
 Time = 5
})
    return 
  end
OrionLib:MakeNotification({
	Name = "Budgie Hub | Fayintx",
	Content = "Player " .. plr .. " Has " .. friends .. " Friends",
	Image = "rbxassetid://4483345998",
	Time = 5
})
 end   
})

Tab:AddTextbox({
 Name = "Get groups the player is a member of",
 Default = "Id",
 TextDisappear = true,
 Callback = function(Value)
local groups = #api2.Players:GetUserGroupsAsync(Value)
local plr = api2.Players:GetPlayerNameByIdAsync(Value)
  if groups == nil or plr == nil then
OrionLib:MakeNotification({
 Name = "Budgie Hub | Fayintx",
 Content = '<p><font color="rgb(255, 0, 0)">Invalid user id. Function terminated</font></p>',
 Image = "rbxassetid://4483345998",
 Time = 5
})
    return 
  end
OrionLib:MakeNotification({
	Name = "Budgie Hub | Fayintx",
	Content = " Player " .. plr .. " Consists of " .. groups .. " Groups",
	Image = "rbxassetid://4483345998",
	Time = 5
})
 end   
})

Tab:AddTextbox({
 Name = "Get player user id",
 Default = "",
 TextDisappear = true,
 Callback = function(Value)
local player = api2.Players:GetPlayerByLowerName(Value)
    if player then
OrionLib:MakeNotification({
	Name = "Budgie Hub | Fayintx",
	Content = "Player " .. player.Name .. " Has id: " .. player.UserId,
	Image = "rbxassetid://4483345998",
	Time = 5
})
setclipboard(tostring(player.UserId))
  else
OrionLib:MakeNotification({
 Name = "Budgie Hub | Fayintx",
 Content = "Player not found",
 Image = "rbxassetid://4483345998",
 Time = 5
})
    end
 end   
})

local Section = Tab:AddSection({
  Name = "Library Control"
})

Tab:AddButton({
 Name = "Remove all Orion (Besides this)", 
 Callback = function()
 for _, gui in ipairs(gethui():GetDescendants()) do
   if gui:IsA("ScreenGui") and gui.Name == "Orion" then
gui:Destroy()
   end
 end
   end    
})

Tab:AddButton({
 Name = "Remove all DrRay",
 Callback = function()
 for _, gui in ipairs(game.CoreGui:GetDescendants()) do
   if gui:IsA("ScreenGui") and gui.Name == "DrRay" then
gui:Destroy()
   end
 end
   end    
})

Tab:AddButton({
 Name = "Remove all Pop libraries",
 Callback = function()
     for _, gui in ipairs(game.CoreGui:GetDescendants()) do
       if gui:IsA("ScreenGui") and gui.Name == "OfficialUILib" then
   gui:Destroy()
       end
     end
   end    
})

Tab:AddButton({
 Name = "Remove all Rayflied",
 Callback = function()
      for _, gui in ipairs(gethui():GetDescendants()) do
         if gui:IsA("ScreenGui") and gui.Name == "Rayfield" then
   gui:Destroy()  
         end
      end
   end    
})

Tab:AddButton({
 Name = "Remove this gui",
 Callback = function()
  for _, gui in ipairs(gethui():GetDescendants()) do
     if gui:IsA("ScreenGui") and gui.Name == "OrionFayintxHub" then
    gui:Destroy()
     end
  end
   end    
})

local Tab = Window:MakeTab({
	Name = "Game",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Section = Tab:AddSection({
 Name = "A"
})

Tab:AddButton({
 Name = "Arsenal",
 Callback = function()
        loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/93f86be991de0ff7d79e6328e4ceea40.lua"))()
   end    
})

Tab:AddButton({
 Name = "Ability wars",
 Callback = function()
        loadstring(game:HttpGet("https://paste.ee/r/Wo5Kj"))()
   end    
})

Tab:AddButton({
 Name = "Armwrestling simulator",
 Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/SenhorLDS/ProjectLDSHUB/main/OfficialScript'))()
   end    
})

Tab:AddButton({
 Name = "Adopt me",
 Callback = function()
        loadstring(game:HttpGet("https://rawscripts.net/raw/Eclipse-Hub_805"))()
   end    
})

Tab:AddButton({
 Name = "Attack if titans revolution",
 Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/zerunquist/TekkitAotr/refs/heads/main/main"))()
   end    
})

local Section = Tab:AddSection({
 Name = "B"
})

Tab:AddButton({
 Name = "Blox fruit",
 Callback = function()
        loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/39c79873624cdb9a9a7346acb3f9cc8c.lua"))()
   end    
})

Tab:AddButton({
 Name = "Build a boat for treasure",
 Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Yousuck780/Build-A-Boat-For-Treasure/main/Build%20A%20Boat%20For%20Treasure", true))()
   end    
})

Tab:AddButton({
 Name = "Brookhaven",
 Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/REDzHUB/REDzHUB/main/REDzHUB"))()
   end    
})

Tab:AddButton({
 Name = "Blue lock rivals",
 Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Youifpg/ArbixHubV1/refs/heads/main/Source.lua"))()
   end    
})

Tab:AddButton({
 Name = "Bee swarm",
 Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/BaconBossScript/BeeSwarmSim/main/BeeSwarmSim"))()
   end    
})

Tab:AddButton({
 Name = "Booga booga",
 Callback = function()
        loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/2c5f110f91165707959fc626b167e036.lua"))()
   end    
})

Tab:AddButton({
 Name = "Blade ball",
 Callback = function()
        loadstring(game:HttpGet(" https://scriptblox.com/raw/UPD-Blade-Ball-op-autoparry-with-visualizer-8652"))()
   end    
})

Tab:AddButton({
 Name = "Beat the robloxians",
 Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Toilet71/Storage1/main/rbx_Script_Beat%20the%20Robloxian.lua"))()
   end    
})

local Section = Tab:AddSection({
 Name = "C"
})

Tab:AddButton({
 Name = "Combat warriors",
 Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/tjWTPEez"))()
   end    
})

Tab:AddButton({
 Name = "Cars RNG",
 Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/5QRVrhsz"))()
   end    
})

local Section = Tab:AddSection({
 Name = "D"
})

Tab:AddButton({
 Name = "Doors",
 Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/DarkDoorsKing/Doors/main/Main"))()
   end    
})

Tab:AddButton({
 Name = "Da hood",
 Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/cool5013/TBO/main/TBOscript'))()
   end    
})

Tab:AddButton({
 Name = "Driving Empire",
 Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/ToraScript/Script/main/DrivingEmpire"))()
   end    
})

Tab:AddButton({
 Name = "Dandys world",
 Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/Y7uh3UZf"))();
   end    
})

Tab:AddButton({
 Name = "Dig it",
 Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/alyssagithub/Scripts/refs/heads/main/FrostByte/Initiate.lua"))()
   end    
})

local Section = Tab:AddSection({
 Name = "E"
})

Tab:AddButton({
 Name = "Evade",
 Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/Unknownproooolucky/Unknown-Hub-X-Universal-Games/main/Games/Evade'))()
   end    
})

Tab:AddButton({
 Name = "Elements power tycoon",
 Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/iiprixe/Ouxi/main/Elemental%20Powers%20Tycoon%20%5Bv1%5D"))()
   end    
})

Tab:AddButton({
 Name = "Eat the world",
 Callback = function()
        loadstring(game:HttpGet("https://rawscripts.net/raw/Eat-the-World-Tbao-Hub-16753"))()
   end    
})

Tab:AddButton({
 Name = "Every second you get +1 speed",
 Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/ToraScript/Script/main/SpeedBike'))()
   end    
})

local Section = Tab:AddSection({
 Name = "F"
})

Tab:AddButton({
 Name = "Fisch",
 Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/tPBiR5yE"))()
   end    
})

Tab:AddButton({
 Name = "Flee the facility",
 Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/K9ntra/Antora/main/abc.lua'))()
   end    
})

Tab:AddButton({
 Name = "Find the cans",
 Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/ExploiterGuy/Aqua-Hub/refs/heads/main/Find%20The%20Cans%20%5BKEYLESS%5D.txt"))()
   end    
})

Tab:AddButton({
 Name = "Find the auras",
 Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Cajshisjs/FindTheAura/main/Script.lua"))()
   end    
})

local Section = Tab:AddSection({
 Name = "G"
})

Tab:AddButton({
 Name = "Gym league",
 Callback = function()
        loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/2529a5f9dfddd5523ca4e22f21cceffa.lua"))()
   end    
})

Tab:AddButton({
 Name = "GEF",
 Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Mongusohio/GefMadeBysederYTTv/main/GEFNOSKID", true))()
   end    
})

Tab:AddButton({
 Name = "Gunfight arena",
 Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/tbao143/thaibao/main/TbaoHubGunfightArena"))()
   end    
})

local Section = Tab:AddSection({
 Name = "H"
})

Tab:AddButton({
 Name = "Hide and seek",
 Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/tbao143/thaibao/main/TbaoHubHideandSeek"))()
   end    
})

Tab:AddButton({
 Name = "Haze piece",
 Callback = function()
        loadstring(game:HttpGet("https://rawscripts.net/raw/EVENT-HAZE-PIECE-Op-script-9231"))()
   end    
})

Tab:AddButton({
 Name = "Horror RNG",
 Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/ZhenX201/Inf-Lucks-RNG/main/lua"))()
   end    
})

local Section = Tab:AddSection({
 Name = "I"
})

Tab:AddButton({
 Name = "Infectious smile (By me)",
 Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/ADSKerOffical/SmileGUI/main/SmileHax33"))()
   end    
})

local Section = Tab:AddSection({
 Name = "J"
})

Tab:AddButton({
 Name = "Jujutsu infinite",
 Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/xRynix/main/refs/heads/main/loader'))()
   end    
})

Tab:AddButton({
 Name = "Jailbreak",
 Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/BlitzIsKing/UniversalFarm/main/Loader/Regular'))()
   end    
})

Tab:AddButton({
 Name = "Jujutsu shenanigans",
 Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/OhhMyGehlee/657/main/kilo"))()
   end    
})

local Section = Tab:AddSection({
 Name = "K"
})

Tab:AddButton({
 Name = "KAT",
 Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/KscB6AS9"))()
   end    
})

Tab:AddButton({
 Name = "King legacy",
 Callback = function()
        getgenv().CustomDistance = 10 -- For Bug Can't Swipe Distance
loadstring(game:HttpGet("https://raw.githubusercontent.com/ChopLoris/ArcHub/main/main.lua"))()
   end    
})

local Section = Tab:AddSection({
 Name = "L"
})

Tab:AddButton({
 Name = "Lootify",
 Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Cheemos/PanHub/refs/heads/main/HubLoader"))()
   end    
})

Tab:AddButton({
 Name = "Lumber tycoon 2",
 Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/DevKron/Kron_Hub/refs/heads/main/version_1.0'))()
   end    
})

Tab:AddButton({
 Name = "Lost souls",
 Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/OhhMyGehlee/LSM/refs/heads/main/MSL"))()
   end    
})

Tab:AddButton({
 Name = "Lifting simulator",
 Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/KrutoySuslik/Lifting-Simulator/main/-Suslik-Hub-"))()
   end    
})

local Section = Tab:AddSection({
 Name = "M"
})

Tab:AddButton({
 Name = "Murder mystery 2",
 Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/vertex-peak/vertex/refs/heads/main/loadstring"))()
   end    
})

Tab:AddButton({
 Name = "Mining GO",
 Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/alyssagithub/Scripts/refs/heads/main/FrostByte/Initiate.lua"))()
   end    
})

Tab:AddButton({
 Name = "Muscle legens",
 Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/AhmadV99/Speed-Hub-X/main/Speed%20Hub%20X.lua", true))()
   end    
})

Tab:AddButton({
 Name = "Mimic",
 Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Yumiara/Python/main/Main.lua"))()
   end    
})

Tab:AddButton({
 Name = "Meme sea",
 Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/REDzHUB/MemeSea/main/Source.lua"))()
   end    
})

Tab:AddButton({
 Name = "Mega hide and seek",
 Callback = function()
        loadstring(game:HttpGet('https://pastebin.com/raw/YnpFKL30'))()
   end    
})

local Section = Tab:AddSection({
 Name = "N"
})

Tab:AddButton({
 Name = "Ninja legends",
 Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Lucasfin000/SpaceHub/main/spacvehubloader"))()
   end    
})

Tab:AddButton({
 Name = "Natural disasters",
 Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/LiverMods/Rawnder-NTDR/main/NaturalDisaster'))()
   end    
})

local Section = Tab:AddSection({
 Name = "O"
})

Tab:AddButton({
 Name = "One fruit",
 Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/CrazyHub123/NexusHubMain/main/Main.lua'))()
   end    
})

local Section = Tab:AddSection({
 Name = "P"
})

Tab:AddButton({
 Name = "Pet simulator 99",
 Callback = function()
        loadstring(game:HttpGet('https://www.zaphub.xyz/Exec'))()
   end    
})

Tab:AddButton({
 Name = "Prison life",
 Callback = function()
        loadstring(game:HttpGet("https://scriptblox.com/raw/Prison-Life-Tiger-admin-v3-13501"))()
   end    
})

Tab:AddButton({
 Name = "Pressure",
 Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/InfernusScripts/Fire-Hub/main/Loader"))()
   end    
})

Tab:AddButton({
 Name = "Project slayer",
 Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/washingtontrichkid2/Newgay/main/ProjectSlayer"))()
   end    
})

Tab:AddButton({
 Name = "Pop it trading",
 Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Farx11122/Dupess/main/SecondDupe"))()
   end    
})

Tab:AddButton({
 Name = "Piggy",
 Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/xRHcjXVs", true))()
   end    
})

local Section = Tab:AddSection({
 Name = "Q"
})

local Section = Tab:AddSection({
 Name = "R"
})

Tab:AddButton({
 Name = "Rivals",
 Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/SkibidiCen/MainMenu/main/Code"))()
   end    
})

Tab:AddButton({
 Name = "Raise a floppa",
 Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/ToraScript/Script/main/ShrimpGame"))()
   end    
})

Tab:AddButton({
 Name = "Ragdoll Engine",
 Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/n0kc/AtomicHub/main/Script.lua'))()
   end    
})

Tab:AddButton({
 Name = "Rock fruit",
 Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/BaconBossScript/RockFruit/main/RockFruit"))()
   end    
})

Tab:AddButton({
 Name = "Race clicker",
 Callback = function()
        loadstring(game:HttpGet(('https://raw.githubusercontent.com/Saaakai/Random-Roblox-Script/main/Race%20Clicker')))()
   end    
})

local Section = Tab:AddSection({
 Name = "S"
})

Tab:AddButton({
 Name = "Shrimp game",
 Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/ToraScript/Script/main/ShrimpGame"))()
   end    
})

Tab:AddButton({
 Name = "Slap battles",
 Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/DonjoScripts/Public-Scripts/refs/heads/Slap-Battles/Mastery-Glove"))()
   end    
})

Tab:AddButton({
 Name = "Shindo life",
 Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/IkkyyDF/ProjectNexus/main/Loader.lua"))()
   end    
})

Tab:AddButton({
 Name = "Shoot a friends",
 Callback = function()
        loadstring(game:HttpGet(('https://pastefy.app/yypm98iN/raw'), true))()
   end    
})

Tab:AddButton({
 Name = "Swordmaster simulator",
 Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/ByNami/dkhub/main/Script", true))()
   end    
})

Tab:AddButton({
 Name = "Spider",
 Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/eDzjAAbK"))()
   end    
})

local Section = Tab:AddSection({
 Name = "T"
})

Tab:AddButton({
 Name = "Tower of hell",
 Callback = function()
        getgenv().ignoreGameCheck = false;
loadstring(game:HttpGet("https://luau.tech/build"))("https://t.me/RHOSCRIPTS")
   end    
})

Tab:AddButton({
 Name = "The Strongest Battlegrounds",
 Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/AhmadV99/Speed-Hub-X/main/Speed%20Hub%20X.lua", true))()
   end    
})

Tab:AddButton({
 Name = "Taxi Boss",
 Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/FreeeScripts/FREEHub/main/Loader", true))()
   end    
})

Tab:AddButton({
 Name = "Treasure hunt simulator",
 Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/cqwaxngq"))()
   end    
})

local Section = Tab:AddSection({
 Name = "U"
})

Tab:AddButton({
 Name = "Unnamed shooter",
 Callback = function()
        local scriptURL = 'https://raw.githubusercontent.com/Sheeshablee73/Scriptss/main/Unnamed%20Shooter.lua'
local response = game:HttpGet(scriptURL)
local executeScript = loadstring(response)
   end    
})

Tab:AddButton({
 Name = "Ultimate tower defense",
 Callback = function()
        loadstring(game:HttpGet("https://rawscripts.net/raw/BOUNTIES!-Ultimate-Tower-Defense-World-Hub-New-Update-16145"))()
   end    
})

local Section = Tab:AddSection({
 Name = "V"
})

Tab:AddButton({
 Name = "Void finishing",
 Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/xajBq0dk"))()
   end    
})

Tab:AddButton({
 Name = "Vehicle legends",
 Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/xlykor/MikeBayraktarVehicleLegends/main/VestaHubVehicleLegends"))()
   end    
})

local Section = Tab:AddSection({
 Name = "W"
})

Tab:AddButton({
 Name = "War tycoon",
 Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/FacilityHUB/Facility-Key/refs/heads/main/War%20Tycoon%20v1.0.0.0c"))()
   end    
})

local Section = Tab:AddSection({
 Name = "X"
})

local Section = Tab:AddSection({
 Name = "Y"
})

Tab:AddButton({
 Name = "Yba",
 Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/zakater5/LuaRepo/main/YBA/MainGui.lua"))()
   end    
})

local Section = Tab:AddSection({
 Name = "Z"
})

Tab:AddButton({
 Name = "Zombie uprising",
 Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/Unknownproooolucky/Unknown-Hub-X-Universal-Games/main/Games/Zombie-Uprising'))()
   end    
})

Tab:AddButton({
 Name = "Zombie attack",
 Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/dqtixz/Zombie-Attack-Remake/main/Projeto%20LKA"))()
   end    
})

local Tab = Window:MakeTab({
	Name = "Other",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local dispThSc = false
Tab:AddToggle({
 Name = "Copy activated scripts (there ↓)",
 Default = false,
 Callback = function(Value)
    dispThSc = Value
 end    
})

Tab:AddButton({
 Name = "Display real time",
 Callback = function()
OrionLib:MakeNotification({
	Name = "Budgie Hub | Fayintx",
	Content = "Your time: " .. tostring(os.date("%H:%M:%S")),
	Image = "rbxassetid://4483345998",
	Time = 5
})
       if dispThSc == true then
  setclipboard('print(os.date("%H:%M:%S"))')
       end
   end    
})

Tab:AddButton({
 Name = "Make bubble chat",
 Callback = function()
 game.Chat:Chat(game.Players.LocalPlayer.Character.Head, "Obama", Enum.ChatColor.White)
      if dispThSc == true then
 setclipboard('game.Chat:Chat(game.Players.LocalPlayer.Character.Head, "Obama", Enum.ChatColor.White)')
OrionLib:MakeNotification({
 Name = "Budgie Hub | Fayintx",
 Content = "Copied",
 Image = "rbxassetid://4483345998",
 Time = 5
})
      end
   end    
})

Tab:AddButton({
 Name = "Anti afk (getconnections version)",
 Callback = function()
for i,v in pairs(getconnections(game.Players.LocalPlayer.Idled)) do
  v:Disable()
end
  if dispThSc == true then
   setclipboard([[
for i,v in pairs(getconnections(game.Players.LocalPlayer.Idled)) do
  v:Disable()
end
   ]])
OrionLib:MakeNotification({
 Name = "Budgie Hub | Fayintx",
 Content = "Copied",
 Image = "rbxassetid://4483345998",
 Time = 5
})
  end
   end    
})

Tab:AddButton({
 Name = "Using any texture",
 Callback = function()
       if dispThSc == false then
OrionLib:MakeNotification({
 Name = "Budgie Hub | Fayintx",
 Content = "Just copy it",
 Image = "rbxassetid://4483345998",
 Time = 5
})
        else
 setclipboard('Decal.Image = "https://www.roblox.com/asset-thumbnail/image?assetId=15767935739&width=768&height=432&format=png"')
OrionLib:MakeNotification({
 Name = "Budgie Hub | Fayintx",
 Content = "Copied (It work only on Decal, Texture and GuiObjects)",
 Image = "rbxassetid://4483345998",
 Time = 5
})
       end
   end    
})

local Section = Tab:AddSection({
 Name = "Finders"
})

Tab:AddButton({
 Name = "Print scripts",
 Callback = function()
for _, v in next, game:GetDescendants() do
 if v:IsA("Script") or v:IsA("LocalScript") then
  print(v.ClassName, v.Name, v.Parent)
 end
end
   end    
})

Tab:AddButton({
 Name = "Print all global environments",
 Callback = function()
     for i, v in next, getgenv() do
       print(i, v)
     end
   end    
})

Tab:AddButton({
 Name = "Print registry",
 Callback = function()
     for i, v in next, debug.getregistry() do
       print(i, v)
     end
   end    
})

Tab:AddButton({
 Name = "Print functions names in garbage collector",
 Callback = function()
for i, v in next, getgc() do
  if typeof(v) == "function" and v ~= nil then
print(debug.getinfo(v).name)
  end
end
   end    
})

Tab:AddButton({
 Name = "Print all local player value bases",
 Callback = function()
      for _, scr in ipairs(game.Players.LocalPlayer:GetDescendants()) do
        if scr:IsA("ValueBase") then
 print(scr.ClassName, scr:GetFullName(), scr.Value)
        end
      end
   end    
})

Tab:AddButton({
 Name = "Print all parts which have TouchInterest",
 Callback = function()
 print("Parts which have TouchInterest:")
      for _, part in next, workspace:GetDescendants() do
         if part:IsA("BasePart") and part:FindFirstChild("TouchInterest") then
print(part:GetFullName())
         end
      end
   end    
})

Tab:AddButton({
 Name = "Print Sky Facets Id",
 Callback = function()
   for i, v in pairs(game.Lighting:GetChildren()) do
      if v:IsA("Sky")  then
   print("Sky Name:", v.Name)
   print("Sky Bk:", v.SkyboxBk)
   print("Sky Dn:", v.SkyboxDn)
   print("Sky Ft:", v.SkyboxFt)
   print("Sky Lf:", v.SkyboxLf)
   print("Sky Rt:", v.SkyboxRt)
   print("Sky Up:", v.SkyboxUp)
        end
      end
   end    
})

Tab:AddButton({
 Name = "Print tool information",
 Callback = function()
      local tool = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool")
      
      print("--- Value Bases ---")
      
      for _, val in next, tool:GetDescendants() do
        if val:IsA("ValueBase") then
          print(val.ClassName, val:GetFullName(), val.Value)
        end
      end
      print("--- Attributes ---")
      for atname, atval in next, tool:GetAttributes() do
        print(tool:GetFullName(), atname, atval)
      end
      for _, obj in next, tool:GetDescendants() do
        for atname, atval in next, obj:GetAttributes() do
          print(obj:GetFullName(), atname, atval)
        end
      end
      
      print("--- Upvalues, Constants and Protos ---")
for _, con in next, getconnections(tool.Activated) do
  for i, d in next, debug.getconstants(con.Function) do
    print("constant:", i, d)
  end
  for i, u in next, debug.getupvalues(con.Function) do
    print("upvalue:", i, u)
  end
  for i, p in next, debug.getprotos(con.Function) do
    print("proto:", i, p, debug.getinfo(p).name)
  end
end
   end    
})

Tab:AddButton({
 Name = "Print tool information+",
 Callback = function()
      local tool = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool")
        print(`Tool Name: {tool.Name},\nTool Is Enabled: {tool.Enabled}`)
        
      print("--- Value Bases ---")
      
      for _, val in next, tool:GetDescendants() do
        if val:IsA("ValueBase") then
          print(val.ClassName, val:GetFullName(), val.Value)
        end
      end
      print("--- Attributes ---")
      for atname, atval in next, tool:GetAttributes() do
        print(tool:GetFullName(), atname, atval)
      end
      for _, obj in next, tool:GetDescendants() do
        for atname, atval in next, obj:GetAttributes() do
          print(obj:GetFullName(), atname, atval)
        end
      end
      
      print("--- Upvalues, Constants and Protos ---")
for _, signa in next, {"Activated", "Equipped"} do
  print(`    --- Signal {signa} ---`)
for _, con in next, getconnections(tool[signa]) do
  for i, d in next, debug.getconstants(con.Function) do
    print("constant:", i, d)
  end
  for i, u in next, debug.getupvalues(con.Function) do
    print("upvalue:", i, u)
    if typeof(u) == "table" then
      for e, r in next, u do
        print(e, r)
      end
     elseif typeof(u) == "function" then
       print("Function Name: " .. debug.getinfo(u).name)
    end
  end
  for i, p in next, debug.getprotos(con.Function) do
    print("proto:", i, p, debug.getinfo(p).name)
  end
end
end
   end    
})

local Section = Tab:AddSection({
 Name = "Helper scripts"
})

Tab:AddButton({
 Name = "Texture Provider",
 Callback = function()
       loadstring(game:HttpGet("https://raw.githubusercontent.com/ADSKerOffical/BHU/refs/heads/main/Special/TextureProvider"))()
   end    
})

Tab:AddButton({
 Name = "Tool gun (finder gun)",
 Callback = function()
       loadstring(game:HttpGet("https://raw.githubusercontent.com/ADSKerOffical/Tool/refs/heads/main/Tool%20Gun"))()
   end    
})

local Section = Tab:AddSection({
  Name = "Anti obfuscate"
})

Tab:AddTextbox({
 Name = "Copy decrypted ASCII characters",
 Default = "",
 TextDisappear = true,
 Callback = function(Value)
       local function fromascii(text: string) return text end
       local decrypt = fromascii(Value)
        if decrypt == Value then
OrionLib:MakeNotification({
   Name = "Budgie Hub | Fayintx",
   Content = "The text provided has not changed in any way",
   Image = "rbxassetid://4483345998",
   Time = 5
})
         else
    setclipboard(tostring(decrypt))
        end
   end    
})

Tab:AddButton({
 Name = "Subplace finder",
 Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/ADSKerOffical/BHUOriginal/refs/heads/main/Guis/SubplaceFinder"))()
   end    
})

Tab:AddButton({
 Name = "Audio logger v2",
 Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/ADSKerOffical/BHUOriginal/refs/heads/main/Guis/AudioLoggerV2"))()
   end    
})

local Tab = Window:MakeTab({
	Name = "Note",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Section = Tab:AddSection({
 Name = "Explain how it all works:"
})

Tab:AddLabel("Info")

Tab:AddParagraph("", "You just find out information about yourself as in ghost hub")

Tab:AddLabel("Universal: Tools")

Tab:AddParagraph("Equip all tools", "You simply equip all your tools from backpack")
Tab:AddParagraph("Drop all tools", "You drop all your tools (from backpack only)")
Tab:AddParagraph("Twirl tools", "I dont know how to explain it, but you just spin your tools (visually), but the damage increases (if there is TouchInterest)")
Tab:AddParagraph("Random GripPos", "Set randoms GripPos on all your tools (regardless of whether you have them on or not)") 
Tab:AddParagraph("Auto click", "Automatically activate all your tools through tool:Activate()")
Tab:AddParagraph("Disable tools handle collision", "tool.Handle.CanCollide = false")
Tab:AddParagraph("Touch everyone with your handle", "You touch your instruments to all players (you can kill all players with this if there is TouchInterest)")
Tab:AddParagraph("Touch models with your handle", "Similar to the previous function, but you can touch NPCs, but not players")

Tab:AddLabel("Universal: Local Humanoid Control")

Tab:AddParagraph("", "Jump Baki Hanma, Attract to player, Locked to player, Helicopter, -2000 aura, Velocity fly, Flappy bird fly I did it just as a joke and to add something")
Tab:AddParagraph("Anti sit", "You cant sit down")
Tab:AddParagraph("Anti velocity", "When your velocity magnitude >= 40 then your velocity set to 0")
Tab:AddParagraph("Anti velocity v2", "Removes from local player physics (velocity) instances")
Tab:AddParagraph("Basic noclip", "You pass through walls (dont jump)")
Tab:AddParagraph("Player mass", "Set CustomPhysicalProperties on max (Density) or normal or zero")

Tab:AddLabel("Parts control")

Tab:AddParagraph("Grab tool", "Click on the part you want to pull (only unanchored ones)")
Tab:AddParagraph("Inviolable to objects", "Anti TouchInterest on local player model method part.CanTouch = false (This is not the same as noclip)")
Tab:AddParagraph("Infinite simulation radius", "Increase your SimulationRadius on math.huge (infinity) (how far can you function with parts through script)")
Tab:AddParagraph("Black hole creator tool", "You spawn a black hole where you clicked that attracts all nearest objects (Disappears after 10 seconds)")
Tab:AddParagraph("Part fling aura+", "Push nearest parts with his primary and root part")

Tab:AddParagraph("", "Im too lazy to make a useless tab that no one will notice, but Ill do it later")

local Tab = Window:MakeTab({
	Name = "Updates",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddLabel("30.03.2025")

Tab:AddParagraph("Improved functions:", [[
  Parts Control: 
   Inviolable to objects – modification added CanQuery = false
   Part fling auras – fixed bug with freezing npc
  Local Humanoid Control: Anti fling – added more methods to stop objects from moving
  NPCs control – instead of workspace:GetDescendants() is used workspace:GetPartBoundsInRadius for optimization (except Stun Nearest)
  Click detector control: Activate all click detectors – modification added MaxActivationDistance = math.huge
]])

Tab:AddLabel("31.03.2025")

Tab:AddParagraph("Improved functions:", [[
   Local Humanoid Control: Anti sit – now it works instantly and defence from scripts 
]])

Tab:AddParagraph("Added functions:", [[
  Local Humanoid Control: Anti bang – if there is a player with bang animation next to you, then the function is launched
]])

Tab:AddLabel("02.04.2025")

Tab:AddParagraph("Added functions:", [[
  Players Control: Lightweight players – Makes players very lightweight, useful in games like Fling things and peoples
  Players Control: Touch nearest parts to all players – Touches all objects that have TouchInterest (part.Touched signal) to all players, can kill all in some places
]])

Tab:AddLabel("05.04.2025")

Tab:AddParagraph("Game support:", [[
  Added support for games on Fling things and peoples and Furry infection
]])

Tab:AddParagraph("Added functions:", [[
  Local Humanoid Control: Bunny hop – when you jump and walk, you make a dash to where you go (turns off after player dies)
  Tools Control: Remove tools – Removes all tools in and on the player inventory
  Tools Control: Activate all tools – Instantly activates all tools (with variations)
  Tools Control: Grab tools – touch all objects that resemble an tool
  Parts Control: Part control tools – Manages parts by settings (with variations)
  Parts Control: Anti part fling – Protects you from flinging from other scripts (only from scripts)
]])

local Tab = Window:MakeTab({
	Name = "Creator",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

-- CREADIT PEMBUAT

Tab:AddParagraph("PateerC", '<p><font color="rgb(255, 0, 0)">creator of this hub script and almost all functions: PateerC, And Founder in Comunity RobloxPatriot </font></p>')

local Section = Tab:AddSection({
 Name = "By me (I havent updated many scripts)"
})

Tab:AddButton({
 Name = "Public bathroom simulator",
 Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/ADSKerOffical/Fayintx-Hub/main/PublicBathroomSimulator"))()
   end    
})

Tab:AddButton({
 Name = "Push the dummies into sparta hole",
 Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/ADSKerOffical/Push-Dummies-In-The-Sparta-Hole/main/FireInTheHole"))()
   end    
})

Tab:AddButton({
 Name = "Revenge of the slimes",
 Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/ADSKerOffical/Revenge-of-the-Slimes/main/Slime"))()
   end    
})

Tab:AddButton({
 Name = "Bendy and the ink machine",
 Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/ADSKerOffical/Bendy/main/BendyHubX"))()
   end    
})

Tab:AddButton({
 Name = "Infectious smile",
 Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/ADSKerOffical/SmileGUI/main/SmileHax33"))()
   end    
})

Tab:AddButton({
 Name = "Free admin",
 Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/ADSKerOffical/FreeAdmin/main/GUI"))()
   end    
})

Tab:AddButton({
 Name = "Lucky blocks battlegrounds",
 Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/ADSKerOffical/LuckyBlock/main/LuckyGUI"))()
   end    
})

Tab:AddButton({
 Name = "Backrooms redacted",
 Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/ADSKerOffical/BACKROOMS/main/RedactedSurvival"))()
   end    
})

Tab:AddButton({
 Name = "Lift of legends simulator",
 Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/ADSKerOffical/Lift/main/LiftOfLegendsSimulator"))()
   end    
})

Tab:AddButton({
 Name = "Slap battles but you get random glove",
 Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/ADSKerOffical/Slap-Battles/main/Random"))()
   end    
})

Tab:AddButton({
 Name = "Sukuna battlegrounds",
 Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/ADSKerOffical/html-simple-clock/main/script.lua"))()
   end    
})

Tab:AddButton({
 Name = "Client Replication",
 Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/ADSKerOffical/Fayintx-Hub_Client-Replication/main/Script"))()
   end    
})

Tab:AddButton({
 Name = "AnM battlegrounds",
 Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/ADSKerOffical/C/refs/heads/main/calculator"))()
   end    
})

Tab:AddButton({
 Name = "KJ battlegrounds",
 Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/ADSKerOffical/ADSK_KJB/refs/heads/main/Source"))()
   end    
})

local Section = Tab:AddSection({
 Name = "By me but these scripts are not posted:\n And I made these scripts a long time ago"
})

Tab:AddButton({
 Name = "Doge head escape",
 Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/ADSKerOffical/Main/main/DogeHeadEscape"))()
   end    
})

Tab:AddButton({
 Name = "Autput",
 Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/ADSKerOffical/Autput/main/Autputus"))()
   end    
})

Tab:AddButton({
 Name = "Void hub",
 Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/ADSKerOffical/Voidhub.lua/main/VoidHub.lua"))()
   end    
})

Tab:AddButton({
 Name = "Old version BendyHubX",
 Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/ADSKerOffical/ADSKerOfficial314/main/BendyAndInkMachine"))()
   end    
})

Tab:AddButton({
 Name = "Catalog avatar creator",
 Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/ADSKerOffical/Catalog-Avatar-Creator/main/CatalogHub"))()
   end    
})

Tab:AddButton({
 Name = "Beat up dummies simulator",
 Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/ADSKerOffical/Beat-Up-Dummies/main/Dummies"))()
   end    
})

Tab:AddButton({
 Name = "Legends of speed",
 Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/ADSKerOffical/Legends-Of-Speed/main/SpeedHub"))()
   end    
})

Tab:AddButton({
 Name = "Orb tree incremental",
 Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/ADSKerOffical/OrbTree/main/Incremental"))()
   end    
})

Tab:AddButton({
 Name = "Xsploit",
 Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/ADSKerOffical/Xsploit/main/XsploitNew"))()
   end    
})

local Section = Tab:AddSection({
 Name = "Misc"
})

Tab:AddButton({
 Name = "Astaroth",
 Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/ADSKerOffical/UniversalCharacter/main/Astarot"))()
   end    
})

Tab:AddButton({
 Name = "Newer Astaroth",
 Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/ADSKerOffical/Character-Monster/refs/heads/main/Astaroth"))()
   end    
})

Tab:AddButton({
 Name = "Chronos (Meta Guardian)",
 Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/ADSKerOffical/Character-Monster/refs/heads/main/Chronos"))()
   end    
})

OrionLib:MakeNotification({
	Name = "Budgie Hub | Fayintx",
	Content = '<p><font color="rgb(0, 255, 0)">The script has been fully loaded</font></p>',
	Image = "rbxassetid://4483345998",
	Time = 5
})

printColor(Color3.new(0, 1, 0), "Budgie Hub | Fayintx has been loaded", 20)

-- This is done so that the gui does not disappear
local OrionF = gethui().Orion or nil
 if OrionF ~= nil then
gethui().Orion.Name = "OrionFayintxHub"
OrionF = gethui().OrionFayintxHub
 end

if not workspace:FindFirstChild("PartCheckForTeleport") then
local part = Instance.new("Part", workspace)
  part.Name = "PartCheckForTeleport"
  part.Locked = true
  part.Anchored = true
  part.CanCollide = false
  part.Transparency = 1
  part.CFrame = CFrame.new(0, 1e9, 0)
local TeleportCheck = false
game.Players.LocalPlayer.OnTeleport:Connect(function(State)
 if (not TeleportCheck) and queueteleport then
  TeleportCheck = true
  queueteleport('loadstring(game:HttpGet("https://raw.githubusercontent.com/ADSKerOffical/BHU/refs/heads/main/Source"))()')
 end
end)
 end

local function detectDevice()
if (game:GetService("GuiService"):IsTenFootInterface()) then
        return "Console"
    elseif (game:GetService("UserInputService").TouchEnabled and not game:GetService("UserInputService").MouseEnabled) then
        return"Mobile"
    else
        return "PC"
    end
end

if not gethui():FindFirstChild("ButtonSwitch") and detectDevice() == "Mobile" then
local Switch = cloneref(Instance.new("ScreenGui", gethui()))
Switch.DisplayOrder = math.huge
Switch.ClipToDeviceSafeArea = false
Switch.Name = "ButtonSwitch"
Switch.ResetOnSpawn = false

local Button = Instance.new("TextButton", Switch)
Button.Active = true
Button.Draggable = true
Button.Text = "Return gui"
Button.Size = UDim2.new(0, 32, 0, 32)
Button.Position = UDim2.new(0, 105, 0, -20)
Button.BackgroundTransparency = 0.5
Button.TextColor3 = Color3.new(1, 1, 1)
Button.TextScaled = true
Button.BackgroundColor3 = Color3.new(0, 0, 0)
Button.TextSize = 12

Button.MouseButton1Click:Connect(function()
game:GetService("VirtualInputManager"):SendKeyEvent(true, "LeftControl" , false , game)
end)

local Corner = Instance.new("UICorner", Button)
Corner.CornerRadius = UDim.new(0, 8)
end

if getgenv().FayintxNoMore == nil then
  getgenv().FayintxNoMore = false
  loadstring(request({Url = "https://raw.githubusercontent.com/ADSKerOffical/BHU/refs/heads/main/Chat%20Admin", Method = "GET"}).Body)()
end
