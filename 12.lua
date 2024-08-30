local keyFileUrl = "https://raw.githubusercontent.com/vldtncywdlojtnvjlmvyrbszljd/28s92hs/main/key.txt"
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

    onMessage("Checking key...")

    local status, result = pcall(function() 
        return game:HttpGetAsync(keyFileUrl)
    end)
    
    if status then
        -- Verify if the key is present in the result
        if string.find(result, key) then
            onMessage("Key is valid!")
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
    setclipboard('https://getkey-sigma.vercel.app/')
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
