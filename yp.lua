-- Modifikasi Script untuk Executor

local http = syn.request or http_request -- Menggunakan metode HTTP alternatif jika tidak mendukung HttpService
local player = game.Players.LocalPlayer

local keyUrl = "https://raw.githubusercontent.com/username/repository/main/key.txt" -- Ganti dengan URL GitHub Anda

-- Fungsi untuk mengambil key dari GitHub
local function fetchKeyFromGithub()
    local success, result
    if http then
        success, result = pcall(function()
            local response = http({
                Url = keyUrl,
                Method = "GET"
            })
            return response.Body
        end)
    else
        success, result = false, "HTTP method not supported"
    end

    if success then
        return result
    else
        warn("Failed to fetch key from GitHub: " .. result)
        return nil
    end
end

-- GUI sederhana untuk executor
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

-- Fungsi validasi key
local function validateKey(inputKey)
    local storedKey = fetchKeyFromGithub()

    if storedKey and inputKey == storedKey then
        print("Key validated for player: " .. player.Name)
        -- Menutup GUI setelah validasi
        screenGui:Destroy()
    else
        warn("Invalid key for player: " .. player.Name)
        errorMessage.Text = "Invalid Key. Please try again."
    end
end

submitButton.MouseButton1Click:Connect(function()
    validateKey(keyInput.Text)
end)
