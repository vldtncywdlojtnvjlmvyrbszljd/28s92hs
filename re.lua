-- Simple REBORN
-- by isaraw8912

-- Prints

print("Thank you for using Brutality Hub")
print("Made by MedusaScript")

-- Notification

game:GetService("StarterGui"):SetCore("SendNotification",{
            Title = "Brutality Hub";
	        Text = "Version 1.0 Hack successfully loaded...";
	        Icon = "rbxassetid://16058297648";
	        Duration = 99999;
	        Button1 = "OK";
	
 })

-- Instances

local SimpleREMAKE = Instance.new("ScreenGui")
local main = Instance.new("Frame")
local bar = Instance.new("Frame")
local close = Instance.new("TextButton")
local minimize = Instance.new("TextButton")
local title = Instance.new("TextLabel")
local features = Instance.new("Frame")
local creator = Instance.new("TextLabel")
local ws = Instance.new("TextButton")
local walkspeedframe = Instance.new("Frame")
local wsbar = Instance.new("Frame")
local closews = Instance.new("TextButton")
local titlews = Instance.new("TextLabel")
local wsinput = Instance.new("TextBox")
local wsset = Instance.new("TextButton")
local wsreset = Instance.new("TextButton")
local jp = Instance.new("TextButton")
local jumppowerframe = Instance.new("Frame")
local jpbar = Instance.new("Frame")
local closejp = Instance.new("TextButton")
local titlejp = Instance.new("TextLabel")
local jpinput = Instance.new("TextBox")
local jpset = Instance.new("TextButton")
local jpreset = Instance.new("TextButton")
local btools = Instance.new("TextButton")
local teleport = Instance.new("TextButton")
local teleportframe = Instance.new("Frame")
local tbar = Instance.new("Frame")
local closet = Instance.new("TextButton")
local titlet = Instance.new("TextLabel")
local tpinput = Instance.new("TextBox")
local tpset = Instance.new("TextButton")
local infjump = Instance.new("TextButton")
local fly = Instance.new("TextButton")
local clicktp = Instance.new("TextButton")
local noclipbtn = Instance.new("TextButton")
local controls = Instance.new("TextButton")
local controlsframe = Instance.new("Frame")
local cbar = Instance.new("Frame")
local closec = Instance.new("TextButton")
local titlec = Instance.new("TextLabel")
local insnoclip = Instance.new("TextLabel")
local insfly = Instance.new("TextLabel")
local insinfjump = Instance.new("TextLabel")
local insclicktp = Instance.new("TextLabel")
local open = Instance.new("TextButton")
local welcome = Instance.new("TextLabel")
local unminimize = Instance.new("TextButton")
local loading = Instance.new("TextLabel")

-- Properties

SimpleREMAKE.Name = "Brutality Hub"
SimpleREMAKE.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
SimpleREMAKE.ResetOnSpawn = false

main.Name = "main"
main.Parent = SimpleREMAKE
main.BackgroundColor3 = Color3.fromRGB(85, 170, 255)
main.Position = UDim2.new(-1, 0, 0.5, 0)
main.Active = true
main.Draggable = true
main.Size = UDim2.new(0, 393, 0, 0)
main.AnchorPoint = Vector2.new(0.5, 0.5)

bar.Name = "bar"
bar.Parent = main
bar.BackgroundColor3 = Color3.fromRGB(0, 85, 127)
bar.Size = UDim2.new(0, 393, 0, 23)

loading.Name = "loading"
loading.Parent = main
loading.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
loading.BackgroundTransparency = 1.000
loading.BorderSizePixel = 0
loading.Position = UDim2.new(0.244274795, 0, 0.807692289, 0)
loading.Size = UDim2.new(0, 200, 0, 50)
loading.Font = Enum.Font.SourceSans
loading.Text = "Loading"
loading.TextColor3 = Color3.fromRGB(255, 255, 255)
loading.TextSize = 22.000
loading.Visible = false

welcome.Name = "welcome"
welcome.Parent = main
welcome.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
welcome.BackgroundTransparency = 1.000
welcome.BorderSizePixel = 0
welcome.Position = UDim2.new(0.246, 0, 0.401, 0)
welcome.Size = UDim2.new(0, 200, 0, 50)
welcome.Font = Enum.Font.SourceSans
welcome.Text = "Welcome!"
welcome.TextColor3 = Color3.fromRGB(255, 255, 255)
welcome.TextScaled = true
welcome.TextSize = 14.000
welcome.TextWrapped = true
welcome.Visible = false

close.Name = "close"
close.Parent = bar
close.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
close.Position = UDim2.new(0.942920029, 0, 0, 0)
close.Size = UDim2.new(0, 22, 0, 22)
close.Font = Enum.Font.SourceSans
close.Text = "X"
close.TextColor3 = Color3.fromRGB(255, 255, 255)
close.TextScaled = true
close.TextSize = 14.000
close.TextWrapped = true
close.MouseButton1Click:Connect(function()
	welcome.Visible = false
	loading.Visible = false
	features:TweenSize(UDim2.new(0, 393, 0, 0))
	wait(0.8)
	features.Visible = false
	main:TweenSize(UDim2.new(0, 393, 0, 0))
	wait(1.0)
	main:TweenPosition(UDim2.new(-1, 0, 0.5, 0))
	wait(0.3)
	open:TweenPosition(UDim2.new(0, 0, 0.784860551, 0))
end)

