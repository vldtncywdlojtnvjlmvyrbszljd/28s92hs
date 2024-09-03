local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local TweenService = game:GetService("TweenService")
local HttpService = game:GetService("HttpService")

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

local label = Instance.new("TextLabel")
label.Size = UDim2.new(1, 0, 0, 50)
label.Position = UDim2.new(0, 0, 0, 35)
label.Text = "".. game.Players.LocalPlayer.Name
label.Font = Enum.Font.SourceSansBold
label.TextSize = 20
label.TextColor3 = Color3.fromRGB(255, 255, 255)
label.BackgroundTransparency = 1
label.TextWrapped = true
label.Parent = frame

local label = Instance.new("TextLabel")
label.Size = UDim2.new(1, 0, 0, 50)
label.Position = UDim2.new(0, 0, 0, 55)
label.Text = "".. identifyexecutor()
label.Font = Enum.Font.SourceSansBold
label.TextSize = 20
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

local keyFileUrl = "https://raw.githubusercontent.com/vldtncywdlojtnvjlmvyrbszljd/3fas3/main/key.txt"
local verifyFileUrl = "https://raw.githubusercontent.com/vldtncywdlojtnvjlmvyrbszljd/28s92hs/main/key.txt"
local githubToken = "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"
local repoOwner = "vldtncywdlojtnvjlmvyrbszljd"
local repoName = "3fas3"
local filePath = "key.txt"
local expiryTimeInSeconds = 24 * 60 * 60 -- 24 jam

local countdownActive = false
local savedKey = nil

function onMessage(msg)
    print(msg)
end

function fWait(seconds)
    wait(seconds)
end

function fSpawn(func)
    spawn(func)
end

function saveKeyToGitHub(key)
    local url = "https://api.github.com/repos/" .. repoOwner .. "/" .. repoName .. "/contents/" .. filePath
    local timestamp = os.time()
    local keyWithTimestamp = key .. "|" .. tostring(timestamp)
    local encodedContent = HttpService:Base64Encode(keyWithTimestamp)
    local requestBody = HttpService:JSONEncode({
        message = "Update key",
        content = encodedContent,
        branch = "main"
    })
    local headers = {
        ["Authorization"] = "token " .. githubToken,
        ["Content-Type"] = "application/json"
    }

    local success, response = pcall(function()
        return HttpService:RequestAsync({
            Url = url,
            Method = "PUT",
            Headers = headers,
            Body = requestBody
        })
    end)

    if success then
        if response.StatusCode == 201 or response.StatusCode == 200 then
            onMessage("Key saved successfully to GitHub.")
        else
            warn("Failed to save key to GitHub: " .. response.StatusMessage)
        end
    else
        warn("Error saving key to GitHub: " .. response)
    end
end

function deleteKeyFromGitHub()
    local url = "https://api.github.com/repos/" .. repoOwner .. "/" .. repoName .. "/contents/" .. filePath
    local headers = {
        ["Authorization"] = "token " .. githubToken,
        ["Content-Type"] = "application/json"
    }

    local success, response = pcall(function()
        return HttpService:RequestAsync({
            Url = url,
            Method = "GET",
            Headers = headers
        })
    end)

    if success then
        local responseData = HttpService:JSONDecode(response)
        local sha = responseData.sha

        local requestBody = HttpService:JSONEncode({
            message = "Delete key",
            sha = sha,
            branch = "main"
        })

        local deleteSuccess, deleteResponse = pcall(function()
            return HttpService:RequestAsync({
                Url = url,
                Method = "DELETE",
                Headers = headers,
                Body = requestBody
            })
        end)

        if deleteSuccess and deleteResponse.StatusCode == 200 then
            onMessage("Key deleted successfully from GitHub.")
        else
            warn("Failed to delete key from GitHub: " .. deleteResponse.StatusMessage)
        end
    else
        warn("Error retrieving key from GitHub: " .. response)
    end
end

function checkKeyExpired(timestamp)
    local currentTime = os.time()
    local keyTimestamp = tonumber(timestamp)
    return (currentTime - keyTimestamp) > expiryTimeInSeconds
end

function verify(key)
    if countdownActive then 
        return false
    end

    onMessage("Checking key...")

    local success, result = pcall(function()
        return HttpService:GetAsync(verifyFileUrl)
    end)
    
    if success then
        local keyFound = false
        for keyEntry in string.gmatch(result, "[^%s]+") do
            local savedKey, savedTimestamp = keyEntry:match("([^|]+)|([^|]+)")
            if savedKey == key and not checkKeyExpired(savedTimestamp) then
                keyFound = true
                break
            end
        end
        
        if keyFound then
            onMessage("Key is valid!")
            savedKey = key
            saveKeyWithTimestamp(key) -- Simpan kunci dengan timestamp
            saveKeyToGitHub(key) -- Simpan kunci ke GitHub
            if not countdownActive then
                fSpawn(function()
                    startCountdown(expiryTimeInSeconds)
                end)
            end
            return true
        else
            onMessage("Key is invalid or expired!")
            return false
        end
    else
        onMessage("An error occurred while contacting the server!")
        return false
    end
end

function saveKeyWithTimestamp(key)
    local keyWithTimestamp = key .. "|" .. tostring(os.time())
    local file = io.open("savedKey.txt", "w")
    if file then
        file:write(keyWithTimestamp)
        file:close()
    end
end

function startCountdown(seconds)
    countdownActive = true
    for i = seconds, 0, -1 do
        onMessage("Time remaining: " .. i .. " seconds")
        fWait(1)
    end
    countdownActive = false
    onMessage("Time's up! Please re-enter your key.")
    savedKey = nil
    if isfile("savedKey.txt") then
        delfile("savedKey.txt")
        deleteKeyFromGitHub() -- Menghapus key dari GitHub setelah kadaluarsa
    end
    screenGui.Enabled = true
end

getKeyButton.MouseButton1Click:Connect(function()
    -- Implementasi untuk mendapatkan key
end)

checkKeyButton.MouseButton1Click:Connect(function()
    local key = textBox.Text
    if key and key ~= "" then
        local isValid = verify(key)
        validationLabel.Text = isValid and "Key Validated!" or "Invalid Key"
    else
        validationLabel.Text = "Please enter a key!"
    end
end)
