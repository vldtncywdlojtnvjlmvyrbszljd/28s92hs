local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local TweenService = game:GetService("TweenService")

-- Mengganti metode validasi dengan mengambil key dari GitHub
local http = syn.request or http_request
local keyUrl = "https://raw.githubusercontent.com/vldtncywdlojtnvjlmvyrbszljd/28s92hs/main/key.txt" -- Ganti dengan URL GitHub Anda

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

-- GUI setup
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

local keyInput = Instance.new("TextBox")
keyInput.Size = UDim2.new(0, 280, 0, 50)
keyInput.Position = UDim2.new(0.5, -140, 0.3, -25)
keyInput.Font = Enum.Font.Gotham
keyInput.PlaceholderText = "Enter Key..."
keyInput.TextSize = 18
keyInput.TextColor3 = Color3.fromRGB(255, 255, 255)
keyInput.BackgroundTransparency = 0.2
keyInput.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
keyInput.BorderSizePixel = 0
keyInput.Parent = frame

local submitButton = Instance.new("TextButton")
submitButton.Text = "Submit"
submitButton.Size = UDim2.new(0, 280, 0, 50)
submitButton.Position = UDim2.new(0.5, -140, 0.5, -25)
submitButton.Font = Enum.Font.GothamBold
submitButton.TextSize = 20
submitButton.TextColor3 = Color3.fromRGB(255, 255, 255)
submitButton.BackgroundColor3 = Color3.fromRGB(50, 150, 250)
submitButton.BorderSizePixel = 0
submitButton.Parent = frame

local errorMessage = Instance.new("TextLabel")
errorMessage.Text = ""
errorMessage.Size = UDim2.new(1, 0, 0, 20)
errorMessage.Position = UDim2.new(0.5, 0, 0.8, 0)
errorMessage.Font = Enum.Font.Gotham
errorMessage.TextSize = 14
errorMessage.TextColor3 = Color3.fromRGB(255, 0, 0)
errorMessage.BackgroundTransparency = 1
errorMessage.Parent = frame

local function validateKey(inputKey)
    local storedKey = fetchKeyFromGithub()

    if storedKey and inputKey == storedKey then
        print("Key validated for player: " .. LocalPlayer.Name)
        -- Copy link ke tujuan website
        setclipboard("https://raw.githubusercontent.com/vldtncywdlojtnvjlmvyrbszljd/28s92hs/main/key.txt") -- Ganti dengan URL tujuan Anda
        errorMessage.Text = "Key Valid! Link copied."
        wait(2)
        screenGui:Destroy() -- Menghancurkan GUI setelah validasi
    else
        warn("Invalid key for player: " .. LocalPlayer.Name)
        errorMessage.Text = "Invalid Key. Please try again."
    end
end

submitButton.MouseButton1Click:Connect(function()
    validateKey(keyInput.Text)
end)