unminimize.Name = "unminimize"
unminimize.Parent = bar
unminimize.BackgroundColor3 = Color3.fromRGB(255, 170, 0)
unminimize.Position = UDim2.new(0.88694036, 0, 0, 0)
unminimize.Size = UDim2.new(0, 22, 0, 22)
unminimize.Font = Enum.Font.SourceSans
unminimize.Text = "-"
unminimize.TextColor3 = Color3.fromRGB(255, 255, 255)
unminimize.TextSize = 30.000
unminimize.TextWrapped = true
unminimize.Visible = false
unminimize.MouseButton1Click:Connect(function()
	main:TweenSize(UDim2.new(0, 393, 0, 260))
	wait(0.5)
	features.Visible = true
	wait(0.2)
	features:TweenSize(UDim2.new(0, 393, 0, 237))
	unminimize.Visible = false
	minimize.Visible = true
end)

minimize.Name = "minimize"
minimize.Parent = bar
minimize.BackgroundColor3 = Color3.fromRGB(255, 170, 0)
minimize.Position = UDim2.new(0.88694036, 0, 0, 0)
minimize.Size = UDim2.new(0, 22, 0, 22)
minimize.Font = Enum.Font.SourceSans
minimize.Text = "-"
minimize.TextColor3 = Color3.fromRGB(255, 255, 255)
minimize.TextSize = 30.000
minimize.TextWrapped = true
minimize.MouseButton1Click:Connect(function()
	welcome.Visible = false
	loading.Visible = false
	features:TweenSize(UDim2.new(0, 393, 0, 0))
	wait(0.8)
	features.Visible = false
	main:TweenSize(UDim2.new(0, 393, 0, 23))
	unminimize.Visible = true
	minimize.Visible = false
end)

title.Name = "title"
title.Parent = bar
title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
title.BackgroundTransparency = 1.000
title.BorderSizePixel = 0
title.Position = UDim2.new(0.0203562342, 0, -0.0434782617, 0)
title.Size = UDim2.new(0, 92, 0, 23)
title.Font = Enum.Font.SourceSansSemibold
title.Text = "Brutality Hub"
title.TextColor3 = Color3.fromRGB(170, 255, 255)
title.TextScaled = true
title.TextSize = 14.000
title.TextWrapped = true
wait(0.1)
main:TweenPosition(UDim2.new(0.5, 0, 0.5, 0))
wait(1.25)
welcome.Visible = true
loading.Visible = true
main:TweenSize(UDim2.new(0, 393, 0, 260))
wait(2)

features.Name = "features"
features.Parent = main
features.BackgroundColor3 = Color3.fromRGB(85, 170, 255)
features.Position = UDim2.new(0, 0, 0.0884615406, 0)
features.Size = UDim2.new(0, 393, 0, 0)
features.BorderSizePixel = 0
features.Visible = false

creator.Name = "creator"
creator.Parent = features
creator.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
creator.BackgroundTransparency = 1.000
creator.BorderSizePixel = 0
creator.Position = UDim2.new(0, 0, 0.902953565, 0)
creator.Size = UDim2.new(0, 393, 0, 23)
creator.Font = Enum.Font.SourceSans
creator.Text = "Created by Medusa"
creator.TextColor3 = Color3.fromRGB(255, 255, 255)
creator.TextSize = 14.000

ws.Name = "ws"
ws.Parent = features
ws.BackgroundColor3 = Color3.fromRGB(0, 85, 127)
ws.Position = UDim2.new(0.0483460575, 0, 0.562954903, 0)
ws.Size = UDim2.new(0, 69, 0, 43)
ws.Font = Enum.Font.SourceSans
ws.Text = "Walk Speed"
ws.TextColor3 = Color3.fromRGB(85, 170, 255)
ws.TextScaled = true
ws.TextSize = 14.000
ws.TextWrapped = true
ws.MouseButton1Click:Connect(function()
	walkspeedframe.Visible = true
	walkspeedframe:TweenPosition(UDim2.new(-3.203, 0, -3.648, 0))
end)

walkspeedframe.Name = "walkspeedframe"
walkspeedframe.Parent = ws
walkspeedframe.BackgroundColor3 = Color3.fromRGB(85, 170, 255)
walkspeedframe.Position = UDim2.new(-20, 0, -3.648, 0)
walkspeedframe.Size = UDim2.new(0, 168, 0, 191)
walkspeedframe.Visible = false
walkspeedframe.Active = true
walkspeedframe.Draggable = true

wsbar.Name = "wsbar"
wsbar.Parent = walkspeedframe
wsbar.BackgroundColor3 = Color3.fromRGB(0, 85, 127)
wsbar.Size = UDim2.new(0, 168, 0, 23)

wait(0.2)
loading.Text = "Loading."

closews.Name = "closews"
closews.Parent = wsbar
closews.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
closews.Position = UDim2.new(0.865539074, 0, 0, 0)
closews.Size = UDim2.new(0, 22, 0, 22)
closews.Font = Enum.Font.SourceSans
closews.Text = "X"
closews.TextColor3 = Color3.fromRGB(255, 255, 255)
closews.TextScaled = true
closews.TextSize = 14.000
closews.TextWrapped = true
closews.MouseButton1Click:Connect(function()
	walkspeedframe:TweenPosition(UDim2.new(-20, 0, -3.648, 0))
	wait(2)
	walkspeedframe.Visible = false
end)

titlews.Name = "titlews"
titlews.Parent = wsbar
titlews.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
titlews.BackgroundTransparency = 1.000
titlews.BorderSizePixel = 0
titlews.Position = UDim2.new(0.0203562342, 0, -0.0434782617, 0)
titlews.Size = UDim2.new(0, 92, 0, 23)
titlews.Font = Enum.Font.SourceSansSemibold
titlews.Text = "Brutality Hub"
titlews.TextColor3 = Color3.fromRGB(170, 255, 255)
titlews.TextScaled = true
titlews.TextSize = 14.000
titlews.TextWrapped = true

