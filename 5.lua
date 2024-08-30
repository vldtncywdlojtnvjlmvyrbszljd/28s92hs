local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local TweenService = game:GetService("TweenService")
local keyFileUrl = "https://raw.githubusercontent.com/vldtncywdlojtnvjlmvyrbszljd/28s92hs/main/key.txt"
local keyFileName = "BrutalityHubKey.txt" -- File untuk menyimpan kunci lokal

-- Fungsi untuk menyimpan kunci ke file lokal
local function saveKeyLocally(key)
    writefile(keyFileName, key)
end

-- Fungsi untuk mengambil kunci dari file lokal
local function getKeyFromLocal()
    if isfile(keyFileName) then
        return readfile(keyFileName)
    else
        return nil
    end
end

local function onMessage(msg)
    print(msg)
end

local function verifyKeyOnline(key)
    local status, result = pcall(function()
        return game:HttpGetAsync(keyFileUrl)
    end)

    if status then
        if string.find(result, key) then
            onMessage("Key is valid!")
            saveKeyLocally(key)
            return true
        else
            onMessage("Key is invalid!")
            return false
        end
    else
        onMessage("An error occurred while contacting the server!")
        return false
    end
end

local function verifyKey()
    local localKey = getKeyFromLocal()
    if localKey then
        if verifyKeyOnline(localKey) then
            return true
        end
    else
        return false
    end
end

if verifyKey() then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/vldtncywdlojtnvjlmvyrbszljd/asedesa/main/zxcv.lua", true))()
else
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

    local checkKeyButton = Instance.new("TextButton")
    checkKeyButton.Size = UDim2.new(0.4, 0, 0, 30)
    checkKeyButton.Position = UDim2.new(0.5, 0, 0.7, 0)
    checkKeyButton.Text = "Check Key"
    checkKeyButton.Font = Enum.Font.SourceSansBold
    checkKeyButton.TextSize = 18
    checkKeyButton.TextColor3 = Color3.fromRGB(255, 255, 255)
    checkKeyButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    checkKeyButton.Parent = frame

    checkKeyButton.MouseButton1Click:Connect(function()
        local key = textBox.Text
        if verifyKeyOnline(key) then
            validationLabel.Text = "Key Is Valid!"
            validationLabel.TextColor3 = Color3.fromRGB(0, 255, 0)
            wait(2)
            validationLabel.Text = "Thanks For Using"
            validationLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
            wait(2)
            local tween = TweenService:Create(frame, TweenInfo.new(0.5), {Position = UDim2.new(0.5, -150, 1.5, -100)})
            tween:Play()
            tween.Completed:Connect(function()
                screenGui:Destroy()
                loadstring(game:HttpGet("https://raw.githubusercontent.com/vldtncywdlojtnvjlmvyrbszljd/asedesa/main/zxcv.lua", true))()
            end)
        else
            validationLabel.Text = "Checking Key..."
            validationLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
            wait(1.7)
            validationLabel.Text = "Key Is Not Valid!"
            validationLabel.TextColor3 = Color3.fromRGB(255, 0, 0)
        end
    end)
end
