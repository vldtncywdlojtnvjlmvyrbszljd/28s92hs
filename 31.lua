local redzlib = loadstring(game:HttpGet("https://raw.githubusercontent.com/vldtncywdlojtnvjlmvyrbszljd/28s92hs/main/liburan.lua"))()
local Window = redzlib:MakeWindow({ Title = "BRUTALITY HUB V4", SubTitle = "Made by Medusa Script", SaveFolder = "redzHub-MemeSea.json" })
Window:AddMinimizeButton({
  Button = { Image = "rbxassetid://110958770625024", BackgroundTransparency = 0 },
  Corner = { CornerRadius = UDim.new(0, 6) }
})

local Tabs = {
  Discord = Window:MakeTab({"Home", "Info"}),
  MainFarm = Window:MakeTab({"Farm Level", "Home"}),
  Items = Window:MakeTab({"Quest Items", "Swords"}),
  Stats = Window:MakeTab({"Statistic", "Signal"}),
  Stats = Window:MakeTab({"Status Server", "Signal"}),
  Teleport = Window:MakeTab({"Teleport Island", "Locate"}),
  Shop = Window:MakeTab({"Shop", "ShoppingCart"}),
  Misc = Window:MakeTab({"Misc", "Settings"})
}

Window:SelectTab(Tabs.MainFarm)
