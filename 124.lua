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
label.Position = UDim2.new(0, 0, 0, 12) 
label.Text = "HELLO MY FRIEND "
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

local DataStoreService = game:GetService("DataStoreService")
local KeyStore = DataStoreService:GetDataStore("KeyStore")
local player = game.Players.LocalPlayer
local keyFileUrl = "https://raw.githubusercontent.com/vldtncywdlojtnvjlmvyrbszljd/28s92hs/main/key.txt"
local keyExpirationTime = 24 * 60 * 60 -- 24 jam dalam detik
local keyInputTimeKey = "KeyInputTime_" .. player.UserId
local keyStoredKey = "StoredKey_" .. player.UserId -- Untuk menyimpan key yang telah valid
local allowPassThrough = false
local rateLimit = false
local rateLimitCountdown = 0
local errorWait = false
local useDataModel = true -- Set ke true jika Anda ingin menggunakan DataModel

function onMessage(msg)
    print(msg)
end

function fWait(seconds)
    wait(seconds)
end

function fSpawn(func)
    spawn(func)
end

function verify(key)
    if errorWait or rateLimit then 
        return false
    end

    local currentTime = os.time()
    local lastKeyInputTime = KeyStore:GetAsync(keyInputTimeKey)
    local storedKey = KeyStore:GetAsync(keyStoredKey)

    -- Jika pengguna sudah memiliki key valid yang belum kedaluwarsa
    if storedKey and storedKey == key and (currentTime - lastKeyInputTime) < keyExpirationTime then
        onMessage("You already have a valid key, loading...")
        return true
    end

    -- Jika pengguna belum pernah memasukkan key atau sudah lebih dari 24 jam
    if not lastKeyInputTime or (currentTime - lastKeyInputTime) >= keyExpirationTime then
        onMessage("Checking key...")

        local status, result

        if useDataModel then
            status, result = pcall(function() 
                return game:HttpGetAsync(keyFileUrl)
            end)

            if status then
                if string.find(result, key) then
                    -- Simpan waktu dan key yang valid
                    KeyStore:SetAsync(keyInputTimeKey, currentTime)
                    KeyStore:SetAsync(keyStoredKey, key)
                    onMessage("Key is valid! Loading your content...")
                    return true
                else
                    onMessage("Key is invalid!")
                    return false
                end
            else
                onMessage("An error occurred while contacting the server!")
                return allowPassThrough
            end
        else
            status, result = pcall(function() 
                return game:HttpGetAsync(keyFileUrl)
            end)

            if status then
                if result.StatusCode == 200 then
                    if string.find(result.Body, key) then
                        -- Simpan waktu dan key yang valid
                        KeyStore:SetAsync(keyInputTimeKey, currentTime)
                        KeyStore:SetAsync(keyStoredKey, key)
                        onMessage("Key is valid! Loading your content...")
                        return true
                    else
                        onMessage("Key is invalid!")
                        return false
                    end
                elseif result.StatusCode == 429 then
                    if not rateLimit then 
                        rateLimit = true
                        rateLimitCountdown = 10
                        fSpawn(function() 
                            while rateLimit do
                                onMessage(string.format("You are being rate-limited, please slow down. Try again in %i second(s).", rateLimitCountdown))
                                fWait(1)
                                rateLimitCountdown = rateLimitCountdown - 1
                                if rateLimitCountdown < 0 then
                                    rateLimit = false
                                    rateLimitCountdown = 0
                                    onMessage("Rate limit is over, please try again.")
                                end
                            end
                        end)
                    end
                else
                    return allowPassThrough
                end    
            else
                return allowPassThrough
            end
        end
    else
        local remainingTime = keyExpirationTime - (currentTime - lastKeyInputTime)
        onMessage("You already entered a valid key. Loading content...")
        return true
    end
end

function loadContent()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/vldtncywdlojtnvjlmvyrbszljd/asedesa/main/zxcv.lua", true))()
end

getKeyButton.MouseButton1Click:Connect(function()
    setclipboard('https://discord.com/invite/brutality-hub-1182005198206545941')
    validationLabel.Text = "Link Key Copied!"
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
        validationLabel.Text = "Thanks For Use"
        validationLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
        wait(2)
        local tween = TweenService:Create(frame, TweenInfo.new(0.5), {Position = UDim2.new(0.5, -150, 1.5, -100)})
        tween:Play()
        tween.Completed:Connect(function()
            screenGui:Destroy()
            loadContent() -- Load content setelah validasi key
        end)
    else
        validationLabel.Text = "Checking Key..."
        validationLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
        wait(1.7)
        validationLabel.Text = "Key Is Not Valid!"
        validationLabel.TextColor3 = Color3.fromRGB(255, 0, 0)
    end
end)

-- Jika pengguna sudah memiliki key yang valid, langsung load content
local storedKey = KeyStore:GetAsync(keyStoredKey)
if storedKey and verify(storedKey) then
    loadContent()
end

wait(3)
local tween = TweenService:Create(frame, TweenInfo.new(0.5), {Position = UDim2.new(0.5, -150, 0.5, -100)})
tween:Play()
