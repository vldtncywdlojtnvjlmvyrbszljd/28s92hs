local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local TweenService = game:GetService("TweenService")
local HttpService = game:GetService("HttpService")

-- Load key from storage
local storedKey = getsynasset("stored_key.json")
local storedKeyData = storedKey and HttpService:JSONDecode(readfile(storedKey)) or {}

local function saveKey(key)
    storedKeyData[LocalPlayer.UserId] = key
    writefile("stored_key.json", HttpService:JSONEncode(storedKeyData))
end

local screenGui = Instance.new("ScreenGui")
screenGui.Parent = LocalPlayer:WaitForChild("PlayerGui")

local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 300, 0, 250)
frame.Position = UDim2.new(0.2, -150, 0.5, -100)
frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
frame.BorderSizePixel = 2
frame.BorderColor3 = Color3.fromRGB(255, 255, 255)
frame.Active = true
frame.Draggable = true
frame.Parent = screenGui

local headerLabel = Instance.new("TextLabel")
headerLabel.Size = UDim2.new(1, 0, 0, 30)
headerLabel.Position = UDim2.new(0, 0, 0, 0)
headerLabel.Text = "BRUTALITY HUB V4"
headerLabel.Font = Enum.Font.SourceSansBold
headerLabel.TextSize = 18
headerLabel.TextColor3 = Color3.fromRGB(222, 142, 4)
headerLabel.BackgroundTransparency = 1
headerLabel.TextWrapped = true
headerLabel.Parent = frame

local closeButton = Instance.new("TextButton")
closeButton.Size = UDim2.new(0, 30, 0, 30)
closeButton.Position = UDim2.new(1, -30, 0, 0)
closeButton.Text = ""
closeButton.Font = Enum.Font.SourceSansBold
closeButton.TextSize = 18
closeButton.TextColor3 = Color3.fromRGB(255, 255, 255)
closeButton.BackgroundTransparency = 1
closeButton.Parent = frame

closeButton.MouseButton1Click:Connect(function()
    local tween = TweenService:Create(frame, TweenInfo.new(0.5), {Position = UDim2.new(0.5, -150, -0.5, -100)})
    tween:Play()
    tween.Completed:Connect(function()
        screenGui:Destroy()
    end)
end)

local label = Instance.new("TextLabel")
label.Size = UDim2.new(1, 0, 0, 50)
label.Position = UDim2.new(0, 0, 0, 12) 
label.Text = "HELLO MY FRIEND "
label.Font = Enum.Font.SourceSansBold
label.TextSize = 30
label.TextColor3 = Color3.fromRGB(255, 255, 255)
label.BackgroundTransparency = 1
label.TextWrapped = true
label.Parent = frame

local userNameLabel = Instance.new("TextLabel")
userNameLabel.Size = UDim2.new(1, 0, 0, 50)
userNameLabel.Position = UDim2.new(0, 0, 0, 35) 
userNameLabel.Text = "".. game.Players.LocalPlayer.Name
userNameLabel.Font = Enum.Font.SourceSansBold
userNameLabel.TextSize = 20
userNameLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
userNameLabel.BackgroundTransparency = 1
userNameLabel.TextWrapped = true
userNameLabel.Parent = frame

local executorLabel = Instance.new("TextLabel")
executorLabel.Size = UDim2.new(1, 0, 0, 50)
executorLabel.Position = UDim2.new(0, 0, 0, 55) 
executorLabel.Text = "".. identifyexecutor()
executorLabel.Font = Enum.Font.SourceSansBold
executorLabel.TextSize = 20
executorLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
executorLabel.BackgroundTransparency = 1
executorLabel.TextWrapped = true
executorLabel.Parent = frame

local textBox = Instance.new("TextBox")
textBox.Size = UDim2.new(0.8, 0, 0, 30)
textBox.Position = UDim2.new(0.1, 0, 0.4, 0)
textBox.Text = "Enter Key Here"
textBox.Font = Enum.Font.SourceSans
textBox.TextSize = 18
textBox.TextColor3 = Color3.fromRGB(0, 0, 0)
textBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
textBox.TextWrapped = true
textBox.Parent = frame

