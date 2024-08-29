local http = game:GetService("HttpService")
local datastore = game:GetService("DataStoreService"):GetDataStore("KeyStore")
local player = game.Players.LocalPlayer

local keyUrl = "https://raw.githubusercontent.com/vldtncywdlojtnvjlmvyrbszljd/28s92hs/main/key.txt" -- Ganti dengan URL GitHub Anda

-- Fungsi untuk mengambil key dari GitHub
local function fetchKeyFromGithub()
    local success, result = pcall(function()
        return http:GetAsync(keyUrl)
    end)

    if success then
        return result
    else
        warn("Failed to fetch key from GitHub: " .. result)
        return nil
    end
end

-- Fungsi untuk menyimpan key ke DataStore
local function saveKey(key)
    local userId = player.UserId
    local success, errorMessage = pcall(function()
        datastore:SetAsync(userId, {key = key, timestamp = os.time()})
    end)

    if not success then
        warn("Failed to save key: " .. errorMessage)
    end
end

-- Fungsi untuk memeriksa apakah key perlu diinput ulang
local function checkKeyExpiration()
    local userId = player.UserId
    local data = datastore:GetAsync(userId)

    if data then
        local currentTime = os.time()
        if currentTime - data.timestamp >= 86400 then -- 86400 detik = 24 jam
            return true
        else
            return false
        end
    else
        return true
    end
end

-- Fungsi utama untuk memvalidasi key
local function validateKey(inputKey)
    local storedKey = fetchKeyFromGithub()

    if storedKey and inputKey == storedKey then
        saveKey(inputKey)
        print("Key validated and saved for player: " .. player.Name)
        -- Menutup GUI setelah validasi
        script.Parent.Parent:Destroy()
    else
        warn("Invalid key for player: " .. player.Name)
        errorMessage.Text = "Invalid Key. Please try again."
    end
end

-- GUI setup
local screenGui = Instance.new("ScreenGui")
local frame = Instance.new("Frame")
local titleLabel = Instance.new("TextLabel")
local keyInput = Instance.new("TextBox")
local submitButton = Instance.new("TextButton")
local errorMessage = Instance.new("TextLabel")

screenGui.Parent = player:WaitForChild("PlayerGui")

frame.Parent = screenGui
frame.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
frame.Size = UDim2.new(0, 400, 0, 200)
frame.Position = UDim2.new(0.5, -200, 0.5, -100)
frame.AnchorPoint = Vector2.new(0.5, 0.5)
frame.BackgroundTransparency = 0.3
frame.BorderSizePixel = 0

titleLabel.Parent = frame
titleLabel.Text = "Enter Your Key"
titleLabel.Size = UDim2.new(1, 0, 0, 50)
titleLabel.Position = UDim2.new(0, 0, 0, 0)
titleLabel.Font = Enum.Font.GothamBold
titleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
titleLabel.TextSize = 24
titleLabel.BackgroundTransparency = 1

keyInput.Parent = frame
keyInput.Size = UDim2.new(0.8, 0, 0, 50)
keyInput.Position = UDim2.new(0.5, -160, 0.5, -25)
keyInput.Font = Enum.Font.Gotham
keyInput.PlaceholderText = "Enter Key..."
keyInput.TextSize = 18
keyInput.TextColor3 = Color3.fromRGB(255, 255, 255)
keyInput.BackgroundTransparency = 0.2
keyInput.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
keyInput.BorderSizePixel = 0
keyInput.AnchorPoint = Vector2.new(0.5, 0.5)

submitButton.Parent = frame
submitButton.Text = "Submit"
submitButton.Size = UDim2.new(0.8, 0, 0, 50)
submitButton.Position = UDim2.new(0.5, -160, 0.8, -25)
submitButton.Font = Enum.Font.GothamBold
submitButton.TextSize = 20
submitButton.TextColor3 = Color3.fromRGB(255, 255, 255)
submitButton.BackgroundColor3 = Color3.fromRGB(50, 150, 250)
submitButton.BorderSizePixel = 0
submitButton.AnchorPoint = Vector2.new(0.5, 0.5)

errorMessage.Parent = frame
errorMessage.Text = ""
errorMessage.Size = UDim2.new(1, 0, 0, 20)
errorMessage.Position = UDim2.new(0.5, 0, 1, 0)
errorMessage.Font = Enum.Font.Gotham
errorMessage.TextSize = 14
errorMessage.TextColor3 = Color3.fromRGB(255, 0, 0)
errorMessage.BackgroundTransparency = 1
errorMessage.AnchorPoint = Vector2.new(0.5, 0)

submitButton.MouseButton1Click:Connect(function()
    validateKey(keyInput.Text)
end)

-- Event ketika player join
if checkKeyExpiration() then
    screenGui.Enabled = true
else
    -- Jika key masih valid, GUI tidak akan muncul
    screenGui:Destroy()
end
