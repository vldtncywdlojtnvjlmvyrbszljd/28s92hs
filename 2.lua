-- Memuat skrip dari GitHub
local success, module = pcall(function()
    return loadstring(game:HttpGet('https://raw.githubusercontent.com/vldtncywdlojtnvjlmvyrbszljd/28s92hs/refs/heads/main/4.lua'))()
end)

-- Penanganan jika terjadi kesalahan saat memuat
if not success then
    warn("Failed to load the module from GitHub")
    return
end

-- Menggunakan module yang dimuat untuk mengakses library GUI
local Library = module:Window("Brutality Hub V4", "WAIT UPDATE | IS UNDER CONSTRUCTION", Enum.KeyCode.RightControl)

-- Menambahkan tab ke dalam GUI
local Rumah = Library:AddTab("Home", "18797343654")
local Status = Library:AddTab("Status", "78118444078057")
local Main = Library:AddTab("Farming", "18477352665")
local Quest = Library:AddTab("Quest Item", "18477473610")
local RaceV4 = Library:AddTab("Race V4", "18477916271")
local SeaEvent = Library:AddTab("Sea Event", "18630756931")
local Bounty = Library:AddTab("Bounty", "18492098759")
local Raid = Library:AddTab("Auto Raid", "18491947999")
local Teleport = Library:AddTab("Teleport", "18477347703")
local ShopDealer = Library:AddTab("Shop Dealer", "18477410455")
local DevilFruit = Library:AddTab("Devil Fruit", "18477363100")
local HopServer = Library:AddTab("Hop Server", "104397992902189")
local Statistic = Library:AddTab("Statistic", "18630736310")
local Setting = Library:AddTab("Setting", "134210609072137")
local Misc = Library:AddTab("MISC", "18477908150")

-- Menambahkan elemen lain ke dalam tab
Rumah:AddSeperator("Status New Update")
Rumah:AddLabel("Visual 4k : 🟢")
Rumah:AddLabel("Leviathan : 🟠")
Rumah:AddLabel("Play Music : 🟢")
Rumah:AddLabel("Add Notify : 🟢")
Rumah:AddLabel("Hop Server : 🟢")
Rumah:AddLabel("Farm Kaitun : 🟢")
Rumah:AddLabel("Sail Rough Sea : 🟠")
Rumah:AddLabel("Farm Gun Mastery : 🟢")
Rumah:AddLabel("Farm Fruit Mastery : 🟢")
Rumah:AddLabel("Anti Detect System : 🟢")

Rumah:AddSeperator("Nice To Meet You")
Rumah:AddLabel("Webhook Notify : Join My Discord Server")
Rumah:AddLabel("Ready Bot Bypass : Bypass Executor And Link")
Rumah:AddLabel("Support Games : Blox Fruit | Blade Ball | Slap Battle \n                            | Prison Life | MemeSea ")

Rumah:AddSeperator("Developer")
Rumah:AddLabel("Country : Indonesian")
Rumah:AddLabel("Design Gui : BOTUNA")
Rumah:AddLabel("Support Code : Bocah Tua Nakal")
Rumah:AddLabel("Subscribe YouTube : Medusa Script Roblox")

Rumah:AddSeperator("B-Team Community")
Rumah:AddButton("Discord Server",function()
    setclipboard("https://discord.gg/brutality-hub-1182005198206545941")
    Notif.New("Copying To Clipboard Done", 3)
end)
Rumah:AddButton("YouTube Medusa Script",function()
    setclipboard("www.youtube.com/@medusascriptroblox")
    Notif.New("Copying To Clipboard Done", 3)
end)
Rumah:AddButton("Instagram Official Owner",function()
    setclipboard("https://www.instagram.com/medusafrzly/")
    Notif.New("Copying To Clipboard Done", 3)
end)

-- Contoh penambahan elemen lain
DevilFruit:AddSeperator("B-Team Community")
DevilFruit:AddToggle("Detector Fruit", function() 
    -- Fungsionalitas toggle
end)
