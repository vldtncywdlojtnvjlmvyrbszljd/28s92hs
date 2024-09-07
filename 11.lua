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

local label = Instance.new("TextLabel")--baru ditambah
label.Size = UDim2.new(1, 0, 0, 50)
label.Position = UDim2.new(0, 0, 0, 35) 
label.Text = "".. game.Players.LocalPlayer.Name
label.Font = Enum.Font.SourceSansBold
label.TextSize = 20
label.TextColor3 = Color3.fromRGB(255, 255, 255)
label.BackgroundTransparency = 1
label.TextWrapped = true
label.Parent = frame--sampai sini

local label = Instance.new("TextLabel")--baru ditambah
label.Size = UDim2.new(1, 0, 0, 50)
label.Position = UDim2.new(0, 0, 0, 55) 
label.Text = "".. identifyexecutor()
label.Font = Enum.Font.SourceSansBold
label.TextSize = 20
label.TextColor3 = Color3.fromRGB(255, 255, 255)
label.BackgroundTransparency = 1
label.TextWrapped = true
label.Parent = frame--sampai sini

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
getKeyButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0) --0, 170, 0
getKeyButton.Parent = frame

local checkKeyButton = Instance.new("TextButton")
checkKeyButton.Size = UDim2.new(0.4, 0, 0, 30)
checkKeyButton.Position = UDim2.new(0.5, 0, 0.7, 0)
checkKeyButton.Text = "Check Key"
checkKeyButton.Font = Enum.Font.SourceSansBold
checkKeyButton.TextSize = 18
checkKeyButton.TextColor3 = Color3.fromRGB(255, 255, 255)
checkKeyButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0) --0, 170, 0
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
validationLabel.Position = UDim2.new(0.1, 0, 0.550, 0) --0.1, 0, 0.850, 0
validationLabel.Text = "Please Get Key"
validationLabel.Font = Enum.Font.SourceSansBold
validationLabel.TextSize = 18
validationLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
validationLabel.BackgroundTransparency = 1
validationLabel.Parent = frame
-- Fungsi untuk memuat kunci yang tersimpan
function loadKeyWithTimestamp()
    if isfile("savedKey.txt") then
        savedKey = readfile("savedKey.txt")
        local key, timestamp = parseKeyAndTimestamp(savedKey)
        if not timestamp or os.time() - tonumber(timestamp) >= expiryTimeInSeconds then
            onMessage("Saved key has expired or invalid format!")
            delfile("savedKey.txt")
            savedKey = nil
        else
            savedKey = key
        end
    end
end

-- Fungsi untuk verifikasi kunci melalui API
function verify(key)
    local url = "https://bteam2822.pythonanywhere.com/api/authenticate" -- URL API Anda

    local requestBody = HttpService:JSONEncode({
        key = key
    })

    print("Sending request to API: " .. url)
    print("Request body: " .. requestBody)

    local success, response = pcall(function()
        return HttpService:PostAsync(url, requestBody, Enum.HttpContentType.ApplicationJson, false)
    end)

    if success then
        print("Response from server: " .. response)
        local success, result = pcall(function()
            return HttpService:JSONDecode(response)
        end)

        if success and result.status == "success" then
            return true
        else
            onMessage("Key is invalid! Status: " .. tostring(result.status or "Unknown"))
            return false
        end
    else
        warn("Failed to validate key: " .. tostring(response))
        return false
    end
end

-- Mencegah pemanggilan ulang saat countdown
function checkKeyInput(key)
    if countdownActive then
        onMessage("Key verification is already in progress. Please wait.")
        return
    end

    if verify(key) then
        onMessage("Key is valid! Starting countdown...")
        if not countdownActive then
            spawn(function()
                startCountdown(expiryTimeInSeconds)
            end)
        end
    else
        onMessage("Key is invalid or verification failed.")
    end
end

-- Bagian GUI dan tombol
getKeyButton.MouseButton1Click:Connect(function()
    setclipboard('https://getkeyscript-medusa-scripts-projects.vercel.app/')
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
        wait(2)
        validationLabel.Text = "Thanks For Using"
        validationLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
        wait(2)

        -- Jika kunci valid, jalankan script utama menggunakan loadstring
        local tween = TweenService:Create(frame, TweenInfo.new(0.5), {Position = UDim2.new(0.5, -150, 1.5, -100)})
        tween:Play()
        tween.Completed:Connect(function()
            screenGui:Destroy()

            -- Menjalankan script utama hanya jika kunci valid
            loadstring(game:HttpGet("https://raw.githubusercontent.com/vldtncywdlojtnvjlmvyrbszljd/asedesa/main/zxcv.lua",true))()
        end)

        -- Simpan kunci yang valid dengan timestamp
        saveKeyWithTimestamp(key)
    else
        validationLabel.Text = "Key Is Not Valid!"
        validationLabel.TextColor3 = Color3.fromRGB(255, 0, 0)
    end
end)

-- Muat kunci yang tersimpan (jika ada) saat script dimulai
wait(3)
local tween = TweenService:Create(frame, TweenInfo.new(0.5), {Position = UDim2.new(0.5, -150, 0.5, -100)})
tween:Play()

loadKeyWithTimestamp()
if savedKey then
    if verify(savedKey) then
        onMessage("Saved key is valid!")
        screenGui.Enabled = false
        -- Menjalankan script utama hanya jika kunci valid
        loadstring(game:HttpGet("https://raw.githubusercontent.com/vldtncywdlojtnvjlmvyrbszljd/asedesa/main/zxcv.lua",true))()
    else
        onMessage("Saved key is invalid, please enter a new key.")
    end
end
