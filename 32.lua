--Tempat Tab dan icon
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
} --batas tab dan icon

Window:SelectTab(Tabs.MainFarm)

local function AddToggle(Tab, Settings, Flag)
    Settings.Description = type(Settings[2]) == "string" and Settings[2]
    Settings.Default = type(Settings[2]) ~= "string" and Settings[2]
    Settings.Flag = Settings.Flag or Flag
    Settings.Callback = function(Value) _env[Settings.Flag] = Value end
    Tab:AddToggle(Settings)
  end
  
  local _Discord = Tabs.Discord do
    _Discord:AddDiscordInvite({
      Name = "BRUTALITY HUB V4",
      Description = "Join our discord community to receive information about the next update",
      Logo = "rbxassetid://110958770625024",
      Invite = "https://discord.gg/brutality-hub-1182005198206545941"
    })
    _Discord:AddDiscordInvite({
      Name = "Subscribe Youtube",
      Description = "Please subscribe for get notify update script",
      Logo = "rbxassetid://110958770625024",
      Invite = "www.youtube.com/@medusascriptroblox"
    })
    end
