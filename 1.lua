local HttpService = game:GetService("HttpService")
local Players = game:GetService("Players")
local DataStoreService = game:GetService("DataStoreService")

local LocalPlayer = Players.LocalPlayer
local keyDataStore = DataStoreService:GetDataStore("KeyStore")
local lastKeyTimeStore = DataStoreService:GetDataStore("LastKeyTimeStore")

local function getKeyFromGitHub()
    -- Ganti dengan URL raw dari file key.txt di GitHub
    local url = "https://raw.githubusercontent.com/username/repository/branch/key.txt"
    
    local success, response = pcall(function()
        return HttpService:GetAsync(url)
    end)
    
    if success then
        return response
    else
        warn("Failed to fetch key from GitHub")
        return nil
    end
end

local function getTimeDifferenceHours(oldTime)
    return (os.time() - oldTime) / 3600
end

local function checkKeyValidity()
    local storedKey = keyDataStore:GetAsync(LocalPlayer.UserId)
    local lastKeyTime = lastKeyTimeStore:GetAsync(LocalPlayer.UserId)
    if storedKey and lastKeyTime then
        -- Periksa apakah kunci masih valid (belum lebih dari 24 jam)
        if getTimeDifferenceHours(lastKeyTime) < 24 then
            local correctKey = getKeyFromGitHub()
            if correctKey and storedKey == correctKey then
                return true
            end
        end
    end
    return false
end

local function saveKey(key)
    keyDataStore:SetAsync(LocalPlayer.UserId, key)
    lastKeyTimeStore:SetAsync(LocalPlayer.UserId, os.time())
end

-- Jika kunci valid, lanjutkan dengan menampilkan profil pemain
if checkKeyValidity() then
    -- GUI Setup for Player Profile
    local profileGui = Instance.new("ScreenGui")
    profileGui.Parent = LocalPlayer:WaitForChild("PlayerGui")

    local profileFrame = Instance.new("Frame")
    profileFrame.Size = UDim2.new(0, 300, 0, 150)
    profileFrame.Position = UDim2.new(0.5, -150, 0.5, -75)
    profileFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
    profileFrame.BorderSizePixel = 2
    profileFrame.BorderColor3 = Color3.fromRGB(255, 255, 255)
    profileFrame.Parent = profileGui

    local nameLabel = Instance.new("TextLabel")
    nameLabel.Size = UDim2.new(1, 0, 0, 50)
    nameLabel.Position = UDim2.new(0, 0, 0, 0)
    nameLabel.Text = LocalPlayer.Name
    nameLabel.Font = Enum.Font.SourceSansBold
    nameLabel.TextSize = 24
    nameLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    nameLabel.BackgroundTransparency = 1
    nameLabel.TextWrapped = true
    nameLabel.Parent = profileFrame

    local avatarImage = Instance.new("ImageLabel")
    avatarImage.Size = UDim2.new(0, 100, 0, 100)
    avatarImage.Position = UDim2.new(0.5, -50, 0.5, -25)
    avatarImage.BackgroundTransparency = 1
    avatarImage.Image = "https://www.roblox.com/headshot-thumbnail/image?userId=" .. LocalPlayer.UserId .. "&width=420&height=420&format=png"
    avatarImage.Parent = profileFrame
else
    -- GUI Setup for Key Input
    local screenGui = Instance.new("ScreenGui")
    screenGui.Parent = LocalPlayer:WaitForChild("PlayerGui")

    local frame = Instance.new("Frame")
    frame.Size = UDim2.new(0, 300, 0, 250)
    frame.Position = UDim2.new(0.5, -150, 0.5, -125)
    frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    frame.BorderSizePixel = 2
    frame.BorderColor3 = Color3.fromRGB(255, 255, 255)
    frame.Active = true
    frame.Draggable = true
    frame.Parent = screenGui

    local keyLabel = Instance.new("TextLabel")
    keyLabel.Size = UDim2.new(1, 0, 0, 30)
    keyLabel.Position = UDim2.new(0, 0, 0.5, -60)
    keyLabel.Text = "Enter Key:"
    keyLabel.Font = Enum.Font.SourceSansBold
    keyLabel.TextSize = 18
    keyLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    keyLabel.BackgroundTransparency = 1
    keyLabel.TextWrapped = true
    keyLabel.Parent = frame

    local keyInput = Instance.new("TextBox")
    keyInput.Size = UDim2.new(1, 0, 0, 30)
    keyInput.Position = UDim2.new(0, 0, 0.5, -20)
    keyInput.Font = Enum.Font.SourceSansBold
    keyInput.TextSize = 18
    keyInput.TextColor3 = Color3.fromRGB(255, 255, 255)
    keyInput.BackgroundTransparency = 0.5
    keyInput.Parent = frame

    local submitButton = Instance.new("TextButton")
    submitButton.Size = UDim2.new(1, 0, 0, 30)
    submitButton.Position = UDim2.new(0, 0, 0.5, 20)
    submitButton.Text = "Submit"
    submitButton.Font = Enum.Font.SourceSansBold
    submitButton.TextSize = 18
    submitButton.TextColor3 = Color3.fromRGB(255, 255, 255)
    submitButton.BackgroundTransparency = 0.5
    submitButton.Parent = frame

    submitButton.MouseButton1Click:Connect(function()
        local userKey = keyInput.Text
        
        local correctKey = getKeyFromGitHub()
        if correctKey and userKey == correctKey then
            saveKey(userKey)
            keyLabel.Text = "Key Verified!"
            wait(2)
            screenGui:Destroy()

            -- GUI Setup for Player Profile
            local profileGui = Instance.new("ScreenGui")
            profileGui.Parent = LocalPlayer:WaitForChild("PlayerGui")

            local profileFrame = Instance.new("Frame")
            profileFrame.Size = UDim2.new(0, 300, 0, 150)
            profileFrame.Position = UDim2.new(0.5, -150, 0.5, -75)
            profileFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
            profileFrame.BorderSizePixel = 2
            profileFrame.BorderColor3 = Color3.fromRGB(255, 255, 255)
            profileFrame.Parent = profileGui

            local nameLabel = Instance.new("TextLabel")
            nameLabel.Size = UDim2.new(1, 0, 0, 50)
            nameLabel.Position = UDim2.new(0, 0, 0, 0)
            nameLabel.Text = LocalPlayer.Name
            nameLabel.Font = Enum.Font.SourceSansBold
            nameLabel.TextSize = 24
            nameLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
            nameLabel.BackgroundTransparency = 1
            nameLabel.TextWrapped = true
            nameLabel.Parent = profileFrame

            local avatarImage = Instance.new("ImageLabel")
            avatarImage.Size = UDim2.new(0, 100, 0, 100)
            avatarImage.Position = UDim2.new(0.5, -50, 0.5, -25)
            avatarImage.BackgroundTransparency = 1
            avatarImage.Image = "https://www.roblox.com/headshot-thumbnail/image?userId=" .. LocalPlayer.UserId .. "&width=420&height=420&format=png"
            avatarImage.Parent = profileFrame

        else
            keyLabel.Text = "Invalid Key, Try Again."
        end
    end)
end
