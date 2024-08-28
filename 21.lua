local NotificationLibrary = loadstring(game:HttpGet("https://raw.githubusercontent.com/lobox920/Notification-Library/Main/Library.lua"))()

NotificationLibrary:SendNotification("Warning", "Script Loading ...", 10)
NotificationLibrary:SendNotification("Warning", "YouTube: Turbo Lite Thanks For Subscribe My ^^", 10)

textButton.MouseButton1Click:Connect(function()
    StopTween()
end)

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local SoundService = game:GetService("SoundService")
local TweenService = game:GetService("TweenService")

local soundId = "rbxassetid://130785805" 
local sound = Instance.new("Sound")
sound.Name = "ButtonClickSound"
sound.SoundId = soundId
sound.Parent = ReplicatedStorage

local ScreenGui = Instance.new("ScreenGui")
local ImageButton = Instance.new("ImageButton")
local UICorner = Instance.new("UICorner")

ScreenGui.Parent = game.CoreGui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

ImageButton.Parent = ScreenGui
ImageButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
ImageButton.BorderSizePixel = 0
ImageButton.Position = UDim2.new(0.120833337, 0, 0.0952890813, 0)
ImageButton.Size = UDim2.new(0, 50, 0, 50)
ImageButton.Draggable = true
ImageButton.Image = "http://www.roblox.com/asset/?id=18919385586"
ImageButton.MouseButton1Down:connect(function()
    game:GetService("VirtualInputManager"):SendKeyEvent(true,Enum.KeyCode.End,false,game)
end)

local index = 1

spawn(function()
    while true do
        UIStroke.Color = colors[index]
        index = index % #colors + 1 
        wait(0.5) 
    end
end)

local function toggleUI()
    MainScreenGui.Enabled = not MainScreenGui.Enabled
end

ImageButton.MouseButton1Click:Connect(function()
    
    local goal = {Rotation = 360} 
    local tweenInfo = TweenInfo.new(1, Enum.EasingStyle.Back) 
    local tween = TweenService:Create(ImageButton, tweenInfo, goal)

    tween:Play()
    tween.Completed:Connect(function()
        ImageButton.Rotation = 0 
        toggleUI() 
    end)

    local clickSound = sound:Clone()
    clickSound.Parent = SoundService
    clickSound:Play()
    
    game:GetService("VirtualInputManager"):SendKeyEvent(true, Enum.KeyCode.LeftControl, false, game)
end)

local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()
local Window = Fluent:CreateWindow({
    Title = "Mini Hub ┃ Turbo Lite",
    SubTitle = "discord.gg/zKA8VNHzME",
    TabWidth = 100,
    Size = UDim2.fromOffset(400, 280),
    Acrylic = false, -- The blur may be detectable, setting this to false disables blur entirely
    Theme = "Darker",
    MinimizeKey = Enum.KeyCode.LeftControl -- Used when theres no MinimizeKeybind
})

-- Fluent provides Lucide Icons https://lucide.dev/icons/ for the tabs, icons are optional
local Tabs = {
    Main = Window:AddTab({ Title = "Tab Farm", Icon = "" }),
    stack = Window:AddTab({ Title = "Tab Quest ", Icon = "" }),
    Qs = Window:AddTab({ Title = "Tab Misc", Icon = "" }),
    Sh = Window:AddTab({ Title = "Tab Shop", Icon = "" }),     
    Se = Window:AddTab({ Title = "Tab Sea Event", Icon = "" }),   
    St = Window:AddTab({ Title = "Tab Server", Icon = "" }),    
    Lc = Window:AddTab({ Title = "Tab Teleport", Icon = "" }),   
    spl = Window:AddTab({ Title = "Tab Status", Icon = "" }),   
    RC = Window:AddTab({ Title = "Tab Auto V4", Icon = "" }),
    raid = Window:AddTab({ Title = "Tab Auto Raid", Icon = "" }),
    De = Window:AddTab({ Title = "Tab Devil Fruit", Icon = "" }),    
    Ms = Window:AddTab({ Title = "Tab Title", Icon ="" }),   
    Settings = Window:AddTab({ Title = "Tab Setting", Icon = "" }),
}