wsinput.Name = "wsinput"
wsinput.Parent = walkspeedframe
wsinput.BackgroundColor3 = Color3.fromRGB(0, 85, 255)
wsinput.Position = UDim2.new(0.119047619, 0, 0.22385484, 0)
wsinput.Size = UDim2.new(0, 127, 0, 36)
wsinput.Font = Enum.Font.SourceSans
wsinput.PlaceholderColor3 = Color3.fromRGB(0, 0, 0)
wsinput.Text = "Enter Speed Value"
wsinput.TextColor3 = Color3.fromRGB(0, 255, 255)
wsinput.PlaceholderText = "Enter Speed Value"
wsinput.PlaceholderColor3 = Color3.fromRGB(0, 255, 255)
wsinput.TextSize = 14.000

wsset.Name = "wsset"
wsset.Parent = walkspeedframe
wsset.BackgroundColor3 = Color3.fromRGB(0, 85, 127)
wsset.Position = UDim2.new(0.119047619, 0, 0.473340094, 0)
wsset.Size = UDim2.new(0, 125, 0, 33)
wsset.Font = Enum.Font.SourceSans
wsset.Text = "Set"
wsset.TextColor3 = Color3.fromRGB(85, 170, 255)
wsset.TextScaled = true
wsset.TextSize = 14.000
wsset.TextWrapped = true
wsset.MouseButton1Click:Connect(function()
	game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = wsinput.Text
end)

wsreset.Name = "wsreset"
wsreset.Parent = walkspeedframe
wsreset.BackgroundColor3 = Color3.fromRGB(0, 85, 127)
wsreset.Position = UDim2.new(0.119047619, 0, 0.746326745, 0)
wsreset.Size = UDim2.new(0, 125, 0, 33)
wsreset.Font = Enum.Font.SourceSans
wsreset.Text = "Reset"
wsreset.TextColor3 = Color3.fromRGB(85, 170, 255)
wsreset.TextScaled = true
wsreset.TextSize = 14.000
wsreset.TextWrapped = true
wsreset.MouseButton1Click:Connect(function()
	game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
end)

jp.Name = "jp"
jp.Parent = features
jp.BackgroundColor3 = Color3.fromRGB(0, 85, 127)
jp.Position = UDim2.new(0.279898196, 0, 0.562954903, 0)
jp.Size = UDim2.new(0, 69, 0, 43)
jp.Font = Enum.Font.SourceSans
jp.Text = "Jump Power"
jp.TextColor3 = Color3.fromRGB(85, 170, 255)
jp.TextScaled = true
jp.TextSize = 14.000
jp.TextWrapped = true
jp.MouseButton1Click:Connect(function()
	jumppowerframe.Visible = true
	jumppowerframe:TweenPosition(UDim2.new(-4.493, 0, -3.671, 0))
end)

jumppowerframe.Name = "jumppowerframe"
jumppowerframe.Parent = jp
jumppowerframe.BackgroundColor3 = Color3.fromRGB(85, 170, 255)
jumppowerframe.Position = UDim2.new(-20, 0, -3.6711, 0)
jumppowerframe.Size = UDim2.new(0, 168, 0, 191)
jumppowerframe.Visible = false
jumppowerframe.Active = true
jumppowerframe.Draggable = true 

jpbar.Name = "jpbar"
jpbar.Parent = jumppowerframe
jpbar.BackgroundColor3 = Color3.fromRGB(0, 85, 127)
jpbar.Size = UDim2.new(0, 168, 0, 23)

wait(0.2)
loading.Text = "Loading.."

closejp.Name = "closejp"
closejp.Parent = jpbar
closejp.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
closejp.Position = UDim2.new(0.865539074, 0, 0, 0)
closejp.Size = UDim2.new(0, 22, 0, 22)
closejp.Font = Enum.Font.SourceSans
closejp.Text = "X"
closejp.TextColor3 = Color3.fromRGB(255, 255, 255)
closejp.TextScaled = true
closejp.TextSize = 14.000
closejp.TextWrapped = true
closejp.MouseButton1Click:Connect(function()
	jumppowerframe:TweenPosition(UDim2.new(-20, 0, -3.6711, 0))
	wait(2)
	jumppowerframe.Visible = false
end)

titlejp.Name = "titlejp"
titlejp.Parent = jpbar
titlejp.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
titlejp.BackgroundTransparency = 1.000
titlejp.BorderSizePixel = 0
titlejp.Position = UDim2.new(0.0203562342, 0, -0.0434782617, 0)
titlejp.Size = UDim2.new(0, 92, 0, 23)
titlejp.Font = Enum.Font.SourceSansSemibold
titlejp.Text = "Medusa Script"
titlejp.TextColor3 = Color3.fromRGB(170, 255, 255)
titlejp.TextScaled = true
titlejp.TextSize = 14.000
titlejp.TextWrapped = true

jpinput.Name = "jpinput"
jpinput.Parent = jumppowerframe
jpinput.BackgroundColor3 = Color3.fromRGB(0, 85, 255)
jpinput.Position = UDim2.new(0.119047619, 0, 0.22385484, 0)
jpinput.Size = UDim2.new(0, 127, 0, 36)
jpinput.Font = Enum.Font.SourceSans
jpinput.PlaceholderColor3 = Color3.fromRGB(0, 0, 0)
jpinput.Text = "Enter Power Value"
jpinput.TextColor3 = Color3.fromRGB(0, 255, 255)
jpinput.PlaceholderText = "Enter Power Value"
jpinput.PlaceholderColor3 = Color3.fromRGB(0, 255, 255)
jpinput.TextSize = 14.000

