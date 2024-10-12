local Fluent = loadstring(game:HttpGet("https://raw.githubusercontent.com/Accclo/Tuo/main/Ui"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
local Window = Fluent:CreateWindow({
    Title = "<font color='rgb(248, 155, 61)'>Brutality Hub V4</font>".." - "..game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name,
    SubTitle = "Version Pro",
    TabWidth = 160,
    Size = UDim2.fromOffset(530, 350),
    Acrylic = false,
    Theme = "Amethyst",
    MinimizeKey = Enum.KeyCode.End
})
local Tabs = {
    Main = Window:AddTab({ Title = "Farming", Icon = "rbxassetid://15712717270" }),
    Stats = Window:AddTab({ Title = "Stats", Icon = "rbxassetid://15712723981" }),
    St = Window:AddTab({ Title = "Status", Icon = "rbxassetid://10709818996" }),
    Sea = Window:AddTab({ Title = "Sea Event", Icon = "rbxassetid://15806749681" }),
    Player = Window:AddTab({ Title = "Player", Icon = "rbxassetid://15712750195" }),
    Teleport = Window:AddTab({ Title = "Teleport", Icon = "rbxassetid://15712738876" }),
    Fruit = Window:AddTab({ Title = "Fruits", Icon = "rbxassetid://15712758182" }),
    Raid = Window:AddTab({ Title = "Auto Raid", Icon = "rbxassetid://15712763124" }),
    Visual = Window:AddTab({ Title = "Visual", Icon = "rbxassetid://10709789686" }),
    Race = Window:AddTab({ Title = "Race V4", Icon = "rbxassetid://15712776421" }),
    Shop = Window:AddTab({ Title = "Dealer Shop", Icon = "rbxassetid://15712767144" }),
    Setting = Window:AddTab({ Title = "Setting", Icon = "rbxassetid://15712711639" }),
	Misc = Window:AddTab({ Title = "Misc", Icon = "rbxassetid://15712771666" }),
}

local Options = Fluent.Options
do
