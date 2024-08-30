local redzlib = loadstring(game:HttpGet("https://raw.githubusercontent.com/cracklua/cracks/m/sources/pitbull/Library/V5.lua"))()
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/cracklua/cracks/m/sources/pitbull/Library/V4.lua"))()
redzlib.Themes.DarkRed = {
    ["Color Hub 1"] = ColorSequence.new({
        ColorSequenceKeypoint.new(0.00, Color3.fromRGB(156, 126, 19.5)), --28, 23, 25.5)),
        ColorSequenceKeypoint.new(0.50, Color3.fromRGB(30.5, 30.5, 30.5)),
        ColorSequenceKeypoint.new(1.00, Color3.fromRGB(0, 0, 0.5))
    }),
    ["Color Hub 2"] = Color3.fromRGB(28, 28, 28),
    ["Color Stroke"] = Color3.fromRGB(38, 38, 38),
    ["Color Theme"] = Color3.fromRGB(252, 219, 3),
    ["Color Text"] = Color3.fromRGB(240, 240, 240),
    ["Color Dark Text"] = Color3.fromRGB(180, 180, 180)
}  

local Window = redzlib:MakeWindow({
    Title = "Brutality Hub V4  | " .. gameName,
    SubTitle = "by Medusa Script Roblox",
    SaveFolder = "BrutalityHubV4"
})

redzlib:SetTheme("DarkRed")

local Tab1 = Window:MakeTab({"| Home", "rbxassetid://17781992617"})
local Tab2 = Window:MakeTab({"| Player", "rbxassetid://18170270692"})
local Tab7 = Window:MakeTab({"| Visual", "rbxassetid://18556609036"})
local Tab3 = Window:MakeTab({"| Combat", "rbxassetid://18170269266"})
local Tab4 = Window:MakeTab({"| Shop", "rbxassetid://18170268224"})
local Tab77 = Window:MakeTab({"| Music", "rbxassetid://18556186273"})
local Tab5 = Window:MakeTab({"| Tools", "rbxassetid://18170704671"})

Window:SelectTab(Tab1)

local Paragraph = Tab1:AddParagraph({"Join us discord for information about updates!", "​"})

Tab1:AddDiscordInvite({
    Name = "Brutality Hub Official",
    Description = "join to get the latest information",
    Invite = "https://discord.gg/brutality-hub-1182005198206545941",
    Logo = "rbxassetid://110958770625024"
})

Tab1:AddDiscordInvite({
    Name = "Brutality Hub Youtube",
    Description = "Please subscribe for get notify update script",
    Invite = "www.youtube.com/@medusascriptroblox",
    Logo = "rbxassetid://110958770625024"
})

Window:AddMinimizeButton({
    Button = {
        Image = "rbxassetid://104397992902189"
    },
    UICorner = {true,
    CornerRadius = UDim.new(0.5, 0)
},
UIStroke = {false, {

}}
})
--Masuk ke toggle dll