jpset.Name = "jpset"
jpset.Parent = jumppowerframe
jpset.BackgroundColor3 = Color3.fromRGB(0, 85, 127)
jpset.Position = UDim2.new(0.119047619, 0, 0.473340094, 0)
jpset.Size = UDim2.new(0, 125, 0, 33)
jpset.Font = Enum.Font.SourceSans
jpset.Text = "Set"
jpset.TextColor3 = Color3.fromRGB(85, 170, 255)
jpset.TextScaled = true
jpset.TextSize = 14.000
jpset.TextWrapped = true
jpset.MouseButton1Click:Connect(function()
	game.Players.LocalPlayer.Character.Humanoid.JumpPower = jpinput.Text
end)

jpreset.Name = "jpreset"
jpreset.Parent = jumppowerframe
jpreset.BackgroundColor3 = Color3.fromRGB(0, 85, 127)
jpreset.Position = UDim2.new(0.119047619, 0, 0.746326745, 0)
jpreset.Size = UDim2.new(0, 125, 0, 33)
jpreset.Font = Enum.Font.SourceSans
jpreset.Text = "Reset"
jpreset.TextColor3 = Color3.fromRGB(85, 170, 255)
jpreset.TextScaled = true
jpreset.TextSize = 14.000
jpreset.TextWrapped = true
jpreset.MouseButton1Click:Connect(function()
	game.Players.LocalPlayer.Character.Humanoid.JumpPower = 50
end)

btools.Name = "btools"
btools.Parent = features
btools.BackgroundColor3 = Color3.fromRGB(0, 85, 127)
btools.Position = UDim2.new(0.529262066, 0, 0.562954903, 0)
btools.Size = UDim2.new(0, 69, 0, 43)
btools.Font = Enum.Font.SourceSans
btools.Text = "BTools"
btools.TextColor3 = Color3.fromRGB(85, 170, 255)
btools.TextScaled = true
btools.TextSize = 14.000
btools.TextWrapped = true
btools.MouseButton1Click:Connect(function()
	game.StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.Backpack, true)
for index, child in pairs(game:GetService("Workspace"):GetChildren()) do
   if child.ClassName == "Part" then
       child.Locked = false
   end
   if child.ClassName == "MeshPart" then
       child.Locked = false
   end
   if child.ClassName == "UnionOperation" then
       child.Locked = false
   end
   if child.ClassName == "Model" then
       for index, chil in pairs(child:GetChildren()) do
           if chil.ClassName == "Part" then
               chil.Locked = false
           end
           if chil.ClassName == "MeshPart" then
               chil.Locked = false
           end
           if chil.ClassName == "UnionOperation" then
               chil.Locked = false
           end
           if chil.ClassName == "Model" then
               for index, childe in pairs(chil:GetChildren()) do
                   if childe.ClassName == "Part" then
                       childe.Locked = false
                   end
                   if childe.ClassName == "MeshPart" then
                       childe.Locked = false
                   end
                   if childe.ClassName == "UnionOperation" then
                       childe.Locked = false
                   end
                   if childe.ClassName == "Model" then
                       for index, childeo in pairs(childe:GetChildren()) do
                           if childeo.ClassName == "Part" then
                               childeo.Locked = false
                           end
                           if childeo.ClassName == "MeshPart" then
                               childeo.Locked = false
                           end
                           if childeo.ClassName == "UnionOperation" then
                               childeo.Locked = false
                           end
                           if childeo.ClassName == "Model" then
                           end
                       end
                   end
               end
           end
       end
   end
end
c = Instance.new("HopperBin", game:GetService("Players").LocalPlayer.Backpack)
c.BinType = Enum.BinType.Hammer
c = Instance.new("HopperBin", game:GetService("Players").LocalPlayer.Backpack)
c.BinType = Enum.BinType.Clone
c = Instance.new("HopperBin", game:GetService("Players").LocalPlayer.Backpack)
c.BinType = Enum.BinType.Grab
    btools.Text = "Loaded!"
    btools.TextColor3 = Color3.fromRGB(0, 215, 30)
    wait(2)
    btools.TextColor3 = Color3.fromRGB(85, 170, 255)
    btools.Text = "BTools"
end)

teleport.Name = "teleport"
teleport.Parent = features
teleport.BackgroundColor3 = Color3.fromRGB(0, 85, 127)
teleport.Position = UDim2.new(0.765903354, 0, 0.562954903, 0)
teleport.Size = UDim2.new(0, 69, 0, 43)
teleport.Font = Enum.Font.SourceSans
teleport.Text = "Teleport"
teleport.TextColor3 = Color3.fromRGB(85, 170, 255)
teleport.TextScaled = true
teleport.TextSize = 14.000
teleport.TextWrapped = true
teleport.MouseButton1Click:Connect(function()
	teleportframe.Visible = true
	teleportframe:TweenPosition(UDim2.new(-7.276, 0, -3.671, 0))
end)

teleportframe.Name = "teleportframe"
teleportframe.Parent = teleport
teleportframe.BackgroundColor3 = Color3.fromRGB(85, 170, 255)
teleportframe.Position = UDim2.new(-20, 0,  -3.671, 0)
teleportframe.Size = UDim2.new(0, 168, 0, 178)
teleportframe.Visible = false
teleportframe.Active = true
teleportframe.Draggable = true

tbar.Name = "tbar"
tbar.Parent = teleportframe
tbar.BackgroundColor3 = Color3.fromRGB(0, 85, 127)
tbar.Size = UDim2.new(0, 168, 0, 23)

