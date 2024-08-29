local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local TweenService = game:GetService("TweenService")
local DataStoreService = game:GetService("DataStoreService")

local keyDataStore = DataStoreService:GetDataStore("KeyStore")
local lastKeyTimeStore = DataStoreService:GetDataStore("LastKeyTimeStore")

-- Fungsi untuk mendapatkan perbedaan waktu dalam jam
local function getTimeDifferenceHours(oldTime)
    return (os.time() - oldTime) / 3600
end

-- Fungsi untuk mengecek apakah kunci masih valid
local function checkKeyValidity()
    local storedKey = keyDataStore:GetAsync(LocalPlayer.UserId)
    local lastKeyTime = lastKeyTimeStore:GetAsync(LocalPlayer.UserId)
    if storedKey and lastKeyTime then
        if getTimeDifferenceHours(lastKeyTime) < 24 then
            return true
        end
    end
    return false
end

-- Fungsi untuk menyimpan kunci
local function saveKey(key)
    keyDataStore:SetAsync(LocalPlayer.UserId, key)
    lastKeyTimeStore:SetAsync(LocalPlayer.UserId, os.time())
end

-- Jika kunci valid, lanjutkan ke script utama
if checkKeyValidity() then
    -- Tambahkan script utama Anda di sini
    -- Kode Anda dimulai dari sini

    -- Contoh dari skrip utama Anda
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

    -- Kode asli Anda akan dimasukkan di sini
    -- Akhiri bagian script utama Anda

else
    -- Jika kunci tidak valid atau belum dimasukkan, tampilkan GUI untuk memasukkan kunci
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
        local key = keyInput.Text
        if key and #key > 0 then
            saveKey(key)
            keyLabel.Text = "Key Saved!"
            wait(2)
            screenGui:Destroy()
            -- Lanjutkan ke script utama setelah kunci disimpan
        else
            keyLabel.Text = "Invalid Key, Try Again."
        end
    end)
end
