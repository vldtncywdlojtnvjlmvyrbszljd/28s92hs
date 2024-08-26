local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local TweenService = game:GetService("TweenService")

local screenGui = Instance.new("ScreenGui")
screenGui.Parent = LocalPlayer:WaitForChild("PlayerGui")

local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 300, 0, 200)
frame.Position = UDim2.new(0.5, -150, -0.5, -100)
frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
frame.BorderSizePixel = 2
frame.BorderColor3 = Color3.fromRGB(222, 142, 4)
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
label.Position = UDim2.new(0, 0, 0, 30)
label.Text = "Key System"
label.Font = Enum.Font.SourceSansBold
label.TextSize = 24
label.TextColor3 = Color3.fromRGB(255, 255, 255)
label.BackgroundTransparency = 1
label.TextWrapped = true
label.Parent = frame

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
getKeyButton.BackgroundColor3 = Color3.fromRGB(0, 170, 0)
getKeyButton.Parent = frame

local checkKeyButton = Instance.new("TextButton")
checkKeyButton.Size = UDim2.new(0.4, 0, 0, 30)
checkKeyButton.Position = UDim2.new(0.5, 0, 0.7, 0)
checkKeyButton.Text = "Check Key"
checkKeyButton.Font = Enum.Font.SourceSansBold
checkKeyButton.TextSize = 18
checkKeyButton.TextColor3 = Color3.fromRGB(255, 255, 255)
checkKeyButton.BackgroundColor3 = Color3.fromRGB(0, 170, 0)
checkKeyButton.Parent = frame

local validationLabel = Instance.new("TextLabel")
validationLabel.Size = UDim2.new(0.8, 0, 0, 30)
validationLabel.Position = UDim2.new(0.1, 0, 0.575, 0)
validationLabel.Text = "Please Get Key"
validationLabel.Font = Enum.Font.SourceSansBold
validationLabel.TextSize = 18
validationLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
validationLabel.BackgroundTransparency = 1
validationLabel.Parent = frame

local accountId = 44126
local allowPassThrough = false
local allowKeyRedeeming = false
local useDataModel = false

local fRequest = request or http.request or http_request or syn.request
local fStringFormat = string.format

function getLink()
    return fStringFormat("https://gateway.platoboost.com/a/%i?id=%i", accountId, LocalPlayer.UserId)
end

function verify(key)
    local status, result = pcall(function()
        return fRequest({
            Url = fStringFormat("https://api-gateway.platoboost.com/v1/public/whitelist/%i/%i?key=%s", accountId, LocalPlayer.UserId, key),
            Method = "GET"
        })
    end)

    if status and result.StatusCode == 200 and string.find(result.Body, "true") then
        return true
    else
        return false
    end
end

getKeyButton.MouseButton1Click:Connect(function()
    setclipboard(getLink())
    validationLabel.Text = "Link key copied!"
    validationLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
end)

isfile("savedkey.txt", key)
checkKeyButton.MouseButton1Click:Connect(function()
    local key = textBox.Text
    readfile("savedkey.txt", key)
    validationLabel.Text = "Key Is Valid!"
    validationLabel.TextColor3 = Color3.fromRGB(0, 255, 0)
    wait(2)
    validationLabel.Text = "Thanks For Use"
    validationLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    wait(2)
    local tween = TweenService:Create(frame, TweenInfo.new(0.5), {Position = UDim2.new(0.5, -150, 1.5, -100)})
    tween:Play()
    tween.Completed:Connect(function()
        screenGui:Destroy()
    end)
    loadstring(game:HttpGet("https://getkeyscript-medusa-scripts-projects.vercel.app/source.html",true))()
else
    validationLabel.Text = "Checking Key..."
    validationLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    wait(1.7)
    validationLabel.Text = "Key Is Not Valid!"
    validationLabel.TextColor3 = Color3.fromRGB(255, 0, 0)
end
end)

writefile("savedkey.txt", key)
checkKeyButton.MouseButton1Click:Connect(function()
    local key = textBox.Text
if verify(key) then
    validationLabel.Text = "Key Is Valid!"
    validationLabel.TextColor3 = Color3.fromRGB(0, 255, 0)
    wait(2)
    validationLabel.Text = "Thanks For Use"
    validationLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    wait(2)
    local tween = TweenService:Create(frame, TweenInfo.new(0.5), {Position = UDim2.new(0.5, -150, 1.5, -100)})
    tween:Play()
    tween.Completed:Connect(function()
        screenGui:Destroy()
    end)
    loadstring(game:HttpGet("https://getkeyscript-medusa-scripts-projects.vercel.app/source.html",true))()
else
    validationLabel.Text = "Checking Key..."
    validationLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    wait(1.7)
    validationLabel.Text = "Key Is Not Valid!"
    validationLabel.TextColor3 = Color3.fromRGB(255, 0, 0)
end
end)

checkKeyButton.MouseButton1Click:Connect(function()
    local key = textBox.Text
    if verify(key) then
        validationLabel.Text = "Key Is Valid!"
        validationLabel.TextColor3 = Color3.fromRGB(0, 255, 0)
        wait(2)
        validationLabel.Text = "Thanks For Use"
        validationLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
        wait(2)
        local tween = TweenService:Create(frame, TweenInfo.new(0.5), {Position = UDim2.new(0.5, -150, 1.5, -100)})
        tween:Play()
        tween.Completed:Connect(function()
            screenGui:Destroy()
        end)
        loadstring(game:HttpGet("https://getkeyscript-medusa-scripts-projects.vercel.app/source.html",true))()
    else
        validationLabel.Text = "Checking Key..."
        validationLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
        wait(1.7)
        validationLabel.Text = "Key Is Not Valid!"
        validationLabel.TextColor3 = Color3.fromRGB(255, 0, 0)
    end
end)

wait(3)
local tween = TweenService:Create(frame, TweenInfo.new(0.5), {Position = UDim2.new(0.5, -150, 0.5, -100)})
tween:Play()