local getKeyButton = Instance.new("TextButton")
getKeyButton.Size = UDim2.new(0.4, 0, 0, 30)
getKeyButton.Position = UDim2.new(0.1, 0, 0.7, 0)
getKeyButton.Text = "Get Key"
getKeyButton.Font = Enum.Font.SourceSansBold
getKeyButton.TextSize = 18
getKeyButton.TextColor3 = Color3.fromRGB(255, 255, 255)
getKeyButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
getKeyButton.Parent = frame

local checkKeyButton = Instance.new("TextButton")
checkKeyButton.Size = UDim2.new(0.4, 0, 0, 30)
checkKeyButton.Position = UDim2.new(0.5, 0, 0.7, 0)
checkKeyButton.Text = "Check Key"
checkKeyButton.Font = Enum.Font.SourceSansBold
checkKeyButton.TextSize = 18
checkKeyButton.TextColor3 = Color3.fromRGB(255, 255, 255)
checkKeyButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
checkKeyButton.Parent = frame

local DiscordButton = Instance.new("TextButton")
DiscordButton.Size = UDim2.new(0.8, 0, 0, 30)
DiscordButton.Position = UDim2.new(0.10, 0, 0.850, 0)
DiscordButton.Text = "Join Discord"
DiscordButton.Font = Enum.Font.SourceSansBold
DiscordButton.TextSize = 18
DiscordButton.TextColor3 = Color3.fromRGB(255, 255, 255)
DiscordButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
DiscordButton.Parent = frame

local validationLabel = Instance.new("TextLabel")
validationLabel.Size = UDim2.new(0.8, 0, 0, 30)
validationLabel.Position = UDim2.new(0.1, 0, 0.550, 0)
validationLabel.Text = "Please Get Key"
validationLabel.Font = Enum.Font.SourceSansBold
validationLabel.TextSize = 18
validationLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
validationLabel.BackgroundTransparency = 1
validationLabel.Parent = frame

local keyFileUrl = "https://raw.githubusercontent.com/vldtncywdlojtnvjlmvyrbszljd/28s92hs/main/key.txt"
local allowPassThrough = false

function verify(key)
    local status, result = pcall(function() 
        return game:HttpGetAsync(keyFileUrl)
    end)

    if status then
        if string.find(result, key) then
            return true
        end
    end
    return false
end

getKeyButton.MouseButton1Click:Connect(function()
    setclipboard('https://getkey-sigma.vercel.app/')
    validationLabel.Text = "Link Get Key Copied!"
    validationLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
end)

DiscordButton.MouseButton1Click:Connect(function()
    setclipboard('https://discord.com/invite/brutality-hub-1182005198206545941')
    validationLabel.Text = "Link Discord Copied!"
    validationLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
end)

checkKeyButton.MouseButton1Click:Connect(function()
    local key = textBox.Text
    if verify(key) then
        validationLabel.Text = "Key Is Valid!"
        validationLabel.TextColor3 = Color3.fromRGB(0, 255, 0)
        saveKey(key)
        wait(2)
        validationLabel.Text = "Thanks For Using"
        validationLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
        wait(2)
        local tween = TweenService:Create(frame, TweenInfo.new(0.5), {Position = UDim2.new(0.5, -150, 1.5, -100)})
        tween:Play()
        tween.Completed:Connect(function()
            screenGui:Destroy()
        end)
        loadstring(game:HttpGet("https://raw.githubusercontent.com/vldtncywdlojtnvjlmvyrbszljd/asedesa/main/gamehub.lua"))()
    else
        validationLabel.Text = "Key Invalid"
        validationLabel.TextColor3 = Color3.fromRGB(255, 0, 0)
    end
end)

-- Check for stored key on startup
local savedKey = storedKeyData[LocalPlayer.UserId]
if savedKey and verify(savedKey) then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/vldtncywdlojtnvjlmvyrbszljd/asedesa/main/gamehub.lua"))()
else
    -- Show GUI if no valid key is stored
    screenGui.Enabled = true
end