closet.Name = "closet"
closet.Parent = tbar
closet.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
closet.Position = UDim2.new(0.865539074, 0, 0, 0)
closet.Size = UDim2.new(0, 22, 0, 22)
closet.Font = Enum.Font.SourceSans
closet.Text = "X"
closet.TextColor3 = Color3.fromRGB(255, 255, 255)
closet.TextScaled = true
closet.TextSize = 14.000
closet.TextWrapped = true
closet.MouseButton1Click:Connect(function()
	teleportframe:TweenPosition(UDim2.new(-20, 0, -3.671, 0))
	wait(2)
	teleportframe.Visible = false
end)

titlet.Name = "titlet"
titlet.Parent = tbar
titlet.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
titlet.BackgroundTransparency = 1.000
titlet.BorderSizePixel = 0
titlet.Position = UDim2.new(0.0203562342, 0, -0.0434782617, 0)
titlet.Size = UDim2.new(0, 92, 0, 23)
titlet.Font = Enum.Font.SourceSansSemibold
titlet.Text = "Brutality Hub"
titlet.TextColor3 = Color3.fromRGB(170, 255, 255)
titlet.TextScaled = true
titlet.TextSize = 14.000
titlet.TextWrapped = true

tpinput.Name = "tpinput"
tpinput.Parent = teleportframe
tpinput.BackgroundColor3 = Color3.fromRGB(0, 85, 255)
tpinput.Position = UDim2.new(0.119047619, 0, 0.22385484, 0)
tpinput.Size = UDim2.new(0, 127, 0, 36)
tpinput.Font = Enum.Font.SourceSans
tpinput.PlaceholderColor3 = Color3.fromRGB(0, 0, 0)
tpinput.Text = "Full Player Username"
tpinput.TextColor3 = Color3.fromRGB(0, 255, 255)
tpinput.PlaceholderText = "Full Player Username"
tpinput.PlaceholderColor3 = Color3.fromRGB(0, 255, 255)
tpinput.TextSize = 14.000

tpset.Name = "tpset"
tpset.Parent = teleportframe
tpset.BackgroundColor3 = Color3.fromRGB(0, 85, 127)
tpset.Position = UDim2.new(0.119047619, 0, 0.572169423, 0)
tpset.Size = UDim2.new(0, 125, 0, 33)
tpset.Font = Enum.Font.SourceSans
tpset.Text = "Teleport"
tpset.TextColor3 = Color3.fromRGB(85, 170, 255)
tpset.TextScaled = true
tpset.TextSize = 14.000
tpset.TextWrapped = true
tpset.MouseButton1Click:Connect(function()
	local Victim = tpinput.Text
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[Victim].Character.HumanoidRootPart.CFrame
    tpset.Text = "Teleported!"
    tpset.TextColor3 = Color3.fromRGB(0, 215, 30)
    wait(2)
    tpset.TextColor3 = Color3.fromRGB(85, 170, 255)
    tpset.Text = "Teleport"
end)

wait(0.2)
loading.Text = "Loading..."

infjump.Name = "infjump"
infjump.Parent = features
infjump.BackgroundColor3 = Color3.fromRGB(0, 85, 127)
infjump.Position = UDim2.new(0.765903354, 0, 0.2780604, 0)
infjump.Size = UDim2.new(0, 69, 0, 43)
infjump.Font = Enum.Font.SourceSans
infjump.Text = "Infinite Jump"
infjump.TextColor3 = Color3.fromRGB(85, 170, 255)
infjump.TextScaled = true
infjump.TextSize = 14.000
infjump.TextWrapped = true
infjump.MouseButton1Click:Connect(function()
_G.infinjump = true
 
local Player = game:GetService("Players").LocalPlayer
local Mouse = Player:GetMouse()
Mouse.KeyDown:connect(function(k)
if _G.infinjump then
if k:byte() == 32 then
Humanoid = game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
Humanoid:ChangeState("Jumping")
wait(0.1)
Humanoid:ChangeState("Seated")
end
end
end)
 
local Player = game:GetService("Players").LocalPlayer
local Mouse = Player:GetMouse()
Mouse.KeyDown:connect(function(k)
k = k:lower()
if k == "r" then
if _G.infinjump == true then
_G.infinjump = false
else
_G.infinjump = true
end
end
end)
infjump.TextColor3 = Color3.fromRGB(0, 215, 30)
infjump.Text = "Loaded!"
wait(2)
infjump.TextColor3 = Color3.fromRGB(85, 170, 255)
infjump.Text = "Infinite Jump"
end)

