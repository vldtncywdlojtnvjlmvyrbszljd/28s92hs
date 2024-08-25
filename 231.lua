local redzlib = loadstring(game:HttpGet("https://raw.githubusercontent.com/vldtncywdlojtnvjlmvyrbszljd/48139u372988729j82hd/main/%3D2-e0dk2.lua"))()
local Window = redzlib:MakeWindow({ Title = "BRUTALITY HUB V4", SubTitle = "Made by Medusa Script", SaveFolder = "redzHub-MemeSea.json" })
Window:AddMinimizeButton({
  Button = { Image = "rbxassetid://110958770625024", BackgroundTransparency = 0 },
  Corner = { CornerRadius = UDim.new(0, 6) }
})

local Tabs = {
  Discord = Window:MakeTab({"Home", "Info"}),
  MainFarm = Window:MakeTab({"Farm", "Home"}),
  Items = Window:MakeTab({"Items", "Swords"}),
  Stats = Window:MakeTab({"Stats", "Signal"}),
  Teleport = Window:MakeTab({"Teleport", "Locate"}),
  Shop = Window:MakeTab({"Shop", "ShoppingCart"}),
  Misc = Window:MakeTab({"Misc", "Settings"})
}

Window:SelectTab(Tabs.MainFarm)
