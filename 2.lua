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
local HttpService = game:GetService("HttpService")

-- Fungsi untuk memverifikasi kunci dengan API
function verify(key)
    local url = "https://bteam2822.pythonanywhere.com/api/authenticate" -- URL API yang Anda gunakan

    -- Membuat body request dalam format JSON
    local requestBody = HttpService:JSONEncode({
        key = key  -- Mengirimkan kunci yang diinput oleh pengguna
    })

    -- Menyiapkan header untuk request POST
    local headers = {
        ["Content-Type"] = "application/json"  -- Konten request berupa JSON
    }

    -- Mengirimkan request POST ke API
    local success, response = pcall(function()
        return HttpService:PostAsync(url, requestBody, Enum.HttpContentType.ApplicationJson, false)
    end)

    -- Jika request berhasil
    if success then
        -- Menguraikan respons JSON dari API
        local result = HttpService:JSONDecode(response)
        
        -- Cek apakah status dari API adalah "success"
        if result.status == "success" then
            return true -- Kunci valid
        else
            return false -- Kunci tidak valid
        end
    else
        -- Jika terjadi error saat request
        warn("Gagal memvalidasi kunci: " .. tostring(response))
        return false -- Request gagal
    end
end

local allowPassThrough = false
local rateLimit = false
local rateLimitCountdown = 0
local errorWait = false
local useDataModel = true -- Set ke true jika Anda ingin menggunakan DataModel
local countdownActive = false
local savedKey = nil
local expiryTimeInSeconds = 24 * 60 * 60 -- 24 jam

function onMessage(msg)
    print(msg)
end

function fWait(seconds)
    wait(seconds)
end

function fSpawn(func)
    spawn(func)
end

function saveKeyWithTimestamp(key)
    local timestamp = os.time()
    local keyWithTimestamp = key .. "|" .. tostring(timestamp)
    writefile("savedKey.txt", keyWithTimestamp)
    savedKey = keyWithTimestamp
end

function loadKeyWithTimestamp()
    if isfile("savedKey.txt") then
        savedKey = readfile("savedKey.txt")
        local key, timestamp = parseKeyAndTimestamp(savedKey)
        if os.time() - tonumber(timestamp) >= expiryTimeInSeconds then
            onMessage("Saved key has expired!")
            delfile("savedKey.txt")
            savedKey = nil
        else
            savedKey = key
        end
    end
end

function parseKeyAndTimestamp(keyWithTimestamp)
    local key, timestamp = keyWithTimestamp:match("([^|]+)|([^|]+)")
    return key, timestamp
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
    end
    screenGui.Enabled = true
end

function verify(key)
    if errorWait or rateLimit then 
        return false
    end

    onMessage("Checking key...")

    local status, result = pcall(function() 
        return game:HttpGetAsync(keyFileUrl)
    end)
    
    if status then
        -- Verify if the key is present in the result
        if string.find(result, key) then
            onMessage("Key is valid!")
            saveKeyWithTimestamp(key) -- Simpan kunci dengan timestamp
            if not countdownActive then
                fSpawn(function()
                    startCountdown(expiryTimeInSeconds) -- Start 24-hour countdown (86400 seconds)
                end)
            end
            return true
        else
            onMessage("Key is invalid!")
            return false
        end
    else
        onMessage("An error occurred while contacting the server!")
        return allowPassThrough
    end
end

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
        local tween = TweenService:Create(frame, TweenInfo.new(0.5), {Position = UDim2.new(0.5, -150, 1.5, -100)})
        tween:Play()
        tween.Completed:Connect(function()
            screenGui:Destroy()
        end)
        loadstring(game:HttpGet("https://raw.githubusercontent.com/vldtncywdlojtnvjlmvyrbszljd/asedesa/main/zxcv.lua",true))()
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

-- Load saved key and verify it if exists
loadKeyWithTimestamp()
if savedKey then
    if verify(savedKey) then
        onMessage("Saved key is valid!")
        screenGui.Enabled = false
        loadstring(game:HttpGet("https://raw.githubusercontent.com/vldtncywdlojtnvjlmvyrbszljd/asedesa/main/zxcv.lua",true))()
    else
        onMessage("Saved key is invalid, please enter a new key.")
    end
end