fly.Name = "fly"
fly.Parent = features
fly.BackgroundColor3 = Color3.fromRGB(0, 85, 127)
fly.Position = UDim2.new(0.529262066, 0, 0.2780604, 0)
fly.Size = UDim2.new(0, 69, 0, 43)
fly.Font = Enum.Font.SourceSans
fly.Text = "Fly"
fly.TextColor3 = Color3.fromRGB(85, 170, 255)
fly.TextScaled = true
fly.TextSize = 14.000
fly.TextWrapped = true
fly.MouseButton1Click:Connect(function()
flying = false
lplayer = game.Players.LocalPlayer
speedget = 2
speedfly = 2
Mouse = lplayer:GetMouse()

Mouse.KeyDown:Connect(function(k)
	k = k:lower()
	if k == "f" then
		if flying == false then
           
            repeat wait() until lplayer and lplayer.Character and lplayer.Character:FindFirstChild('HumanoidRootPart') and lplayer.Character:FindFirstChild('Humanoid')
            repeat wait() until Mouse
           
            local T = lplayer.Character.HumanoidRootPart
            local CONTROL = {F = 0, B = 0, L = 0, R = 0}
            local lCONTROL = {F = 0, B = 0, L = 0, R = 0}
            local SPEED = speedget
           
            local function fly()
                flying = true
                local BG = Instance.new('BodyGyro', T)
                local BV = Instance.new('BodyVelocity', T)
                BG.P = 9e4
                BG.maxTorque = Vector3.new(9e9, 9e9, 9e9)
                BG.cframe = T.CFrame
                BV.velocity = Vector3.new(0, 0.1, 0)
                BV.maxForce = Vector3.new(9e9, 9e9, 9e9)
                spawn(function()
                repeat wait()
                lplayer.Character.Humanoid.PlatformStand = true
                if CONTROL.L + CONTROL.R ~= 0 or CONTROL.F + CONTROL.B ~= 0 then
                    SPEED = 50
                elseif not (CONTROL.L + CONTROL.R ~= 0 or CONTROL.F + CONTROL.B ~= 0) and SPEED ~= 0 then
                    SPEED = 0
                end
                if (CONTROL.L + CONTROL.R) ~= 0 or (CONTROL.F + CONTROL.B) ~= 0 then
                    BV.velocity = ((workspace.CurrentCamera.CoordinateFrame.lookVector * (CONTROL.F + CONTROL.B)) + ((workspace.CurrentCamera.CoordinateFrame * CFrame.new(CONTROL.L + CONTROL.R, (CONTROL.F + CONTROL.B) * 0.2, 0).p) - workspace.CurrentCamera.CoordinateFrame.p)) * SPEED
                    lCONTROL = {F = CONTROL.F, B = CONTROL.B, L = CONTROL.L, R = CONTROL.R}
                elseif (CONTROL.L + CONTROL.R) == 0 and (CONTROL.F + CONTROL.B) == 0 and SPEED ~= 0 then
                    BV.velocity = ((workspace.CurrentCamera.CoordinateFrame.lookVector * (lCONTROL.F + lCONTROL.B)) + ((workspace.CurrentCamera.CoordinateFrame * CFrame.new(lCONTROL.L + lCONTROL.R, (lCONTROL.F + lCONTROL.B) * 0.2, 0).p) - workspace.CurrentCamera.CoordinateFrame.p)) * SPEED
                else
                    BV.velocity = Vector3.new(0, 0.1, 0)
                end
                BG.cframe = workspace.CurrentCamera.CoordinateFrame
                until not flying
                    CONTROL = {F = 0, B = 0, L = 0, R = 0}
                    lCONTROL = {F = 0, B = 0, L = 0, R = 0}
                    SPEED = 0
                    BG:destroy()
                    BV:destroy()
                    lplayer.Character.Humanoid.PlatformStand = false
                end)
            end
            Mouse.KeyDown:connect(function(KEY)
                if KEY:lower() == 'w' then
                    CONTROL.F = speedfly
                elseif KEY:lower() == 's' then
                    CONTROL.B = -speedfly
                elseif KEY:lower() == 'a' then
                    CONTROL.L = -speedfly
                elseif KEY:lower() == 'd' then
                    CONTROL.R = speedfly
                end
            end)
            Mouse.KeyUp:connect(function(KEY)
                if KEY:lower() == 'w' then
                    CONTROL.F = 0
                elseif KEY:lower() == 's' then
                    CONTROL.B = 0
                elseif KEY:lower() == 'a' then
                    CONTROL.L = 0
                elseif KEY:lower() == 'd' then
                    CONTROL.R = 0
                end
            end)
            fly()
        else
            flying = false
            lplayer.Character.Humanoid.PlatformStand = false
        end
   
    Mouse.KeyDown:Connect(function(k)
        if k == "123" then
           
            if flying == false then
               
                repeat wait() until lplayer and lplayer.Character and lplayer.Character:FindFirstChild('HumanoidRootPart') and lplayer.Character:FindFirstChild('Humanoid')
                repeat wait() until Mouse
               
                local T = lplayer.Character.HumanoidRootPart
                local CONTROL = {F = 0, B = 0, L = 0, R = 0}
                local lCONTROL = {F = 0, B = 0, L = 0, R = 0}
                local SPEED = speedget
               
                local function fly()
                    flying = true
                    local BG = Instance.new('BodyGyro', T)
                    local BV = Instance.new('BodyVelocity', T)
                    BG.P = 9e4
                    BG.maxTorque = Vector3.new(9e9, 9e9, 9e9)
                    BG.cframe = T.CFrame
                    BV.velocity = Vector3.new(0, 0.1, 0)
                    BV.maxForce = Vector3.new(9e9, 9e9, 9e9)
                    spawn(function()
                    repeat wait()
                    lplayer.Character.Humanoid.PlatformStand = true
                    if CONTROL.L + CONTROL.R ~= 0 or CONTROL.F + CONTROL.B ~= 0 then
                        SPEED = 50
                    elseif not (CONTROL.L + CONTROL.R ~= 0 or CONTROL.F + CONTROL.B ~= 0) and SPEED ~= 0 then
                        SPEED = 0
                    end
                    if (CONTROL.L + CONTROL.R) ~= 0 or (CONTROL.F + CONTROL.B) ~= 0 then
                        BV.velocity = ((workspace.CurrentCamera.CoordinateFrame.lookVector * (CONTROL.F + CONTROL.B)) + ((workspace.CurrentCamera.CoordinateFrame * CFrame.new(CONTROL.L + CONTROL.R, (CONTROL.F + CONTROL.B) * 0.2, 0).p) - workspace.CurrentCamera.CoordinateFrame.p)) * SPEED
                        lCONTROL = {F = CONTROL.F, B = CONTROL.B, L = CONTROL.L, R = CONTROL.R}
                    elseif (CONTROL.L + CONTROL.R) == 0 and (CONTROL.F + CONTROL.B) == 0 and SPEED ~= 0 then
                        BV.velocity = ((workspace.CurrentCamera.CoordinateFrame.lookVector * (lCONTROL.F + lCONTROL.B)) + ((workspace.CurrentCamera.CoordinateFrame * CFrame.new(lCONTROL.L + lCONTROL.R, (lCONTROL.F + lCONTROL.B) * 0.2, 0).p) - workspace.CurrentCamera.CoordinateFrame.p)) * SPEED
                    else
                        BV.velocity = Vector3.new(0, 0.1, 0)
                    end
                    BG.cframe = workspace.CurrentCamera.CoordinateFrame
                    until not flying
                        CONTROL = {F = 0, B = 0, L = 0, R = 0}
                        lCONTROL = {F = 0, B = 0, L = 0, R = 0}
                        SPEED = 0
                        BG:destroy()
                        BV:destroy()
                        lplayer.Character.Humanoid.PlatformStand = false
                    end)
                end
                Mouse.KeyDown:connect(function(KEY)
                    if KEY:lower() == 'w' then
                        CONTROL.F = speedfly
                    elseif KEY:lower() == 's' then
                        CONTROL.B = -speedfly
                    elseif KEY:lower() == 'a' then
                        CONTROL.L = -speedfly
                    elseif KEY:lower() == 'd' then
                        CONTROL.R = speedfly
                    end
                end)
                Mouse.KeyUp:connect(function(KEY)
                    if KEY:lower() == 'w' then
                        CONTROL.F = 0
                    elseif KEY:lower() == 's' then
                        CONTROL.B = 0
                    elseif KEY:lower() == 'a' then
                        CONTROL.L = 0
                    elseif KEY:lower() == 'd' then
                        CONTROL.R = 0
                    end
                end)
                fly()
            else
                flying = false
                lplayer.Character.Humanoid.PlatformStand = false
            end
           
        end
    end)
	end
end)
fly.TextColor3 = Color3.fromRGB(0, 215, 30)
fly.Text = "Loaded!"
wait(2)
fly.TextColor3 = Color3.fromRGB(85, 170, 255)
fly.Text = "Fly"
end)

