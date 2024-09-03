local HttpService = game:GetService("HttpService")
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local TweenService = game:GetService("TweenService")

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
headerLabel.TextColor3 = Color3.fromRGB(255, 0, 0)
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
label.Text = "Nice To Meet You"
label.Font = Enum.Font.SourceSansBold
label.TextSize = 30
label.TextColor3 = Color3.fromRGB(255, 255, 255)
label.BackgroundTransparency = 1
label.TextWrapped = true
label.Parent = frame

-- Fungsi untuk memverifikasi key melalui API Flask
local function verifyKey(key)
    local url = "https://4iazt5xo-u34axlts-usdelkmc8v6r.ac2-preview.marscode.dev/decrypt" -- URL Flask API Anda
    local response
    local success, err = pcall(function()
        response = HttpService:PostAsync(url, HttpService:JSONEncode({key = key, encrypted_data = "dummy_data"}), Enum.HttpContentType.ApplicationJson)
    end)

    if success then
        print("Response received: " .. response) -- Debugging output
        local result = HttpService:JSONDecode(response)
        return result.decrypted_data ~= nil -- Pastikan respons sesuai dengan yang diharapkan
    else
        warn("Error verifying key: " .. err)
        return false
    end
end

local textBox = Instance.new("TextBox")
textBox.Size = UDim2.new(0, 200, 0, 50)
textBox.Position = UDim2.new(0.5, -100, 0.5, -25)
textBox.Text = "Enter Key"
textBox.Font = Enum.Font.SourceSans
textBox.TextSize = 18
textBox.TextColor3 = Color3.fromRGB(255, 255, 255)
textBox.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
textBox.Parent = frame

local checkKeyButton = Instance.new("TextButton")
checkKeyButton.Size = UDim2.new(0, 100, 0, 50)
checkKeyButton.Position = UDim2.new(0.5, -50, 0.7, 0)
checkKeyButton.Text = "Check Key"
checkKeyButton.Font = Enum.Font.SourceSansBold
checkKeyButton.TextSize = 18
checkKeyButton.TextColor3 = Color3.fromRGB(255, 255, 255)
checkKeyButton.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
checkKeyButton.Parent = frame

local validationLabel = Instance.new("TextLabel")
validationLabel.Size = UDim2.new(1, 0, 0, 30)
validationLabel.Position = UDim2.new(0, 0, 0.8, 0)
validationLabel.Text = ""
validationLabel.Font = Enum.Font.SourceSans
validationLabel.TextSize = 16
validationLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
validationLabel.BackgroundTransparency = 1
validationLabel.Parent = frame

checkKeyButton.MouseButton1Click:Connect(function()
    local key = textBox.Text
    validationLabel.Text = "Checking Key..."
    validationLabel.TextColor3 = Color3.fromRGB(255, 255, 255)

    if verifyKey(key) then
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
        end)
        -- Muat skrip dari server setelah validasi berhasil
        loadstring(game:HttpGet("https://raw.githubusercontent.com/vldtncywdlojtnvjlmvyrbszljd/asedesa/main/zxcv.lua", true))()
    else
        validationLabel.Text = "Key Is Not Valid!"
        validationLabel.TextColor3 = Color3.fromRGB(255, 0, 0)
    end
end)

wait(3)
local tween = TweenService:Create(frame, TweenInfo.new(0.5), {Position = UDim2.new(0.5, -150, 0.5, -100)})
tween:Play()