clicktp.Name = "clicktp"
clicktp.Parent = features
clicktp.BackgroundColor3 = Color3.fromRGB(0, 85, 127)
clicktp.Position = UDim2.new(0.279898196, 0, 0.2780604, 0)
clicktp.Size = UDim2.new(0, 69, 0, 43)
clicktp.Font = Enum.Font.SourceSans
clicktp.Text = "Click Teleport"
clicktp.TextColor3 = Color3.fromRGB(85, 170, 255)
clicktp.TextScaled = true
clicktp.TextSize = 14.000
clicktp.TextWrapped = true
clicktp.MouseButton1Click:Connect(function()
	local UIS = game:GetService("UserInputService")
local Player = game.Players.LocalPlayer
local Mouse = Player:GetMouse()


function GetCharacter()
   return game.Players.LocalPlayer.Character
end

function Teleport(pos)
   local Char = GetCharacter()
   if Char then
       Char:MoveTo(pos)
   end
end


UIS.InputBegan:Connect(function(input)
   if input.UserInputType == Enum.UserInputType.MouseButton1 and UIS:IsKeyDown(Enum.KeyCode.LeftControl) then
       Teleport(Mouse.Hit.p)
   end
end)
clicktp.TextColor3 = Color3.fromRGB(0, 215, 30)
clicktp.Text = "Loaded!"
wait(2)
clicktp.TextColor3 = Color3.fromRGB(85, 170, 255)
clicktp.Text = "Click Teleport"
end)

noclipbtn.Name = "noclipbtn"
noclipbtn.Parent = features
noclipbtn.BackgroundColor3 = Color3.fromRGB(0, 85, 127)
noclipbtn.Position = UDim2.new(0.0483460575, 0, 0.2780604, 0)
noclipbtn.Size = UDim2.new(0, 69, 0, 43)
noclipbtn.Font = Enum.Font.SourceSans
noclipbtn.Text = "NoClip"
noclipbtn.TextColor3 = Color3.fromRGB(85, 170, 255)
noclipbtn.TextScaled = true
noclipbtn.TextSize = 14.000
noclipbtn.TextWrapped = true
noclipbtn.MouseButton1Click:Connect(function()
	noclip = false
game:GetService('RunService').Stepped:connect(function()
if noclip then
game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
end
end)
plr = game.Players.LocalPlayer
mouse = plr:GetMouse()
mouse.KeyDown:connect(function(key)

if key == "e" then
noclip = not noclip
game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
end
end)
noclipbtn.TextColor3 = Color3.fromRGB(0, 215, 30)
noclipbtn.Text = "Loaded!"
wait(2)
noclipbtn.TextColor3 = Color3.fromRGB(85, 170, 255)
noclipbtn.Text = "NoClip"
end)

controls.Name = "controls"
controls.Parent = features
controls.BackgroundColor3 = Color3.fromRGB(21, 102, 54)
controls.Position = UDim2.new(0.365979386, 0, 0.056625817, 0)
controls.Size = UDim2.new(0, 102, 0, 26)
controls.Font = Enum.Font.SourceSans
controls.Text = "Controls"
controls.TextColor3 = Color3.fromRGB(52, 235, 125)
controls.TextScaled = true
controls.TextSize = 14.000
controls.TextWrapped = true
controls.MouseButton1Click:Connect(function()
	controlsframe.Visible = true
	controlsframe:TweenPosition(UDim2.new(-3.36274505, 0, -1.46153843, 0))
end)

controlsframe.Name = "controlsframe"
controlsframe.Parent = controls
controlsframe.BackgroundColor3 = Color3.fromRGB(85, 170, 255)
controlsframe.Position = UDim2.new(-20, 0, -1.46153843, 0)
controlsframe.Size = UDim2.new(0, 168, 0, 170)
controlsframe.Visible = false
controlsframe.Active = true
controlsframe.Draggable = true

cbar.Name = "cbar"
cbar.Parent = controlsframe
cbar.BackgroundColor3 = Color3.fromRGB(0, 85, 127)
cbar.Size = UDim2.new(0, 168, 0, 23)

closec.Name = "closec"
closec.Parent = cbar
closec.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
closec.Position = UDim2.new(0.865539074, 0, 0, 0)
closec.Size = UDim2.new(0, 22, 0, 22)
closec.Font = Enum.Font.SourceSans
closec.Text = "X"
closec.TextColor3 = Color3.fromRGB(255, 255, 255)
closec.TextScaled = true
closec.TextSize = 14.000
closec.TextWrapped = true
closec.MouseButton1Click:Connect(function()
	controlsframe:TweenPosition(UDim2.new(-20.30, 0, -1.46153843, 0))
	wait(2)
	controlsframe.Visible = false
end)

titlec.Name = "titlec"
titlec.Parent = cbar
titlec.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
titlec.BackgroundTransparency = 1.000
titlec.BorderSizePixel = 0
titlec.Position = UDim2.new(0.0203562342, 0, -0.0434782617, 0)
titlec.Size = UDim2.new(0, 92, 0, 23)
titlec.Font = Enum.Font.SourceSansSemibold
titlec.Text = "Brutality Hub"
titlec.TextColor3 = Color3.fromRGB(170, 255, 255)
titlec.TextScaled = true
titlec.TextSize = 14.000
titlec.TextWrapped = true

insnoclip.Name = "insnoclip"
insnoclip.Parent = controlsframe
insnoclip.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
insnoclip.BackgroundTransparency = 1.000
insnoclip.BorderSizePixel = 0
insnoclip.Position = UDim2.new(0.0416666679, 0, 0.129213482, 0)
insnoclip.Size = UDim2.new(0, 79, 0, 38)
insnoclip.Font = Enum.Font.SourceSans
insnoclip.Text = "E = NoClip"
insnoclip.TextColor3 = Color3.fromRGB(255, 255, 255)
insnoclip.TextSize = 14.000
insnoclip.TextXAlignment = Enum.TextXAlignment.Left

insfly.Name = "insfly"
insfly.Parent = controlsframe
insfly.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
insfly.BackgroundTransparency = 1.000
insfly.BorderSizePixel = 0
insfly.Position = UDim2.new(0.0416666679, 0, 0.350405067, 0)
insfly.Size = UDim2.new(0, 79, 0, 38)
insfly.Font = Enum.Font.SourceSans
insfly.Text = "F = Fly"
insfly.TextColor3 = Color3.fromRGB(255, 255, 255)
insfly.TextSize = 14.000
insfly.TextXAlignment = Enum.TextXAlignment.Left

insinfjump.Name = "insinfjump"
insinfjump.Parent = controlsframe
insinfjump.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
insinfjump.BackgroundTransparency = 1.000
insinfjump.BorderSizePixel = 0
insinfjump.Position = UDim2.new(0.0416666679, 0, 0.555010855, 0)
insinfjump.Size = UDim2.new(0, 88, 0, 38)
insinfjump.Font = Enum.Font.SourceSans
insinfjump.Text = "R = Infinite Jump"
insinfjump.TextColor3 = Color3.fromRGB(255, 255, 255)
insinfjump.TextSize = 14.000
insinfjump.TextWrapped = true
insinfjump.TextXAlignment = Enum.TextXAlignment.Left

wait(0.2)
loading.Text = "Checking..."

insclicktp.Name = "insclicktp"
insclicktp.Parent = controlsframe
insclicktp.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
insclicktp.BackgroundTransparency = 1.000
insclicktp.BorderSizePixel = 0
insclicktp.Position = UDim2.new(0.0416666679, 0, 0.757521014, 0)
insclicktp.Size = UDim2.new(0, 150, 0, 38)
insclicktp.Font = Enum.Font.SourceSans
insclicktp.Text = "CTRL = Click Teleport"
insclicktp.TextColor3 = Color3.fromRGB(255, 255, 255)
insclicktp.TextSize = 14.000
insclicktp.TextWrapped = true
insclicktp.TextXAlignment = Enum.TextXAlignment.Left

open.Name = "open"
open.Parent = SimpleREMAKE
open.BackgroundColor3 = Color3.fromRGB(0, 85, 127)
open.Position = UDim2.new(-0.3, 0, 0.784860551, 0)
open.Size = UDim2.new(0, 78, 0, 33)
open.Font = Enum.Font.SourceSans
open.Text = "Open"
open.TextColor3 = Color3.fromRGB(85, 170, 255)
open.TextScaled = true
open.TextSize = 14.000
open.TextWrapped = true
open.MouseButton1Click:Connect(function()
	open:TweenPosition(UDim2.new(-0.3, 0, 0.784860551, 0))
	wait(0.3)
	main:TweenPosition(UDim2.new(0.5, 0, 0.5, 0))
    wait(1.25)
    main:TweenSize(UDim2.new(0, 393, 0, 260))
    wait(1)
    features.Visible = true
    features:TweenSize(UDim2.new(0, 393, 0, 237))
end)

loading.Text = "Loaded!"
wait(0.5)
loading.Text = "Launching..."
wait(1)
features.Visible = true
features:TweenSize(UDim2.new(0, 393, 0, 237))
