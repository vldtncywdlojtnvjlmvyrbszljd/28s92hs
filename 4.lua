--- BloxFruit ในมือถือ
loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/NOOBHUBX/LoadingUI/main/NOOB%20HUB.Lua"))()
local function gamekiller()
    while true do
          local fucku = 1
       end
    end

for i,v in pairs(game.CoreGui:GetChildren()) do
    if v:FindFirstChild("PropertiesFrame") then
    if v:FindFirstChild("ExplorerPanel") then
    if v:FindFirstChild("SideMenu") then
             warn("DarkDex Detected")
             game.Players.LocalPlayer:kick("Do not open DarkDex")
             wait(.3)
             game:Shutdown()
             wait(0.2)Players:Toggle("Aimbot Skill", false, function(vu)
   _G.AimbotSkill = vu
 end)

 spawn(function()
   pcall(function()
   while game:GetService("RunService").RenderStepped:wait() do
      if _G.AimbotSkill then
         pcall(function()
            if game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") and game.Players.LocalPlayer.Character[game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Name]:FindFirstChild("MousePos") then
                local args = {
                    [1] = game:GetService("Players"):FindFirstChild(_G.SelectP).Character.HumanoidRootPart.Position
                }
                game:GetService("Players").LocalPlayer.Character[game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(args))
            end
        end)
    end
   end
   end)
end)
             gamekiller()
        end
        end
        end
    end
    end)
---BLOX FRUIT
local OldWorld = false
local Sea2 = false
local ThreeWorld = false
local placeId = game.PlaceId
if placeId == 2753915549 then
   OldWorld = true
elseif placeId == 4442272183 then
   Sea2 = true
elseif placeId == 7449423635 then
   ThreeWorld = true
end
setfflag("HumanoidParallelRemoveNoPhysics", "False")
setfflag("HumanoidParallelRemoveNoPhysicsNoSimulate2", "False")
game:GetService("Players").LocalPlayer.Data.DevilFruit.Value = "Ice-Ice"

if Sea2 then
   for i,v in pairs(game:GetService("ReplicatedStorage"):GetDescendants()) do
      if v.Name == "DarkBlade" then
         v.Parent.Name = "NoobRip"
      end
   end
end
if OldWorld then
   for i,v in pairs(game:GetService("ReplicatedStorage"):GetDescendants()) do
      if v.Name == "XavierWoods_HairAccessory" then
         v.Parent.Name = "NoobRipIndra"
      end
   end
end

local db = true
game:GetService("RunService").Heartbeat:Connect(function()
    if db == true then
        game:GetService("Workspace").NoClipxd.CanCollide = false
                    wait(.5)
            db = false
        else
            game:GetService("Workspace").NoClipxd.CanCollide = true
            wait(.5)
            db = true
    end
end)
            
            
local elitequest = Instance.new('Part')
elitequest.Name = "elitequest"
elitequest.CanCollide = false
elitequest.Transparency = 1
elitequest.Anchored = true
elitequest.CFrame = CFrame.new(-5419.1708984375, 314.05883789063, -2826.1838378906)
elitequest.Parent = Workspace

function CheckQuest()
   local MyLevel = game.Players.localPlayer.Data.Level.Value
   if OldWorld then
      if MyLevel == 1 or MyLevel <= 9 then -- Bandit
         Ms = "Bandit [Lv. 5]"
         QuestName = "BanditQuest1"
         LevelQuest = 1
         NameMon = "Bandit"
         CFrameQuest = CFrame.new(1061.66699, 16.5166187, 1544.52905, -0.942978859, -3.33851502e-09, 0.332852632, 7.04340497e-09, 1, 2.99841325e-08, -0.332852632, 3.06188177e-08, -0.942978859)
         CFrameMon = CFrame.new(1199.31287, 52.2717781, 1536.91516, -0.929782331, 6.60215846e-08, -0.368109822, 3.9077392e-08, 1, 8.06501603e-08, 0.368109822, 6.06023249e-08, -0.929782331)
      elseif MyLevel == 10 or MyLevel <= 14 then -- Monkey
         Ms = "Monkey [Lv. 14]"
         QuestName = "JungleQuest"
         LevelQuest = 1
         NameMon = "Monkey"
         CFrameQuest = CFrame.new(-1604.12012, 36.8521118, 154.23732, 0.0648873374, -4.70858913e-06, -0.997892559, 1.41431883e-07, 1, -4.70933674e-06, 0.997892559, 1.64442184e-07, 0.0648873374)
         CFrameMon = CFrame.new(-1402.74609, 98.5633316, 90.6417007, 0.836947978, 0, 0.547282517, -0, 1, -0, -0.547282517, 0, 0.836947978)
      elseif MyLevel == 15 or MyLevel <= 29 then -- Gorilla
         Ms = "Gorilla [Lv. 20]"
         QuestName = "JungleQuest"
         LevelQuest = 2
         NameMon = "Gorilla"
         CFrameQuest = CFrame.new(-1604.12012, 36.8521118, 154.23732, 0.0648873374, -4.70858913e-06, -0.997892559, 1.41431883e-07, 1, -4.70933674e-06, 0.997892559, 1.64442184e-07, 0.0648873374)
         CFrameMon = CFrame.new(-1223.52808, 6.27936459, -502.292664, 0.310949147, -5.66602516e-08, 0.950426519, -3.37275488e-08, 1, 7.06501808e-08, -0.950426519, -5.40241736e-08, 0.310949147)
      elseif MyLevel == 30 or MyLevel <= 39 then -- Pirate
         Ms = "Pirate [Lv. 35]"
         QuestName = "BuggyQuest1"
         LevelQuest = 1
         NameMon = "Pirate"
         CFrameQuest = CFrame.new(-1139.59717, 4.75205183, 3825.16211, -0.959730506, -7.5857054e-09, 0.280922383, -4.06310328e-08, 1, -1.11807175e-07, -0.280922383, -1.18718916e-07, -0.959730506)
         CFrameMon = CFrame.new(-1219.32324, 4.75205183, 3915.63452, -0.966492832, -6.91238853e-08, 0.25669381, -5.21195496e-08, 1, 7.3047012e-08, -0.25669381, 5.72206496e-08, -0.966492832)
      elseif MyLevel == 40 or MyLevel <= 59 then -- Brute
         Ms = "Brute [Lv. 45]"
         QuestName = "BuggyQuest1"
         LevelQuest = 2
         NameMon = "Brute"
         CFrameQuest = CFrame.new(-1139.59717, 4.75205183, 3825.16211, -0.959730506, -7.5857054e-09, 0.280922383, -4.06310328e-08, 1, -1.11807175e-07, -0.280922383, -1.18718916e-07, -0.959730506)
         CFrameMon = CFrame.new(-1146.49646, 96.0936813, 4312.1333, -0.978175163, -1.53222057e-08, 0.207781896, -3.33316912e-08, 1, -8.31738873e-08, -0.207781896, -8.82843523e-08, -0.978175163)
      elseif MyLevel == 60 or MyLevel <= 74 then -- Desert Bandit
         Ms = "Desert Bandit [Lv. 60]"
         QuestName = "DesertQuest"
         LevelQuest = 1
         NameMon = "Desert Bandit"
         CFrameQuest = CFrame.new(897.031128, 6.43846416, 4388.97168, -0.804044724, 3.68233266e-08, 0.594568789, 6.97835176e-08, 1, 3.24365246e-08, -0.594568789, 6.75715199e-08, -0.804044724)
         CFrameMon = CFrame.new(932.788818, 6.4503746, 4488.24609, -0.998625934, 3.08948351e-08, 0.0524050146, 2.79967303e-08, 1, -5.60361286e-08, -0.0524050146, -5.44919629e-08, -0.998625934)
      elseif MyLevel == 75 or MyLevel <= 89 then -- Desert Officre
         Ms = "Desert Officer [Lv. 70]"
         QuestName = "DesertQuest"
         LevelQuest = 2
         NameMon = "Desert Officer"
         CFrameQuest = CFrame.new(897.031128, 6.43846416, 4388.97168, -0.804044724, 3.68233266e-08, 0.594568789, 6.97835176e-08, 1, 3.24365246e-08, -0.594568789, 6.75715199e-08, -0.804044724)
         CFrameMon = CFrame.new(1580.03198, 4.61375761, 4366.86426, 0.135744005, -6.44280718e-08, -0.990743816, 4.35738308e-08, 1, -5.90598574e-08, 0.990743816, -3.51534837e-08, 0.135744005)
      elseif MyLevel == 90 or MyLevel <= 99 then -- Snow Bandits
         Ms = "Snow Bandit [Lv. 90]"
         QuestName = "SnowQuest"
         LevelQuest = 1
         NameMon = "Snow Bandits"
         CFrameQuest = CFrame.new(1384.14001, 87.272789, -1297.06482, 0.348555952, -2.53947841e-09, -0.937287986, 1.49860568e-08, 1, 2.86358204e-09, 0.937287986, -1.50443711e-08, 0.348555952)
         CFrameMon = CFrame.new(1370.24316, 102.403511, -1411.52905, 0.980274439, -1.12995728e-08, 0.197641045, -9.57343449e-09, 1, 1.04655214e-07, -0.197641045, -1.04482936e-07, 0.980274439)
      elseif MyLevel == 100 or MyLevel <= 119 then -- Snowman
         Ms = "Snowman [Lv. 100]"
         QuestName = "SnowQuest"
         LevelQuest = 2
         NameMon = "Snowman"
         CFrameQuest = CFrame.new(1384.14001, 87.272789, -1297.06482, 0.348555952, -2.53947841e-09, -0.937287986, 1.49860568e-08, 1, 2.86358204e-09, 0.937287986, -1.50443711e-08, 0.348555952)
         CFrameMon = CFrame.new(1370.24316, 102.403511, -1411.52905, 0.980274439, -1.12995728e-08, 0.197641045, -9.57343449e-09, 1, 1.04655214e-07, -0.197641045, -1.04482936e-07, 0.980274439)
      elseif MyLevel == 120 or MyLevel <= 149 then -- Chief Petty Officer
         Ms = "Chief Petty Officer [Lv. 120]"
         QuestName = "MarineQuest2"
         LevelQuest = 1
         NameMon = "Chief Petty Officer"
         CFrameQuest = CFrame.new(-5035.0835, 28.6520386, 4325.29443, 0.0243340395, -7.08064647e-08, 0.999703884, -6.36926814e-08, 1, 7.23777944e-08, -0.999703884, -6.54350671e-08, 0.0243340395)
         CFrameMon = CFrame.new(-4882.8623, 22.6520386, 4255.53516, 0.273695946, -5.40380647e-08, -0.96181643, 4.37720793e-08, 1, -4.37274998e-08, 0.96181643, -3.01326679e-08, 0.273695946)
      elseif MyLevel == 150 or MyLevel <= 174 then -- Sky Bandit
         Ms = "Sky Bandit [Lv. 150]"
         QuestName = "SkyQuest"
         LevelQuest = 1
         NameMon = "Sky Bandit"
         CFrameQuest = CFrame.new(-4841.83447, 717.669617, -2623.96436, -0.875942111, 5.59710216e-08, -0.482416272, 3.04023082e-08, 1, 6.08195947e-08, 0.482416272, 3.86078725e-08, -0.875942111)
         CFrameMon = CFrame.new(-4970.74219, 294.544342, -2890.11353, -0.994874597, -8.61311236e-08, -0.101116329, -9.10836206e-08, 1, 4.43614923e-08, 0.101116329, 5.33441664e-08, -0.994874597)
      elseif MyLevel == 175 or MyLevel <= 224 then -- Dark Master
         Ms = "Dark Master [Lv. 175]"
         QuestName = "SkyQuest"
         LevelQuest = 2
         NameMon = "Dark Master"
         CFrameQuest = CFrame.new(-4841.83447, 717.669617, -2623.96436, -0.875942111, 5.59710216e-08, -0.482416272, 3.04023082e-08, 1, 6.08195947e-08, 0.482416272, 3.86078725e-08, -0.875942111)
         CFrameMon = CFrame.new(-5220.58594, 430.693298, -2278.17456, -0.925375521, 1.12086873e-08, 0.379051805, -1.05115507e-08, 1, -5.52320891e-08, -0.379051805, -5.50948407e-08, -0.925375521)
      elseif MyLevel == 225 or MyLevel <= 274 then -- Toga Warrior
         Ms = "Toga Warrior [Lv. 225]"
         QuestName = "ColosseumQuest"
         LevelQuest = 1
         NameMon = "Toga Warrior"
         CFrameQuest = CFrame.new(-1576.11743, 7.38933945, -2983.30762, 0.576966345, 1.22114863e-09, 0.816767931, -3.58496594e-10, 1, -1.24185606e-09, -0.816767931, 4.2370063e-10, 0.576966345)
         CFrameMon = CFrame.new(-1779.97583, 44.6077499, -2736.35474, 0.984437346, 4.10396339e-08, 0.175734788, -3.62286876e-08, 1, -3.05844168e-08, -0.175734788, 2.3741821e-08, 0.984437346)
      elseif MyLevel == 275 or MyLevel <= 299 then -- Gladiato
         Ms = "Gladiator [Lv. 275]"
         QuestName = "ColosseumQuest"
         LevelQuest = 2
         NameMon = "Gladiato"
         CFrameQuest = CFrame.new(-1576.11743, 7.38933945, -2983.30762, 0.576966345, 1.22114863e-09, 0.816767931, -3.58496594e-10, 1, -1.24185606e-09, -0.816767931, 4.2370063e-10, 0.576966345)
         CFrameMon = CFrame.new(-1274.75903, 58.1895943, -3188.16309, 0.464524001, 6.21005611e-08, 0.885560572, -4.80449414e-09, 1, -6.76054768e-08, -0.885560572, 2.71497012e-08, 0.464524001)
      elseif MyLevel == 300 or MyLevel <= 329 then -- Military Soldier
         Ms = "Military Soldier [Lv. 300]"
         QuestName = "MagmaQuest"
         LevelQuest = 1
         NameMon = "Military Soldier"
         CFrameQuest = CFrame.new(-5316.55859, 12.2370615, 8517.2998, 0.588437557, -1.37880001e-08, -0.808542669, -2.10116209e-08, 1, -3.23446478e-08, 0.808542669, 3.60215964e-08, 0.588437557)
         CFrameMon = CFrame.new(-5363.01123, 41.5056877, 8548.47266, -0.578253984, -3.29503091e-10, 0.815856814, 9.11209668e-08, 1, 6.498761e-08, -0.815856814, 1.11920997e-07, -0.578253984)
      elseif MyLevel == 300 or MyLevel <= 449 then -- Military Spy
         Ms = "Military Spy [Lv. 330]"
         QuestName = "MagmaQuest"
         LevelQuest = 2
         NameMon = "Military Spy"
         CFrameQuest = CFrame.new(-5316.55859, 12.2370615, 8517.2998, 0.588437557, -1.37880001e-08, -0.808542669, -2.10116209e-08, 1, -3.23446478e-08, 0.808542669, 3.60215964e-08, 0.588437557)
         CFrameMon = CFrame.new(-5787.99023, 120.864456, 8762.25293, -0.188358366, -1.84706277e-08, 0.982100308, -1.23782129e-07, 1, -4.93306951e-09, -0.982100308, -1.22495649e-07, -0.188358366)
      elseif MyLevel == 450 or MyLevel <= 474 then -- God's Guards
         Ms = "God's Guard [Lv. 450]"
         QuestName = "SkyExp1Quest"
         LevelQuest = 1
         NameMon = "God's Guards"
         CFrameQuest = CFrame.new(-4721.71436, 845.277161, -1954.20105, -0.999277651, -5.56969759e-09, 0.0380011722, -4.14751478e-09, 1, 3.75035256e-08, -0.0380011722, 3.73188307e-08, -0.999277651)
         CFrameMon = CFrame.new(-4716.95703, 853.089722, -1933.92542, -0.93441087, -6.77488776e-09, -0.356197298, 1.12145182e-08, 1, -4.84390199e-08, 0.356197298, -4.92565206e-08, -0.93441087)
      elseif MyLevel == 475 or MyLevel <= 524 then -- Shandas
         Ms = "Shanda [Lv. 475]"
         QuestName = "SkyExp1Quest"
         LevelQuest = 2
         NameMon = "Shandas"
         CFrameQuest = CFrame.new(-7863.63672, 5545.49316, -379.826324, 0.362120807, -1.98046344e-08, -0.93213129, 4.05822291e-08, 1, -5.48095125e-09, 0.93213129, -3.58431969e-08, 0.362120807)
         CFrameMon = CFrame.new(-7685.12354, 5601.05127, -443.171509, 0.150056243, 1.79768236e-08, -0.988677442, 6.67798661e-09, 1, 1.91962481e-08, 0.988677442, -9.48289181e-09, 0.150056243)
      elseif MyLevel == 525 or MyLevel <= 549 then -- Royal Squad
         Ms = "Royal Squad [Lv. 525]"
         QuestName = "SkyExp2Quest"
         LevelQuest = 1
         NameMon = "Royal Squad"
         CFrameQuest = CFrame.new(-7902.66895, 5635.96387, -1411.71802, 0.0504222959, 2.5710392e-08, 0.998727977, 1.12541557e-07, 1, -3.14249675e-08, -0.998727977, 1.13982921e-07, 0.0504222959)
         CFrameMon = CFrame.new(-7685.02051, 5606.87842, -1442.729, 0.561947823, 7.69527464e-09, -0.827172697, -4.24974544e-09, 1, 6.41599973e-09, 0.827172697, -9.01838604e-11, 0.561947823)
      elseif MyLevel == 550 or MyLevel <= 624 then -- Royal Soldier
         Ms = "Royal Soldier [Lv. 550]"
         QuestName = "SkyExp2Quest"
         LevelQuest = 2
         NameMon = "Royal Soldier"
         CFrameQuest = CFrame.new(-7902.66895, 5635.96387, -1411.71802, 0.0504222959, 2.5710392e-08, 0.998727977, 1.12541557e-07, 1, -3.14249675e-08, -0.998727977, 1.13982921e-07, 0.0504222959)
         CFrameMon = CFrame.new(-7864.44775, 5661.94092, -1708.22351, 0.998389959, 2.28686137e-09, -0.0567218624, 1.99431383e-09, 1, 7.54200258e-08, 0.0567218624, -7.54117195e-08, 0.998389959)
      elseif MyLevel == 625 or MyLevel <= 649 then -- Galley Pirate
         Ms = "Galley Pirate [Lv. 625]"
         QuestName = "FountainQuest"
         LevelQuest = 1
         NameMon = "Galley Pirate"
         CFrameQuest = CFrame.new(5254.60156, 38.5011406, 4049.69678, -0.0504891425, -3.62066501e-08, -0.998724639, -9.87921389e-09, 1, -3.57534553e-08, 0.998724639, 8.06145284e-09, -0.0504891425)
         CFrameMon = CFrame.new(5595.06982, 41.5013695, 3961.47095, -0.992138803, -2.11610267e-08, -0.125142589, -1.34249509e-08, 1, -6.26613996e-08, 0.125142589, -6.04887518e-08, -0.992138803)
      elseif MyLevel >= 650 then -- Galley Captain
         Ms = "Galley Captain [Lv. 650]"
         QuestName = "FountainQuest"
         LevelQuest = 2
         NameMon = "Galley Captain"
         CFrameQuest = CFrame.new(5254.60156, 38.5011406, 4049.69678, -0.0504891425, -3.62066501e-08, -0.998724639, -9.87921389e-09, 1, -3.57534553e-08, 0.998724639, 8.06145284e-09, -0.0504891425)
         CFrameMon = CFrame.new(5658.5752, 38.5361786, 4928.93506, -0.996873081, 2.12391046e-06, -0.0790185928, 2.16989656e-06, 1, -4.96097414e-07, 0.0790185928, -6.66008248e-07, -0.996873081)
      end
   end
   if Sea2 then
      if MyLevel == 700 or MyLevel <= 724 then -- Raider [Lv. 700]
         Ms = "Raider [Lv. 700]"
         QuestName = "Area1Quest"
         LevelQuest = 1
         NameMon = "Raider"
         CFrameQuest = CFrame.new(-424.080078, 73.0055847, 1836.91589, 0.253544956, -1.42165932e-08, 0.967323601, -6.00147771e-08, 1, 3.04272909e-08, -0.967323601, -6.5768397e-08, 0.253544956)
         CFrameMon = CFrame.new(-737.026123, 39.1748352, 2392.57959, 0.272128761, 0, -0.962260842, -0, 1, -0, 0.962260842, 0, 0.272128761)
      elseif MyLevel == 725 or MyLevel <= 774 then -- Mercenary [Lv. 725]
         Ms = "Mercenary [Lv. 725]"
         QuestName = "Area1Quest"
         LevelQuest = 2
         NameMon = "Mercenary"
         CFrameQuest = CFrame.new(-424.080078, 73.0055847, 1836.91589, 0.253544956, -1.42165932e-08, 0.967323601, -6.00147771e-08, 1, 3.04272909e-08, -0.967323601, -6.5768397e-08, 0.253544956)
         CFrameMon = CFrame.new(-973.731995, 95.8733215, 1836.46936, 0.999135971, 2.02326991e-08, -0.0415605344, -1.90767793e-08, 1, 2.82094952e-08, 0.0415605344, -2.73922804e-08, 0.999135971)
      elseif MyLevel == 775 or MyLevel <= 799 then -- Swan Pirate [Lv. 775]
         Ms = "Swan Pirate [Lv. 775]"
         QuestName = "Area2Quest"
         LevelQuest = 1
         NameMon = "Swan Pirate"
         CFrameQuest = CFrame.new(632.698608, 73.1055908, 918.666321, -0.0319722369, 8.96074881e-10, -0.999488771, 1.36326533e-10, 1, 8.92172336e-10, 0.999488771, -1.07732087e-10, -0.0319722369)
         CFrameMon = CFrame.new(970.369446, 142.653198, 1217.3667, 0.162079468, -4.85452638e-08, -0.986777723, 1.03357589e-08, 1, -4.74980872e-08, 0.986777723, -2.50063148e-09, 0.162079468)
      elseif MyLevel == 800 or MyLevel <= 874 then -- Factory Staff [Lv. 800]
         Ms = "Factory Staff [Lv. 800]"
         QuestName = "Area2Quest"
         LevelQuest = 2
         NameMon = "Factory Staff"
         CFrameQuest = CFrame.new(632.698608, 73.1055908, 918.666321, -0.0319722369, 8.96074881e-10, -0.999488771, 1.36326533e-10, 1, 8.92172336e-10, 0.999488771, -1.07732087e-10, -0.0319722369)
         CFrameMon = CFrame.new(296.786499, 72.9948196, -57.1298141, -0.876037002, -5.32364979e-08, 0.482243896, -3.87658332e-08, 1, 3.99718729e-08, -0.482243896, 1.63222538e-08, -0.876037002)
      elseif MyLevel == 875 or MyLevel <= 899 then -- Marine Lieutenant [Lv. 875]
         Ms = "Marine Lieutenant [Lv. 875]"
         QuestName = "MarineQuest3"
         LevelQuest = 1
         NameMon = "Marine Lieutenant"
         CFrameQuest = CFrame.new(-2442.65015, 73.0511475, -3219.11523, -0.873540044, 4.2329841e-08, -0.486752301, 5.64383384e-08, 1, -1.43220786e-08, 0.486752301, -3.99823996e-08, -0.873540044)
         CFrameMon = CFrame.new(-2913.26367, 73.0011826, -2971.64282, 0.910507619, 0, 0.413492233, 0, 1.00000012, 0, -0.413492233, 0, 0.910507619)
      elseif MyLevel == 900 or MyLevel <= 949 then -- Marine Captain [Lv. 900]
         Ms = "Marine Captain [Lv. 900]"
         QuestName = "MarineQuest3"
         LevelQuest = 2
         NameMon = "Marine Captain"
         CFrameQuest = CFrame.new(-2442.65015, 73.0511475, -3219.11523, -0.873540044, 4.2329841e-08, -0.486752301, 5.64383384e-08, 1, -1.43220786e-08, 0.486752301, -3.99823996e-08, -0.873540044)
         CFrameMon = CFrame.new(-1868.67688, 73.0011826, -3321.66333, -0.971402287, 1.06502087e-08, 0.237439692, 3.68856199e-08, 1, 1.06050372e-07, -0.237439692, 1.11775684e-07, -0.971402287)
      elseif MyLevel == 950 or MyLevel <= 974 then -- Zombie [Lv. 950]
         Ms = "Zombie [Lv. 950]"
         QuestName = "ZombieQuest"
         LevelQuest = 1
         NameMon = "Zombie"
         CFrameQuest = CFrame.new(-5492.79395, 48.5151672, -793.710571, 0.321800292, -6.24695815e-08, 0.946807742, 4.05616092e-08, 1, 5.21931227e-08, -0.946807742, 2.16082796e-08, 0.321800292)
         CFrameMon = CFrame.new(-5634.83838, 126.067039, -697.665039, -0.992770672, 6.77618939e-09, 0.120025545, 1.65461245e-08, 1, 8.04023372e-08, -0.120025545, 8.18070234e-08, -0.992770672)
      elseif MyLevel == 975 or MyLevel <= 999 then -- Vampire [Lv. 975]
         Ms = "Vampire [Lv. 975]"
         QuestName = "ZombieQuest"
         LevelQuest = 2
         NameMon = "Vampire"
         CFrameQuest = CFrame.new(-5492.79395, 48.5151672, -793.710571, 0.321800292, -6.24695815e-08, 0.946807742, 4.05616092e-08, 1, 5.21931227e-08, -0.946807742, 2.16082796e-08, 0.321800292)
         CFrameMon = CFrame.new(-6030.32031, 6.4377408, -1313.5564, -0.856965423, 3.9138893e-08, -0.515373945, -1.12178942e-08, 1, 9.45958547e-08, 0.515373945, 8.68467822e-08, -0.856965423)
      elseif MyLevel == 1000 or MyLevel <= 1049 then -- Snow Trooper [Lv. 1000] **
         Ms = "Snow Trooper [Lv. 1000]"
         QuestName = "SnowMountainQuest"
         LevelQuest = 1
         NameMon = "Snow Trooper"
         CFrameQuest = CFrame.new(604.964966, 401.457062, -5371.69287, 0.353063971, 1.89520435e-08, -0.935599446, -5.81846002e-08, 1, -1.70033754e-09, 0.935599446, 5.50377841e-08, 0.353063971)
         CFrameMon = CFrame.new(535.893433, 401.457062, -5329.6958, -0.999524176, 0, 0.0308452044, 0, 1, -0, -0.0308452044, 0, -0.999524176)
      elseif MyLevel == 1050 or MyLevel <= 1099 then -- Winter Warrior [Lv. 1050]
         Ms = "Winter Warrior [Lv. 1050]"
         QuestName = "SnowMountainQuest"
         LevelQuest = 2
         NameMon = "Winter Warrior"
         CFrameQuest = CFrame.new(604.964966, 401.457062, -5371.69287, 0.353063971, 1.89520435e-08, -0.935599446, -5.81846002e-08, 1, -1.70033754e-09, 0.935599446, 5.50377841e-08, 0.353063971)
         CFrameMon = CFrame.new(1223.7417, 454.575226, -5170.02148, 0.473996818, 2.56845354e-08, 0.880526543, -5.62456428e-08, 1, 1.10811016e-09, -0.880526543, -5.00510211e-08, 0.473996818)
      elseif MyLevel == 1100 or MyLevel <= 1124 then -- Lab Subordinate [Lv. 1100]
         Ms = "Lab Subordinate [Lv. 1100]"
         QuestName = "IceSideQuest"
         LevelQuest = 1
         NameMon = "Lab Subordinate"
         CFrameQuest = CFrame.new(-6060.10693, 15.9868021, -4904.7876, -0.411000341, -5.06538868e-07, 0.91163528, 1.26306062e-07, 1, 6.12581289e-07, -0.91163528, 3.66916197e-07, -0.411000341)
         CFrameMon = CFrame.new(-5769.2041, 37.9288292, -4468.38721, -0.569419742, -2.49055017e-08, 0.822046936, -6.96206541e-08, 1, -1.79282633e-08, -0.822046936, -6.74401548e-08, -0.569419742)
      elseif MyLevel == 1125 or MyLevel <= 1174 then -- Horned Warrior [Lv. 1125]
         Ms = "Horned Warrior [Lv. 1125]"
         QuestName = "IceSideQuest"
         LevelQuest = 2
         NameMon = "Horned Warrior"
         CFrameQuest = CFrame.new(-6060.10693, 15.9868021, -4904.7876, -0.411000341, -5.06538868e-07, 0.91163528, 1.26306062e-07, 1, 6.12581289e-07, -0.91163528, 3.66916197e-07, -0.411000341)
         CFrameMon = CFrame.new(-6400.85889, 24.7645149, -5818.63574, -0.964845479, 8.65926566e-08, -0.262817472, 3.98261392e-07, 1, -1.13260398e-06, 0.262817472, -1.19745812e-06, -0.964845479) --]]
      elseif MyLevel == 1175 or MyLevel <= 1199 then -- Magma Ninja [Lv. 1175]
         Ms = "Magma Ninja [Lv. 1175]"
         QuestName = "FireSideQuest"
         LevelQuest = 1
         NameMon = "Magma Ninja"
         CFrameQuest = CFrame.new(-5431.09473, 15.9868021, -5296.53223, 0.831796765, 1.15322464e-07, -0.555080295, -1.10814341e-07, 1, 4.17010995e-08, 0.555080295, 2.68240168e-08, 0.831796765)
         CFrameMon = CFrame.new(-5496.65576, 58.6890411, -5929.76855, -0.885073781, 0, -0.465450764, 0, 1.00000012, -0, 0.465450764, 0, -0.885073781)
      elseif MyLevel == 1200 or MyLevel <= 1249 then -- Lava Pirate [Lv. 1200]
         Ms = "Lava Pirate [Lv. 1200]"
         QuestName = "FireSideQuest"
         LevelQuest = 2
         NameMon = "Lava Pirate"
         CFrameQuest = CFrame.new(-5431.09473, 15.9868021, -5296.53223, 0.831796765, 1.15322464e-07, -0.555080295, -1.10814341e-07, 1, 4.17010995e-08, 0.555080295, 2.68240168e-08, 0.831796765)
         CFrameMon = CFrame.new(-5169.71729, 34.1234779, -4669.73633, -0.196780294, 0, 0.98044765, 0, 1.00000012, -0, -0.98044765, 0, -0.196780294)
      elseif MyLevel == 1250 or MyLevel <= 1274 then -- Ship Deckhand [Lv. 1250]
         Ms = "Ship Deckhand [Lv. 1250]"
         QuestName = "ShipQuest1"
         LevelQuest = 1
         NameMon = "Ship Deckhand"
         CFrameQuest = CFrame.new(1037.80127, 125.092171, 32911.6016, -0.244533166, -0, -0.969640911, -0, 1.00000012, -0, 0.96964103, 0, -0.244533136)
         CFrameMon = CFrame.new(1163.80872, 138.288452, 33058.4258, -0.998580813, 5.49076979e-08, -0.0532564968, 5.57436763e-08, 1, -1.42118655e-08, 0.0532564968, -1.71604082e-08, -0.998580813)
      elseif MyLevel == 1275 or MyLevel <= 1299 then -- Ship Engineer [Lv. 1275]
         Ms = "Ship Engineer [Lv. 1275]"
         QuestName = "ShipQuest1"
         LevelQuest = 2
         NameMon = "Ship Engineer"
         CFrameQuest = CFrame.new(1037.80127, 125.092171, 32911.6016, -0.244533166, -0, -0.969640911, -0, 1.00000012, -0, 0.96964103, 0, -0.244533136)
         CFrameMon = CFrame.new(916.666504, 44.0920448, 32917.207, -0.99746871, -4.85034697e-08, -0.0711069331, -4.8925461e-08, 1, 4.19294288e-09, 0.0711069331, 7.66126895e-09, -0.99746871)
      elseif MyLevel == 1300 or MyLevel <= 1324 then -- Ship Steward [Lv. 1300]
         Ms = "Ship Steward [Lv. 1300]"
         QuestName = "ShipQuest2"
         LevelQuest = 1
         NameMon = "Ship Steward"
         CFrameQuest = CFrame.new(968.80957, 125.092171, 33244.125, -0.869560242, 1.51905191e-08, -0.493826836, 1.44108379e-08, 1, 5.38534195e-09, 0.493826836, -2.43357912e-09, -0.869560242)
         CFrameMon = CFrame.new(918.743286, 129.591064, 33443.4609, -0.999792814, -1.7070947e-07, -0.020350717, -1.72559169e-07, 1, 8.91351277e-08, 0.020350717, 9.2628369e-08, -0.999792814)
      elseif MyLevel == 1325 or MyLevel <= 1349 then -- Ship Officer [Lv. 1325]
         Ms = "Ship Officer [Lv. 1325]"
         QuestName = "ShipQuest2"
         LevelQuest = 2
         NameMon = "Ship Officer"
         CFrameQuest = CFrame.new(968.80957, 125.092171, 33244.125, -0.869560242, 1.51905191e-08, -0.493826836, 1.44108379e-08, 1, 5.38534195e-09, 0.493826836, -2.43357912e-09, -0.869560242)
         CFrameMon = CFrame.new(786.051941, 181.474106, 33303.2969, 0.999285698, -5.32193063e-08, 0.0377905183, 5.68968588e-08, 1, -9.62386864e-08, -0.0377905183, 9.83201005e-08, 0.999285698)
      elseif MyLevel == 1350 or MyLevel <= 1374 then -- Arctic Warrior [Lv. 1350]
         Ms = "Arctic Warrior [Lv. 1350]"
         QuestName = "FrostQuest"
         LevelQuest = 1
         NameMon = "Arctic Warrior"
         CFrameQuest = CFrame.new(5669.43506, 28.2117786, -6482.60107, 0.888092756, 1.02705066e-07, 0.459664226, -6.20391774e-08, 1, -1.03572376e-07, -0.459664226, 6.34646895e-08, 0.888092756)
         CFrameMon = CFrame.new(5995.07471, 57.3188477, -6183.47314, 0.702747107, -1.53454167e-07, -0.711440146, -1.08168464e-07, 1, -3.22542007e-07, 0.711440146, 3.03620908e-07, 0.702747107)
      elseif MyLevel == 1375 or MyLevel <= 1424 then -- Snow Lurker [Lv. 1375]
         Ms = "Snow Lurker [Lv. 1375]"
         QuestName = "FrostQuest"
         LevelQuest = 2
         NameMon = "Snow Lurker"
         CFrameQuest = CFrame.new(5669.43506, 28.2117786, -6482.60107, 0.888092756, 1.02705066e-07, 0.459664226, -6.20391774e-08, 1, -1.03572376e-07, -0.459664226, 6.34646895e-08, 0.888092756)
         CFrameMon = CFrame.new(5518.00684, 60.5559731, -6828.80518, -0.650781393, -3.64292951e-08, 0.759265184, -4.07668654e-09, 1, 4.44854642e-08, -0.759265184, 2.58550248e-08, -0.650781393)
      elseif MyLevel == 1425 or MyLevel <= 1449 then -- Sea Soldier [Lv. 1425]
         Ms = "Sea Soldier [Lv. 1425]"
         QuestName = "ForgottenQuest"
         LevelQuest = 1
         NameMon = "Sea Soldier"
         CFrameQuest = CFrame.new(-3052.99097, 236.881363, -10148.1943, -0.997911751, 4.42321983e-08, 0.064591676, 4.90968759e-08, 1, 7.37270085e-08, -0.064591676, 7.67442998e-08, -0.997911751)
         CFrameMon = CFrame.new(-3029.78467, 66.944252, -9777.38184, -0.998552859, 1.09555076e-08, 0.0537791774, 7.79564235e-09, 1, -5.89660658e-08, -0.0537791774, -5.84614881e-08, -0.998552859)
      elseif MyLevel >= 1450 then -- Water Fighter [Lv. 1450]
         Ms = "Water Fighter [Lv. 1450]"
         QuestName = "ForgottenQuest"
         LevelQuest = 2
         NameMon = "Water Fighter"
         CFrameQuest = CFrame.new(-3052.99097, 236.881363, -10148.1943, -0.997911751, 4.42321983e-08, 0.064591676, 4.90968759e-08, 1, 7.37270085e-08, -0.064591676, 7.67442998e-08, -0.997911751)
         CFrameMon = CFrame.new(-3262.00098, 298.699615, -10553.6943, -0.233570755, -4.57538185e-08, 0.972339869, -5.80986068e-08, 1, 3.30992194e-08, -0.972339869, -4.87605725e-08, -0.233570755)
      end
   end
   if ThreeWorld then
      if MyLevel == 1500 or MyLevel <= 1524 or SeletMon == "Pirate Millionaire [Lv. 1500]" then -- Pirate Millionaire
         Ms = "Pirate Millionaire [Lv. 1500]"
         NameMon = "Pirate Millionaire"
         QuestName = "PiratePortQuest"
         LevelQuest = 1
         Reward = "Reward:\n$13,000\n35,000,000 Exp."
         CFrameQuest = CFrame.new(-289.61752319336, 43.819011688232, 5580.0903320313)
         CFrameMon = CFrame.new(-435.68109130859, 189.69866943359, 5551.0756835938)
      elseif MyLevel == 1525 or MyLevel <= 1574 or SeletMon == "Pistol Billionaire [Lv. 1525]" then -- Pistol Billoonaire
         Ms = "Pistol Billionaire [Lv. 1525]"
         NameMon = "Pistol Billionaire"
         QuestName = "PiratePortQuest"
         LevelQuest = 2
         Reward = "Reward:\n$15,000\n37,500,000 Exp."
         CFrameQuest = CFrame.new(-289.61752319336, 43.819011688232, 5580.0903320313)
         CFrameMon = CFrame.new(-236.53652954102, 217.46676635742, 6006.0883789063)
      elseif MyLevel == 1575 or MyLevel <= 1599 or SeletMon == "Dragon Crew Warrior [Lv. 1575]" then -- Dragon Crew Warrior
         Ms = "Dragon Crew Warrior [Lv. 1575]"
         NameMon = "Dragon Crew Warrior"
         QuestName = "AmazonQuest"
         LevelQuest = 1
         Reward = "Reward:\n$13,000\n40,000,000 Exp."
         CFrameQuest = CFrame.new(5833.1147460938, 51.60498046875, -1103.0693359375)
         CFrameMon = CFrame.new(6301.9975585938, 104.77153015137, -1082.6075439453)
      elseif MyLevel == 1600 or MyLevel <= 1624 or SeletMon == "Dragon Crew Archer [Lv. 1600]" then -- Dragon Crew Archer
         Ms = "Dragon Crew Archer [Lv. 1600]"
         NameMon = "Dragon Crew Archer"
         QuestName = "AmazonQuest"
         LevelQuest = 2
         Reward = "Reward:\n$15,000\n42,500,000 Exp."
         CFrameQuest = CFrame.new(5833.1147460938, 51.60498046875, -1103.0693359375)
         CFrameMon = CFrame.new(6831.1171875, 441.76708984375, 446.58615112305)
      elseif MyLevel == 1625 or MyLevel <= 1649 or SeletMon == "Female Islander [Lv. 1625]" then -- Female Islander
         Ms = "Female Islander [Lv. 1625]"
         NameMon = "Female Islander"
         QuestName = "AmazonQuest2"
         LevelQuest = 1
         Reward = "Reward:\n$13,000\n45,500,000 Exp."
         CFrameQuest = CFrame.new(5446.8793945313, 601.62945556641, 749.45672607422)
         CFrameMon = CFrame.new(5792.5166015625, 848.14392089844, 1084.1818847656)
      elseif MyLevel == 1650 or MyLevel <= 1699 or SeletMon == "Giant Islander [Lv. 1650]" then -- Giant Islander
         Ms = "Giant Islander [Lv. 1650]"
         NameMon = "Giant"
         QuestName = "AmazonQuest2"
         LevelQuest = 2
         Reward = "Reward:\n$15,000\n48,000,000 Exp."
         CFrameQuest = CFrame.new(5446.8793945313, 601.62945556641, 749.45672607422)
         CFrameMon = CFrame.new(5009.5068359375, 664.11071777344, -40.960144042969)
      elseif MyLevel == 1700 or MyLevel <= 1724 or SeletMon == "Marine Commodore [Lv. 1700]" then -- Marine Commodore
         Ms = "Marine Commodore [Lv. 1700]"
         NameMon = "Marine Commodore"
         QuestName = "MarineTreeIsland"
         LevelQuest = 1
         Reward = "Reward:\n$13,000\n51,000,000 Exp."
         CFrameQuest = CFrame.new(2179.98828125, 28.731239318848, -6740.0551757813)
         CFrameMon = CFrame.new(2198.0063476563, 128.71075439453, -7109.5043945313)
      elseif MyLevel == 1725 or MyLevel <= 1774 or SeletMon == "Marine Rear Admiral [Lv. 1725]" then -- Marine Rear Admiral
         Ms = "Marine Rear Admiral [Lv. 1725]"
         NameMon = "Marine Rear Admiral"
         QuestName = "MarineTreeIsland"
         LevelQuest = 2
         Reward = "Reward:\n$15,000\n53,500,000 Exp."
         CFrameQuest = CFrame.new(2179.98828125, 28.731239318848, -6740.0551757813)
         CFrameMon = CFrame.new(3229.1201171875, 125.21746826172, -6657.4340820313)
      elseif MyLevel == 1775 or MyLevel <= 1799 or SeletMon == "Fishman Raider [Lv. 1775]" then -- Fishman Raide
         Ms = "Fishman Raider [Lv. 1775]"
         NameMon = "Fishman Raider"
         QuestName = "DeepForestIsland3"
         LevelQuest = 1
         Reward = "Reward:\n$13,000\n56,000,000 Exp."
         CFrameQuest = CFrame.new(-10582.759765625, 331.78845214844, -8757.666015625)
         CFrameMon = CFrame.new(-10553.268554688, 521.38439941406, -8176.9458007813)
      elseif MyLevel == 1800 or MyLevel <= 1824 or SeletMon == "Fishman Captain [Lv. 1800]" then -- Fishman Captain
         Ms = "Fishman Captain [Lv. 1800]"
         NameMon = "Fishman Captain"
         QuestName = "DeepForestIsland3"
         LevelQuest = 2
         Reward = "Reward:\n$15,000\n58,500,000 Exp."
         CFrameQuest = CFrame.new(-10583.099609375, 331.78845214844, -8759.4638671875)
         CFrameMon = CFrame.new(-10789.401367188, 427.18637084961, -9131.4423828125)
      elseif MyLevel == 1825 or MyLevel <= 1849 or SeletMon == "Forest Pirate [Lv. 1825]" then -- Forest Pirate
         Ms = "Forest Pirate [Lv. 1825]"
         NameMon = "Forest Pirate"
         QuestName = "DeepForestIsland"
         LevelQuest = 1
         Reward = "Reward:\n$13,000\n61,000,000 Exp."
         CFrameQuest = CFrame.new(-13232.662109375, 332.40396118164, -7626.4819335938)
         CFrameMon = CFrame.new(-13489.397460938, 400.30349731445, -7770.251953125)
      elseif MyLevel == 1850 or MyLevel <= 1899 or SeletMon == "Mythological Pirate [Lv. 1850]" then -- Mythological Pirate
         Ms = "Mythological Pirate [Lv. 1850]"
         NameMon = "Mythological Pirate"
         QuestName = "DeepForestIsland"
         LevelQuest = 2
         Reward = "Reward:\n$13,000\n64,000,000 Exp."
         CFrameQuest = CFrame.new(-13232.662109375, 332.40396118164, -7626.4819335938)
         CFrameMon = CFrame.new(-13508.616210938, 582.46228027344, -6985.3037109375)
      elseif MyLevel == 1900 or MyLevel <= 1924 or SeletMon == "Jungle Pirate [Lv. 1900]" then -- Jungle Pirate
         Ms = "Jungle Pirate [Lv. 1900]"
         NameMon = "Jungle Pirate"
         QuestName = "DeepForestIsland2"
         LevelQuest = 1
         Reward = "Reward:\n$13,000\n67,000,000 Exp."
         CFrameQuest = CFrame.new(-12682.096679688, 390.88653564453, -9902.1240234375)
         CFrameMon = CFrame.new(-12267.103515625, 459.75262451172, -10277.200195313)
      elseif MyLevel == 1925 or MyLevel <= 1974 or SeletMon == "Musketeer Pirate [Lv. 1925]" then -- Musketeer Pirate
         Ms = "Musketeer Pirate [Lv. 1925]"
         NameMon = "Musketeer Pirate"
         QuestName = "DeepForestIsland2"
         LevelQuest = 2
         Reward = "Reward:\n$15,000\n70,000,000 Exp."
         CFrameQuest = CFrame.new(-12682.096679688, 390.88653564453, -9902.1240234375)
         CFrameMon = CFrame.new(-13291.5078125, 520.47338867188, -9904.638671875)
      elseif MyLevel == 1975 or MyLevel <= 1999 then
         Ms = "Reborn Skeleton [Lv. 1975]"
         NameMon = "Reborn Skeleton"
         QuestName = "HauntedQuest1"
         LevelQuest = 1
         Reward = "Reward:\n$13,000\n73,000,000 Exp."
         CFrameQuest = CFrame.new(-9480.80762, 142.130661, 5566.37305, -0.00655503059, 4.52954225e-08, -0.999978542, 2.04920472e-08, 1, 4.51620679e-08, 0.999978542, -2.01955679e-08, -0.00655503059)
         CFrameMon = CFrame.new(-8761.77148, 183.431747, 6168.33301, 0.978073597, -1.3950732e-05, -0.208259016, -1.08073925e-06, 1, -7.20630269e-05, 0.208259016, 7.07080399e-05, 0.978073597)
      elseif MyLevel == 2000 or MyLevel <= 2024 then
         Ms = "Living Zombie [Lv. 2000]"
         NameMon = "Living Zombie"
         QuestName = "HauntedQuest1"
         LevelQuest = 2
         Reward = "Reward:\n$13,250\n75,500,000 Exp."
         CFrameQuest = CFrame.new(-9480.80762, 142.130661, 5566.37305, -0.00655503059, 4.52954225e-08, -0.999978542, 2.04920472e-08, 1, 4.51620679e-08, 0.999978542, -2.01955679e-08, -0.00655503059)
         CFrameMon = CFrame.new(-10103.7529, 238.565979, 6179.75977, 0.999474227, 2.77547141e-08, 0.0324240364, -2.58006327e-08, 1, -6.06848474e-08, -0.0324240364, 5.98163865e-08, 0.999474227)
      elseif MyLevel == 2025 or MyLevel <= 2049 then
         Ms = "Demonic Soul [Lv. 2025]"
         NameMon = "Demonic Soul"
         QuestName = "HauntedQuest2"
         LevelQuest = 1
         Reward = "Reward:\n$13,500\n78,000,000 Exp."
         CFrameQuest = CFrame.new(-9515.39551, 172.266037, 6078.89746, 0.0121199936, -9.78649624e-08, 0.999926567, 2.30358754e-08, 1, 9.75929382e-08, -0.999926567, 2.18513581e-08, 0.0121199936)
         CFrameMon = CFrame.new(-9709.30762, 204.695892, 6044.04688, -0.845798075, -3.4587876e-07, -0.533503294, -4.46235369e-08, 1, -5.77571257e-07, 0.533503294, -4.64701827e-07, -0.845798075)
      elseif MyLevel == 2050 or MyLevel <= 2074 then
         Ms = "Posessed Mummy [Lv. 2050]"
         NameMon = "Posessed Mummy"
         QuestName = "HauntedQuest2"
         LevelQuest = 2
         Reward = "Reward:\n$13,750\n80,500,000 Exp."
         CFrameQuest = CFrame.new(-9515.39551, 172.266037, 6078.89746, 0.0121199936, -9.78649624e-08, 0.999926567, 2.30358754e-08, 1, 9.75929382e-08, -0.999926567, 2.18513581e-08, 0.0121199936)
         CFrameMon = CFrame.new(-9748.4375, 70.351295471191, 6141.6728515625)
      elseif MyLevel == 2075 or MyLevel <= 2099	then
         Ms = "Peanut Scout [Lv. 2075]"
         NameMon = "Peanut Scout"
         QuestName "NutsIslandQuest"
         LevelQuest = 1
         Reward = "Reward:\n$14,000\n82,500,000 Exp."
         CFrameQuest = CFrame.new(-2100.6489257812, 38.129989624023, -10192.965820312)
         CFrameMon = CFrame.new(-2189.4438476562, 94.345191955566, -10096.864257812)
      elseif MyLevel == 2100 or MyLevel <= 2124 then
         Ms = "Peanut President [Lv. 2100]"
         NameMon = "Peanut President"
         QuestName = "NutsIslandQuest"
         LevelQuest = 2
         Reward = "Reward:\n$14,100\n84,500,000 Exp."
         CFrameQuest = CFrame.new(-2100.6489257812, 38.129989624023, -10192.965820312)
         CFrameMon = CFrame.new(-2125.3371582031, 122.34906768799, -10440.224609375)
      elseif MyLevel == 2125 or MyLevel <= 2149 then
         Ms = "Ice Cream Chef [Lv. 2125]"
         NameMon = "Ice Cream Chef"
         QuestName = "IceCreamIslandQuest"
         LevelQuest = 1
         Reward = "Reward\n$14,200\n86,500,000 Exp."
         CFrameQuest = CFrame.new(-821.37353515625, 65.845359802246, -10970.177734375)
         CFrameMon = CFrame.new(-754.50042724609, 214.3367767334, -10966.411132812)
      elseif MyLevel >= 2150 then
         Ms = "Ice Cream Commander [Lv. 2150]"
         NameMon = "Ice Cream Commander"
         QuestName = "IceCreamIslandQuest"
         LevelQuest = 2
         Reward = "Reward\n$14,300\n89,000,000 Exp."
         CFrameQuest = CFrame.new(-821.37353515625, 65.845359802246, -10970.177734375)
         CFrameMon = CFrame.new(-754.50042724609, 214.3367767334, -10966.411132812)
      end
   end
end
game:GetService("RunService").Heartbeat:Connect(function()
pcall(function()
CheckQuest()
if not game.Workspace:FindFirstChild(NameMon) then
   local part = Instance.new("Part")
   part.Name = NameMon
   part.Position = Vector3.new(0, 10, 0)
   part.Anchored = true
   part.CFrame = CFrameQuest
   part.Transparency = 1
   part.Parent = game.Workspace
end
CheckQuest()
if not game.Workspace:FindFirstChild(Ms) then
   local part = Instance.new("Part")
   part.Name = Ms
   part.Position = Vector3.new(0, 10, 0)
   part.Anchored = true
   part.CFrame = CFrameMon
   part.Transparency = 1
   part.Parent = game.Workspace
end
end)
end)
--- Close \ Open
local Close = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")
local MainFrameUICorner = Instance.new("UICorner")
local Button = Instance.new("TextButton")
local TextLabel = Instance.new("TextLabel")

local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local LocalPlayer = game:GetService("Players").LocalPlayer

local function MakeDraggable(topbarobject, object)
	local Dragging = nil
	local DragInput = nil
	local DragStart = nil
	local StartPosition = nil

	local function Update(input)
		local Delta = input.Position - DragStart
		local pos =
			UDim2.new(
				StartPosition.X.Scale,
				StartPosition.X.Offset + Delta.X,
				StartPosition.Y.Scale,
				StartPosition.Y.Offset + Delta.Y
			)
		local Tween = TweenService:Create(object, TweenInfo.new(0.2), {Position = pos})
		Tween:Play()
	end

	topbarobject.InputBegan:Connect(
		function(input)
			if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
				Dragging = true
				DragStart = input.Position
				StartPosition = object.Position

				input.Changed:Connect(
					function()
						if input.UserInputState == Enum.UserInputState.End then
							Dragging = false
						end
					end
				)
			end
		end
	)

	topbarobject.InputChanged:Connect(
		function(input)
			if
				input.UserInputType == Enum.UserInputType.MouseMovement or
				input.UserInputType == Enum.UserInputType.Touch
			then
				DragInput = input
			end
		end
	)

	UserInputService.InputChanged:Connect(
		function(input)
			if input == DragInput and Dragging then
				Update(input)
			end
		end
	)
end

Close.Name = "Close"
Close.Parent = game:GetService("CoreGui").RobloxGui.Modules
Close.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

MainFrame.Name = "MainFrame"
MainFrame.Parent = Close
MainFrame.Active = true
MainFrame.AnchorPoint = Vector2.new(0.5, 0.5)
MainFrame.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
MainFrame.BorderColor3 = Color3.fromRGB(35, 35, 35)
MainFrame.BorderSizePixel = 0
MainFrame.Position = UDim2.new(0.18696712, 0, 0.164417177, 0)
MainFrame.Size = UDim2.new(0, 0, 0, 0) -- 0, 100, 0, 50

MakeDraggable(Button,MainFrame)

local DropFrameStroke = Instance.new("UIStroke")

DropFrameStroke.Thickness = 1
DropFrameStroke.Name = ""
DropFrameStroke.Parent = MainFrame
DropFrameStroke.LineJoinMode = Enum.LineJoinMode.Round
DropFrameStroke.Color = Color3.fromRGB(255,24,24)
DropFrameStroke.Transparency = 1

TweenService:Create(
	MainFrame,
	TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
	{Size = UDim2.new(0, 100, 0, 50)}
):Play()

repeat wait() until MainFrame.Size == UDim2.new(0, 100, 0, 50)

TweenService:Create(
	DropFrameStroke,
	TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
	{Transparency = 0}
):Play()

repeat wait() until DropFrameStroke.Transparency == 0


MainFrameUICorner.Name = "MainFrameUICorner"
MainFrameUICorner.Parent = MainFrame

Button.Name = "Button"
Button.Parent = MainFrame
Button.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Button.BackgroundTransparency = 1.000
Button.Size = UDim2.new(0, 100, 0, 50)
Button.AutoButtonColor = false
Button.Font = Enum.Font.SourceSans
Button.Text = ""
Button.TextColor3 = Color3.fromRGB(0, 0, 0)
Button.TextSize = 14.000

TextLabel.Parent = MainFrame
TextLabel.AnchorPoint = Vector2.new(0.5, 0.5)
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.Position = UDim2.new(0.5, 0, 0.5, 0)
TextLabel.Size = UDim2.new(0, 100, 0, 25)
TextLabel.Font = Enum.Font.GothamSemibold
TextLabel.Text = "Close"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextSize = 12.000

Toggle = false 

Button.MouseButton1Click:Connect(function()
	if Toggle == false then
	TextLabel.TextSize = 0 
	TweenService:Create(
		TextLabel,
		TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
		{TextSize = 12}
		):Play()
		TextLabel.Text = "Open"
         game:GetService("CoreGui").Testui.Enabled = false
	else
		TextLabel.TextSize = 0 
		TweenService:Create(
			TextLabel,
			TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
			{TextSize = 12}
		):Play()
		TextLabel.Text = "Close"
        game:GetService("CoreGui").Testui.Enabled = true
	end
	Toggle = not Toggle
end)
-- NOOB HUB v2
do  local ui =  game:GetService("CoreGui"):FindFirstChild("Testui")  if ui then ui:Destroy() end end

local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local LocalPlayer = game:GetService("Players").LocalPlayer
local Mouse = LocalPlayer:GetMouse()
local tween = game:GetService("TweenService")
local Red = {RainbowColorValue = 0, HueSelectionPosition = 0}
local PresetColor = Color3.fromRGB(66, 134, 255)
local CloseBind = Enum.KeyCode.RightControl

coroutine.wrap(
	function()
		while wait() do
			Red.RainbowColorValue = Red.RainbowColorValue + 1 / 255
			Red.HueSelectionPosition = Red.HueSelectionPosition + 1

			if Red.RainbowColorValue >= 1 then
				Red.RainbowColorValue = 0
			end

			if Red.HueSelectionPosition == 160 then
				Red.HueSelectionPosition = 0
			end
		end
	end
)()

local Testui = Instance.new("ScreenGui")
Testui.Name = "Testui"
Testui.Parent = game.CoreGui
Testui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

local function MakeDraggable(topbarobject, object)
	local Dragging = nil
	local DragInput = nil
	local DragStart = nil
	local StartPosition = nil

	local function Update(input)
		local Delta = input.Position - DragStart
		local pos =
			UDim2.new(
				StartPosition.X.Scale,
				StartPosition.X.Offset + Delta.X,
				StartPosition.Y.Scale,
				StartPosition.Y.Offset + Delta.Y
			)
		local Tween = TweenService:Create(object, TweenInfo.new(0.2), {Position = pos})
		Tween:Play()
	end

	topbarobject.InputBegan:Connect(
		function(input)
			if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
				Dragging = true
				DragStart = input.Position
				StartPosition = object.Position

				input.Changed:Connect(
					function()
						if input.UserInputState == Enum.UserInputState.End then
							Dragging = false
						end
					end
				)
			end
		end
	)

	topbarobject.InputChanged:Connect(
		function(input)
			if
				input.UserInputType == Enum.UserInputType.MouseMovement or
				input.UserInputType == Enum.UserInputType.Touch
			then
				DragInput = input
			end
		end
	)

	UserInputService.InputChanged:Connect(
		function(input)
			if input == DragInput and Dragging then
				Update(input)
			end
		end
	)
end

local function Tween(instance, properties,style,wa)
	if style == nil or "" then
		return Back
	end
	tween:Create(instance,TweenInfo.new(wa,Enum.EasingStyle[style]),{properties}):Play()
end

local ui = {}

function ui:W1n(text,text2,text2Pos,toclose)

	CloseBind = toclose or Enum.KeyCode.RightControl

	if text2Pos == nil then
		text2Pos = 0.35
	end

	local fs = false
	local MainSceen = Instance.new("Frame")
	MainSceen.Name = "MainSceen"
	MainSceen.Parent = Testui
	MainSceen.AnchorPoint = Vector2.new(0.5, 0.5)
	MainSceen.BackgroundColor3 = Color3.fromRGB(5, 5, 5)
	MainSceen.BorderSizePixel = 0
	MainSceen.ClipsDescendants = true
	MainSceen.Position = UDim2.new(0.5, 0, 0.5, 0)
	MainSceen.Size = UDim2.new(0, 550, 0, 300)

	local Main_UiConner = Instance.new("UICorner")
	Main_UiConner.Name = "Main_UiConner"
	Main_UiConner.CornerRadius = UDim.new(0, 8)
	Main_UiConner.Parent = MainSceen

	local Main_UiStroke = Instance.new("UIStroke")

	Main_UiStroke.Thickness = 2
	Main_UiStroke.Name = ""
	Main_UiStroke.Parent = MainSceen
	Main_UiStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
	Main_UiStroke.LineJoinMode = Enum.LineJoinMode.Round
	Main_UiStroke.Color = Color3.fromRGB(30,30,30)
	Main_UiStroke.Transparency = 0

	local ClickFrame = Instance.new("Frame")

	ClickFrame.Name = "ClickFrame"
	ClickFrame.Parent = MainSceen
	ClickFrame.AnchorPoint = Vector2.new(0.5, 0.5)
	ClickFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	ClickFrame.BackgroundTransparency = 1.000
	ClickFrame.ClipsDescendants = true
	ClickFrame.Position = UDim2.new(0.5, 0, 0.0543823242, 0)
	ClickFrame.Size = UDim2.new(0, 550, 0, 30)

	MakeDraggable(ClickFrame,MainSceen)

	local NameReal = Instance.new("TextLabel")

	NameReal.Name = "NameReal"
	NameReal.Parent = MainSceen
	NameReal.AnchorPoint = Vector2.new(0.5, 0.5)
	NameReal.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	NameReal.BackgroundTransparency = 1.000
	NameReal.Position = UDim2.new(0.145454541, 0, 0.0610294119, 0)
	NameReal.Size = UDim2.new(0, 136, 0, 34)
	NameReal.Font = Enum.Font.GothamSemibold
	NameReal.TextColor3 = Color3.fromRGB(255, 255, 255)
	NameReal.TextSize = 13.000
	NameReal.TextTransparency = 0.590
	NameReal.Text = tostring(text)
	NameReal.TextXAlignment = Enum.TextXAlignment.Left

	local NameReal2 = Instance.new("TextLabel")

	NameReal2.Name = "NameReal"
	NameReal2.Parent = MainSceen
	NameReal2.Font = Enum.Font.GothamSemibold
	NameReal2.TextColor3 = Color3.fromRGB(255, 23, 46)
	NameReal2.TextSize = 13.000
	NameReal2.TextTransparency = 0
	NameReal2.TextXAlignment = Enum.TextXAlignment.Left
	NameReal2.AnchorPoint = Vector2.new(0.5, 0.5)
	NameReal2.BackgroundColor3 = Color3.fromRGB(255, 23, 46)
	NameReal2.BackgroundTransparency = 1.000
	NameReal2.Text = tostring(text2)
	NameReal2.Position = UDim2.new(text2Pos, 0, 0.0610294119, 0)
	NameReal2.Size = UDim2.new(0, 136, 0, 34)

	local MainSceen2 = Instance.new("Frame")

	MainSceen2.Name = "MainSceen2"
	MainSceen2.Parent = MainSceen
	MainSceen2.AnchorPoint = Vector2.new(0.5, 0.5)
	MainSceen2.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
	MainSceen2.BorderSizePixel = 0
	MainSceen2.ClipsDescendants = true
	MainSceen2.Position = UDim2.new(0.5, 0, 0.550735235, 0)
	MainSceen2.Size = UDim2.new(0, 530, 0, 252)

	local Main_UiConner2 = Instance.new("UICorner")
	Main_UiConner2.CornerRadius = UDim.new(0, 8)
	Main_UiConner2.Name = "Main_UiConner2"
	Main_UiConner2.Parent = MainSceen2

	local Main_Ui2Stroke = Instance.new("UIStroke")

	Main_Ui2Stroke.Thickness = 1
	Main_Ui2Stroke.Name = ""
	Main_Ui2Stroke.Parent = MainSceen2
	Main_Ui2Stroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
	Main_Ui2Stroke.LineJoinMode = Enum.LineJoinMode.Round
	Main_Ui2Stroke.Color = Color3.fromRGB(50,50,50)
	Main_Ui2Stroke.Transparency = 0

	local ScolTapBarFrame = Instance.new("Frame")

	ScolTapBarFrame.Name = "ScolTapBarFrame"
	ScolTapBarFrame.Parent = MainSceen2
	ScolTapBarFrame.AnchorPoint = Vector2.new(0.5, 0.5)
	ScolTapBarFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	ScolTapBarFrame.BackgroundTransparency = 1.000
	ScolTapBarFrame.BorderSizePixel = 0
	ScolTapBarFrame.ClipsDescendants = true
	ScolTapBarFrame.Position = UDim2.new(0.5, 0, 0.0700000003, 0)
	ScolTapBarFrame.Size = UDim2.new(0, 500, 0, 35)

	local ScrollingFrame_Menubar = Instance.new("ScrollingFrame")

	ScrollingFrame_Menubar.Name = "ScrollingFrame_Menubar"
	ScrollingFrame_Menubar.Parent = ScolTapBarFrame
	ScrollingFrame_Menubar.Active = true
	ScrollingFrame_Menubar.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	ScrollingFrame_Menubar.BackgroundTransparency = 1.000
	ScrollingFrame_Menubar.BorderSizePixel = 0
	ScrollingFrame_Menubar.Size = UDim2.new(0, 500, 0, 35)
	ScrollingFrame_Menubar.CanvasSize = UDim2.new(2, 0, 0, 0)
	ScrollingFrame_Menubar.ScrollBarThickness = 3

	local UIListLayout_Menubar = Instance.new("UIListLayout")

	UIListLayout_Menubar.Name = "UIListLayout_Menubar"
	UIListLayout_Menubar.Parent = ScrollingFrame_Menubar
	UIListLayout_Menubar.FillDirection = Enum.FillDirection.Horizontal
	UIListLayout_Menubar.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout_Menubar.Padding = UDim.new(0, 10)

	local UIPadding_Menubar = Instance.new("UIPadding")

	UIPadding_Menubar.Name = "UIPadding_Menubar"
	UIPadding_Menubar.Parent = ScrollingFrame_Menubar
	UIPadding_Menubar.PaddingTop = UDim.new(0, 2)

	local PageOrders = -1

	local Container_Page = Instance.new("Frame",MainSceen2)
	Container_Page.Name = "Container_Page"
	Container_Page.Parent = MainSceen2
	Container_Page.AnchorPoint = Vector2.new(0.5, 0.5)
	Container_Page.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Container_Page.BackgroundTransparency = 1.000
	Container_Page.Position = UDim2.new(0.499056607, 0, 0.55, 0)
	Container_Page.Size = UDim2.new(0, 511, 0, 200)

	local pagesFolder = Instance.new("Folder")

	pagesFolder.Name = "pagesFolder"
	pagesFolder.Parent = Container_Page

	local UIPage = Instance.new("UIPageLayout",pagesFolder)

	UIPage.Name = "UIPage"
	UIPage.Parent = pagesFolder
	UIPage.SortOrder = Enum.SortOrder.LayoutOrder
	UIPage.EasingDirection = Enum.EasingDirection.InOut
	UIPage.EasingStyle = Enum.EasingStyle.Back
	UIPage.Padding = UDim.new(0, 15)
	UIPage.TweenTime = 0.500

	local uitop = {}

	local NotiFrame = Instance.new("Frame")
	NotiFrame.Name = "NotiFrame"
	NotiFrame.Parent = Testui
	NotiFrame.AnchorPoint = Vector2.new(0.5, 0.5)
	NotiFrame.BackgroundColor3 = Color3.fromRGB(10,10,10)
	NotiFrame.BorderSizePixel = 0
	NotiFrame.Position =  UDim2.new(1, -150, 1, 50)
	NotiFrame.Size = UDim2.new(0, 250, 0, 500)
	NotiFrame.ClipsDescendants = true
	NotiFrame.BackgroundTransparency = 1


	local Notilistlayout = Instance.new("UIListLayout")
	Notilistlayout.Parent = NotiFrame
	Notilistlayout.SortOrder = Enum.SortOrder.LayoutOrder
	Notilistlayout.Padding = UDim.new(0, 30)


	function ui:Notification(titel,text,delays)
		local TitleFrame = Instance.new("Frame")
		TitleFrame.Name = "TitleFrame"
		TitleFrame.Parent = NotiFrame
		TitleFrame.AnchorPoint = Vector2.new(0.5, 0.5)
		TitleFrame.BackgroundColor3 = Color3.fromRGB(10,10,10)
		TitleFrame.BorderSizePixel = 0
		TitleFrame.Position =  UDim2.new(0.5, 0, 0.5,0)
		TitleFrame.Size = UDim2.new(0, 0, 0, 0)
		TitleFrame.ClipsDescendants = true
		TitleFrame.BackgroundTransparency = 0

		local ConnerTitile = Instance.new("UICorner")

		ConnerTitile.CornerRadius = UDim.new(0, 4)
		ConnerTitile.Name = ""
		ConnerTitile.Parent = TitleFrame

		TitleFrame:TweenSizeAndPosition(UDim2.new(0, 250-10, 0, 70),  UDim2.new(0.5, 0, 0.5,0), "Out", "Back", 0.3, true)

		local imagenoti = Instance.new("ImageLabel")

		imagenoti.Parent = TitleFrame
		imagenoti.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		imagenoti.BackgroundTransparency = 1.000
		imagenoti.AnchorPoint = Vector2.new(0.5, 0.5)
		imagenoti.Position = UDim2.new(0.9, 0, 0.5, 0)
		imagenoti.Size = UDim2.new(0, 50, 0, 50)
		--  imagenoti.Image = "https://www.roblox.com/asset-thumbnail/image?assetId=7578496318&width=0&height=0&format=png"

		local txdlid = Instance.new("TextLabel")

		txdlid.Parent = TitleFrame
		txdlid.Name = "TextLabel_Tap"
		txdlid.BackgroundColor3 = Color3.fromRGB(255, 23, 46)
		txdlid.Size =UDim2.new(0, 160, 0,25 )
		txdlid.Font = Enum.Font.GothamBold
		txdlid.Text = titel
		txdlid.TextColor3 = Color3.fromRGB(0, 2000, 255)
		txdlid.TextSize = 13.000
		txdlid.AnchorPoint = Vector2.new(0.5, 0.5)
		txdlid.Position = UDim2.new(0.37, 0, 0.3, 0)
		-- txdlid.TextYAlignment = Enum.TextYAlignment.Top
		txdlid.TextXAlignment = Enum.TextXAlignment.Left
		txdlid.BackgroundTransparency = 1

		local LableFrame = Instance.new("Frame")
		LableFrame.Name = "LableFrame"
		LableFrame.Parent = TitleFrame
		LableFrame.AnchorPoint = Vector2.new(0.5, 0.5)
		LableFrame.BackgroundColor3 = Color3.fromRGB(255, 23, 46)
		LableFrame.BorderSizePixel = 0
		LableFrame.Position =  UDim2.new(0.36, 0, 0.67,0)
		LableFrame.Size = UDim2.new(0, 260, 0,25 )
		LableFrame.ClipsDescendants = true
		LableFrame.BackgroundTransparency = 1

		local TextNoti = Instance.new("TextLabel")

		TextNoti.Parent = LableFrame
		TextNoti.Name = "TextLabel_Tap"
		TextNoti.BackgroundColor3 = Color3.fromRGB(255, 23, 46)
		TextNoti.Size =UDim2.new(0, 260, 0,25 )
		TextNoti.Font = Enum.Font.Gotham
		TextNoti.Text = text
		TextNoti.TextColor3 = Color3.fromRGB(255, 255, 255)
		TextNoti.TextSize = 11.000
		TextNoti.AnchorPoint = Vector2.new(0.5, 0.5)
		TextNoti.Position = UDim2.new(0.7, 0, 0.5, 0)
		-- TextNoti.TextYAlignment = Enum.TextYAlignment.Top
		TextNoti.TextXAlignment = Enum.TextXAlignment.Left
		TextNoti.BackgroundTransparency = 1

		repeat wait() until TitleFrame.Size == UDim2.new(0, 250-10, 0, 70)

		local Time = Instance.new("Frame")
		Time.Name = "Time"
		Time.Parent = TitleFrame
		--Time.AnchorPoint = Vector2.new(0.5, 0.5)
		Time.BackgroundColor3 =  Color3.fromRGB(255, 23, 46)
		Time.BorderSizePixel = 0
		Time.Position =  UDim2.new(0, 0, 0.,0)
		Time.Size = UDim2.new(0, 0,0,0)
		Time.ClipsDescendants = false
		Time.BackgroundTransparency = 0

		local ConnerTitile_Time = Instance.new("UICorner")

		ConnerTitile_Time.CornerRadius = UDim.new(0, 4)
		ConnerTitile_Time.Name = ""
		ConnerTitile_Time.Parent = Time

		Time:TweenSizeAndPosition(UDim2.new(0, 250-10, 0, 3),  UDim2.new(0., 0, 0.,0), "Out", "Back", 0.3, true)
		repeat wait() until Time.Size == UDim2.new(0, 250-10, 0, 3)

		TweenService:Create(
			Time,
			TweenInfo.new(tonumber(delays), Enum.EasingStyle.Linear, Enum.EasingDirection.InOut),
			{Size = UDim2.new(0, 0, 0, 3)} -- UDim2.new(0, 128, 0, 25)
		):Play()
		delay(tonumber(delays),function()
			TweenService:Create(
				TitleFrame,
				TweenInfo.new(0.4, Enum.EasingStyle.Back, Enum.EasingDirection.InOut),
				{Size = UDim2.new(0, 0, 0, 0)} -- UDim2.new(0, 128, 0, 25)
			):Play()
			wait(0.3)
			TitleFrame:Destroy()
		end
		)
	end

	local uitoggled = false
	UserInputService.InputBegan:Connect(function(io, p)
		if io.KeyCode == CloseBind then
			if uitoggled == false then
				tween:Create(MainSceen,TweenInfo.new(0.4,Enum.EasingStyle.Back,Enum.EasingDirection.In),{Size = UDim2.new(0, 0, 0, 0)}):Play()
				tween:Create(Main_UiStroke,TweenInfo.new(0.4,Enum.EasingStyle.Back,Enum.EasingDirection.In),{Thickness = 0}):Play()
				uitoggled = true
				wait(.5)
				ui:Notification("UI Toggle","Has Been Close",2.5)
			else
				MainSceen:TweenSize(UDim2.new(0, 550, 0, 300), Enum.EasingDirection.Out, Enum.EasingStyle.Back, .4, true)
				tween:Create(Main_UiStroke,TweenInfo.new(0.4,Enum.EasingStyle.Back,Enum.EasingDirection.In),{Thickness = 2}):Play()
				uitoggled = false
				wait(.5)
				ui:Notification("UI Toggle","Has Been Open",2.5)
			end
		end
	end)

	function uitop:Tap(text)
		PageOrders = PageOrders + 1
		local name = tostring(text) or tostring(math.random(1,5000))

		local Frame_Tap = Instance.new("Frame")
		Frame_Tap.Name = text.."Server"
		Frame_Tap.Parent = ScrollingFrame_Menubar
		Frame_Tap.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Frame_Tap.BackgroundTransparency = 1.000
		Frame_Tap.Position = UDim2.new(0, 0, 0.272727281, 0)
		Frame_Tap.Size = UDim2.new(0, 90, 0, 16)

		local TextLabel_Tap = Instance.new("TextLabel")
		TextLabel_Tap.Name = "TextLabel_Tap"
		TextLabel_Tap.Parent = Frame_Tap
		TextLabel_Tap.Active = true
		TextLabel_Tap.AnchorPoint = Vector2.new(0.5, 0.5)
		TextLabel_Tap.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		TextLabel_Tap.BorderSizePixel = 0
		TextLabel_Tap.Position = UDim2.new(0.5, 0, 0.800000012, 0)
		TextLabel_Tap.Font = Enum.Font.SourceSans
		TextLabel_Tap.Text = ""
		TextLabel_Tap.TextColor3 = Color3.fromRGB(0, 0, 0)
		TextLabel_Tap.TextSize = 14.000

		local TextButton_Tap = Instance.new("TextButton")

		TextButton_Tap.Name = "TextButton_Tap"
		TextButton_Tap.Parent = Frame_Tap
		TextButton_Tap.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		TextButton_Tap.BackgroundTransparency = 1.000
		TextButton_Tap.Position = UDim2.new(0.0480000004, 0, 0.449999988, 0)
		TextButton_Tap.Size = UDim2.new(0, 80, 0, 20)
		TextButton_Tap.Font = Enum.Font.Gotham
		TextButton_Tap.Text = tostring(text)
		TextButton_Tap.TextColor3 = Color3.fromRGB(155, 155, 155)
		TextButton_Tap.TextSize = 12.000

		local MainPage = Instance.new("Frame")

		MainPage.Name = name.."_MainPage"
		MainPage.Parent = pagesFolder
		MainPage.Active = true
		MainPage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		MainPage.BackgroundTransparency = 1
		MainPage.ClipsDescendants = true
		MainPage.Position = UDim2.new(0.0039138943, 0, 0, 0)
		MainPage.Size = UDim2.new(0, 516, 0, 200)
		MainPage.LayoutOrder = PageOrders

		TextButton_Tap.MouseButton1Click:connect(function()
			if MainPage.Name == text.."_MainPage" then
				UIPage:JumpToIndex(MainPage.LayoutOrder)

			end
			for i ,v in next , ScrollingFrame_Menubar:GetChildren() do
				if v:IsA("Frame") then
					TweenService:Create(
						v.TextButton_Tap,
						TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{TextColor3 = Color3.fromRGB(155, 155, 155)}
					):Play()
				end

				TweenService:Create(
					TextButton_Tap,
					TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
					{TextColor3 = Color3.fromRGB(255, 23, 46)}
				):Play()
			end
		end)

		if fs == false then
			-- TweenService:Create(
			--     TextLabel_Tap,
			--     TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
			--     {Size = UDim2.new(0, 70, 0, 2)}
			-- ):Play()
			TweenService:Create(
				TextButton_Tap,
				TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
				{TextColor3 = Color3.fromRGB(255, 23, 46)}
			):Play()

			MainPage.Visible = true
			Frame_Tap.Name  = text .. "Server"
			fs  = true
		end

		local ScrollingFrame_Pagefrist = Instance.new("ScrollingFrame")
		ScrollingFrame_Pagefrist.Name = "ScrollingFrame_Pagefrist"
		ScrollingFrame_Pagefrist.Parent = MainPage
		ScrollingFrame_Pagefrist.Active = true
		ScrollingFrame_Pagefrist.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
		ScrollingFrame_Pagefrist.BorderSizePixel = 0
		ScrollingFrame_Pagefrist.Size = UDim2.new(0, 518, 0, 200)
		ScrollingFrame_Pagefrist.ScrollBarThickness = 4

		local UIGridLayout_Pagefrist = Instance.new("UIGridLayout")
		local UIPadding_Pagefrist = Instance.new("UIPadding")

		UIGridLayout_Pagefrist.Name = "UIGridLayout_Pagefrist"
		UIGridLayout_Pagefrist.Parent = ScrollingFrame_Pagefrist
		UIGridLayout_Pagefrist.SortOrder = Enum.SortOrder.LayoutOrder
		UIGridLayout_Pagefrist.CellPadding = UDim2.new(0, 13, 0, 15)
		UIGridLayout_Pagefrist.CellSize = UDim2.new(0, 240, 0, 178)

		UIPadding_Pagefrist.Name = "UIPadding_Pagefrist"
		UIPadding_Pagefrist.Parent = ScrollingFrame_Pagefrist
		UIPadding_Pagefrist.PaddingLeft = UDim.new(0, 10)
		UIPadding_Pagefrist.PaddingTop = UDim.new(0, 10)

		local uipage = {}

		function uipage:newpage()
			local Pageframe = Instance.new("Frame")
			Pageframe.Name = "Pageframe"
			Pageframe.Parent = ScrollingFrame_Pagefrist
			Pageframe.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
			Pageframe.BorderColor3 = Color3.fromRGB(15, 15, 15)
			Pageframe.Position = UDim2.new(0, 0, -1.12658226, 0)
			Pageframe.Size = UDim2.new(0, 240, 0, 328)

			local ScrollingFrame_Pageframe = Instance.new("ScrollingFrame")
			ScrollingFrame_Pageframe.Name = "ScrollingFrame_Pageframe"
			ScrollingFrame_Pageframe.Parent = Pageframe
			ScrollingFrame_Pageframe.Active = true
			ScrollingFrame_Pageframe.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
			ScrollingFrame_Pageframe.BackgroundTransparency = 1.000
			ScrollingFrame_Pageframe.BorderColor3 = Color3.fromRGB(27, 42, 53)
			ScrollingFrame_Pageframe.BorderSizePixel = 0
			ScrollingFrame_Pageframe.Size = UDim2.new(0, 240, 0, 178)
			ScrollingFrame_Pageframe.ScrollBarThickness = 3
			ScrollingFrame_Pageframe.ClipsDescendants = true

			local UIPadding_Pageframe = Instance.new("UIPadding")
			local UIListLayout_Pageframe = Instance.new("UIListLayout")

			UIPadding_Pageframe.Name = "UIPadding_Pageframe"
			UIPadding_Pageframe.Parent = ScrollingFrame_Pageframe
			UIPadding_Pageframe.PaddingLeft = UDim.new(0, 15)
			UIPadding_Pageframe.PaddingTop = UDim.new(0, 10)

			UIListLayout_Pageframe.Name = "UIListLayout_Pageframe"
			UIListLayout_Pageframe.Parent = ScrollingFrame_Pageframe
			UIListLayout_Pageframe.SortOrder = Enum.SortOrder.LayoutOrder
			UIListLayout_Pageframe.Padding = UDim.new(0, 7)

			local Pageframe_UICorner = Instance.new("UICorner")

			Pageframe_UICorner.Name = "Pageframe_UICorner"
			Pageframe_UICorner.Parent = Pageframe
			Pageframe_UICorner.CornerRadius = UDim.new(0, 8)

			local Pageframe_UIStroke = Instance.new("UIStroke")

			Pageframe_UIStroke.Thickness = 1
			Pageframe_UIStroke.Name = ""
			Pageframe_UIStroke.Parent = Pageframe
			Pageframe_UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Contextual
			Pageframe_UIStroke.LineJoinMode = Enum.LineJoinMode.Round
			Pageframe_UIStroke.Color = Color3.fromRGB(0,0,0)
			Pageframe_UIStroke.Transparency = 0

			UIListLayout_Pageframe:GetPropertyChangedSignal('AbsoluteContentSize'):Connect(function()
				ScrollingFrame_Pageframe.CanvasSize = UDim2.new(0,0,0,UIListLayout_Pageframe.AbsoluteContentSize.Y + 120 )
			end)

			UIGridLayout_Pagefrist:GetPropertyChangedSignal('AbsoluteContentSize'):Connect(function()
				ScrollingFrame_Pagefrist.CanvasSize = UDim2.new(0,0,0,UIGridLayout_Pagefrist.AbsoluteContentSize.Y + 50 )
			end)

			game:GetService("RunService").Stepped:Connect(function ()
				pcall(function ()
					ScrollingFrame_Menubar.CanvasSize = UDim2.new(0,  UIListLayout_Menubar.AbsoluteContentSize.X, 0,0)
					ScrollingFrame_Pageframe.CanvasSize = UDim2.new(0,0,0,UIListLayout_Pageframe.AbsoluteContentSize.Y +20 )
					ScrollingFrame_Pagefrist.CanvasSize = UDim2.new(0,0,0,UIGridLayout_Pagefrist.AbsoluteContentSize.Y + 20)
				end)
			end)

			local ui4 = {}

			function ui4:Toggle(text,config,callback)
				local Toggle = Instance.new("Frame")

				Toggle.Name = "Toggle"
				Toggle.Parent = ScrollingFrame_Pageframe
				Toggle.Active = true
				Toggle.AnchorPoint = Vector2.new(0.5, 0.5)
				Toggle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Toggle.BackgroundTransparency = 1
				Toggle.BorderColor3 = Color3.fromRGB(27, 42, 53)
				Toggle.Position = UDim2.new(0.5, 0, 0.5, 0)
				Toggle.Size = UDim2.new(0, 250, 0, 35)

				local TextButton_Toggle = Instance.new("TextButton")
				TextButton_Toggle.Name = "TextButton_Toggle"
				TextButton_Toggle.Parent = Toggle
				TextButton_Toggle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				TextButton_Toggle.BackgroundTransparency = 1.000
				TextButton_Toggle.Size = UDim2.new(0, 213, 0, 35)
				TextButton_Toggle.Font = Enum.Font.SourceSans
				TextButton_Toggle.Text = " "
				TextButton_Toggle.TextColor3 = Color3.fromRGB(0, 0, 0)
				TextButton_Toggle.TextSize = 14.000

				local TextButton_2_Toggle = Instance.new("TextButton")

				TextButton_2_Toggle.Name = "TextButton_2_Toggle"
				TextButton_2_Toggle.Parent = TextButton_Toggle
				TextButton_2_Toggle.AnchorPoint = Vector2.new(0.5, 0.5)
				TextButton_2_Toggle.BackgroundColor3 = Color3.fromRGB(5,5,5)
				TextButton_2_Toggle.BorderSizePixel = 0
				TextButton_2_Toggle.Position = UDim2.new(0.0807512328, 0, 0.5, 0)
				TextButton_2_Toggle.Size = UDim2.new(0, 21, 0, 21)
				TextButton_2_Toggle.AutoButtonColor = false
				TextButton_2_Toggle.Font = Enum.Font.SourceSans
				TextButton_2_Toggle.Text = " "
				TextButton_2_Toggle.TextColor3 = Color3.fromRGB(0, 0, 0)
				TextButton_2_Toggle.TextSize = 14.000

				local Main_UiStroke = Instance.new("UIStroke")

				Main_UiStroke.Thickness = 1
				Main_UiStroke.Name = ""
				Main_UiStroke.Parent = TextButton_2_Toggle
				Main_UiStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
				Main_UiStroke.LineJoinMode = Enum.LineJoinMode.Round
				Main_UiStroke.Color = Color3.fromRGB(0, 0, 0)
				Main_UiStroke.Transparency = 0

				local TextButton_2_Toggle2 = Instance.new("TextButton")

				TextButton_2_Toggle2.Name = "TextButton_2_Toggle"
				TextButton_2_Toggle2.Parent = TextButton_2_Toggle
				TextButton_2_Toggle2.BackgroundColor3 = Color3.fromRGB(7,7,7)
				TextButton_2_Toggle2.BorderSizePixel = 0
				TextButton_2_Toggle2.Position = UDim2.new(0, 2, 0, 2)
				TextButton_2_Toggle2.Size = UDim2.new(0, 17, 0, 17)
				TextButton_2_Toggle2.AutoButtonColor = false
				TextButton_2_Toggle2.Font = Enum.Font.SourceSans
				TextButton_2_Toggle2.Text = " "
				TextButton_2_Toggle2.TextColor3 = Color3.fromRGB(0, 0, 0)
				TextButton_2_Toggle2.TextSize = 14.000

				local UICorner2 = Instance.new("UICorner")

				UICorner2.CornerRadius = UDim.new(0, 6)
				UICorner2.Parent = TextButton_2_Toggle2

				local Main_UiStroke2 = Instance.new("UIStroke")

				Main_UiStroke2.Thickness = 1
				Main_UiStroke2.Name = ""
				Main_UiStroke2.Parent = TextButton_2_Toggle2
				Main_UiStroke2.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
				Main_UiStroke2.LineJoinMode = Enum.LineJoinMode.Round
				Main_UiStroke2.Color = Color3.fromRGB(0, 0, 0)
				Main_UiStroke2.Transparency = 0

				local UICorner = Instance.new("UICorner")

				UICorner.CornerRadius = UDim.new(0, 6)
				UICorner.Parent = TextButton_2_Toggle

				local ImageButton = Instance.new("ImageButton")

				ImageButton.Parent = TextButton_2_Toggle
				ImageButton.AnchorPoint = Vector2.new(0.5, 0.5)
				ImageButton.BackgroundColor3 = Color3.fromRGB(255, 23, 46)
				ImageButton.BackgroundTransparency = 0
				ImageButton.BorderSizePixel = 0
				ImageButton.AutoButtonColor = false
				ImageButton.Position = UDim2.new(0.5, 0, 0.5, 0)
				ImageButton.Size = UDim2.new(0, 0, 0, 0)

				local UICorner6 = Instance.new("UICorner")

				UICorner6.CornerRadius = UDim.new(0, 6)
				UICorner6.Parent = ImageButton

				local TextLabel_Toggle = Instance.new("TextLabel")

				TextLabel_Toggle.Name = "TextLabel_Toggle"
				TextLabel_Toggle.Parent = Toggle
				TextLabel_Toggle.AnchorPoint = Vector2.new(0.5, 0.5)
				TextLabel_Toggle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				TextLabel_Toggle.BackgroundTransparency = 1
				TextLabel_Toggle.Position = UDim2.new(0.55, 0, 0.5, 0)
				TextLabel_Toggle.Size = UDim2.new(0, 200, 0, 25)
				TextLabel_Toggle.Font = Enum.Font.Gotham
				TextLabel_Toggle.TextColor3 = Color3.fromRGB(255, 255, 255)
				TextLabel_Toggle.TextSize = 12.000
				TextLabel_Toggle.Text = text
				TextLabel_Toggle.TextWrapped = true
				TextLabel_Toggle.TextXAlignment = Enum.TextXAlignment.Left

				local Main_UiStroke2TextLabel_Toggle = Instance.new("UIStroke")

				Main_UiStroke2TextLabel_Toggle.Thickness = 1
				Main_UiStroke2TextLabel_Toggle.Name = ""
				Main_UiStroke2TextLabel_Toggle.Parent = TextLabel_Toggle
				Main_UiStroke2TextLabel_Toggle.ApplyStrokeMode = Enum.ApplyStrokeMode.Contextual
				Main_UiStroke2TextLabel_Toggle.LineJoinMode = Enum.LineJoinMode.Round
				Main_UiStroke2TextLabel_Toggle.Color = Color3.fromRGB(0, 0, 0)
				Main_UiStroke2TextLabel_Toggle.Transparency = 0

				TextButton_Toggle.MouseEnter:Connect(function()
					TweenService:Create(
						TextLabel_Toggle,
						TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{TextColor3 = Color3.fromRGB(155,155,155)} -- UDim2.new(0, 128, 0, 25)
					):Play()
					TweenService:Create(
						TextButton_2_Toggle2,
						TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{BackgroundColor3 = Color3.fromRGB(10,10,10)} -- UDim2.new(0, 128, 0, 25)
					):Play()
				end)

				TextButton_Toggle.MouseLeave:Connect(function()
					TweenService:Create(
						TextLabel_Toggle,
						TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{TextColor3 = Color3.fromRGB(255, 255, 255)} -- UDim2.new(0, 128, 0, 25)
					):Play()
					TweenService:Create(
						TextButton_2_Toggle2,
						TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{BackgroundColor3 = Color3.fromRGB(7,7,7)} -- UDim2.new(0, 128, 0, 25)
					):Play()
				end)
				local check = {toogle = false ; loacker = true ; togfunction = {

				};}

				TextButton_Toggle.MouseButton1Click:Connect(function()
					if check.toogle == false and check.loacker == true  then
						TweenService:Create(
							ImageButton,
							TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
							{Size = UDim2.new(0, 25, 0, 25)} -- UDim2.new(0, 128, 0, 25)
						):Play()
						wait(0.1)
						TweenService:Create(
							ImageButton,
							TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
							{Size = UDim2.new(0, 21, 0, 21)} -- UDim2.new(0, 128, 0, 25)
						):Play()
					elseif  check.loacker ==  true then
						TweenService:Create(
							ImageButton,
							TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
							{Size = UDim2.new(0, 25, 0, 25)} -- UDim2.new(0, 128, 0, 25)
						):Play()
						wait(0.1)
						TweenService:Create(
							ImageButton,
							TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
							{Size = UDim2.new(0, 0, 0, 0)} -- UDim2.new(0, 128, 0, 25)
						):Play()
					end
					if  check.loacker == true  then
						check.toogle = not check.toogle
						callback(check.toogle)
					end
				end)

				TextButton_2_Toggle.MouseButton1Click:Connect(function()
					if check.toogle == false and check.loacker == true  then
						TweenService:Create(
							ImageButton,
							TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
							{Size = UDim2.new(0, 25, 0, 25)} -- UDim2.new(0, 128, 0, 25)
						):Play()
						wait(0.1)
						TweenService:Create(
							ImageButton,
							TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
							{Size = UDim2.new(0, 21, 0, 21)} -- UDim2.new(0, 128, 0, 25)
						):Play()
					elseif  check.loacker ==  true then
						TweenService:Create(
							ImageButton,
							TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
							{Size = UDim2.new(0, 25, 0, 25)} -- UDim2.new(0, 128, 0, 25)
						):Play()
						wait(0.1)
						TweenService:Create(
							ImageButton,
							TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
							{Size = UDim2.new(0, 0, 0, 0)} -- UDim2.new(0, 128, 0, 25)
						):Play()
					end
					if  check.loacker == true  then
						check.toogle = not check.toogle
						callback(check.toogle)
					end
				end)

				TextButton_2_Toggle2.MouseButton1Click:Connect(function()
					if check.toogle == false and check.loacker == true  then
						TweenService:Create(
							ImageButton,
							TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
							{Size = UDim2.new(0, 25, 0, 25)} -- UDim2.new(0, 128, 0, 25)
						):Play()
						wait(0.1)
						TweenService:Create(
							ImageButton,
							TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
							{Size = UDim2.new(0, 21, 0, 21)} -- UDim2.new(0, 128, 0, 25)
						):Play()
					elseif  check.loacker ==  true then
						TweenService:Create(
							ImageButton,
							TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
							{Size = UDim2.new(0, 25, 0, 25)} -- UDim2.new(0, 128, 0, 25)
						):Play()
						wait(0.1)
						TweenService:Create(
							ImageButton,
							TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
							{Size = UDim2.new(0, 0, 0, 0)} -- UDim2.new(0, 128, 0, 25)
						):Play()
					end
					if  check.loacker == true  then
						check.toogle = not check.toogle
						callback(check.toogle)
					end
				end)

				ImageButton.MouseButton1Click:Connect(function()
					if check.toogle == false and check.loacker == true  then
						TweenService:Create(
							ImageButton,
							TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
							{Size = UDim2.new(0, 25, 0, 25)} -- UDim2.new(0, 128, 0, 25)
						):Play()
						wait(0.1)
						TweenService:Create(
							ImageButton,
							TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
							{Size = UDim2.new(0, 21, 0, 21)} -- UDim2.new(0, 128, 0, 25)
						):Play()
					elseif  check.loacker ==  true then
						TweenService:Create(
							ImageButton,
							TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
							{Size = UDim2.new(0, 25, 0, 25)} -- UDim2.new(0, 128, 0, 25)
						):Play()
						wait(0.1)
						TweenService:Create(
							ImageButton,
							TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
							{Size = UDim2.new(0, 0, 0, 0)} -- UDim2.new(0, 128, 0, 25)
						):Play()
					end
					if  check.loacker == true  then
						check.toogle = not check.toogle
						callback(check.toogle)
					end
				end)

				if config == true then
					TweenService:Create(
						ImageButton,
						TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{Size = UDim2.new(0, 25, 0, 25)} -- UDim2.new(0, 128, 0, 25)
					):Play()
					wait(0.1)
					TweenService:Create(
						ImageButton,
						TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{Size = UDim2.new(0, 21, 0, 21)} -- UDim2.new(0, 128, 0, 25)
					):Play()
					check.toogle = true
					callback(check.toogle)
				end
				local lockerframe = Instance.new("Frame")

				lockerframe.Name = "lockerframe"
				lockerframe.Parent = Toggle
				lockerframe.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
				lockerframe.BackgroundTransparency = 1
				lockerframe.BorderSizePixel = 0
				lockerframe.Size = UDim2.new(0, 300, 0, 35)
				lockerframe.Position = UDim2.new(0.5, 0, 0.5, 0)
				lockerframe.AnchorPoint = Vector2.new(0.5, 0.5)

				local LockerImageLabel = Instance.new("ImageLabel")
				LockerImageLabel.Parent = lockerframe
				LockerImageLabel.BackgroundTransparency = 1.000
				LockerImageLabel.BorderSizePixel = 0
				LockerImageLabel.Position = UDim2.new(0.45, 0, 0.5, 0)
				LockerImageLabel.AnchorPoint = Vector2.new(0.5, 0.5)
				LockerImageLabel.Size = UDim2.new(0, 0, 0, 0)
				LockerImageLabel.Image = "http://www.roblox.com/asset/?id=6031082533"

				function check.togfunction:lock()
					TweenService:Create(
						lockerframe,
						TweenInfo.new(.4, Enum.EasingStyle.Sine, Enum.EasingDirection.Out,0.1),
						{BackgroundTransparency = 0.7}
					):Play()
					wait(0.5)
					TweenService:Create(
						LockerImageLabel,
						TweenInfo.new(.2, Enum.EasingStyle.Bounce, Enum.EasingDirection.Out,0.1),
						{Size = UDim2.new(0, 25, 0, 25)}
					):Play()

					check.loacker  = false
				end
				function check.togfunction:unlock()
					TweenService:Create(
						lockerframe,
						TweenInfo.new(.4, Enum.EasingStyle.Sine, Enum.EasingDirection.Out,0.1),
						{BackgroundTransparency = 1}
					):Play()
					wait(0.5)
					TweenService:Create(
						LockerImageLabel,
						TweenInfo.new(.2, Enum.EasingStyle.Bounce, Enum.EasingDirection.Out,0.1),
						{Size = UDim2.new(0, 0, 0, 0)}
					):Play()
					check.loacker  = true
				end
				return  check.togfunction
			end
			function ui4:ToggleS(text,config,callback)
				local Toggle = Instance.new("Frame")

				Toggle.Name = "Toggle"
				Toggle.Parent = ScrollingFrame_Pageframe
				Toggle.AnchorPoint = Vector2.new(0.5, 0.5)
				Toggle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Toggle.BackgroundTransparency = 1.000
				Toggle.Position = UDim2.new(0.5, 0, 0.5, 0)
				Toggle.Size = UDim2.new(0, 210, 0, 30)

				local Toggle_2_Toggle_UIStroke = Instance.new("UIStroke")

				Toggle_2_Toggle_UIStroke.Thickness = 1
				Toggle_2_Toggle_UIStroke.Name = ""
				Toggle_2_Toggle_UIStroke.Parent = Toggle
				Toggle_2_Toggle_UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
				Toggle_2_Toggle_UIStroke.LineJoinMode = Enum.LineJoinMode.Round
				Toggle_2_Toggle_UIStroke.Color = Color3.fromRGB(255, 46, 46)
				Toggle_2_Toggle_UIStroke.Transparency = 0

				local Toggle_Pageframe_Uiconner = Instance.new("UICorner")

				Toggle_Pageframe_Uiconner.CornerRadius = UDim.new(0, 4)
				Toggle_Pageframe_Uiconner.Name = "TextButton_Pageframe_Uiconner"
				Toggle_Pageframe_Uiconner.Parent = Toggle

				local TextButton_Toggle = Instance.new("TextButton")

				TextButton_Toggle.Name = "TextButton_Toggle"
				TextButton_Toggle.Parent = Toggle
				TextButton_Toggle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				TextButton_Toggle.BackgroundTransparency = 1.000
				TextButton_Toggle.Size = UDim2.new(0, 210, 0, 30)
				TextButton_Toggle.AutoButtonColor = false
				TextButton_Toggle.Font = Enum.Font.SourceSans
				TextButton_Toggle.Text = " "
				TextButton_Toggle.TextColor3 = Color3.fromRGB(0, 0, 0)
				TextButton_Toggle.TextSize = 14.000

				local TextButton_2_Toggle = Instance.new("TextButton")

				TextButton_2_Toggle.Name = "TextButton_2_Toggle"
				TextButton_2_Toggle.Parent = TextButton_Toggle
				TextButton_2_Toggle.AnchorPoint = Vector2.new(0.5, 0.5)
				TextButton_2_Toggle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				TextButton_2_Toggle.BorderSizePixel = 0
				TextButton_2_Toggle.Position = UDim2.new(0.87, 0, 0.5, 0)
				TextButton_2_Toggle.Size = UDim2.new(0, 43, 0, 19)
				TextButton_2_Toggle.AutoButtonColor = false
				TextButton_2_Toggle.Font = Enum.Font.SourceSans
				TextButton_2_Toggle.Text = " "
				TextButton_2_Toggle.TextColor3 = Color3.fromRGB(0, 0, 0)
				TextButton_2_Toggle.TextSize = 14.000

				local TextButton_Pageframe_Uiconner = Instance.new("UICorner")

				TextButton_Pageframe_Uiconner.CornerRadius = UDim.new(0, 30)
				TextButton_Pageframe_Uiconner.Name = "TextButton_Pageframe_Uiconner"
				TextButton_Pageframe_Uiconner.Parent = TextButton_2_Toggle

				local TextButton_3_Toggle = Instance.new("TextButton")

				TextButton_3_Toggle.Name = "TextButton_3_Toggle"
				TextButton_3_Toggle.Parent = TextButton_2_Toggle
				TextButton_3_Toggle.AnchorPoint = Vector2.new(0.5, 0.5)
				TextButton_3_Toggle.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
				TextButton_3_Toggle.BorderSizePixel = 0
				TextButton_3_Toggle.Position = UDim2.new(0, 10, 0.5, 0)
				TextButton_3_Toggle.Size = UDim2.new(0, 17, 0, 17)
				TextButton_3_Toggle.AutoButtonColor = false
				TextButton_3_Toggle.Font = Enum.Font.SourceSans
				TextButton_3_Toggle.Text = " "
				TextButton_3_Toggle.TextColor3 = Color3.fromRGB(0, 0, 0)
				TextButton_3_Toggle.TextSize = 14.000

				local TextButton_Pageframe_Uiconner2 = Instance.new("UICorner")

				TextButton_Pageframe_Uiconner2.CornerRadius = UDim.new(0, 30)
				TextButton_Pageframe_Uiconner2.Name = "TextButton_Pageframe_Uiconner2"
				TextButton_Pageframe_Uiconner2.Parent = TextButton_3_Toggle

				local TextLabel_Toggle = Instance.new("TextLabel")

				TextLabel_Toggle.Name = "TextLabel_Toggle"
				TextLabel_Toggle.Parent = Toggle
				TextLabel_Toggle.AnchorPoint = Vector2.new(0.5, 0.5)
				TextLabel_Toggle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				TextLabel_Toggle.BackgroundTransparency = 1
				TextLabel_Toggle.ClipsDescendants = true
				TextLabel_Toggle.Position = UDim2.new(0.35, 0, 0.5, 0)
				TextLabel_Toggle.Size = UDim2.new(0, 155, 0, 31)
				TextLabel_Toggle.Font = Enum.Font.GothamSemibold
				TextLabel_Toggle.Text = text
				TextLabel_Toggle.TextColor3 = Color3.fromRGB(255, 255, 255)
				TextLabel_Toggle.TextSize = 11.000
				TextLabel_Toggle.TextWrapped = true
				TextLabel_Toggle.TextXAlignment = Enum.TextXAlignment.Center

				local check = {toogle = false ; loacker = true ; togfunction = {

				};}

				TextButton_Toggle.MouseButton1Click:Connect(function()
					if check.toogle == false and check.loacker == true  then
						TweenService:Create(
							TextButton_3_Toggle,
							TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
							{BackgroundColor3 =  Color3.fromRGB(255, 23, 46)} -- UDim2.new(0, 128, 0, 25)
						):Play()
						TweenService:Create(
							Toggle_2_Toggle_UIStroke,
							TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
							{Color =  Color3.fromRGB(255, 23, 46)} -- UDim2.new(0, 128, 0, 25)
						):Play()
						TweenService:Create(
							TextButton_2_Toggle,
							TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
							{BackgroundColor3 =  Color3.fromRGB(255, 255, 255)} -- UDim2.new(0, 128, 0, 25)
						):Play()
						TextButton_3_Toggle:TweenSizeAndPosition(UDim2.new(0, 17, 0, 17), UDim2.new(0.76, 0, 0.5, 0), "Out", "Quad", 0.1, true)
					elseif  check.loacker ==  true then
						TweenService:Create(
							Toggle_2_Toggle_UIStroke,
							TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
							{Color =  Color3.fromRGB(0, 0, 0)} -- UDim2.new(0, 128, 0, 25)
						):Play()
						TweenService:Create(
							TextButton_3_Toggle,
							TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
							{BackgroundColor3 =  Color3.fromRGB(255, 46, 46)} -- UDim2.new(0, 128, 0, 25)
						):Play()
						TweenService:Create(
							TextButton_2_Toggle,
							TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
							{BackgroundColor3 =  Color3.fromRGB(255, 255, 255)} -- UDim2.new(0, 128, 0, 25)
						):Play()
						TextButton_3_Toggle:TweenSizeAndPosition(UDim2.new(0, 17, 0, 17), UDim2.new(0, 10, 0.5, 0), "Out", "Quad", 0.1, true)
					end
					if  check.loacker == true  then
						check.toogle = not check.toogle
						callback(check.toogle)
					end
				end)

				TextButton_3_Toggle.MouseButton1Click:Connect(function()
					if check.toogle == false and check.loacker == true  then
						TweenService:Create(
							TextButton_3_Toggle,
							TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
							{BackgroundColor3 =  Color3.fromRGB(255, 23, 46)} -- UDim2.new(0, 128, 0, 25)
						):Play()
						TweenService:Create(
							Toggle_2_Toggle_UIStroke,
							TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
							{Color =  Color3.fromRGB(255, 23, 46)} -- UDim2.new(0, 128, 0, 25)
						):Play()
						TweenService:Create(
							TextButton_2_Toggle,
							TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
							{BackgroundColor3 =  Color3.fromRGB(255, 255, 255)} -- UDim2.new(0, 128, 0, 25)
						):Play()
						TextButton_3_Toggle:TweenSizeAndPosition(UDim2.new(0, 17, 0, 17), UDim2.new(0.76, 0, 0.5, 0), "Out", "Quad", 0.1, true)
					elseif  check.loacker ==  true then
						TweenService:Create(
							Toggle_2_Toggle_UIStroke,
							TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
							{Color =  Color3.fromRGB(0, 0, 0)} -- UDim2.new(0, 128, 0, 25)
						):Play()
						TweenService:Create(
							TextButton_3_Toggle,
							TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
							{BackgroundColor3 =  Color3.fromRGB(255, 46, 46)} -- UDim2.new(0, 128, 0, 25)
						):Play()
						TweenService:Create(
							TextButton_2_Toggle,
							TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
							{BackgroundColor3 =  Color3.fromRGB(255, 255, 255)} -- UDim2.new(0, 128, 0, 25)
						):Play()
						TextButton_3_Toggle:TweenSizeAndPosition(UDim2.new(0, 17, 0, 17), UDim2.new(0, 10, 0.5, 0), "Out", "Quad", 0.1, true)
					end
					if  check.loacker == true  then
						check.toogle = not check.toogle
						callback(check.toogle)
					end
				end)

				if config == true then
					TweenService:Create(
						TextButton_3_Toggle,
						TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{BackgroundColor3 =  Color3.fromRGB(255, 23, 46)} -- UDim2.new(0, 128, 0, 25)
					):Play()
					TweenService:Create(
						Toggle_2_Toggle_UIStroke,
						TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{Color =  Color3.fromRGB(255, 23, 46)} -- UDim2.new(0, 128, 0, 25)
					):Play()
					TweenService:Create(
						TextButton_2_Toggle,
						TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{BackgroundColor3 =  Color3.fromRGB(255, 255, 255)} -- UDim2.new(0, 128, 0, 25)
					):Play()
					TextButton_3_Toggle:TweenSizeAndPosition(UDim2.new(0, 17, 0, 17), UDim2.new(0.76, 0, 0.5, 0), "Out", "Quad", 0.1, true)
					check.toogle = true
					callback(check.toogle)
				end
				local lockerframe = Instance.new("Frame")

				lockerframe.Name = "lockerframe"
				lockerframe.Parent = Toggle
				lockerframe.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
				lockerframe.BackgroundTransparency = 1
				lockerframe.BorderSizePixel = 0
				lockerframe.Size = UDim2.new(0, 245, 0, 35)
				lockerframe.Position = UDim2.new(0.5, 0, 0.5, 0)
				lockerframe.AnchorPoint = Vector2.new(0.5, 0.5)

				local LockerImageLabel = Instance.new("ImageLabel")
				LockerImageLabel.Parent = lockerframe
				LockerImageLabel.BackgroundTransparency = 1.000
				LockerImageLabel.BorderSizePixel = 0
				LockerImageLabel.Position = UDim2.new(0.5, 0, 0.5, 0)
				LockerImageLabel.AnchorPoint = Vector2.new(0.5, 0.5)
				LockerImageLabel.Size = UDim2.new(0, 0, 0, 0)
				LockerImageLabel.Image = "http://www.roblox.com/asset/?id=3926305904"
				LockerImageLabel.ImageRectOffset = Vector2.new(404, 364)
				LockerImageLabel.ImageRectSize = Vector2.new(36, 36)
				LockerImageLabel.ImageColor3 = Color3.fromRGB(255,25,25)

				function check.togfunction:lock()
					TweenService:Create(
						lockerframe,
						TweenInfo.new(.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out,0.1),
						{BackgroundTransparency = 0.7}
					):Play()
					TweenService:Create(
						LockerImageLabel,
						TweenInfo.new(.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out,0.1),
						{Size = UDim2.new(0, 25, 0, 25)}
					):Play()

					check.loacker  = false
				end
				function check.togfunction:unlock()
					TweenService:Create(
						lockerframe,
						TweenInfo.new(.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out,0.1),
						{BackgroundTransparency = 1}
					):Play()
					TweenService:Create(
						LockerImageLabel,
						TweenInfo.new(.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out,0.1),
						{Size = UDim2.new(0, 0, 0, 0)}
					):Play()
					check.loacker  = true
				end
				return  check.togfunction
			end
			function ui4:ToggleDesc(text,text2,config,callback)
				local Toggle = Instance.new("Frame")

				Toggle.Name = "Toggle"
				Toggle.Parent = ScrollingFrame_Pageframe
				Toggle.Active = true
				Toggle.AnchorPoint = Vector2.new(0.5, 0.5)
				Toggle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Toggle.BackgroundTransparency = 1
				Toggle.BorderColor3 = Color3.fromRGB(27, 42, 53)
				Toggle.Position = UDim2.new(0.5, 0, 0.5, 0)
				Toggle.Size = UDim2.new(0, 250, 0, 35)

				local TextButton_Toggle = Instance.new("TextButton")
				TextButton_Toggle.Name = "TextButton_Toggle"
				TextButton_Toggle.Parent = Toggle
				TextButton_Toggle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				TextButton_Toggle.BackgroundTransparency = 1.000
				TextButton_Toggle.Size = UDim2.new(0, 213, 0, 35)
				TextButton_Toggle.Font = Enum.Font.SourceSans
				TextButton_Toggle.Text = " "
				TextButton_Toggle.TextColor3 = Color3.fromRGB(0, 0, 0)
				TextButton_Toggle.TextSize = 14.000

				local TextButton_2_Toggle = Instance.new("TextButton")

				TextButton_2_Toggle.Name = "TextButton_2_Toggle"
				TextButton_2_Toggle.Parent = TextButton_Toggle
				TextButton_2_Toggle.AnchorPoint = Vector2.new(0.5, 0.5)
				TextButton_2_Toggle.BackgroundColor3 = Color3.fromRGB(5,5,5)
				TextButton_2_Toggle.BorderSizePixel = 0
				TextButton_2_Toggle.Position = UDim2.new(0.0807512328, 0, 0.5, 0)
				TextButton_2_Toggle.Size = UDim2.new(0, 21, 0, 21)
				TextButton_2_Toggle.AutoButtonColor = false
				TextButton_2_Toggle.Font = Enum.Font.SourceSans
				TextButton_2_Toggle.Text = " "
				TextButton_2_Toggle.TextColor3 = Color3.fromRGB(0, 0, 0)
				TextButton_2_Toggle.TextSize = 14.000

				local Main_UiStroke = Instance.new("UIStroke")

				Main_UiStroke.Thickness = 1
				Main_UiStroke.Name = ""
				Main_UiStroke.Parent = TextButton_2_Toggle
				Main_UiStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
				Main_UiStroke.LineJoinMode = Enum.LineJoinMode.Round
				Main_UiStroke.Color = Color3.fromRGB(0, 0, 0)
				Main_UiStroke.Transparency = 0

				local TextButton_2_Toggle2 = Instance.new("TextButton")

				TextButton_2_Toggle2.Name = "TextButton_2_Toggle"
				TextButton_2_Toggle2.Parent = TextButton_2_Toggle
				TextButton_2_Toggle2.BackgroundColor3 = Color3.fromRGB(7,7,7)
				TextButton_2_Toggle2.BorderSizePixel = 0
				TextButton_2_Toggle2.Position = UDim2.new(0, 2, 0, 2)
				TextButton_2_Toggle2.Size = UDim2.new(0, 17, 0, 17)
				TextButton_2_Toggle2.AutoButtonColor = false
				TextButton_2_Toggle2.Font = Enum.Font.SourceSans
				TextButton_2_Toggle2.Text = " "
				TextButton_2_Toggle2.TextColor3 = Color3.fromRGB(0, 0, 0)
				TextButton_2_Toggle2.TextSize = 14.000

				local UICorner2 = Instance.new("UICorner")

				UICorner2.CornerRadius = UDim.new(0, 6)
				UICorner2.Parent = TextButton_2_Toggle2

				local Main_UiStroke2 = Instance.new("UIStroke")

				Main_UiStroke2.Thickness = 1
				Main_UiStroke2.Name = ""
				Main_UiStroke2.Parent = TextButton_2_Toggle2
				Main_UiStroke2.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
				Main_UiStroke2.LineJoinMode = Enum.LineJoinMode.Round
				Main_UiStroke2.Color = Color3.fromRGB(0, 0, 0)
				Main_UiStroke2.Transparency = 0

				local UICorner = Instance.new("UICorner")

				UICorner.CornerRadius = UDim.new(0, 6)
				UICorner.Parent = TextButton_2_Toggle

				local ImageButton = Instance.new("ImageButton")

				ImageButton.Parent = TextButton_2_Toggle
				ImageButton.AnchorPoint = Vector2.new(0.5, 0.5)
				ImageButton.BackgroundColor3 = Color3.fromRGB(255, 23, 46)
				ImageButton.BackgroundTransparency = 0
				ImageButton.BorderSizePixel = 0
				ImageButton.AutoButtonColor = false
				ImageButton.Position = UDim2.new(0.5, 0, 0.5, 0)
				ImageButton.Size = UDim2.new(0, 0, 0, 0)

				local UICorner6 = Instance.new("UICorner")

				UICorner6.CornerRadius = UDim.new(0, 6)
				UICorner6.Parent = ImageButton

				local TextLabel_Toggle = Instance.new("TextLabel")

				TextLabel_Toggle.Name = "TextLabel_Toggle"
				TextLabel_Toggle.Parent = Toggle
				TextLabel_Toggle.AnchorPoint = Vector2.new(0.5, 0.5)
				TextLabel_Toggle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				TextLabel_Toggle.BackgroundTransparency = 1
				TextLabel_Toggle.Position = UDim2.new(0.55, 0, 0.5, 0)
				TextLabel_Toggle.Size = UDim2.new(0, 200, 0, 25)
				TextLabel_Toggle.Font = Enum.Font.Gotham
				TextLabel_Toggle.TextColor3 = Color3.fromRGB(255, 255, 255)
				TextLabel_Toggle.TextSize = 12.000
				TextLabel_Toggle.Text = text
				TextLabel_Toggle.TextWrapped = true
				TextLabel_Toggle.TextXAlignment = Enum.TextXAlignment.Left

				local Main_UiStroke2 = Instance.new("UIStroke")

				Main_UiStroke2.Thickness = 1
				Main_UiStroke2.Name = ""
				Main_UiStroke2.Parent = TextLabel_Toggle
				Main_UiStroke2.ApplyStrokeMode = Enum.ApplyStrokeMode.Contextual
				Main_UiStroke2.LineJoinMode = Enum.LineJoinMode.Round
				Main_UiStroke2.Color = Color3.fromRGB(0, 0, 0)
				Main_UiStroke2.Transparency = 0

				local DescButton2 = Instance.new("ImageButton")

				DescButton2.Parent = Toggle
				DescButton2.AnchorPoint = Vector2.new(0.5, 0.5)
				DescButton2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				DescButton2.BackgroundTransparency = 1.000
				DescButton2.Position = UDim2.new(0.82, 0, 0.5, 0)
				DescButton2.Size = UDim2.new(0, 21, 0, 21)
				DescButton2.Image = "rbxassetid://3926305904"
				DescButton2.ImageRectOffset = Vector2.new(4, 804)
				DescButton2.ImageRectSize = Vector2.new(36, 36)
				DescButton2.ImageColor3 = Color3.fromRGB(255, 255, 255)

				local ScolDown = Instance.new("ScrollingFrame")

				ScolDown.Name = "ScolDown"
				ScolDown.Parent = ScrollingFrame_Pageframe
				ScolDown.Active = true
				ScolDown.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				ScolDown.BackgroundTransparency = 1
				ScolDown.BorderSizePixel = 0
				ScolDown.Position = UDim2.new(0, 0, 0, 0)
				ScolDown.Size = UDim2.new(0, 245, 0, 0)
				ScolDown.CanvasSize = UDim2.new(0, 0, 0, 2)
				ScolDown.ScrollBarThickness = 0

				local DescButton3 = Instance.new("ImageButton")

				DescButton3.Parent = ScolDown
				DescButton3.AnchorPoint = Vector2.new(0.5, 0.5)
				DescButton3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				DescButton3.BackgroundTransparency = 1.000
				DescButton3.Position = UDim2.new(0.02, 0, 0.5, 0)
				DescButton3.Size = UDim2.new(0, 21, 0, 21)
				DescButton3.Image = "rbxassetid://3926307971"
				DescButton3.Rotation = 90
				DescButton3.ImageRectOffset = Vector2.new(324, 524)
				DescButton3.ImageRectSize = Vector2.new(36, 36)
				DescButton3.ImageColor3 = Color3.fromRGB(255, 255, 255)
				DescButton3.ImageTransparency = 1

				local DropFrame = Instance.new("Frame")
				local UICorner = Instance.new("UICorner")

				--Properties:

				DropFrame.Name = "DropFrame"
				DropFrame.Parent = ScolDown
				DropFrame.AnchorPoint = Vector2.new(0.5, 0.5)
				DropFrame.BackgroundColor3 = Color3.fromRGB(42, 42, 42)
				DropFrame.BackgroundTransparency = 1
				DropFrame.BorderSizePixel = 0
				DropFrame.Position = UDim2.new(0, 105, 0, 15)
				DropFrame.Size = UDim2.new(0, 0, 0, 25)

				local Main_UiStroke3 = Instance.new("UIStroke")

				Main_UiStroke3.Thickness = 0
				Main_UiStroke3.Name = ""
				Main_UiStroke3.Parent = DropFrame
				Main_UiStroke3.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
				Main_UiStroke3.LineJoinMode = Enum.LineJoinMode.Round
				Main_UiStroke3.Color = Color3.fromRGB(0, 0, 0)
				Main_UiStroke3.Transparency = 0

				local TextLabel_Toggle2 = Instance.new("TextLabel")

				TextLabel_Toggle2.Name = "TextLabel_Toggle"
				TextLabel_Toggle2.Parent = DropFrame
				TextLabel_Toggle2.BackgroundColor3 = Color3.fromRGB(255, 170, 255)
				TextLabel_Toggle2.BackgroundTransparency = 1
				TextLabel_Toggle2.Position = UDim2.new(0, 4, 0.025, 0)
				TextLabel_Toggle2.Size = UDim2.new(0, 175, 0, 25)
				TextLabel_Toggle2.Font = Enum.Font.GothamSemibold
				TextLabel_Toggle2.TextColor3 = Color3.fromRGB(255, 23, 46)
				TextLabel_Toggle2.TextSize = 10
				TextLabel_Toggle2.TextTransparency = 1
				TextLabel_Toggle2.Text = text2
				TextLabel_Toggle2.TextWrapped = true
				TextLabel_Toggle2.BorderSizePixel = 0
				TextLabel_Toggle2.TextXAlignment = Enum.TextXAlignment.Left

				UICorner.CornerRadius = UDim.new(0, 4)
				UICorner.Parent = DropFrame

				local Desccheck = false

				local check = {toogle = false ; loacker = true ; togfunction = {

				};}

				DescButton2.MouseButton1Click:Connect(function()
					if Desccheck == false and check.loacker == true then
						TweenService:Create(
							DescButton2,
							TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
							{ImageColor3 = Color3.fromRGB(255, 23, 46)} -- UDim2.new(0, 128, 0, 25)
						):Play()
						TweenService:Create(
							ScolDown,
							TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
							{Size = UDim2.new(0, 500, 0, 35)} -- UDim2.new(0, 128, 0, 25)
						):Play()
						repeat wait() until ScolDown.Size == UDim2.new(0, 500, 0, 35)
						TweenService:Create(
							DescButton3,
							TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
							{ImageTransparency = 0} -- UDim2.new(0, 128, 0, 25)
						):Play()
						repeat wait() until DescButton3.ImageTransparency == 0
						TweenService:Create(
							DescButton3,
							TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
							{Rotation = 270} -- UDim2.new(0, 128, 0, 25)
						):Play()
						repeat wait() until DescButton3.Rotation == 270
						TweenService:Create(
							Main_UiStroke3,
							TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
							{Thickness = 1} -- UDim2.new(0, 128, 0, 25)
						):Play()
						repeat wait() until Main_UiStroke3.Thickness == 1
						TweenService:Create(
							DropFrame,
							TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
							{Size = UDim2.new(0, 175, 0, 25)} -- UDim2.new(0, 128, 0, 25)
						):Play()
						TweenService:Create(
							TextLabel_Toggle2,
							TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
							{TextTransparency = 0} -- UDim2.new(0, 128, 0, 25)
						):Play()
					elseif  check.loacker ==  true then
						TweenService:Create(
							DescButton2,
							TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
							{ImageColor3 = Color3.fromRGB(255, 255, 255)} -- UDim2.new(0, 128, 0, 25)
						):Play()
						TweenService:Create(
							TextLabel_Toggle2,
							TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
							{TextTransparency = 1} -- UDim2.new(0, 128, 0, 25)
						):Play()
						repeat wait() until TextLabel_Toggle2.TextTransparency == 1
						TweenService:Create(
							DropFrame,
							TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
							{Size = UDim2.new(0, 0, 0, 25)} -- UDim2.new(0, 128, 0, 25)
						):Play()
						repeat wait() until DropFrame.Size == UDim2.new(0, 0, 0, 25)
						TweenService:Create(
							Main_UiStroke3,
							TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
							{Thickness = 0} -- UDim2.new(0, 128, 0, 25)
						):Play()
						repeat wait() until Main_UiStroke3.Thickness == 0
						TweenService:Create(
							DescButton3,
							TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
							{Rotation = 90} -- UDim2.new(0, 128, 0, 25)
						):Play()
						repeat wait() until DescButton3.Rotation == 90
						TweenService:Create(
							DescButton3,
							TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
							{ImageTransparency = 1} -- UDim2.new(0, 128, 0, 25)
						):Play()
						repeat wait() until DescButton3.ImageTransparency == 1
						TweenService:Create(
							ScolDown,
							TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
							{Size = UDim2.new(0, 245, 0, 0)} -- UDim2.new(0, 128, 0, 25)
						):Play()
					end
					if  check.loacker == true  then
						Desccheck = not Desccheck
					end
				end)

				TextButton_Toggle.MouseEnter:Connect(function()
					TweenService:Create(
						TextLabel_Toggle,
						TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{TextColor3 = Color3.fromRGB(155,155,155)} -- UDim2.new(0, 128, 0, 25)
					):Play()
					TweenService:Create(
						TextButton_2_Toggle2,
						TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{BackgroundColor3 = Color3.fromRGB(10,10,10)} -- UDim2.new(0, 128, 0, 25)
					):Play()
				end)

				TextButton_Toggle.MouseLeave:Connect(function()
					TweenService:Create(
						TextLabel_Toggle,
						TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{TextColor3 = Color3.fromRGB(255, 255, 255)} -- UDim2.new(0, 128, 0, 25)
					):Play()
					TweenService:Create(
						TextButton_2_Toggle2,
						TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{BackgroundColor3 = Color3.fromRGB(7,7,7)} -- UDim2.new(0, 128, 0, 25)
					):Play()
				end)

				TextButton_Toggle.MouseButton1Click:Connect(function()
					if check.toogle == false and check.loacker == true  then
						TweenService:Create(
							ImageButton,
							TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
							{Size = UDim2.new(0, 25, 0, 25)} -- UDim2.new(0, 128, 0, 25)
						):Play()
						wait(0.1)
						TweenService:Create(
							ImageButton,
							TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
							{Size = UDim2.new(0, 21, 0, 21)} -- UDim2.new(0, 128, 0, 25)
						):Play()
					elseif  check.loacker ==  true then
						TweenService:Create(
							ImageButton,
							TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
							{Size = UDim2.new(0, 25, 0, 25)} -- UDim2.new(0, 128, 0, 25)
						):Play()
						wait(0.1)
						TweenService:Create(
							ImageButton,
							TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
							{Size = UDim2.new(0, 0, 0, 0)} -- UDim2.new(0, 128, 0, 25)
						):Play()
					end
					if  check.loacker == true  then
						check.toogle = not check.toogle
						callback(check.toogle)
					end
				end)

				TextButton_2_Toggle.MouseButton1Click:Connect(function()
					if check.toogle == false and check.loacker == true  then
						TweenService:Create(
							ImageButton,
							TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
							{Size = UDim2.new(0, 25, 0, 25)} -- UDim2.new(0, 128, 0, 25)
						):Play()
						wait(0.1)
						TweenService:Create(
							ImageButton,
							TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
							{Size = UDim2.new(0, 21, 0, 21)} -- UDim2.new(0, 128, 0, 25)
						):Play()
					elseif  check.loacker ==  true then
						TweenService:Create(
							ImageButton,
							TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
							{Size = UDim2.new(0, 25, 0, 25)} -- UDim2.new(0, 128, 0, 25)
						):Play()
						wait(0.1)
						TweenService:Create(
							ImageButton,
							TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
							{Size = UDim2.new(0, 0, 0, 0)} -- UDim2.new(0, 128, 0, 25)
						):Play()
					end
					if  check.loacker == true  then
						check.toogle = not check.toogle
						callback(check.toogle)
					end
				end)

				TextButton_2_Toggle2.MouseButton1Click:Connect(function()
					if check.toogle == false and check.loacker == true  then
						TweenService:Create(
							ImageButton,
							TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
							{Size = UDim2.new(0, 25, 0, 25)} -- UDim2.new(0, 128, 0, 25)
						):Play()
						wait(0.1)
						TweenService:Create(
							ImageButton,
							TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
							{Size = UDim2.new(0, 21, 0, 21)} -- UDim2.new(0, 128, 0, 25)
						):Play()
					elseif  check.loacker ==  true then
						TweenService:Create(
							ImageButton,
							TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
							{Size = UDim2.new(0, 25, 0, 25)} -- UDim2.new(0, 128, 0, 25)
						):Play()
						wait(0.1)
						TweenService:Create(
							ImageButton,
							TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
							{Size = UDim2.new(0, 0, 0, 0)} -- UDim2.new(0, 128, 0, 25)
						):Play()
					end
					if  check.loacker == true  then
						check.toogle = not check.toogle
						callback(check.toogle)
					end
				end)

				ImageButton.MouseButton1Click:Connect(function()
					if check.toogle == false and check.loacker == true  then
						TweenService:Create(
							ImageButton,
							TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
							{Size = UDim2.new(0, 25, 0, 25)} -- UDim2.new(0, 128, 0, 25)
						):Play()
						wait(0.1)
						TweenService:Create(
							ImageButton,
							TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
							{Size = UDim2.new(0, 21, 0, 21)} -- UDim2.new(0, 128, 0, 25)
						):Play()
					elseif  check.loacker ==  true then
						TweenService:Create(
							ImageButton,
							TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
							{Size = UDim2.new(0, 25, 0, 25)} -- UDim2.new(0, 128, 0, 25)
						):Play()
						wait(0.1)
						TweenService:Create(
							ImageButton,
							TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
							{Size = UDim2.new(0, 0, 0, 0)} -- UDim2.new(0, 128, 0, 25)
						):Play()
					end
					if  check.loacker == true  then
						check.toogle = not check.toogle
						callback(check.toogle)
					end
				end)

				if config == true then
					TweenService:Create(
						ImageButton,
						TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{Size = UDim2.new(0, 25, 0, 25)} -- UDim2.new(0, 128, 0, 25)
					):Play()
					wait(0.1)
					TweenService:Create(
						ImageButton,
						TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{Size = UDim2.new(0, 21, 0, 21)} -- UDim2.new(0, 128, 0, 25)
					):Play()
					check.toogle = true
					callback(check.toogle)
				end
				local lockerframe = Instance.new("Frame")

				lockerframe.Name = "lockerframe"
				lockerframe.Parent = Toggle
				lockerframe.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
				lockerframe.BackgroundTransparency = 1
				lockerframe.BorderSizePixel = 0
				lockerframe.Size = UDim2.new(0, 300, 0, 35)
				lockerframe.Position = UDim2.new(0.50, 0, 0.5, 0)
				lockerframe.AnchorPoint = Vector2.new(0.5, 0.5)

				local LockerImageLabel = Instance.new("ImageLabel")
				LockerImageLabel.Parent = lockerframe
				LockerImageLabel.BackgroundTransparency = 1.000
				LockerImageLabel.BorderSizePixel = 0
				LockerImageLabel.Position = UDim2.new(0.45, 0, 0.5, 0)
				LockerImageLabel.AnchorPoint = Vector2.new(0.5, 0.5)
				LockerImageLabel.Size = UDim2.new(0, 0, 0, 0)
				LockerImageLabel.Image = "http://www.roblox.com/asset/?id=6031082533"

				function check.togfunction:lock()
					TweenService:Create(
						lockerframe,
						TweenInfo.new(.4, Enum.EasingStyle.Sine, Enum.EasingDirection.Out,0.1),
						{BackgroundTransparency = 0.7}
					):Play()
					wait(0.5)
					TweenService:Create(
						LockerImageLabel,
						TweenInfo.new(.2, Enum.EasingStyle.Bounce, Enum.EasingDirection.Out,0.1),
						{Size = UDim2.new(0, 25, 0, 25)}
					):Play()

					check.loacker  = false
				end
				function check.togfunction:unlock()
					TweenService:Create(
						lockerframe,
						TweenInfo.new(.4, Enum.EasingStyle.Sine, Enum.EasingDirection.Out,0.1),
						{BackgroundTransparency = 1}
					):Play()
					wait(0.5)
					TweenService:Create(
						LockerImageLabel,
						TweenInfo.new(.2, Enum.EasingStyle.Bounce, Enum.EasingDirection.Out,0.1),
						{Size = UDim2.new(0, 0, 0, 0)}
					):Play()
					check.loacker  = true
				end
				return  check.togfunction
			end
			function ui4:Button(text,callback)
				local Button = Instance.new("Frame")
				local Btn = Instance.new("TextButton")
				local BtnName = Instance.new("TextLabel")
				local UICorner_12 = Instance.new("UICorner")

				Button.Name = "Button"
				Button.Parent = ScrollingFrame_Pageframe
				Button.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Button.BackgroundTransparency = 1.000
				Button.BorderColor3 = Color3.fromRGB(27, 42, 53)
				Button.Size = UDim2.new(0, 210, 0, 25)

				Btn.Name = "Btn"
				Btn.Parent = Button
				Btn.BackgroundColor3 = Color3.fromRGB(10,10,10)
				Btn.BackgroundTransparency = 0
				Btn.BorderColor3 = Color3.fromRGB(0, 0, 0)
				Btn.BorderSizePixel = 0
				Btn.Position = UDim2.new(0, 0, -0.00100000005, 0)
				Btn.Size = UDim2.new(0, 210, 0, 25)
				Btn.Text = ""
				Btn.AutoButtonColor = false

				BtnName.Name = "BtnName"
				BtnName.Parent = Btn
				BtnName.BackgroundTransparency = 1.000
				BtnName.BorderColor3 = Color3.fromRGB(0, 0, 0)
				BtnName.BorderSizePixel = 0
				BtnName.Size = UDim2.new(0, 0, 0, 0)
				BtnName.Position = UDim2.new(0.5, 0, 0.5, 0)
				BtnName.Font = Enum.Font.Gotham
				BtnName.Text = "  ".. text
				BtnName.TextColor3 = Color3.fromRGB(255, 255, 255)
				BtnName.TextSize = 11.000
				BtnName.TextXAlignment = Enum.TextXAlignment.Center

				local Main_UiStroke3 = Instance.new("UIStroke")

				Main_UiStroke3.Thickness = 1
				Main_UiStroke3.Name = ""
				Main_UiStroke3.Parent = Btn
				Main_UiStroke3.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
				Main_UiStroke3.LineJoinMode = Enum.LineJoinMode.Round
				Main_UiStroke3.Color = Color3.fromRGB(0, 0, 0)
				Main_UiStroke3.Transparency = 0

				UICorner_12.CornerRadius = UDim.new(0, 4)
				UICorner_12.Parent = Btn

				Btn.MouseEnter:Connect(function()
					TweenService:Create(
						Main_UiStroke3,
						TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{Color = Color3.fromRGB(255, 23, 46)} -- UDim2.new(0, 128, 0, 25)
					):Play()
				end)

				Btn.MouseLeave:Connect(function()
					TweenService:Create(
						Main_UiStroke3,
						TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{Color = Color3.fromRGB(0, 0, 0)} -- UDim2.new(0, 128, 0, 25)
					):Play()
				end)

				Btn.MouseButton1Click:Connect(function()
					BtnName.TextSize = 0
					TweenService:Create(
						BtnName,
						TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{TextSize = 11} -- UDim2.new(0, 128, 0, 25)
					):Play()
					pcall(callback)
				end)
			end
			function ui4:Button2(text,callback)
				local Button = Instance.new("Frame")
				local Btn = Instance.new("TextButton")
				local BtnName = Instance.new("TextLabel")
				local UICorner_12 = Instance.new("UICorner")

				Button.Name = "Button"
				Button.Parent = ScrollingFrame_Pageframe
				Button.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Button.BackgroundTransparency = 1.000
				Button.BorderColor3 = Color3.fromRGB(27, 42, 53)
				Button.Size = UDim2.new(0, 210, 0, 25)

				Btn.Name = "Btn"
				Btn.Parent = Button
				Btn.BackgroundColor3 = Color3.fromRGB(255, 23, 46)
				Btn.BackgroundTransparency = 0
				Btn.BorderColor3 = Color3.fromRGB(0, 0, 0)
				Btn.BorderSizePixel = 0
				Btn.Position = UDim2.new(0, 0, -0.00100000005, 0)
				Btn.Size = UDim2.new(0, 210, 0, 25)
				Btn.Text = ""
				Btn.AutoButtonColor = false

				BtnName.Name = "BtnName"
				BtnName.Parent = Btn
				BtnName.BackgroundTransparency = 1.000
				BtnName.BorderColor3 = Color3.fromRGB(0, 0, 0)
				BtnName.BorderSizePixel = 0
				BtnName.Size = UDim2.new(0, 0, 0, 0)
				BtnName.Position = UDim2.new(0.5, 0, 0.5, 0)
				BtnName.Font = Enum.Font.Gotham
				BtnName.Text = "  ".. text
				BtnName.TextColor3 = Color3.fromRGB(255, 255, 255)
				BtnName.TextSize = 11.000
				BtnName.TextXAlignment = Enum.TextXAlignment.Center

				local Main_UiStroke3 = Instance.new("UIStroke")

				Main_UiStroke3.Thickness = 1
				Main_UiStroke3.Name = ""
				Main_UiStroke3.Parent = Btn
				Main_UiStroke3.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
				Main_UiStroke3.LineJoinMode = Enum.LineJoinMode.Round
				Main_UiStroke3.Color = Color3.fromRGB(0, 0, 0)
				Main_UiStroke3.Transparency = 0

				UICorner_12.CornerRadius = UDim.new(0, 4)
				UICorner_12.Parent = Btn

				Btn.MouseEnter:Connect(function()
					TweenService:Create(
						Main_UiStroke3,
						TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{Color = Color3.fromRGB(255, 23, 46)} -- UDim2.new(0, 128, 0, 25)
					):Play()
				end)

				Btn.MouseLeave:Connect(function()
					TweenService:Create(
						Main_UiStroke3,
						TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{Color = Color3.fromRGB(0, 0, 0)} -- UDim2.new(0, 128, 0, 25)
					):Play()
				end)

				Btn.MouseButton1Click:Connect(function()
					BtnName.TextSize = 0
					TweenService:Create(
						BtnName,
						TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{TextSize = 11} -- UDim2.new(0, 128, 0, 25)
					):Play()
					pcall(callback)
				end)
			end
			function ui4:Line()
				local LineFrame = Instance.new("Frame")

				LineFrame.Name = "LineFrame"
				LineFrame.Parent = ScrollingFrame_Pageframe
				LineFrame.BackgroundColor3 =  Color3.fromRGB(0, 0, 0)
				LineFrame.BorderSizePixel = 0
				LineFrame.Position = UDim2.new(0.5, 0, 0.7, 0)
				LineFrame.AnchorPoint = Vector2.new(0.5, 0.5)
				LineFrame.Size = UDim2.new(0, 335, 0, 1)
				LineFrame.BackgroundTransparency  = 0
				LineFrame.ClipsDescendants = true

				local LineFrame_BindConner = Instance.new("UICorner")

				LineFrame_BindConner.CornerRadius = UDim.new(0, 30)
				LineFrame_BindConner.Name = ""
				LineFrame_BindConner.Parent = LineFrame
			end
			function ui4:Blank(count)
				if count == nil then
					count = 0.01
				end
				local BlankFrame = Instance.new("Frame")


				BlankFrame.Name = "Mainframenoti"
				BlankFrame.Parent = ScrollingFrame_Pageframe
				BlankFrame.BackgroundColor3 = Color3.fromRGB(10,10,10)
				BlankFrame.BackgroundTransparency = 1
				BlankFrame.BorderSizePixel = 0
				BlankFrame.ClipsDescendants = false
				BlankFrame.AnchorPoint = Vector2.new(0.5, 0.5)
				BlankFrame.Position = UDim2.new(0.498, 0, 0.5, 0)
				BlankFrame.Size = UDim2.new(0, 213, 0, count)
			end
			function ui4:Title(text)
				local tiframe = Instance.new("Frame")

				tiframe.Name = "tiframe"
				tiframe.Parent = ScrollingFrame_Pageframe
				tiframe.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				tiframe.BackgroundTransparency = 1
				tiframe.BorderSizePixel = 0
				tiframe.ClipsDescendants = true
				tiframe.AnchorPoint = Vector2.new(0.5, 0.5)
				tiframe.Position = UDim2.new(0.5, 0, 0.5, 0)
				tiframe.Size = UDim2.new(0, 210, 0, 20)

				local  lineframe3 = Instance.new("TextLabel")

				lineframe3.Parent = tiframe
				lineframe3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				lineframe3.BackgroundTransparency = 1
				lineframe3.AnchorPoint = Vector2.new(0.5, 0.5)
				lineframe3.Position = UDim2.new(0.5, 0, 0.5, 0)
				lineframe3.BorderSizePixel = 0
				lineframe3.Size = UDim2.new(0, 210, 0, 20)
				lineframe3.Font = Enum.Font.GothamSemibold
				lineframe3.Text = tostring(text)
				lineframe3.TextColor3 = Color3.fromRGB(255, 23, 46)
				lineframe3.TextSize = 13.000
				lineframe3.TextWrapped = true
			end
			function ui4:Label(text)

				local labelfuc = {}

				local Button = Instance.new("Frame")

				Button.Name = "Button"
				Button.Parent = ScrollingFrame_Pageframe
				Button.BackgroundColor3 = Color3.fromRGB(42,42,42)
				Button.BackgroundTransparency = 1
				Button.BorderSizePixel = 0
				Button.Size = UDim2.new(0, 210, 0, 25)

				local ButtonCorner = Instance.new("UICorner")

				ButtonCorner.CornerRadius = UDim.new(0, 4)
				ButtonCorner.Parent = Button

				local  Labelxd = Instance.new("TextLabel")

				Labelxd.Parent = Button
				Labelxd.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Labelxd.BackgroundTransparency = 1
				Labelxd.AnchorPoint = Vector2.new(0.5, 0.5)
				Labelxd.Position = UDim2.new(0.5, 0, 0.5, 0)
				Labelxd.BorderSizePixel = 0
				Labelxd.Size = UDim2.new(0, 210, 0, 13)
				Labelxd.Font = Enum.Font.Gotham
				Labelxd.Text = tostring(text)
				Labelxd.TextColor3 = Color3.fromRGB(255, 255, 255)
				Labelxd.TextSize = 12.000
				Labelxd.TextTransparency = 0.5
				Labelxd.TextXAlignment = Enum.TextXAlignment.Left
				Labelxd.TextWrapped = true

				function  labelfuc:Change(text2)
					Labelxd.Text = tostring(text2)
				end
				return  labelfuc
			end
			function ui4:Slider(text,floor,min,max,de,lol,callback)

				local sliderfunc = {}
				local SliderFrame = Instance.new("Frame")

				SliderFrame.Name = "SliderFrame"
				SliderFrame.Parent = ScrollingFrame_Pageframe
				SliderFrame.AnchorPoint = Vector2.new(0.5, 0.5)
				SliderFrame.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
				SliderFrame.BackgroundTransparency = 1
				SliderFrame.ClipsDescendants = true
				SliderFrame.Position = UDim2.new(0.5, 0, 0.457317084, 0)
				SliderFrame.Size = UDim2.new(0, 210, 0, 47)

				local Main_UiStroke2 = Instance.new("UIStroke")

				Main_UiStroke2.Thickness = 1
				Main_UiStroke2.Name = ""
				Main_UiStroke2.Parent = SliderFrame
				Main_UiStroke2.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
				Main_UiStroke2.LineJoinMode = Enum.LineJoinMode.Round
				Main_UiStroke2.Color = Color3.fromRGB(0, 0, 0)
				Main_UiStroke2.Transparency = 0

				local SliderFrame_UICorner = Instance.new("UICorner")
				SliderFrame_UICorner.Name = "SliderFrame_UICorner"
				SliderFrame_UICorner.Parent = SliderFrame
				SliderFrame_UICorner.CornerRadius = UDim.new(0, 4)

				local LabelNameSlider = Instance.new("TextLabel")

				LabelNameSlider.Name = "LabelNameSlider"
				LabelNameSlider.Parent = SliderFrame
				LabelNameSlider.AnchorPoint = Vector2.new(0.5, 0.5)
				LabelNameSlider.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				LabelNameSlider.BackgroundTransparency = 1.000
				LabelNameSlider.BorderSizePixel = 0
				LabelNameSlider.Position = UDim2.new(0.3, 0, 0.285106242, 0)
				LabelNameSlider.Size = UDim2.new(0, 114, 0, 20)
				LabelNameSlider.Font = Enum.Font.Gotham
				LabelNameSlider.TextColor3 = Color3.fromRGB(255, 255, 255)
				LabelNameSlider.Text = tostring(text)
				LabelNameSlider.TextSize = 11.000
				LabelNameSlider.TextWrapped = true
				LabelNameSlider.TextXAlignment = Enum.TextXAlignment.Left

				local Main_UiStroke2LabelNameSlider = Instance.new("UIStroke")

				Main_UiStroke2LabelNameSlider.Thickness = 1
				Main_UiStroke2LabelNameSlider.Name = ""
				Main_UiStroke2LabelNameSlider.Parent = LabelNameSlider
				Main_UiStroke2LabelNameSlider.ApplyStrokeMode = Enum.ApplyStrokeMode.Contextual
				Main_UiStroke2LabelNameSlider.LineJoinMode = Enum.LineJoinMode.Round
				Main_UiStroke2LabelNameSlider.Color = Color3.fromRGB(0, 0, 0)
				Main_UiStroke2LabelNameSlider.Transparency = 0

				local ShowValueFrame = Instance.new("Frame")

				ShowValueFrame.Name = "ShowValueFrame"
				ShowValueFrame.Parent = SliderFrame
				ShowValueFrame.AnchorPoint = Vector2.new(0.5, 0.5)
				ShowValueFrame.BackgroundColor3 = Color3.fromRGB(10,10,10)
				ShowValueFrame.BorderSizePixel = 0
				ShowValueFrame.Position = UDim2.new(0.85, 0, 0.285106391, 0)
				ShowValueFrame.Size = UDim2.new(0, 50, 0, 15)

				local Main_UiStroke3 = Instance.new("UIStroke")

				Main_UiStroke3.Thickness = 1
				Main_UiStroke3.Name = ""
				Main_UiStroke3.Parent = ShowValueFrame
				Main_UiStroke3.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
				Main_UiStroke3.LineJoinMode = Enum.LineJoinMode.Round
				Main_UiStroke3.Color = Color3.fromRGB(0, 0, 0)
				Main_UiStroke3.Transparency = 0

				local ShowValueFrameUICorner = Instance.new("UICorner")
				ShowValueFrameUICorner.CornerRadius = UDim.new(0, 4)
				ShowValueFrameUICorner.Name = "ShowValueFrameUICorner"
				ShowValueFrameUICorner.Parent = ShowValueFrame

				local DefaultValue = Instance.new("ImageButton")

				DefaultValue.Name = "Imatog"
				DefaultValue.Parent = SliderFrame
				DefaultValue.BackgroundTransparency = 1.000
				DefaultValue.BorderSizePixel = 0
				DefaultValue.Position = UDim2.new(0.45, 0, 0.15, 0)
				DefaultValue.Size = UDim2.new(0, 15, 0, 15)
				DefaultValue.Image = "rbxassetid://7072721335"
				DefaultValue.ImageColor3 =  Color3.fromRGB(255, 23, 46)

				local Addvalue = Instance.new("ImageButton")

				Addvalue.Name = "Imatog"
				Addvalue.Parent = SliderFrame
				Addvalue.BackgroundTransparency = 1.000
				Addvalue.BorderSizePixel = 0
				Addvalue.Position = UDim2.new(0.55, 0, 0.15, 0)
				Addvalue.Size = UDim2.new(0, 15, 0, 15)
				Addvalue.Image = "http://www.roblox.com/asset/?id=6035067836"
				Addvalue.ImageColor3 =  Color3.fromRGB(255, 23, 46)

				local Deletevalue = Instance.new("ImageButton")

				Deletevalue.Name = "Imatog"
				Deletevalue.Parent = SliderFrame
				Deletevalue.BackgroundTransparency = 1.000
				Deletevalue.BorderSizePixel = 0
				Deletevalue.Position = UDim2.new(0.65, 0, 0.15, 0)
				Deletevalue.Size = UDim2.new(0, 15, 0, 15)
				Deletevalue.Image = "http://www.roblox.com/asset/?id=6035047377"
				Deletevalue.ImageColor3 =  Color3.fromRGB(255, 23, 46)

				local CustomValue = Instance.new("TextBox")

				CustomValue.Name = "CustomValue"
				CustomValue.Parent = ShowValueFrame
				CustomValue.AnchorPoint = Vector2.new(0.5, 0.5)
				CustomValue.BackgroundColor3 = Color3.fromRGB(10,10,10)
				CustomValue.BackgroundTransparency = 1.000
				CustomValue.ClipsDescendants = true
				CustomValue.Position = UDim2.new(0.501112819, 0, 0.5, 0)
				CustomValue.Size = UDim2.new(0, 50, 0, 26)
				CustomValue.Font = Enum.Font.Gotham
				CustomValue.PlaceholderColor3 = Color3.fromRGB(222, 222, 222)
				CustomValue.Text = ""
				CustomValue.TextSize = 11
				CustomValue.TextColor3 = Color3.fromRGB(255, 255, 255)
				if floor == true then
					CustomValue.Text =  tostring(de and string.format("%.1f",(de / max) * (max - min) + min) or 0)
				else
					CustomValue.Text =  tostring(de and math.floor( (de / max) * (max - min) + min) or 0)
				end

				local ValueFrame = Instance.new("Frame")

				ValueFrame.Name = "ValueFrame"
				ValueFrame.Parent = SliderFrame
				ValueFrame.AnchorPoint = Vector2.new(0.5, 0.5)
				ValueFrame.BackgroundColor3 = Color3.fromRGB(10,10,10)
				ValueFrame.BorderSizePixel = 0
				ValueFrame.Position = UDim2.new(0.499824077, 0, 0.800000012, 0)
				ValueFrame.Size = UDim2.new(0, 195, 0, 5)

				local Main_UiStroke = Instance.new("UIStroke")

				Main_UiStroke.Thickness = 1
				Main_UiStroke.Name = ""
				Main_UiStroke.Parent = ValueFrame
				Main_UiStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
				Main_UiStroke.LineJoinMode = Enum.LineJoinMode.Round
				Main_UiStroke.Color = Color3.fromRGB(0, 0, 0)
				Main_UiStroke.Transparency = 0

				local ValueFrameUICorner = Instance.new("UICorner")
				ValueFrameUICorner.CornerRadius = UDim.new(0, 4)
				ValueFrameUICorner.Name = "ShowValueFrameUICorner"
				ValueFrameUICorner.Parent = ValueFrame

				local PartValue = Instance.new("Frame")

				PartValue.Name = "PartValue"
				PartValue.Parent = ValueFrame
				PartValue.Active = true
				PartValue.AnchorPoint = Vector2.new(0.5, 0.5)
				PartValue.BackgroundColor3 = Color3.fromRGB(10,10,10)
				PartValue.BackgroundTransparency = 1.000
				PartValue.Position = UDim2.new(0.498982757, 0, 0.300000012, 0)
				PartValue.Size = UDim2.new(0, 195, 0, 5)

				local MainValue = Instance.new("Frame")

				MainValue.Name = "MainValue"
				MainValue.Parent = PartValue
				MainValue.BackgroundColor3 = Color3.fromRGB(255, 23, 46)
				MainValue.Position = UDim2.new(0.00101725257, 0, 0.200000003, 0)
				MainValue.Size = UDim2.new((de or 0) / max, 0, 0, 5)
				MainValue.BorderSizePixel = 0

				local MainValueUICorner = Instance.new("UICorner")
				MainValueUICorner.CornerRadius = UDim.new(0, 4)
				MainValueUICorner.Name = "a"
				MainValueUICorner.Parent = MainValue

				local ConneValue = Instance.new("Frame")

				ConneValue.Name = "ConneValue"
				ConneValue.Parent = PartValue
				ConneValue.AnchorPoint = Vector2.new(0.5, 0.5)
				ConneValue.BackgroundColor3 = Color3.fromRGB(10,10,10)
				ConneValue.Position = UDim2.new((de or 0)/max, 0.5, 0.6,0, 0)
				ConneValue.Size = UDim2.new(0, 0, 0, 0)
				ConneValue.BorderSizePixel = 0

				local UICorner = Instance.new("UICorner")

				UICorner.CornerRadius = UDim.new(0, 300)
				UICorner.Parent = ConneValue
				local function move(input)
					local pos =
						UDim2.new(
							math.clamp((input.Position.X - ValueFrame.AbsolutePosition.X) / ValueFrame.AbsoluteSize.X, 0, 1),
							0,
							0.6,
							0
						)
					local pos1 =
						UDim2.new(
							math.clamp((input.Position.X - ValueFrame.AbsolutePosition.X) / ValueFrame.AbsoluteSize.X, 0, 1),
							0,
							0,
							5
						)

					MainValue:TweenSize(pos1, "Out", "Sine", 0.2, true)

					ConneValue:TweenPosition(pos, "Out", "Sine", 0.2, true)
					if floor == true then
						local value = string.format("%.1f",((pos.X.Scale * max) / max) * (max - min) + min)
						CustomValue.Text = tostring(value)
						callback(value)
					else
						local value = math.floor(((pos.X.Scale * max) / max) * (max - min) + min)
						CustomValue.Text = tostring(value)
						callback(value)
					end



				end
				local dragging = false
				ConneValue.InputBegan:Connect(
					function(input)
						if input.UserInputType == Enum.UserInputType.MouseButton1 then
							dragging = true

						end
					end
				)
				ConneValue.InputEnded:Connect(
					function(input)
						if input.UserInputType == Enum.UserInputType.MouseButton1 then
							dragging = false

						end
					end
				)
				SliderFrame.InputBegan:Connect(
					function(input)
						if input.UserInputType == Enum.UserInputType.MouseButton1 then
							dragging = true

						end
					end
				)
				SliderFrame.InputEnded:Connect(
					function(input)
						if input.UserInputType == Enum.UserInputType.MouseButton1 then
							dragging = false

						end
					end
				)


				ValueFrame.InputBegan:Connect(
					function(input)
						if input.UserInputType == Enum.UserInputType.MouseButton1 then
							dragging = true

						end
					end
				)
				ValueFrame.InputEnded:Connect(
					function(input)
						if input.UserInputType == Enum.UserInputType.MouseButton1 then
							dragging = false

						end
					end
				)
				game:GetService("UserInputService").InputChanged:Connect(function(input)
					if dragging and input.UserInputType == Enum.UserInputType.MouseMovement then
						move(input)
					end
				end)

				CustomValue.FocusLost:Connect(function()
					if CustomValue.Text == "" then
						CustomValue.Text  = de
					end
					if  tonumber(CustomValue.Text) > max then
						CustomValue.Text  = max
					end
					MainValue:TweenSize(UDim2.new((CustomValue.Text or 0) / max, 0, 0, 5), "Out", "Sine", 0.2, true)
					ConneValue:TweenPosition(UDim2.new((CustomValue.Text or 0)/max, 0,0.6, 0) , "Out", "Sine", 0.2, true)
					if floor == true then
						CustomValue.Text = tostring(CustomValue.Text and string.format("%.1f",(CustomValue.Text / max) * (max - min) + min) )
					else
						CustomValue.Text = tostring(CustomValue.Text and math.floor( (CustomValue.Text / max) * (max - min) + min) )
					end
					pcall(callback, CustomValue.Text)
				end)
				Addvalue.MouseButton1Click:Connect(function ()
					if CustomValue.Text == "" then
						CustomValue.Text  = de
					end
					pcall(function()
						CustomValue.Text  = CustomValue.Text  - tonumber(lol)
					end)
					if  tonumber(CustomValue.Text) > max then
						CustomValue.Text  = max
					end
					if  tonumber(CustomValue.Text) < min then
						CustomValue.Text  = min
					end
					MainValue:TweenSize(UDim2.new((CustomValue.Text  or 0  ) / max, 0, 0, 5), "Out", "Sine", 0.2, true)
					ConneValue:TweenPosition(UDim2.new((CustomValue.Text or 0)/max, 0,0.5, 0) , "Out", "Sine", 0.2, true)
					if floor == true then
						CustomValue.Text = tostring(CustomValue.Text and string.format("%.1f",(CustomValue.Text / max) * (max - min) + min) )
					else
						CustomValue.Text = tostring(CustomValue.Text and math.floor( (CustomValue.Text / max) * (max - min) + min) )
					end
					callback({
						["s"] =  CustomValue.Text;
					})
					--   callback({ tonumber(CustomValue.Text),check2.toogle2})
					--  pcall(callback, CustomValue.Text)
				end)

				Deletevalue.MouseButton1Click:Connect(function ()
					if CustomValue.Text == "" then
						CustomValue.Text  = de
					end
					pcall(function()
						CustomValue.Text  = CustomValue.Text  + tonumber(lol)
					end)
					if  tonumber(CustomValue.Text) > max then
						CustomValue.Text  = max
					end
					if  tonumber(CustomValue.Text) < min then
						CustomValue.Text  = min
					end
					MainValue:TweenSize(UDim2.new((CustomValue.Text  or 0  ) / max, 0, 0, 5), "Out", "Sine", 0.2, true)
					ConneValue:TweenPosition(UDim2.new((CustomValue.Text or 0)/max, 0,0.5, 0) , "Out", "Sine", 0.2, true)
					if floor == true then
						CustomValue.Text = tostring(CustomValue.Text and string.format("%.1f",(CustomValue.Text / max) * (max - min) + min) )
					else
						CustomValue.Text = tostring(CustomValue.Text and math.floor( (CustomValue.Text / max) * (max - min) + min) )
					end
					callback({
						["s"] =  CustomValue.Text;
					})
					--callback({ tonumber(CustomValue.Text),check2.toogle2})
					--  pcall(callback, CustomValue.Text)
				end)
				DefaultValue.MouseButton1Click:Connect(function()
					if CustomValue.Text == "" then
						CustomValue.Text  = de
					end
					pcall(function()
						CustomValue.Text  = tonumber(de)
					end)
					if  tonumber(CustomValue.Text) > max then
						CustomValue.Text  = max
					end
					if  tonumber(CustomValue.Text) < min then
						CustomValue.Text  = min
					end
					MainValue:TweenSize(UDim2.new((CustomValue.Text  or 0  ) / max, 0, 0, 5), "Out", "Sine", 0.2, true)
					ConneValue:TweenPosition(UDim2.new((CustomValue.Text or 0)/max, 0,0.5, 0) , "Out", "Sine", 0.2, true)

					if floor == true then
						CustomValue.Text = tostring(CustomValue.Text and string.format("%.1f",(CustomValue.Text / max) * (max - min) + min) )
					else
						CustomValue.Text = tostring(CustomValue.Text and math.floor( (CustomValue.Text / max) * (max - min) + min) )
					end
					callback({
						["s"] =  CustomValue.Text;
					})
				end)

				function sliderfunc:Update(value)
					MainValue:TweenSize(UDim2.new((value or 0) / max, 0, 0, 5), "Out", "Sine", 0.2, true)
					CustomValue.Text = value

					pcall(function()
						callback(value)
					end)
				end
				return sliderfunc
			end
			function ui4:Dropdown(text,option,callback)
				local DropFrame = Instance.new("Frame")

				DropFrame.Name = "DropFrame"
				DropFrame.Parent = ScrollingFrame_Pageframe
				DropFrame.AnchorPoint = Vector2.new(0.5, 0.5)
				DropFrame.BackgroundColor3 = Color3.fromRGB(10,10,10)
				DropFrame.BorderSizePixel = 0
				DropFrame.ClipsDescendants = true
				DropFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
				DropFrame.Size = UDim2.new(0, 210, 0, 30)

				local Main_UiStroke = Instance.new("UIStroke")

				Main_UiStroke.Thickness = 1
				Main_UiStroke.Name = ""
				Main_UiStroke.Parent = DropFrame
				Main_UiStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
				Main_UiStroke.LineJoinMode = Enum.LineJoinMode.Round
				Main_UiStroke.Color = Color3.fromRGB(0, 0, 0)
				Main_UiStroke.Transparency = 0

				local ConnerDropFrame = Instance.new("UICorner")

				ConnerDropFrame.CornerRadius = UDim.new(0, 4)
				ConnerDropFrame.Name = "ConnerDropFrame"
				ConnerDropFrame.Parent = DropFrame

				local LabelFrameDrop = Instance.new("TextLabel")

				LabelFrameDrop.Name = "LabelFrameDrop"
				LabelFrameDrop.Parent = DropFrame
				LabelFrameDrop.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				LabelFrameDrop.BackgroundTransparency = 1.000
				LabelFrameDrop.Position = UDim2.new(0.0328638479, 0, 0, 0)
				LabelFrameDrop.Size = UDim2.new(0, 195, 0, 30)
				LabelFrameDrop.Font = Enum.Font.Gotham
				LabelFrameDrop.TextColor3 = Color3.fromRGB(155, 155, 155)
				LabelFrameDrop.TextSize = 11.000
				LabelFrameDrop.TextWrapped = true
				LabelFrameDrop.TextXAlignment = Enum.TextXAlignment.Left
				LabelFrameDrop.Text = tostring(text).." :"

				local ScolDown = Instance.new("ScrollingFrame")

				ScolDown.Name = "ScolDown"
				ScolDown.Parent = LabelFrameDrop
				ScolDown.Active = true
				ScolDown.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				ScolDown.BackgroundTransparency = 1
				ScolDown.BorderSizePixel = 0
				ScolDown.Position = UDim2.new(0, 0, 1, 0)
				ScolDown.Size = UDim2.new(0, 195, 0, 115)
				ScolDown.CanvasSize = UDim2.new(0, 0, 0, 2)
				ScolDown.ScrollBarThickness = 3

				local UIListLayoutlist = Instance.new("UIListLayout")
				local UIPaddinglist = Instance.new("UIPadding")

				UIListLayoutlist.Name = "UIListLayoutlist"
				UIListLayoutlist.Parent = ScolDown
				UIListLayoutlist.SortOrder = Enum.SortOrder.LayoutOrder
				UIListLayoutlist.Padding = UDim.new(0, 5)

				UIPaddinglist.Name = "UIPaddinglist"
				UIPaddinglist.Parent = ScolDown
				UIPaddinglist.PaddingLeft = UDim.new(0, 12)
				UIPaddinglist.PaddingTop = UDim.new(0, 5)

				local ButtonDrop = Instance.new("TextButton")

				ButtonDrop.Name = "ButtonDrop"
				ButtonDrop.Parent = DropFrame
				ButtonDrop.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				ButtonDrop.BackgroundTransparency = 1.000
				ButtonDrop.ClipsDescendants = true
				ButtonDrop.Size = UDim2.new(0, 335, 0, 30)
				ButtonDrop.AutoButtonColor = false
				ButtonDrop.Font = Enum.Font.SourceSans
				ButtonDrop.Text = ""
				ButtonDrop.TextColor3 = Color3.fromRGB(0, 0, 0)
				ButtonDrop.TextSize = 14.000
				ButtonDrop.TextWrapped = true

				local dog = false

				local FrameSize = 75
				local cout = 0
				for i , v in pairs(option) do
					cout =cout + 1
					if cout == 1 then
						FrameSize = 75
					elseif cout == 2 then
						FrameSize = 110
					elseif cout >= 3 then
						FrameSize = 150
					end

					local ListFrame = Instance.new("Frame")

					ListFrame.Name = "ListFrame"
					ListFrame.Parent = ScolDown
					ListFrame.AnchorPoint = Vector2.new(0.5, 0.5)
					ListFrame.BackgroundColor3 = Color3.fromRGB(67,67,67)
					ListFrame.BackgroundTransparency = 1
					ListFrame.ClipsDescendants = true
					ListFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
					ListFrame.Size = UDim2.new(0, 175, 0, 30)

					local TextLabel_TapDro2p = Instance.new("TextLabel")

					TextLabel_TapDro2p.Name = "TextLabel_TapDro2p"
					TextLabel_TapDro2p.Parent = ListFrame
					TextLabel_TapDro2p.AnchorPoint = Vector2.new(0.5, 0.5)
					TextLabel_TapDro2p.BackgroundColor3 = Color3.fromRGB(249, 53, 139)
					TextLabel_TapDro2p.BackgroundTransparency = 1.000
					TextLabel_TapDro2p.Position = UDim2.new(0.5, 0, 0.5, 0)
					TextLabel_TapDro2p.Size = UDim2.new(0, 205, 0, 30)
					TextLabel_TapDro2p.Font = Enum.Font.GothamSemibold
					TextLabel_TapDro2p.TextColor3 = Color3.fromRGB(155, 155, 155)
					TextLabel_TapDro2p.TextSize = 11
					TextLabel_TapDro2p.Text = tostring(v)

					local ButtonDrop2 = Instance.new("TextButton")

					ButtonDrop2.Name = "ButtonDrop2"
					ButtonDrop2.Parent = ListFrame
					ButtonDrop2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					ButtonDrop2.BackgroundTransparency = 1
					ButtonDrop2.BorderSizePixel = 0
					ButtonDrop2.ClipsDescendants = true
					ButtonDrop2.Position = UDim2.new(-0.0666666701, 0, 0, 0)
					ButtonDrop2.Size = UDim2.new(0, 205, 0, 30)
					ButtonDrop2.AutoButtonColor = false
					ButtonDrop2.Text = ""
					ButtonDrop2.Font = Enum.Font.SourceSans
					ButtonDrop2.TextColor3 = Color3.fromRGB(0, 0, 0)
					ButtonDrop2.TextSize = 14.000
					ButtonDrop2.TextWrapped = true

					ButtonDrop2.MouseEnter:Connect(function ()
						TweenService:Create(
							TextLabel_TapDro2p,
							TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
							{TextColor3 = Color3.fromRGB(255, 23, 46)} -- UDim2.new(0, 128, 0, 25)
						):Play()
					end)

					ButtonDrop2.MouseLeave:Connect(function ()
						TweenService:Create(
							TextLabel_TapDro2p,
							TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
							{TextColor3 = Color3.fromRGB(255, 255, 255)} -- UDim2.new(0, 128, 0, 25)
						):Play()
					end)

					ButtonDrop2.MouseButton1Click:Connect(function()
						TweenService:Create(
							DropFrame,
							TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
							{Size = UDim2.new(0, 210, 0, 30)} -- UDim2.new(0, 128, 0, 25)
						):Play()
						LabelFrameDrop.Text =  text.." : "..tostring(v)
						callback(v)
						dog = not dog
					end)
					ScolDown.CanvasSize = UDim2.new(0,0,0,UIListLayoutlist.AbsoluteContentSize.Y + 10  )
				end

				DropFrame.MouseEnter:Connect(function()
					TweenService:Create(
						Main_UiStroke,
						TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{Color = Color3.fromRGB(255, 23, 46)} -- UDim2.new(0, 128, 0, 25)
					):Play()
					TweenService:Create(
						LabelFrameDrop,
						TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{TextColor3 = Color3.fromRGB(255, 23, 46)} -- UDim2.new(0, 128, 0, 25)
					):Play()
					TweenService:Create(
						DropArbt_listimage,
						TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{ImageColor3 = Color3.fromRGB(255, 255, 255)} -- UDim2.new(0, 128, 0, 25)
					):Play()
				end)

				DropFrame.MouseLeave:Connect(function()
					TweenService:Create(
						Main_UiStroke,
						TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{Color = Color3.fromRGB(0, 0, 0)} -- UDim2.new(0, 128, 0, 25)
					):Play()
					TweenService:Create(
						LabelFrameDrop,
						TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{TextColor3 = Color3.fromRGB(155, 155, 155)} -- UDim2.new(0, 128, 0, 25)
					):Play()
				end)

				ButtonDrop.MouseButton1Click:Connect(function()
					if dog == false then
						TweenService:Create(
							DropFrame,
							TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
							{Size = UDim2.new(0, 210, 0, FrameSize)} -- UDim2.new(0, 128, 0, 25)
						):Play()
						ScolDown.CanvasSize = UDim2.new(0,0,0,UIListLayoutlist.AbsoluteContentSize.Y + 10  )
					else
						TweenService:Create(
							DropFrame,
							TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
							{Size = UDim2.new(0, 210, 0, 30)} -- UDim2.new(0, 128, 0, 25)
						):Play()
						ScolDown.CanvasSize = UDim2.new(0,0,0,UIListLayoutlist.AbsoluteContentSize.Y + 10  )
					end
					dog = not dog
				end)
				ScolDown.CanvasSize = UDim2.new(0,0,0,UIListLayoutlist.AbsoluteContentSize.Y + 10  )

				local dropfunc = {}

				function dropfunc:Clear()
					LabelFrameDrop.Text = tostring(text).." :"
					TweenService:Create(
						DropFrame,
						TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{Size = UDim2.new(0, 210, 0, 30)} -- UDim2.new(0, 128, 0, 25)
					):Play()
					dog = not dog
					for i, v in next, ScolDown:GetChildren() do
						if v:IsA("Frame") then
							v:Destroy()
						end
					end

					function dropfunc:Add(t)

						local ListFrame = Instance.new("Frame")

						ListFrame.Name = "ListFrame"
						ListFrame.Parent = ScolDown
						ListFrame.BackgroundColor3 =  Color3.fromRGB(22553, 23, 23)-- Color3.fromRGB(249, 53, 139)
						ListFrame.BorderSizePixel = 0
						ListFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
						ListFrame.AnchorPoint = Vector2.new(0.5, 0.5)
						ListFrame.Size = UDim2.new(0, 175, 0, 30) -- UDim2.new(0, 213, 0, 35)
						ListFrame.BackgroundTransparency  = 1
						ListFrame.ClipsDescendants = true

						local TextLabel_TapDro2p = Instance.new("TextLabel")

						TextLabel_TapDro2p.Parent = ListFrame
						TextLabel_TapDro2p.Name =  tostring(t).."Dropdown"
						TextLabel_TapDro2p.BackgroundColor3 = Color3.fromRGB(255, 23, 46)
						TextLabel_TapDro2p.Position = UDim2.new(0.5, 0, 0.5, 0)
						TextLabel_TapDro2p.Size =  UDim2.new(0, 205, 0, 30)
						TextLabel_TapDro2p.Font = Enum.Font.GothamSemibold
						TextLabel_TapDro2p.Text = tostring(t)
						TextLabel_TapDro2p.TextColor3 = Color3.fromRGB(155, 155, 155)
						TextLabel_TapDro2p.TextSize = 11.000
						TextLabel_TapDro2p.AnchorPoint = Vector2.new(0.5, 0.5)
						TextLabel_TapDro2p.BackgroundTransparency = 1
						TextLabel_TapDro2p.TextXAlignment = Enum.TextXAlignment.Center

						local ButtonDrop2 = Instance.new("TextButton")

						ButtonDrop2.Parent = ListFrame
						ButtonDrop2.Name = "ButtonDrop2"
						ButtonDrop2.BackgroundColor3 = Color3.fromRGB(255, 23, 46)
						ButtonDrop2.Size = UDim2.new(0, 205, 0, 30)
						ButtonDrop2.Font = Enum.Font.SourceSansSemibold
						ButtonDrop2.Text = ""
						ButtonDrop2.TextColor3 = Color3.fromRGB(155, 155, 155)
						ButtonDrop2.TextSize = 13.000
						--   ButtonDrop2.AnchorPoint = Vector2.new(0.5, 0.5)
						ButtonDrop2.Position = UDim2.new(0., 0, 0., 0)
						ButtonDrop2.TextXAlignment = Enum.TextXAlignment.Center
						ButtonDrop2.BackgroundTransparency = 1
						ButtonDrop2.TextWrapped = true
						ButtonDrop2.AutoButtonColor = false
						ButtonDrop2.ClipsDescendants = true

						ButtonDrop2.MouseEnter:Connect(function ()
							TweenService:Create(
								TextLabel_TapDro2p,
								TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
								{TextColor3 = Color3.fromRGB(255, 23, 46)} -- UDim2.new(0, 128, 0, 25)
							):Play()
						end)

						ButtonDrop2.MouseLeave:Connect(function ()
							TweenService:Create(
								TextLabel_TapDro2p,
								TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
								{TextColor3 = Color3.fromRGB(255, 255, 255)} -- UDim2.new(0, 128, 0, 25)
							):Play()
						end)

						ButtonDrop2.MouseButton1Click:Connect(function()
							TweenService:Create(
								DropFrame,
								TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
								{Size = UDim2.new(0, 210, 0, 30)} -- UDim2.new(0, 128, 0, 25)
							):Play()
							callback(t)
							dog = not dog
						end)
					end
					ScolDown.CanvasSize = UDim2.new(0,0,0,UIListLayoutlist.AbsoluteContentSize.Y + 10  )
				end
				return dropfunc
			end
			function ui4:Textbox(text,text2,callback)
				local TextFrame = Instance.new("Frame")

				TextFrame.Name = "TextFrame"
				TextFrame.Parent = ScrollingFrame_Pageframe
				TextFrame.Active = true
				TextFrame.AnchorPoint = Vector2.new(0.5, 0.5)
				TextFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				TextFrame.BackgroundTransparency = 1.000
				TextFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
				TextFrame.Size = UDim2.new(0, 213, 0, 70)

				local LabelNameSliderxd = Instance.new("TextLabel")

				LabelNameSliderxd.Name = "LabelNameSliderxd"
				LabelNameSliderxd.Parent = TextFrame
				LabelNameSliderxd.AnchorPoint = Vector2.new(0.5, 0.5)
				LabelNameSliderxd.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				LabelNameSliderxd.BackgroundTransparency = 1.000
				LabelNameSliderxd.BorderSizePixel = 0
				LabelNameSliderxd.Position = UDim2.new(0.5, 0, 0.200000003, 0)
				LabelNameSliderxd.Size = UDim2.new(0, 160, 0, 20)
				LabelNameSliderxd.Font = Enum.Font.Gotham
				LabelNameSliderxd.TextColor3 = Color3.fromRGB(255, 255, 255)
				LabelNameSliderxd.TextSize = 12.000
				LabelNameSliderxd.Text = tostring(text)

				local ConerTextBox = Instance.new("UICorner")

				ConerTextBox.CornerRadius = UDim.new(0, 4)
				ConerTextBox.Name = "ConerTextBox"
				ConerTextBox.Parent = TextFrame

				local FrameBox = Instance.new("Frame")

				FrameBox.Name = "FrameBox"
				FrameBox.Parent = TextFrame
				FrameBox.AnchorPoint = Vector2.new(0.5, 0.5)
				FrameBox.BackgroundColor3 = Color3.fromRGB(10,10,10)
				FrameBox.BorderSizePixel = 0
				FrameBox.ClipsDescendants = true
				FrameBox.Position = UDim2.new(0.5, 0, 0.649999976, 0)
				FrameBox.Size = UDim2.new(0, 213, 0, 30)

				local ConerTextBox2 = Instance.new("UICorner")

				--Properties:

				ConerTextBox2.CornerRadius = UDim.new(0, 4)
				ConerTextBox2.Name = "ConerTextBox2"
				ConerTextBox2.Parent = FrameBox

				local TextBox2Stroke = Instance.new("UIStroke")

				TextBox2Stroke.Thickness = 1
				TextBox2Stroke.Name = ""
				TextBox2Stroke.Parent = FrameBox
				TextBox2Stroke.LineJoinMode = Enum.LineJoinMode.Round
				TextBox2Stroke.Color = Color3.fromRGB(255, 23, 46)
				TextBox2Stroke.Transparency = 0.7

				local TextFrame2 = Instance.new("TextBox")

				TextFrame2.Name = "TextFrame2"
				TextFrame2.Parent = FrameBox
				TextFrame2.AnchorPoint = Vector2.new(0.5, 0.5)
				TextFrame2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				TextFrame2.BackgroundTransparency = 1.000
				TextFrame2.BorderSizePixel = 0
				TextFrame2.ClipsDescendants = true
				TextFrame2.Position = UDim2.new(0.499413133, 0, 0.5, 0)
				TextFrame2.Size = UDim2.new(0, 212, 0, 35)
				TextFrame2.Font = Enum.Font.GothamSemibold
				TextFrame2.PlaceholderText = text2
				TextFrame2.PlaceholderColor3 = Color3.fromRGB(155, 155, 155)
				TextFrame2.TextColor3 = Color3.fromRGB(155, 155, 155)
				TextFrame2.TextSize = 11.000

				TextFrame.MouseEnter:Connect(function()
					TweenService:Create(
						TextFrame2,
						TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{PlaceholderColor3 = Color3.fromRGB(255, 255, 255)} -- UDim2.new(0, 128, 0, 25)
					):Play()
					TweenService:Create(
						TextFrame2,
						TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{TextColor3 = Color3.fromRGB(255,255,255)} -- UDim2.new(0, 128, 0, 25)
					):Play()
					TweenService:Create(
						LabelNameSliderxd,
						TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{TextColor3 = Color3.fromRGB(255, 255, 255)} -- UDim2.new(0, 128, 0, 25)
					):Play()
					TweenService:Create(
						TextBox2Stroke,
						TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{Transparency = 0} -- UDim2.new(0, 128, 0, 25)
					):Play()
				end)

				TextFrame.MouseLeave:Connect(function()
					TweenService:Create(
						FrameBox,
						TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{BackgroundColor3 = Color3.fromRGB(10,10,10)} -- UDim2.new(0, 128, 0, 25)
					):Play()
					TweenService:Create(
						TextFrame2,
						TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{PlaceholderColor3 = Color3.fromRGB(155, 155, 155)} -- UDim2.new(0, 128, 0, 25)
					):Play()
					TweenService:Create(
						TextBox2Stroke,
						TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{Transparency = 0.7} -- UDim2.new(0, 128, 0, 25)
					):Play()
					TweenService:Create(
						LabelNameSliderxd,
						TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{TextColor3 = Color3.fromRGB(155, 155, 155)} -- UDim2.new(0, 128, 0, 25)
					):Play()
					TweenService:Create(
						TextFrame2,
						TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{TextColor3 = Color3.fromRGB(155, 155, 155)} -- UDim2.new(0, 128, 0, 25)
					):Play()
				end)

				TextFrame2.FocusLost:Connect(function ()
					if #TextFrame2.Text > 0 then
						pcall(callback,TextFrame2.Text)
					end
				end)
			end
			function ui4:Color(text,preset,callback)
				local Pixker = Instance.new("Frame")

				Pixker.Name = "Pixker"
				Pixker.Parent = ScrollingFrame_Pageframe
				Pixker.BackgroundColor3 = Color3.fromRGB(10,10,10)
				Pixker.Position = UDim2.new(0.0833333358, 0, 0.235135213, 0)
				Pixker.Size = UDim2.new(0, 210, 0, 33)
				Pixker.BackgroundTransparency = 0
				Pixker.BorderSizePixel = 0
				Pixker.AnchorPoint = Vector2.new(0.5, 0.5)
				Pixker.Position = UDim2.new(0.5, 0, 0.5, 0)
				Pixker.ClipsDescendants = true


				local BoxColorCorner2 = Instance.new("UICorner")

				BoxColorCorner2.CornerRadius = UDim.new(0, 4)
				BoxColorCorner2.Name = "BoxColorCorner"
				BoxColorCorner2.Parent = Pixker

				local FrameStroke = Instance.new("UIStroke")

				FrameStroke.Thickness = 1
				FrameStroke.Name = ""
				FrameStroke.Parent = Pixker
				FrameStroke.LineJoinMode = Enum.LineJoinMode.Round
				FrameStroke.Color = Color3.fromRGB(0, 0, 0)
				FrameStroke.Transparency = 0


				local TextFrameColor = Instance.new("TextLabel")

				TextFrameColor.Parent = Pixker
				TextFrameColor.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				TextFrameColor.BorderSizePixel = 0
				TextFrameColor.Size = UDim2.new(0, 375, 0, 34)
				TextFrameColor.Font = Enum.Font.SourceSans
				TextFrameColor.Text = "  "
				TextFrameColor.TextColor3 = Color3.fromRGB(0, 0, 0)
				TextFrameColor.TextSize = 14.000
				TextFrameColor.BackgroundTransparency = 1
				TextFrameColor.Position = UDim2.new(0., 0, 0., 0)

				local TextReal = Instance.new("TextLabel")

				TextReal.Parent = TextFrameColor
				TextReal.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				TextReal.BorderSizePixel = 0
				TextReal.Size = UDim2.new(0, 140, 0, 34)
				TextReal.Font = Enum.Font.Gotham
				TextReal.Text = text
				TextReal.TextColor3 = Color3.fromRGB(155,155, 155)
				TextReal.TextSize = 11.000
				TextReal.BackgroundTransparency = 1
				TextReal.Position = UDim2.new(0.03, 0, 0., 0)
				TextReal.TextXAlignment = Enum.TextXAlignment.Left

				local BoxColor = Instance.new("Frame")

				BoxColor.Name = "BoxColor"
				BoxColor.Parent = TextFrameColor
				BoxColor.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				BoxColor.Position = UDim2.new(0.5, 0, 0.5, 0)
				BoxColor.Size = UDim2.new(0, 35, 0, 19)
				BoxColor.AnchorPoint = Vector2.new(0.5, 0.5)

				local FrameStrokea = Instance.new("UIStroke")

				FrameStrokea.Thickness = 1
				FrameStrokea.Name = ""
				FrameStrokea.Parent = BoxColor
				FrameStrokea.LineJoinMode = Enum.LineJoinMode.Round
				FrameStrokea.Color = Color3.fromRGB(0, 0, 0)
				FrameStrokea.Transparency = 0.7

				local BoxColorCorner = Instance.new("UICorner")

				BoxColorCorner.CornerRadius = UDim.new(0, 4)
				BoxColorCorner.Name = "BoxColorCorner"
				BoxColorCorner.Parent = BoxColor

				local TextButton_Dropdown = Instance.new("TextButton")


				TextButton_Dropdown.Parent = TextFrameColor
				TextButton_Dropdown.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
				TextButton_Dropdown.BorderSizePixel = 0
				TextButton_Dropdown.Position = UDim2.new(0., 0, 0.14705883, 0)
				TextButton_Dropdown.Size = UDim2.new(0, 375, 0, 33)
				TextButton_Dropdown.Font = Enum.Font.SourceSans
				TextButton_Dropdown.Text = "  "
				TextButton_Dropdown.TextColor3 = Color3.fromRGB(0, 0, 0)
				TextButton_Dropdown.TextSize = 14.000
				TextButton_Dropdown.AutoButtonColor = false
				--TextButton_Dropdown.AnchorPoint = Vector2.new(0.5, 0.5)
				TextButton_Dropdown.Position = UDim2.new(0, 0, 0, 0)
				TextButton_Dropdown.BackgroundTransparency = 1



				Pixker.MouseEnter:Connect(function()
					TweenService:Create(
						FrameStroke,
						TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{Color = Color3.fromRGB(255, 23, 46)}
					):Play()
					TweenService:Create(
						TextReal,
						TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{TextColor3 = Color3.fromRGB(255, 23, 46)}
					):Play()

				end)
				Pixker.MouseLeave:Connect(function()
					TweenService:Create(
						FrameStroke,
						TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{Color = Color3.fromRGB(0, 0, 0)}
					):Play()
					TweenService:Create(
						TextReal,
						TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{TextColor3 = Color3.fromRGB(155,155, 155)}
					):Play()
				end)
				-- Rainbow Toggle
				local TextButton_2_Toggle = Instance.new("TextButton")

				TextButton_2_Toggle.Name = "TextButton_2_Toggle"
				TextButton_2_Toggle.Parent = TextFrameColor
				TextButton_2_Toggle.AnchorPoint = Vector2.new(0.5, 0.5)
				TextButton_2_Toggle.BackgroundColor3 = Color3.fromRGB(5,5,5)
				TextButton_2_Toggle.BorderSizePixel = 0
				TextButton_2_Toggle.Position = UDim2.new(0.0807512328, 0, 1.9, 0)
				TextButton_2_Toggle.Size = UDim2.new(0, 21, 0, 21)
				TextButton_2_Toggle.AutoButtonColor = false
				TextButton_2_Toggle.Font = Enum.Font.SourceSans
				TextButton_2_Toggle.Text = " "
				TextButton_2_Toggle.TextColor3 = Color3.fromRGB(0, 0, 0)
				TextButton_2_Toggle.TextSize = 14.000

				local Main_UiStroke = Instance.new("UIStroke")

				Main_UiStroke.Thickness = 1
				Main_UiStroke.Name = ""
				Main_UiStroke.Parent = TextButton_2_Toggle
				Main_UiStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
				Main_UiStroke.LineJoinMode = Enum.LineJoinMode.Round
				Main_UiStroke.Color = Color3.fromRGB(0, 0, 0)
				Main_UiStroke.Transparency = 0

				local TextButton_2_Toggle2 = Instance.new("TextButton")

				TextButton_2_Toggle2.Name = "TextButton_2_Toggle"
				TextButton_2_Toggle2.Parent = TextButton_2_Toggle
				TextButton_2_Toggle2.BackgroundColor3 = Color3.fromRGB(7,7,7)
				TextButton_2_Toggle2.BorderSizePixel = 0
				TextButton_2_Toggle2.Position = UDim2.new(0, 2, 0, 2)
				TextButton_2_Toggle2.Size = UDim2.new(0, 17, 0, 17)
				TextButton_2_Toggle2.AutoButtonColor = false
				TextButton_2_Toggle2.Font = Enum.Font.SourceSans
				TextButton_2_Toggle2.Text = " "
				TextButton_2_Toggle2.TextColor3 = Color3.fromRGB(0, 0, 0)
				TextButton_2_Toggle2.TextSize = 14.000

				local UICorner2 = Instance.new("UICorner")

				UICorner2.CornerRadius = UDim.new(0, 6)
				UICorner2.Parent = TextButton_2_Toggle2

				local Main_UiStroke2 = Instance.new("UIStroke")

				Main_UiStroke2.Thickness = 1
				Main_UiStroke2.Name = ""
				Main_UiStroke2.Parent = TextButton_2_Toggle2
				Main_UiStroke2.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
				Main_UiStroke2.LineJoinMode = Enum.LineJoinMode.Round
				Main_UiStroke2.Color = Color3.fromRGB(0, 0, 0)
				Main_UiStroke2.Transparency = 0

				local UICorner = Instance.new("UICorner")

				UICorner.CornerRadius = UDim.new(0, 6)
				UICorner.Parent = TextButton_2_Toggle

				local ImageButton = Instance.new("ImageButton")

				ImageButton.Parent = TextButton_2_Toggle
				ImageButton.AnchorPoint = Vector2.new(0.5, 0.5)
				ImageButton.BackgroundColor3 = Color3.fromRGB(255, 23, 46)
				ImageButton.BackgroundTransparency = 0
				ImageButton.BorderSizePixel = 0
				ImageButton.AutoButtonColor = false
				ImageButton.Position = UDim2.new(0.5, 0, 0.5, 0)
				ImageButton.Size = UDim2.new(0, 0, 0, 0)

				local UICorner6 = Instance.new("UICorner")

				UICorner6.CornerRadius = UDim.new(0, 6)
				UICorner6.Parent = ImageButton

				local TextButton_3_Toggle2 = Instance.new("TextLabel")

				TextButton_3_Toggle2.Parent = TextButton_2_Toggle
				TextButton_3_Toggle2.BackgroundColor3 = Color3.fromRGB(32, 32,32)
				TextButton_3_Toggle2.BorderColor3 = Color3.fromRGB(249, 53, 139)
				TextButton_3_Toggle2.BorderSizePixel = 0
				TextButton_3_Toggle2.AnchorPoint = Vector2.new(0.5, 0.5)
				TextButton_3_Toggle2.Position = UDim2.new(2.5, 0, 0.5, 0)
				TextButton_3_Toggle2.Size = UDim2.new(0, 500, 0, 21)
				TextButton_3_Toggle2.Font = Enum.Font.Gotham
				TextButton_3_Toggle2.Text = "Rainbow"
				TextButton_3_Toggle2.TextColor3 = Color3.fromRGB(255, 255, 255)
				TextButton_3_Toggle2.TextSize = 11.000
				TextButton_3_Toggle2.BackgroundTransparency = 1

				local OMF = Instance.new("TextButton")

				OMF.Parent = TextButton_2_Toggle
				OMF.BackgroundTransparency = 1
				OMF.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				OMF.BorderSizePixel = 0
				OMF.Size = UDim2.new(0, 100, 0, 20)
				OMF.AutoButtonColor = false
				OMF.Font = Enum.Font.SourceSans
				OMF.Text = " "
				OMF.TextColor3 = Color3.fromRGB(0, 0, 0)
				OMF.TextSize = 12.000
				OMF.AnchorPoint = Vector2.new(0.5, 0.5)
				OMF.Position = UDim2.new(1.3, 0, 0.5, 0)

				local Color =  Instance.new("ImageLabel")

				Color.Name = "Color"
				Color.Parent = TextFrameColor
				Color.BackgroundColor3 = Color3.fromRGB(255, 0, 4)
				Color.Position = UDim2.new(0.03,0,4,0)
				Color.Size = UDim2.new(0, 195, 0, 40)
				Color.ZIndex = 0
				Color.BorderSizePixel = 0
				Color.Image = "rbxassetid://4155801252"

				local ColorFucj = Instance.new("UICorner")

				ColorFucj.CornerRadius = UDim.new(0, 4)
				ColorFucj.Name = ""
				ColorFucj.Parent = Color

				local ColorSelection =  Instance.new("ImageLabel")

				ColorSelection.Name = "ColorSelection"
				ColorSelection.Parent = Color
				ColorSelection.AnchorPoint = Vector2.new(0.5, 0.5)
				ColorSelection.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				ColorSelection.BackgroundTransparency = 1.000
				ColorSelection.Position = UDim2.new(preset and select(3, Color3.toHSV(preset)))
				ColorSelection.Size = UDim2.new(0, 18, 0, 18)
				ColorSelection.Image = "http://www.roblox.com/asset/?id=4805639000"
				ColorSelection.ScaleType = Enum.ScaleType.Fit
				ColorSelection.Visible = true

				local Hue =  Instance.new("ImageLabel")

				Hue.Name = "Hue2"
				Hue.Parent = TextFrameColor
				Hue.Position = UDim2.new(0.03,0,3,0)
				Hue.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Hue.Size = UDim2.new(0, 195, 0, 25)
				Hue.ZIndex = 0
				Hue.BorderSizePixel = 0

				local ColorFucj2 = Instance.new("UICorner")

				ColorFucj2.CornerRadius = UDim.new(0, 4)
				ColorFucj2.Name = ""
				ColorFucj2.Parent = Hue

				local HueGradient = Instance.new("UIGradient")

				HueGradient.Color = ColorSequence.new {
					ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 0, 4)),
					ColorSequenceKeypoint.new(0.20, Color3.fromRGB(234, 255, 0)),
					ColorSequenceKeypoint.new(0.40, Color3.fromRGB(21, 255, 0)),
					ColorSequenceKeypoint.new(0.60, Color3.fromRGB(0, 255, 255)),
					ColorSequenceKeypoint.new(0.80, Color3.fromRGB(0, 17, 255)),
					ColorSequenceKeypoint.new(0.90, Color3.fromRGB(255, 0, 251)),
					ColorSequenceKeypoint.new(1.00, Color3.fromRGB(255, 0, 4))
				}
				HueGradient.Rotation = 0
				HueGradient.Name = "HueGradient"
				HueGradient.Parent = Hue

				local HueSelection =  Instance.new("ImageLabel")

				HueSelection.Name = "HueSelection"
				HueSelection.Parent = Hue
				HueSelection.AnchorPoint = Vector2.new(0.5, 0.5)
				HueSelection.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				HueSelection.BackgroundTransparency = 1.000
				HueSelection.Position = UDim2.new(preset and select(3, Color3.toHSV(preset)))
				HueSelection.Size = UDim2.new(0, 18, 0, 18)
				HueSelection.Image = "http://www.roblox.com/asset/?id=4805639000"
				HueSelection.ScaleType = Enum.ScaleType.Fit
				HueSelection.Visible = true


				local BTN_XD = Instance.new("TextButton")

				BTN_XD.Parent = TextFrameColor
				BTN_XD.BackgroundColor3 = Color3.fromRGB(10,10,10)
				BTN_XD.BorderColor3 = Color3.fromRGB(10,10,10)
				BTN_XD.BorderSizePixel = 0
				BTN_XD.AnchorPoint = Vector2.new(0.5, 0.5)
				BTN_XD.Position = UDim2.new(0.4, 0, 1.9, 0)
				BTN_XD.Size = UDim2.new(0, 50, 0, 25)
				BTN_XD.Font = Enum.Font.GothamSemibold
				BTN_XD.Text = "Confirm"
				BTN_XD.TextColor3 = Color3.fromRGB(255, 255, 255)
				BTN_XD.TextSize = 11.000
				BTN_XD.AutoButtonColor = false

				local BTN_XD_COnner = Instance.new("UICorner")

				BTN_XD_COnner.CornerRadius = UDim.new(0, 4)
				BTN_XD_COnner.Name = ""
				BTN_XD_COnner.Parent = BTN_XD



				local BTN_XDStroke = Instance.new("UIStroke")

				BTN_XDStroke.Thickness = 1
				BTN_XDStroke.Name = ""
				BTN_XDStroke.Parent = BTN_XD
				BTN_XDStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
				BTN_XDStroke.LineJoinMode = Enum.LineJoinMode.Round
				BTN_XDStroke.Color = Color3.fromRGB(255, 23, 46)
				BTN_XDStroke.Transparency = 0.7


				local UwU = false

				OMF.MouseButton1Click:Connect(function()
					if UwU == false  then
						TweenService:Create(
							ImageButton,
							TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
							{Size = UDim2.new(0, 25, 0, 25)} -- UDim2.new(0, 128, 0, 25)
						):Play()
						wait(0.1)
						TweenService:Create(
							ImageButton,
							TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
							{Size = UDim2.new(0, 21, 0, 21)} -- UDim2.new(0, 128, 0, 25)
						):Play()
					else
						TweenService:Create(
							ImageButton,
							TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
							{Size = UDim2.new(0, 25, 0, 25)} -- UDim2.new(0, 128, 0, 25)
						):Play()
						wait(0.1)
						TweenService:Create(
							ImageButton,
							TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
							{Size = UDim2.new(0, 0, 0, 0)} -- UDim2.new(0, 128, 0, 25)
						):Play()
					end
					UwU = not UwU
				end)

				OMF.MouseButton1Down:Connect(function()
					RainbowColorPicker = not RainbowColorPicker

					if ColorInput then
						ColorInput:Disconnect()
					end

					if HueInput then
						HueInput:Disconnect()
					end

					if RainbowColorPicker then


						OldToggleColor = BoxColor.BackgroundColor3
						OldColor = Color.BackgroundColor3
						OldColorSelectionPosition = ColorSelection.Position
						OldHueSelectionPosition = HueSelection.Position

						while RainbowColorPicker do
							BoxColor.BackgroundColor3 = Color3.fromHSV(Red.RainbowColorValue, 1, 1)
							Color.BackgroundColor3 = Color3.fromHSV(Red.RainbowColorValue, 1, 1)

							ColorSelection.Position = UDim2.new(1, 0, 0, 0)
							HueSelection.Position = UDim2.new(0,  Red.HueSelectionPosition, 0.5,0)

							pcall(callback, BoxColor.BackgroundColor3)
							wait()
						end
					elseif not RainbowColorPicker then

						BoxColor.BackgroundColor3 = OldToggleColor
						Color.BackgroundColor3 = OldColor

						ColorSelection.Position = OldColorSelectionPosition
						HueSelection.Position = OldHueSelectionPosition

						pcall(callback, BoxColor.BackgroundColor3)
					end
				end
				)
				ImageButton.MouseButton1Down:Connect(
					function()
						RainbowColorPicker = not RainbowColorPicker

						if ColorInput then
							ColorInput:Disconnect()
						end

						if HueInput then
							HueInput:Disconnect()
						end

						if RainbowColorPicker then


							OldToggleColor = BoxColor.BackgroundColor3
							OldColor = Color.BackgroundColor3
							OldColorSelectionPosition = ColorSelection.Position
							OldHueSelectionPosition = HueSelection.Position

							while RainbowColorPicker do
								BoxColor.BackgroundColor3 = Color3.fromHSV(Red.RainbowColorValue, 1, 1)
								Color.BackgroundColor3 = Color3.fromHSV(Red.RainbowColorValue, 1, 1)

								ColorSelection.Position = UDim2.new(1, 0, 0, 0)
								HueSelection.Position = UDim2.new(0,  Red.HueSelectionPosition, 0.5,0)

								pcall(callback, BoxColor.BackgroundColor3)
								wait()
							end
						elseif not RainbowColorPicker then

							BoxColor.BackgroundColor3 = OldToggleColor
							Color.BackgroundColor3 = OldColor

							ColorSelection.Position = OldColorSelectionPosition
							HueSelection.Position = OldHueSelectionPosition

							pcall(callback, BoxColor.BackgroundColor3)
						end
					end
				)


				local function UpdateColorPicker(nope)
					BoxColor.BackgroundColor3 = Color3.fromHSV(ColorH, ColorS, ColorV)
					Color.BackgroundColor3 = Color3.fromHSV(ColorH, 1, 1)

					pcall(callback, BoxColor.BackgroundColor3)
				end
				ColorH =
					1 -
					(math.clamp(HueSelection.AbsolutePosition.Y - Hue.AbsolutePosition.Y, 0, Hue.AbsoluteSize.Y) /
						Hue.AbsoluteSize.Y)
				ColorS =
					(math.clamp(ColorSelection.AbsolutePosition.X - Color.AbsolutePosition.X, 0, Color.AbsoluteSize.X) /
						Color.AbsoluteSize.X)
				ColorV =
					1 -
					(math.clamp(ColorSelection.AbsolutePosition.Y - Color.AbsolutePosition.Y, 0, Color.AbsoluteSize.Y) /
						Color.AbsoluteSize.Y)

				BoxColor.BackgroundColor3 = preset
				Color.BackgroundColor3 = preset
				pcall(callback, BoxColor.BackgroundColor3)

				local RainbowColorPicker = false

				Color.InputBegan:Connect(
					function(input)
						if input.UserInputType == Enum.UserInputType.MouseButton1 then
							if RainbowColorPicker then
								return
							end

							if ColorInput then
								ColorInput:Disconnect()
							end

							ColorInput =
								RunService.RenderStepped:Connect(
									function()
									local ColorX =
										(math.clamp(Mouse.X - Color.AbsolutePosition.X, 0, Color.AbsoluteSize.X) /
											Color.AbsoluteSize.X)
									local ColorY =
										(math.clamp(Mouse.Y - Color.AbsolutePosition.Y, 0, Color.AbsoluteSize.Y) /
											Color.AbsoluteSize.Y)

									ColorSelection.Position = UDim2.new(ColorX, 0, ColorY, 0)
									ColorS = ColorX
									ColorV = 1 - ColorY

									UpdateColorPicker(true)
								end
								)
						end
					end
				)


				Color.InputEnded:Connect(
					function(input)
						if input.UserInputType == Enum.UserInputType.MouseButton1 then
							if ColorInput then
								ColorInput:Disconnect()
							end
						end
					end
				)

				Hue.InputBegan:Connect(
					function(input)
						if input.UserInputType == Enum.UserInputType.MouseButton1 then
							if RainbowColorPicker then
								return
							end

							if HueInput then
								HueInput:Disconnect()
							end

							HueInput =
								RunService.RenderStepped:Connect(
									function()
									local HueY =
										(math.clamp(Mouse.Y - Hue.AbsolutePosition.Y, 0, Hue.AbsoluteSize.Y) /
											Hue.AbsoluteSize.Y)
									local HueX =
										(math.clamp(Mouse.X- Hue.AbsolutePosition.X, 0, Hue.AbsoluteSize.X) /
											Hue.AbsoluteSize.X)

									HueSelection.Position = UDim2.new(HueX, 0, HueY, 0)
									ColorH = 1 - HueY

									UpdateColorPicker(true)
								end
								)
						end
					end
				)

				Hue.InputEnded:Connect(
					function(input)
						if input.UserInputType == Enum.UserInputType.MouseButton1 then
							if HueInput then
								HueInput:Disconnect()
							end
						end
					end
				)
				local sk = false
				TextButton_Dropdown.MouseButton1Click:Connect(function()
					if sk == false then
						TweenService:Create(
							Pixker,
							TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
							{Size = UDim2.new(0, 210, 0, 180)}
						):Play()
					else
						TweenService:Create(
							Pixker,
							TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
							{Size = UDim2.new(0, 210, 0, 33)}
						):Play()
					end
					sk = not sk
				end
				)
				BTN_XD.MouseButton1Click:Connect(
					function()
						TweenService:Create(
							Pixker,
							TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
							{Size = UDim2.new(0, 210, 0, 33)}
						):Play()
						sk = not sk
					end)
			end
			function ui4:MultiDropdown(text,use,option,callback)

				local location = option.location or self.flags
				local flag = not use and option.flag or ""
				local callback = callback or function() end
				local list = option.list or {}
				local default = list.default or list[1].Name

				if not use then
					location[flag] = default
				end


				local DropFrame = Instance.new("Frame")

				DropFrame.Name = "DropFrame"
				DropFrame.Parent = ScrollingFrame_Pageframe
				DropFrame.BackgroundColor3 =  Color3.fromRGB(10,10,10)-- Color3.fromRGB(249, 53, 139)
				DropFrame.BorderSizePixel = 0
				DropFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
				DropFrame.AnchorPoint = Vector2.new(0.5, 0.5)
				DropFrame.Size = UDim2.new(0, 213, 0, 30) -- UDim2.new(0, 213, 0, 35)
				DropFrame.BackgroundTransparency  = 0
				DropFrame.ClipsDescendants = true

				local ConnerDropFrame = Instance.new("UICorner")

				ConnerDropFrame.CornerRadius = UDim.new(0, 4)
				ConnerDropFrame.Name = ""
				ConnerDropFrame.Parent = DropFrame

				local DropFrameStroke = Instance.new("UIStroke")

				DropFrameStroke.Thickness = 1
				DropFrameStroke.Name = ""
				DropFrameStroke.Parent = DropFrame
				DropFrameStroke.LineJoinMode = Enum.LineJoinMode.Round
				DropFrameStroke.Color = Color3.fromRGB(255, 23, 46)
				DropFrameStroke.Transparency = 0.7





				local LabelFrameDrop = Instance.new("TextLabel")

				LabelFrameDrop.Parent = DropFrame
				LabelFrameDrop.Name = "LabelFrameDrop"
				LabelFrameDrop.BackgroundColor3 = Color3.fromRGB(255, 23, 46)
				LabelFrameDrop.Position = UDim2.new(0., 0, 0., 0)
				LabelFrameDrop.Size =    UDim2.new(0, 213, 0, 30)
				LabelFrameDrop.Font = Enum.Font.SourceSansSemibold
				LabelFrameDrop.Text = ""
				LabelFrameDrop.TextColor3 = Color3.fromRGB(155, 155, 155)
				LabelFrameDrop.TextSize = 14.000
				--   LabelFrameDrop.AnchorPoint = Vector2.new(0.5, 0.5)
				LabelFrameDrop.BackgroundTransparency = 1
				LabelFrameDrop.TextXAlignment = Enum.TextXAlignment.Left


				local TextLabel_TapDrop = Instance.new("TextLabel")

				TextLabel_TapDrop.Parent = LabelFrameDrop
				TextLabel_TapDrop.Name = "TextLabel_TapDrop"
				TextLabel_TapDrop.BackgroundColor3 = Color3.fromRGB(255, 23, 46)
				TextLabel_TapDrop.Position = UDim2.new(0.04, 0, 0.14, 0)
				TextLabel_TapDrop.Size =    UDim2.new(0, 140, 0, 20)
				TextLabel_TapDrop.Font = Enum.Font.SourceSansSemibold
				TextLabel_TapDrop.Text = tostring(text)
				TextLabel_TapDrop.TextColor3 = Color3.fromRGB(155, 155, 155)
				TextLabel_TapDrop.TextSize = 14.000
				--     TextLabel_TapDrop.AnchorPoint = Vector2.new(0.5, 0.5)
				TextLabel_TapDrop.BackgroundTransparency = 1
				TextLabel_TapDrop.TextXAlignment = Enum.TextXAlignment.Left


				local DropArbt_listimage = Instance.new("ImageButton")

				DropArbt_listimage.Parent = LabelFrameDrop
				DropArbt_listimage.BackgroundTransparency = 1.000
				DropArbt_listimage.AnchorPoint = Vector2.new(0.5, 0.5)
				DropArbt_listimage.Position = UDim2.new(0.9, 0, 0.5, 0)
				DropArbt_listimage.BorderSizePixel = 0
				DropArbt_listimage.Size = UDim2.new(0, 25, 0, 25)
				DropArbt_listimage.Image = "http://www.roblox.com/asset/?id=6031091004"
				DropArbt_listimage.ImageColor3 = Color3.fromRGB(155, 155, 155)

				local ScolDown = Instance.new("ScrollingFrame")

				ScolDown.Name = "ScolDown"
				ScolDown.Position = UDim2.new(0.02, 0, 1., 0)
				ScolDown.Parent = LabelFrameDrop
				ScolDown.Active = true
				ScolDown.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				ScolDown.BorderSizePixel = 0
				ScolDown.Size = UDim2.new(0, 205, 0, 115)
				ScolDown.ScrollBarThickness = 3
				ScolDown.ClipsDescendants = true
				ScolDown.BackgroundTransparency = 1
				ScolDown.CanvasSize = UDim2.new(0, 0, 0, 2)

				local UIListLayoutlist = Instance.new("UIListLayout")
				local UIPaddinglist = Instance.new("UIPadding")

				UIListLayoutlist.Name = "UIListLayoutlist"
				UIListLayoutlist.Parent = ScolDown
				UIListLayoutlist.SortOrder = Enum.SortOrder.LayoutOrder
				UIListLayoutlist.Padding = UDim.new(0, 5)

				UIPaddinglist.Name = "UIPaddinglist"
				UIPaddinglist.Parent = ScolDown
				UIPaddinglist.PaddingTop = UDim.new(0, 5)
				UIPaddinglist.PaddingLeft = UDim.new(0, 12)

				local ButtonDrop = Instance.new("TextButton")

				ButtonDrop.Parent = DropFrame
				ButtonDrop.Name = "ButtonDrop"
				ButtonDrop.BackgroundColor3 = Color3.fromRGB(255, 23, 46)
				ButtonDrop.Size = UDim2.new(0, 213, 0, 30)
				ButtonDrop.Font = Enum.Font.SourceSansSemibold
				ButtonDrop.Text = ""
				ButtonDrop.TextColor3 = Color3.fromRGB(155, 155, 155)
				ButtonDrop.TextSize = 13.000
				--   ButtonDrop.AnchorPoint = Vector2.new(0.5, 0.5)
				ButtonDrop.Position = UDim2.new(0., 0, 0., 0)
				ButtonDrop.TextXAlignment = Enum.TextXAlignment.Center
				ButtonDrop.BackgroundTransparency = 1
				ButtonDrop.TextWrapped = true
				ButtonDrop.AutoButtonColor = false
				ButtonDrop.ClipsDescendants = true

				local dog = false

				local FrameSize = 75
				local cout = 0
				for i , v in pairs(list) do
					cout =cout + 1
					if cout == 1 then
						FrameSize = 75
					elseif cout == 2 then
						FrameSize = 110
					elseif cout >= 3 then
						FrameSize = 150
					end

					local listtog = Instance.new("Frame")

					listtog.Name = "listtog"
					listtog.Parent = ScolDown
					listtog.BackgroundColor3 = Color3.fromRGB(23, 23, 23)
					listtog.BackgroundTransparency =1
					listtog.BorderSizePixel = 0
					listtog.ClipsDescendants = true
					listtog.AnchorPoint = Vector2.new(0.5, 0.5)
					listtog.Position = UDim2.new(0.5, 0, 0.5, 0)
					listtog.Size = UDim2.new(0, 210, 0, 33)


					local listtextbutton = Instance.new("TextButton")

					listtextbutton.Parent = listtog
					listtextbutton.BackgroundTransparency =1
					listtextbutton.BackgroundColor3 = Color3.fromRGB(5,5,5)
					listtextbutton.BorderSizePixel = 0
					listtextbutton.Size =  UDim2.new(0, 210, 0, 33)
					listtextbutton.AutoButtonColor = false
					listtextbutton.Font = Enum.Font.SourceSans
					listtextbutton.Text = " "
					listtextbutton.TextColor3 = Color3.fromRGB(0, 0, 0)
					listtextbutton.TextSize = 14.000

					local farmtoglist = Instance.new("TextButton")

					farmtoglist.Parent = listtextbutton
					farmtoglist.BackgroundColor3 = Color3.fromRGB(255, 23, 46)
					farmtoglist.BorderColor3 = Color3.fromRGB(255, 255, 255)
					farmtoglist.BorderSizePixel = 0
					farmtoglist.AnchorPoint = Vector2.new(0.5, 0.5)
					farmtoglist.Position = UDim2.new(0.1, 0, 0.5, 0)
					farmtoglist.Size = UDim2.new(0, 23, 0, 23)
					farmtoglist.Font = Enum.Font.SourceSans
					farmtoglist.Text = " "
					farmtoglist.TextColor3 = Color3.fromRGB(0, 0, 0)
					farmtoglist.TextSize = 14.000
					farmtoglist.AutoButtonColor = false


					local farmtoglist2 = Instance.new("TextButton")

					farmtoglist2.Parent = farmtoglist
					farmtoglist2.BackgroundColor3 = Color3.fromRGB(10,10,10)
					farmtoglist2.BorderColor3 = Color3.fromRGB(255, 23, 46)
					farmtoglist2.BorderSizePixel = 0
					farmtoglist2.AnchorPoint = Vector2.new(0.5, 0.5)
					farmtoglist2.Position = UDim2.new(0.5, 0, 0.5, 0)
					farmtoglist2.Size = UDim2.new(0, 21, 0, 21)
					farmtoglist2.Font = Enum.Font.SourceSans
					farmtoglist2.Text = " "
					farmtoglist2.TextColor3 = Color3.fromRGB(0, 0, 0)
					farmtoglist2.TextSize = 14.000
					farmtoglist2.AutoButtonColor = false


					local listimage = Instance.new("ImageButton")

					listimage.Parent = farmtoglist2
					listimage.BackgroundColor3 = Color3.fromRGB(255, 23, 46)
					listimage.BackgroundTransparency = 0
					listimage.AnchorPoint = Vector2.new(0.5, 0.5)
					listimage.Position = UDim2.new(0.5, 0, 0.5, 0)
					listimage.BorderSizePixel = 0
					listimage.Size = UDim2.new(0, 0, 0, 0)
					listimage.ImageTransparency = 1

					local listimageUiconner2 = Instance.new("UICorner")

					listimageUiconner2.CornerRadius = UDim.new(0, 5)
					listimageUiconner2.Name = ""
					listimageUiconner2.Parent = listimage


					local textlist = Instance.new("TextLabel")


					textlist.Parent = listtextbutton
					textlist.Name = "textlist"
					textlist.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					textlist.BackgroundTransparency = 1.000
					textlist.AnchorPoint = Vector2.new(0.5, 0.5)
					textlist.Position = UDim2.new(0.5, 0, 0.5, 0)
					textlist.BorderSizePixel = 0
					textlist.Size = UDim2.new(0, 91, 0, 25)
					textlist.Font = Enum.Font.Gotham
					textlist.Text = tostring(v.Name)
					textlist.TextColor3 = Color3.fromRGB(255,255,255)
					textlist.TextSize = 12.000



					local TextButton_Pageframe_Uiconner2 = Instance.new("UICorner")

					TextButton_Pageframe_Uiconner2.CornerRadius = UDim.new(0, 5)
					TextButton_Pageframe_Uiconner2.Name = ""
					TextButton_Pageframe_Uiconner2.Parent = farmtoglist

					local TextButton_Pageframe_Uiconner22 = Instance.new("UICorner")

					TextButton_Pageframe_Uiconner22.CornerRadius = UDim.new(0, 5)
					TextButton_Pageframe_Uiconner22.Name = ""
					TextButton_Pageframe_Uiconner22.Parent = farmtoglist2

					listtextbutton.MouseEnter:Connect(function()
						TweenService:Create(
							textlist,
							TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
							{TextColor3 = Color3.fromRGB(255, 23, 46)} -- UDim2.new(0, 128, 0, 25)
						):Play()
					end)

					listtextbutton.MouseLeave:Connect(function()
						TweenService:Create(
							textlist,
							TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
							{TextColor3 = Color3.fromRGB(255,255,255)} -- UDim2.new(0, 128, 0, 25)
						):Play()
					end)

					listtextbutton.MouseButton1Click:Connect(function()
						if not  location[v.flag] then
							listimage:TweenSizeAndPosition(UDim2.new(0, 30, 0, 30), UDim2.new(0.5, 0, 0.5, 0), "In", "Bounce", 0.1, true)
							wait(0.1)
							listimage:TweenSizeAndPosition(UDim2.new(0, 23, 0, 23), UDim2.new(0.5, 0, 0.5, 0), "In", "Bounce", 0.1, true)
						else
							listimage:TweenSizeAndPosition(UDim2.new(0, 30, 0, 30), UDim2.new(0.5, 0, 0.5, 0), "In", "Bounce", 0.1, true)
							wait(0.1)
							listimage:TweenSizeAndPosition(UDim2.new(0, 0, 0, 0), UDim2.new(0.5, 0, 0.5, 0), "In", "Bounce", 0.1, true)
						end
						location[v.flag] = not location[v.flag]
						callback(location[v.flag])
					end
					)

					if  location[v.flag] then
						listimage:TweenSizeAndPosition(UDim2.new(0, 30, 0, 30), UDim2.new(0.5, 0, 0.5, 0), "In", "Bounce", 0.1, true)
						wait(0.1)
						listimage:TweenSizeAndPosition(UDim2.new(0, 23, 0, 23), UDim2.new(0.5, 0, 0.5, 0), "In", "Bounce", 0.1, true)

						callback(location[v.flag])

					end

					ScolDown.CanvasSize = UDim2.new(0,0,0,UIListLayoutlist.AbsoluteContentSize.Y + 10  )
				end


				DropFrame.MouseEnter:Connect(function()
					TweenService:Create(
						DropFrameStroke,
						TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{Transparency = 0} -- UDim2.new(0, 128, 0, 25)
					):Play()
					TweenService:Create(
						TextLabel_TapDrop,
						TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{TextColor3 = Color3.fromRGB(255, 255, 255)} -- UDim2.new(0, 128, 0, 25)
					):Play()
					TweenService:Create(
						DropArbt_listimage,
						TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{ImageColor3 = Color3.fromRGB(255, 255, 255)} -- UDim2.new(0, 128, 0, 25)
					):Play()
				end
				)

				DropFrame.MouseLeave:Connect(function()
					TweenService:Create(
						DropFrameStroke,
						TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{Transparency = 0.7} -- UDim2.new(0, 128, 0, 25)
					):Play()
					TweenService:Create(
						TextLabel_TapDrop,
						TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{TextColor3 = Color3.fromRGB(155, 155, 155)} -- UDim2.new(0, 128, 0, 25)
					):Play()
					TweenService:Create(
						DropArbt_listimage,
						TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{ImageColor3 = Color3.fromRGB(155, 155, 155)} -- UDim2.new(0, 128, 0, 25)
					):Play()
				end
				)


				ButtonDrop.MouseButton1Click:Connect(function()
					if dog == false then
						TweenService:Create(
							DropFrame,
							TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
							{Size = UDim2.new(0, 213, 0, FrameSize)} -- UDim2.new(0, 128, 0, 25)
						):Play()
						TweenService:Create(
							DropArbt_listimage,
							TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.Out),
							{Rotation = 180}
						):Play()
						ScolDown.CanvasSize = UDim2.new(0,0,0,UIListLayoutlist.AbsoluteContentSize.Y + 10  )
					else
						TweenService:Create(
							DropFrame,
							TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
							{Size = UDim2.new(0, 213, 0, 30)} -- UDim2.new(0, 128, 0, 25)
						):Play()
						TweenService:Create(
							DropArbt_listimage,
							TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.Out),
							{Rotation = 0}
						):Play()
						ScolDown.CanvasSize = UDim2.new(0,0,0,UIListLayoutlist.AbsoluteContentSize.Y + 10  )
					end
					dog = not dog
				end)
				ScolDown.CanvasSize = UDim2.new(0,0,0,UIListLayoutlist.AbsoluteContentSize.Y + 10  )
			end
			function ui4:Bind(text,bi,callback)
				local BindFrame = Instance.new("Frame")

				BindFrame.Name = "BindFrame"
				BindFrame.Parent = ScrollingFrame_Pageframe
				BindFrame.BackgroundColor3 =  Color3.fromRGB(10,10,10)
				BindFrame.BorderSizePixel = 0
				BindFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
				BindFrame.AnchorPoint = Vector2.new(0.5, 0.5)
				BindFrame.Size = UDim2.new(0, 213, 0, 35)
				BindFrame.BackgroundTransparency  = 0
				BindFrame.ClipsDescendants = true

				local BindConner = Instance.new("UICorner")

				BindConner.CornerRadius = UDim.new(0, 4)
				BindConner.Name = ""
				BindConner.Parent = BindFrame

				local BindStroke = Instance.new("UIStroke")

				BindStroke.Thickness = 1
				BindStroke.Name = ""
				BindStroke.Parent = BindFrame
				BindStroke.LineJoinMode = Enum.LineJoinMode.Round
				BindStroke.Color = Color3.fromRGB(255, 23, 46)
				BindStroke.Transparency = 0.7

				local LabelBind = Instance.new("TextLabel")

				LabelBind.Parent = BindFrame
				LabelBind.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				LabelBind.BackgroundTransparency = 1
				LabelBind.BorderSizePixel = 0
				LabelBind.Position = UDim2.new(0.4, 0, 0.5, 0)
				LabelBind.AnchorPoint = Vector2.new(0.5, 0.5)
				LabelBind.Size = UDim2.new(0, 140, 0, 35)
				LabelBind.Font = Enum.Font.Gotham
				LabelBind.Text = tostring(text)
				LabelBind.TextColor3 = Color3.fromRGB(155, 155, 155)
				LabelBind.TextSize = 11.000
				LabelBind.TextXAlignment = Enum.TextXAlignment.Left

				local key = bi.Name
				local LabelBind2 = Instance.new("TextButton")

				LabelBind2.Parent = BindFrame
				LabelBind2.Name = "LabelBind2"
				LabelBind2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				LabelBind2.Size = UDim2.new(0, 100, 0, 19)
				LabelBind2.Font = Enum.Font.Gotham
				LabelBind2.Text =  key
				LabelBind2.TextColor3 = Color3.fromRGB(155, 155, 155)
				LabelBind2.TextSize = 11.000
				LabelBind2.AnchorPoint = Vector2.new(0.5, 0.5)
				LabelBind2.Position = UDim2.new(0.70, 0, 0.5, 0)
				LabelBind2.TextXAlignment = Enum.TextXAlignment.Right
				LabelBind2.BackgroundTransparency = 1
				LabelBind2.TextWrapped = true

				local LabelBind22 = Instance.new("TextButton")

				LabelBind22.Parent = BindFrame
				LabelBind22.Name = "LabelBind22"
				LabelBind22.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				LabelBind22.Size = UDim2.new(0, 213, 0, 35)
				LabelBind22.Font = Enum.Font.GothamBold
				LabelBind22.Text =  ""
				LabelBind22.TextColor3 = Color3.fromRGB(155, 155, 155)
				LabelBind22.TextSize = 11.000
				LabelBind22.AnchorPoint = Vector2.new(0.5, 0.5)
				LabelBind22.Position = UDim2.new(0.5, 0, 0.5, 0)
				LabelBind22.TextXAlignment = Enum.TextXAlignment.Center
				LabelBind22.BackgroundTransparency = 1
				LabelBind22.TextWrapped = true

				BindFrame.MouseEnter:Connect(function()
					TweenService:Create(
						BindStroke,
						TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{Transparency = 0} -- UDim2.new(0, 128, 0, 25)
					):Play()
					TweenService:Create(
						LabelBind22,
						TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{TextColor3 = Color3.fromRGB(255, 255, 255)} -- UDim2.new(0, 128, 0, 25)
					):Play()
					TweenService:Create(
						LabelBind2,
						TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{TextColor3 = Color3.fromRGB(255, 255, 255)} -- UDim2.new(0, 128, 0, 25)
					):Play()
					TweenService:Create(
						LabelBind,
						TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{TextColor3 = Color3.fromRGB(255, 255, 255)} -- UDim2.new(0, 128, 0, 25)
					):Play()
				end
				)
				BindFrame.MouseLeave:Connect(function()
					TweenService:Create(
						BindStroke,
						TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{Transparency = 0.7} -- UDim2.new(0, 128, 0, 25)
					):Play()
					TweenService:Create(
						LabelBind22,
						TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{TextColor3 = Color3.fromRGB(155, 155, 155)} -- UDim2.new(0, 128, 0, 25)
					):Play()
					TweenService:Create(
						LabelBind2,
						TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{TextColor3 = Color3.fromRGB(155, 155, 155)} -- UDim2.new(0, 128, 0, 25)
					):Play()
					TweenService:Create(
						LabelBind,
						TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{TextColor3 = Color3.fromRGB(155, 155, 155)} -- UDim2.new(0, 128, 0, 25)
					):Play()
				end
				)

				LabelBind22.MouseButton1Click:Connect(function ()


					LabelBind2.Text = "..."
					local inputwait = game:GetService("UserInputService").InputBegan:wait()
					local fuckulop = inputwait.KeyCode == Enum.KeyCode.Unknown and inputwait.UserInputType or inputwait.KeyCode

					if
						fuckulop.Name ~= "Focus" and fuckulop.Name ~= "MouseMovement" and fuckulop.Name ~= "Focus"
					then
						LabelBind2.Text =  fuckulop.Name
						key = fuckulop.Name
					end
				end)


				game:GetService("UserInputService").InputBegan:connect(function(current)
					local fuckulop2 = current.KeyCode == Enum.KeyCode.Unknown and current.UserInputType or current.KeyCode

					if fuckulop2.Name ==  key then
						pcall(callback)

					end
				end)

			end
			return ui4
		end
		return uipage
	end
	return uitop
end


local noclip = Instance.new('Part',workspace)
noclip.Name = "noclip"
noclip.CanCollide = true
noclip.Anchored = true
noclip.Size = Vector3.new(30,0,30)
noclip.Transparency = 1
function noclipnew()
   game:GetService("Workspace")["noclip"].CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame  * CFrame.new(0,-5,0)
end
 
    spawn(function()
        while true do
            UpdateTime()
            game:GetService("RunService").RenderStepped:Wait()
        end
    end)
game.StarterGui:SetCore("SendNotification", {
    Icon = "rbxassetid://7996551096";
    Title = "NOOB HUB", 
    Text = "Sucessful"
 })
 wait(1)
local win = ui:W1n("NOOB HUB","BLOX FRUIT",0.30,Enum.KeyCode.RightControl)
local Tab = win:Tap("Main")
local Main = Tab:newpage("Main")
Main:Label("Made BY : 03s.#4358")
Main:Label("Discord : NOOB HUB")
Main:Button("Copy Discord",function()
setclipboard("https://discord.gg/J6gQRVk48n")
	ui:Notification("NOOBHUB : Discord","Copy",2)
end)
Main:Label("Youtube : NOOB HUB")
Main:Button("Copy Youtube",function()
   setclipboard("https://www.youtube.com/channel/UCpbG2pkTiPODfMOq_voRQDg/videos") 
	ui:Notification("NOOBHUB : YouTube","Copy",2)
end)
local Main2 = Tab:newpage("")
Main2:Title("Update")
Main2:Label("[+] New UI [03/01/2022]")
Main2:Label("[+] AutoFarm Haki Ken [02/11/2022]")
Main2:Label("[+] Update Auto Farm Lv 2100-2200 [03/01/2022]")
Main2:Label("[+] Auto Farm Candy [08/01/2022]")
Main2:Title("คำถามยอดฮิต")
Main2:Label("ทำไมเปิดดึงมอนเเล้วมันตีได้บางตัว")
Main2:Label("เพราะว่าตัวรันกัง")
local Tab2 = win:Tap("AutoFarm")
local AutoFram = Tab2:newpage()
AutoFram:Title("AutoFarm")
local A = AutoFram:Toggle("Bring Mob [PC Only]",_G.bringmob,function(value)
_G.bringmob = value
end)
spawn(function()
    while wait(.1) do
if _G.bringmob then
    pcall(function()
    CheckQuest()
    for i,x in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
            for n,y in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                if x.Name == Ms then
                    if y.Name == Ms then
                        x.HumanoidRootPart.CFrame = y.HumanoidRootPart.CFrame
                        y.HumanoidRootPart.Size = Vector3.new(40,40,40)
                        x.HumanoidRootPart.Size = Vector3.new(40,40,40)
                        y.HumanoidRootPart.Transparency = 1
                        x.HumanoidRootPart.CanCollide = false
                        x.Humanoid.WalkSpeed = 0
                        x.Humanoid.JumpPower = 0
                        y.Humanoid.WalkSpeed = 0
                        y.Humanoid.JumpPower = 0
                        x.Humanoid:ChangeState(11)
                        y.Humanoid:ChangeState(11)
                        if sethiddenproperty then
                            sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
end
end
end
end
end
end)
end
end
end)
local B = AutoFram:Toggle("Fast Attack [PC Only]",_G.FastAttack,function(x)
    _G.FastAttack = x
end)
local C = AutoFram:Toggle("Auto Set Spawn",_G.AutoSetSpawn,function(x)
   _G.AutoSetSpawn = x
while _G.AutoSetSpawn do wait()
    pcall(function()
    local args = {
            [1] = "SetSpawnPoint"
         }

         game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end)
end
end)
AutoFram:Line()
AutoFram:Button("Lock",function()
	 A:lock()
	 B:lock()
	 C:lock()
end)
AutoFram:Button("UnLock",function()
	 A:unlock()
	 B:unlock()
	 C:unlock()
end)
AutoFram:Line()
function itemequip(namex)
    pcall(function()
      local ToolSe = tostring(namex)
      local tool = game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe)
      game.Players.LocalPlayer.Character.Humanoid:EquipTool(tool)
end)
end

Wapon = {}
for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do  
    if v:IsA("Tool") then
        table.insert(Wapon ,v.Name)
    end
end
local SelectWeapona = AutoFram:Dropdown("Select Weapon!",Wapon,function(Value)
    _G.SelectWeapon = Value
end)
AutoFram:Button("Refresh Weapon",function()
    SelectWeapona:Clear()
    for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do  
        if v:IsA("Tool") then
            SelectWeapona:Add(v.Name)
        end
    end
end)

function tweenteleport(Speed,Part)
    local Distancex = (Vector3.new(Part) - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude -- จุดที่จะไป Position Only
local Speexd = Speed -- ความเร็วของมึง
tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(Distancex/Speexd, Enum.EasingStyle.Linear)
tweenx = tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(Part)})
tweenx:Play()
wait(Distancex/Speexd)
end
game:GetService("RunService").Heartbeat:Connect(function()
pcall(function()
CheckQuest()
if not game.Workspace:FindFirstChild(NameMon) then
   local part = Instance.new("Part")
   part.Name = NameMon
   part.Position = Vector3.new(0, 10, 0)
   part.Anchored = true
   part.CFrame = CFrameQuest
   part.Transparency = 1
   part.Parent = game.Workspace
end
CheckQuest()
if not game.Workspace:FindFirstChild(Ms) then
   local part = Instance.new("Part")
   part.Name = Ms
   part.Position = Vector3.new(0, 10, 0)
   part.Anchored = true
   part.CFrame = CFrameMon
   part.Transparency = 1
   part.Parent = game.Workspace
end
end)
end)
spawn(function()
    pcall(function()
        while wait() do
            if _G.AutoFarm or _G.Autonext or _G.Clip  or _G.elitehunt or _G.Teleport or _G.AutoFarmAllBoss or _G.Boss or _G.AutoFarmBossHallow then
        noclipnew()
        end
end
end)
end)
function AutoHaki()
    if game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
    else
    local args = {
        [1] = "Buso"
    }
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end
end

spawn(function()
    game:GetService("RunService").Heartbeat:Connect(function()
        if _G.AutoFarm then
            if not game:GetService("Workspace"):FindFirstChild("LOL") then
                local LOL = Instance.new("Part")
                LOL.Name = "LOL"
                LOL.Parent = game.Workspace
                LOL.Anchored = true
                LOL.Transparency = 1
                LOL.Size = Vector3.new(30,0.5,30)
            elseif game:GetService("Workspace"):FindFirstChild("LOL") then
                game.Workspace["LOL"].CFrame = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.X,game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Y - 3.92,game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Z)
            end
        else
            if game:GetService("Workspace"):FindFirstChild("LOL") then
                game:GetService("Workspace"):FindFirstChild("LOL"):Destroy()
            end
        end
    end)
end)

spawn(function()
    game:GetService("RunService").Stepped:Connect(function()
        if _G.AutoFarm then
            for _, v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
                if v:IsA("BasePart") then
                    v.CanCollide = false    
                end
            end
        end
    end)
end)
function changestate()
    game.Workspace["LOL"].CFrame = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.X,game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Y - 3.92,game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Z)
end
_G.SelectWeapon = nil
function itemequip(ToolSe)
   if game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe) then
       getgenv().tool = game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe)
       wait(.1)
       game.Players.LocalPlayer.Character.Humanoid:EquipTool(tool)
   end
end
AutoFram:Toggle("Auto Farm",_G.AutoFarm,function(value)
_G.AutoFarm = value
while _G.AutoFarm do game:GetService("RunService").Heartbeat:wait()
   pcall(function()
   CheckQuest()
   magnitude = (workspace[NameMon].Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
   if magnitude < 3000 then
      if not game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
         if _G.AutoFarm == true then
            if game:GetService("Workspace").Enemies:FindFirstChild(Ms) then
               if not game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                  if string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) then
                     for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if v.Name == Ms then
                            monmag = (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
                           if v.Humanoid.Health > 0 then
                              repeat game:GetService("RunService").Heartbeat:wait()
                                 click()
                                 itemequip(_G.SelectWeapon)
                                 MinHealth = v.Humanoid.MaxHealth * 90 / 100
                                 monmag = (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
                                 if monmag <= 250 then
                                 if v.Humanoid.Health > MinHealth then
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0,0,14)
                                 else
                                     game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0,15,0)
                                 end
                                 else
                                  if v.Humanoid.Health > MinHealth then
                                    local Distance = (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude -- จุดที่จะไป Position Only
                                    local Speed = 120 -- ความเร็วของมึง
                                    tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear)
                                    tween = tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0,0,14)})
                                    tween:Play()
                                 else
                                    local Distance = (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude -- จุดที่จะไป Position Only
                                    local Speed = 120 -- ความเร็วของมึง
                                    tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear)
                                    tween = tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0,15,0)})
                                    tween:Play()
                                 end
                                 end
                                 if game.Players.LocalPlayer.Character.Humanoid.Health <= 0 then
                                      _G.AutoFarm = false
                                      print("DIE1")
                                      wait(7)
                                      _G.AutoFarm = true
                                       print("DIE2")
                                 end
                                 v.HumanoidRootPart.Size = Vector3.new(40,40,40)
                                 v.HumanoidRootPart.CanCollide = false
                                 game.Players.LocalPlayer.Character.HumanoidRootPart.CanCollide = false
                                 BringFrame = v.HumanoidRootPart.CFrame
                                 changestate()
                                 noclipnew()
                              until v.Humanoid.Health <= 0 or _G.AutoFarm == false
                           elseif v.Humanoid.Health <= 0  then
                               CheckQuest()
                              zmagnitudX = (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
                              if zmagnitudX < 500 then
                                 CheckQuest()
                                 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
                              else
                                 local Distance = (game.Workspace[Ms].Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude -- จุดที่จะไป Position Only
                                 local Speed = 130 -- ความเร็วของมึง
                                 tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear)
                                 tween = tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrameMon})
                                 tween:Play()
                              end
                           end
                        end
                     end
                  else
                     CheckQuest()
                     local args = {
                        [1] = "AbandonQuest"
                     }

                     game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                  end
               end

            else
               CheckQuest()
               zmagnitudXz = (game.Workspace[Ms].Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
               if zmagnitudXz < 1000 then
                  CheckQuest()
                  local Distance = (game.Workspace[Ms].Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude -- จุดที่จะไป Position Only
                  local Speed = 500 -- ความเร็วของมึง
                  tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear)
                  tween = tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrameMon})
                  tween:Play()
               else
                  local Distance = (game.Workspace[Ms].Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude -- จุดที่จะไป Position Only
                  local Speed = 130 -- ความเร็วของมึง
                  tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear)
                  tween = tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrameMon})
                  tween:Play()
               end
            end
         end
      else
         CheckQuest()
         armmag = (game.Workspace[NameMon].Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
         if armmag <= 1000 then
         local Distance = (game.Workspace[NameMon].Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude -- จุดที่จะไป Position Only
         local Speed = 500 -- ความเร็วของมึง
         tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear)
         tween = tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrameQuest})
         tween:Play()
         else
         local Distance = (game.Workspace[NameMon].Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude -- จุดที่จะไป Position Only
         local Speed = 500 -- ความเร็วของมึง
         tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear)
         tween = tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrameQuest})
         tween:Play()
         end
         print(magnitude)
         farmmag = (game.Workspace[NameMon].Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
         if farmmag <= 150 then
          game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace[NameMon].CFrame
          game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack({[1] = "SetSpawnPoint"}))
          wait(2)
         local args = {
            [1] = "StartQuest",
            [2] = QuestName,
            [3] = LevelQuest
         }
         game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
         end
      end
   else
      CheckQuest()
      local Distancex = (game.Workspace[NameMon].Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude -- จุดที่จะไป Position Only
      local Speexd = 99 -- ความเร็วของมึง
      tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(Distancex/Speexd, Enum.EasingStyle.Linear)
      tweenx = tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrameQuest})
      tweenx:Play()
      print(magnitude)
      _G.NoClip = true
      wait(Distancex/Speexd)
      print(Distancex/Speexd)
      _G.NoClip = false
   end
   end)
end
end)
function fruitinbackpack()
   for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
      if v.ClassName == "Tool" then
         if v.ToolTip == "Blox Fruit" then
            fruitname = v.Name
         end
      end
   end
   return fruitname
end

function fruitinbackpack2()
   for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
      if v.ClassName == "Tool" then
         if v.ToolTip == "Blox Fruit" then
            xxd = v.Name
         end
      end
   end
   return xxd
end

function gunname()
   for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
      if v.ClassName == "Tool" then
         if v.ToolTip == "Gun" then
            xxd = v.Name
         end
      end
   end
   return xxd
end

function equipfruit()
   if game.Players.LocalPlayer.Backpack:FindFirstChild(fruitinbackpack2()) then
      local ToolSe = tostring(fruitinbackpack2())
      local tool = game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe)
      game.Players.LocalPlayer.Character.Humanoid:EquipTool(tool)
   end
end

function equipcombat(a)
   if game.Players.LocalPlayer.Backpack:FindFirstChild(a) then
      local ToolSe = tostring(a)
      local tool = game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe)
      game.Players.LocalPlayer.Character.Humanoid:EquipTool(tool)
   end
end
AutoFram:Toggle("Auto Candy",_G.AutoFarmCandy,function(value)
_G.AutoFarmCandy = value
end)
AutoFram:Button("Check Candy",function()
    ui:Notification("Check Candy","My Candy : "..game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Candies","Check"),2)
end)
AutoFram:Toggle("Auto Bone",_G.AutoFarmBONE,function(value)
	_G.AutoFarmBONE = value
	end)
	AutoFram:Button("Check Bone",function()
		ui:Notification("Check Bone","My Bone : "..game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bones","Check"),2)
	end)

	spawn(function()
		while game:GetService("RunService").Heartbeat:wait() do
	if _G.AutoFarmBONE then
	   pcall(function()
	   for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
		   for i,vv in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
		   if (v.Name == "Reborn Skeleton [Lv. 1975]" or v.Name == "Living Zombie [Lv. 2000]" or v.Name == "Demonic Soul [Lv. 2025]" or v.Name == "Posessed Mummy [Lv. 2050]") and (vv.Name == "Reborn Skeleton [Lv. 1975]" or vv.Name == "Living Zombie [Lv. 2000]" or vv.Name == "Demonic Soul [Lv. 2025]" or vv.Name == "Posessed Mummy [Lv. 2050]") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
			 repeat game:GetService("RunService").Heartbeat:wait()
				for i,v in pairs(game:GetService("Workspace").Enemies:GetDescendants()) do if v.ClassName == "MeshPart" then v.Transparency = .9 end end for i,v in pairs(game:GetService("Workspace").Enemies:GetDescendants()) do if v.Name == "Head" then v.Transparency = .9 end end for i,v in pairs(game:GetService("Workspace").Enemies:GetDescendants()) do if v.ClassName == "Accessory" then v.Handle.Transparency = .9 end end
				   itemequip(_G.SelectWeapon)
				   AutoHaki()
				   click()
				   HPMOO = v.Humanoid.MaxHealth*50/100
				   Distancex = (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude 
				   Speexd = 250
				   if v.Humanoid.Health <= HPMOO then
				   tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(Distancex/Speexd, Enum.EasingStyle.Linear)
				   tweenx = tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = v.HumanoidRootPart.CFrame*CFrame.new(0,18,0)})
				   else
					tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(Distancex/Speexd, Enum.EasingStyle.Linear)
				   tweenx = tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = v.HumanoidRootPart.CFrame*CFrame.new(0,0,18)})
				   end
				   if Distancex >= 100 then
				   tweenx:Play()
				else
					tweenx:Pause()
					local HP = v.Humanoid.MaxHealth*50/100
					if v.Humanoid.Health <= HP then
				   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0,16,0)
					else
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0,0,16)
					end
				end
				   v.HumanoidRootPart.Size = Vector3.new(60,60,60)
				   v.HumanoidRootPart.CanCollide = false
				   v.Humanoid.WalkSpeed = 0
					v.Humanoid.JumpPower = 0
					for i,x in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						for n,y in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							Distance = (y.HumanoidRootPart.Position - x.HumanoidRootPart.Position).Magnitude
							if Distance <= 200 then
							if x.Name == "Living Zombie [Lv. 2000]" then
							  if y.Name == "Living Zombie [Lv. 2000]" then
								 x.HumanoidRootPart.CFrame = y.HumanoidRootPart.CFrame
								 y.HumanoidRootPart.Size = Vector3.new(60,60,60)
								 x.HumanoidRootPart.Size = Vector3.new(60,60,60)
								 y.HumanoidRootPart.Transparency = 1
								 x.HumanoidRootPart.CanCollide = false
								 y.HumanoidRootPart.CanCollide = false
								 x.Humanoid.WalkSpeed = 0
								 x.Humanoid.JumpPower = 0
								 y.Humanoid.WalkSpeed = 0
								 y.Humanoid.JumpPower = 0
								 if sethiddenproperty then
									sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
								 end
							  end
						   end
						end
						end
					end 
					for i,x in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						for n,y in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							Distance = (y.HumanoidRootPart.Position - x.HumanoidRootPart.Position).Magnitude
							if Distance <= 200 then
							if x.Name == "Reborn Skeleton [Lv. 1975]" then
							  if y.Name == "Reborn Skeleton [Lv. 1975]" then
								 x.HumanoidRootPart.CFrame = y.HumanoidRootPart.CFrame
								 y.HumanoidRootPart.Size = Vector3.new(60,60,60)
								 x.HumanoidRootPart.Size = Vector3.new(60,60,60)
								 y.HumanoidRootPart.Transparency = 1
								 x.HumanoidRootPart.CanCollide = false
								 y.HumanoidRootPart.CanCollide = false
								 x.Humanoid.WalkSpeed = 0
								 x.Humanoid.JumpPower = 0
								 y.Humanoid.WalkSpeed = 0
								 y.Humanoid.JumpPower = 0
								 if sethiddenproperty then
									sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
								 end
							  end
							end
							end
						end
					end 
					for i,x in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						for n,y in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							Distance = (y.HumanoidRootPart.Position - x.HumanoidRootPart.Position).Magnitude
							if Distance <= 200 then
							if x.Name == "Demonic Soul [Lv. 2025]" then
							  if y.Name == "Demonic Soul [Lv. 2025]" then
								 x.HumanoidRootPart.CFrame = y.HumanoidRootPart.CFrame
								 y.HumanoidRootPart.Size = Vector3.new(60,60,60)
								 x.HumanoidRootPart.Size = Vector3.new(60,60,60)
								 y.HumanoidRootPart.Transparency = 1
								 x.HumanoidRootPart.CanCollide = false
								 y.HumanoidRootPart.CanCollide = false
								 x.Humanoid.WalkSpeed = 0
								 x.Humanoid.JumpPower = 0
								 y.Humanoid.WalkSpeed = 0
								 y.Humanoid.JumpPower = 0
								 if sethiddenproperty then
									sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
								 end
							  end
							end
							end
						end
					end 
					for i,x in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						for n,y in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							Distance = (y.HumanoidRootPart.Position - x.HumanoidRootPart.Position).Magnitude
							if Distance <= 200 then
							if x.Name == "Posessed Mummy [Lv. 2050]" then
							  if y.Name == "Posessed Mummy [Lv. 2050]" then
								 x.HumanoidRootPart.CFrame = y.HumanoidRootPart.CFrame
								 y.HumanoidRootPart.Size = Vector3.new(60,60,60)
								 x.HumanoidRootPart.Size = Vector3.new(60,60,60)
								 y.HumanoidRootPart.Transparency = 1
								 x.HumanoidRootPart.CanCollide = false
								 y.HumanoidRootPart.CanCollide = false
								 x.Humanoid.WalkSpeed = 0
								 x.Humanoid.JumpPower = 0
								 y.Humanoid.WalkSpeed = 0
								 y.Humanoid.JumpPower = 0
								 if sethiddenproperty then
									sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
								 end
							  end
							end
							end
						end
					end 
			 until v.Humanoid.Health <= 0 or _G.AutoFarmBONE == false
		  end
		   end
	end
	   end)
	   end
	end
	end)
	spawn(function()
		pcall(function()
			while wait() do
				for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do  
					if v:IsA("Tool") then
						if v:FindFirstChild("RemoteFunctionShoot") then 
							SelectToolWeaponGun = v.Name
						end
					end
				end
			end
		end)
	end)


spawn(function()
    while game:GetService("RunService").Heartbeat:wait() do
if _G.AutoFarmCandy then
   pcall(function()
   for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
       for i,vv in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
       if (v.Name == "" or v.Name == "Peanut Socout [Lv. 2075]" or v.Name == "Peanut President [Lv. 2100]" or v.Name == "Ice Cream Chef [Lv. 2125]") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
         repeat game:GetService("RunService").Heartbeat:wait()
               itemequip(_G.SelectWeapon)
               click()
               HPMOO = v.Humanoid.MaxHealth*50/100
               Distancex = (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude 
               Speexd = 250
               if v.Humanoid.Health <= HPMOO then
               tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(Distancex/Speexd, Enum.EasingStyle.Linear)
               tweenx = tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = v.HumanoidRootPart.CFrame*CFrame.new(0,18,0)})
               else
                tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(Distancex/Speexd, Enum.EasingStyle.Linear)
               tweenx = tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = v.HumanoidRootPart.CFrame*CFrame.new(0,0,18)})
               end
               if Distancex >= 100 then
               tweenx:Play()
            else
                tweenx:Pause()
                local HP = v.Humanoid.MaxHealth*50/100
                if v.Humanoid.Health <= HP then
               game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0,16,0)
                else
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0,0,16)
                end
            end
               v.HumanoidRootPart.Size = Vector3.new(60,60,60)
               v.HumanoidRootPart.CanCollide = false
               v.Humanoid.WalkSpeed = 0
                v.Humanoid.JumpPower = 0
                for i,x in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                    for n,y in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        Distance = (y.HumanoidRootPart.Position - x.HumanoidRootPart.Position).Magnitude
                        if Distance <= 200 then
                        if x.Name == "Peanut Socout [Lv. 2075]" then
                          if y.Name == "Peanut Socout [Lv. 2075]" then
                             y.HumanoidRootPart.Size = Vector3.new(60,60,60)
                             x.HumanoidRootPart.Size = Vector3.new(60,60,60)
                             y.HumanoidRootPart.Transparency = 1
                             x.HumanoidRootPart.CanCollide = false
                             y.HumanoidRootPart.CanCollide = false
                             x.Humanoid.WalkSpeed = 0
                             x.Humanoid.JumpPower = 0
                             y.Humanoid.WalkSpeed = 0
                             y.Humanoid.JumpPower = 0
                             if sethiddenproperty then
                                sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                             end
                          end
                       end
                    end
                    end
                end 
                for i,x in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                    for n,y in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        Distance = (y.HumanoidRootPart.Position - x.HumanoidRootPart.Position).Magnitude
                        if Distance <= 200 then
                        if x.Name == "Peanut President [Lv. 2100]" then
                          if y.Name == "Peanut President [Lv. 2100]" then
                             y.HumanoidRootPart.Size = Vector3.new(60,60,60)
                             x.HumanoidRootPart.Size = Vector3.new(60,60,60)
                             y.HumanoidRootPart.Transparency = 1
                             x.HumanoidRootPart.CanCollide = false
                             y.HumanoidRootPart.CanCollide = false
                             x.Humanoid.WalkSpeed = 0
                             x.Humanoid.JumpPower = 0
                             y.Humanoid.WalkSpeed = 0
                             y.Humanoid.JumpPower = 0
                             if sethiddenproperty then
                                sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                             end
                          end
                        end
                        end
                    end
                end 
                for i,x in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                    for n,y in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        Distance = (y.HumanoidRootPart.Position - x.HumanoidRootPart.Position).Magnitude
                        if Distance <= 200 then
                        if x.Name == "Ice Cream Chef [Lv. 2125]" then
                          if y.Name == "Ice Cream Chef [Lv. 2125]" then
                             y.HumanoidRootPart.Size = Vector3.new(60,60,60)
                             x.HumanoidRootPart.Size = Vector3.new(60,60,60)
                             y.HumanoidRootPart.Transparency = 1
                             x.HumanoidRootPart.CanCollide = false
                             y.HumanoidRootPart.CanCollide = false
                             x.Humanoid.WalkSpeed = 0
                             x.Humanoid.JumpPower = 0
                             y.Humanoid.WalkSpeed = 0
                             y.Humanoid.JumpPower = 0
                             if sethiddenproperty then
                                sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                             end
                          end
                        end
                        end
                    end
                end 
           
         until v.Humanoid.Health <= 0 or _G.AutoFarmCandy == false
      end
       end
end
   end)
   end
end
end)

function Observation(POS1,POS2)
   local Distance = (POS1 - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
   local Speed = 220
   tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear)
   tween = tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = POS2})
   tween:Play()
   _G.Clip = true
   wait(Distance/Speed)
   _G.Clip = false
end
    local ObservationVirtualUser = game:GetService('VirtualUser')
    AutoFram:Toggle("Auto Fram Observation",_G.Observation,function(a)
        _G.Observation = a
        if _G.Observation then
            ObservationVirtualUser:CaptureController()
            ObservationVirtualUser:SetKeyDown('0x65')
            wait(2)
            ObservationVirtualUser:SetKeyUp('0x65')
        end
        spawn(function()
            while _G.Observation do wait()
                if Sea2 then
                    if game.Workspace.Enemies:FindFirstChild("Lava Pirate [Lv. 1200]") then
                        if game.Players.LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then
                            repeat wait()
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.Enemies:FindFirstChild("Lava Pirate [Lv. 1200]").HumanoidRootPart.CFrame * CFrame.new(3,0,0)
                            until _G.Observation == false or not game.Players.LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")
                        else
                            repeat wait()
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.Enemies:FindFirstChild("Lava Pirate [Lv. 1200]").HumanoidRootPart.CFrame * CFrame.new(0,50,0)+
                                    wait(1)
                                if not game.Players.LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then
                                    local ts = game:GetService("TeleportService")
                                    local p = game:GetService("Players").LocalPlayer

                                    ts:Teleport(game.PlaceId, p)
                                end
                            until _G.Observation == false or game.Players.LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")
                        end
                    else
                        Observation(Vector3.new(-5478.39209, 15.9775667, -5246.9126),CFrame.new(-5478.39209, 15.9775667, -5246.9126))
                    end
                elseif OldWorld then
                    if game.Workspace.Enemies:FindFirstChild("Galley Captain [Lv. 650]") then
                        if game.Players.LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then
                            repeat wait()
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.Enemies:FindFirstChild("Galley Captain [Lv. 650]").HumanoidRootPart.CFrame * CFrame.new(3,0,0)
                            until _G.Observation == false or not game.Players.LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")
                        else
                            repeat wait()
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.Enemies:FindFirstChild("Galley Captain [Lv. 650]").HumanoidRootPart.CFrame * CFrame.new(0,50,0)
                                wait(1)
                                if not game.Players.LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then
                                    local ts = game:GetService("TeleportService")
                                    local p = game:GetService("Players").LocalPlayer

                                    ts:Teleport(game.PlaceId, p)
                                end
                            until _G.Observation == false or game.Players.LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")
                        end
                    else
                        Observation(Vector3.new(5533.29785, 88.1079102, 4852.3916),CFrame.new(5533.29785, 88.1079102, 4852.3916))
                    end
                elseif ThreeWorld then
                    if game.Workspace.Enemies:FindFirstChild("Giant Islander [Lv. 1650]") then
                        if game.Players.LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then
                            repeat wait()
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.Enemies:FindFirstChild("Giant Islander [Lv. 1650]").HumanoidRootPart.CFrame * CFrame.new(3,0,0)
                            until _G.Observation == false or not game.Players.LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")
                        else
                            repeat wait()
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.Enemies:FindFirstChild("Giant Islander [Lv. 1650]").HumanoidRootPart.CFrame * CFrame.new(0,50,0)
                                wait(1)
                                if not game.Players.LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then
                                    local ts = game:GetService("TeleportService")
                                    local p = game:GetService("Players").LocalPlayer

                                    ts:Teleport(game.PlaceId, p)
                                end
                            until _G.Observation == false or game.Players.LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")
                        end
                    else
                        Observation(Vector3.new(4530.3540039063, 656.75695800781, -131.60952758789),CFrame.new(4530.3540039063, 656.75695800781, -131.60952758789))
                    end
                end
            end
        end)
    end)

    function Obv2Bring()
      for i,x in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
          for n,y in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
              Distance = (y.HumanoidRootPart.Position - x.HumanoidRootPart.Position).Magnitude
              if Distance <= 500 then
              if x.Name == "Forest Pirate [Lv. 1825]" then
                if y.Name == "Forest Pirate [Lv. 1825]" then
                   x.HumanoidRootPart.CFrame = y.HumanoidRootPart.CFrame
                   y.HumanoidRootPart.Size = Vector3.new(60,60,60)
                   x.HumanoidRootPart.Size = Vector3.new(60,60,60)
                   y.HumanoidRootPart.Transparency = 1
                   x.HumanoidRootPart.CanCollide = false
                   y.HumanoidRootPart.CanCollide = false
                   x.Humanoid.WalkSpeed = 0
                   x.Humanoid.JumpPower = 0
                   y.Humanoid.WalkSpeed = 0
                   y.Humanoid.JumpPower = 0
                   if sethiddenproperty then
                      sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                   end
                end
             end
          end
          end
      end 
   end

    function ObservationV22(POS1,POS2)
      local Distance = (POS1 - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
      local Speed = 200 
      tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear)
      tween = tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = POS2})
      tween:Play()
      _G.Clip = true
      wait(Distance/Speed)
      _G.Clip = false
   end 

  AutoFram:Toggle("Auto Observation Haki V2",_G.observationv2,function (t)
	_G.observationv2 = t
  end)
  spawn(function()
      while wait(.1) do
          if observationv2 then
              if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                  TP(Vector3.new(-12444.78515625, 332.40396118164, -7673.1806640625),CFrame.new(-12444.78515625, 332.40396118164, -7673.1806640625))
                  wait(.5)
                  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress","Citizen")
                  wait(1)
                  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest","CitizenQuest",1)
              else
                  if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,"Defeat 50 Forest Pirates") then
                      if game:GetService("Workspace").Enemies:FindFirstChild("Forest Pirate [Lv. 1825]") then
                          for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                              if v.Name == "Forest Pirate [Lv. 1825]" then
                                  repeat wait()
                                      if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                          local args = {
                                              [1] = "Buso"
                                          }
                                          game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                      end
                                      itemequip(_G.SelectWeapon)
                                      Obv2Bring()
                                      TP(v.HumanoidRootPart.Position,v.HumanoidRootPart.CFrame*CFrame.new(0,17,0))
                                      PosMonKato =  v.HumanoidRootPart.CFrame
                                      sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                                      v.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
                                      v.HumanoidRootPart.CanCollide = false
                                      v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                      game:GetService'VirtualUser':CaptureController()
                                      game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                      bringobf = true
                                  until observationv2 == false or v.Humanoid.Health <= 0 or game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                  bringobf = false
                              end
                          end
                      else
                          TP(Vector3.new(-13277.568359375, 370.34185791016, -7821.1572265625),CFrame.new(-13277.568359375, 370.34185791016, -7821.1572265625))
                      end
                  elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text ==  "Defeat  Captain Elephant (0/1)" then 
                      if game:GetService("Workspace").Enemies:FindFirstChild("Captain Elephant [Lv. 1875] [Boss]") then
                          for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                              if v.Name == "Captain Elephant [Lv. 1875] [Boss]" then
                                  repeat wait()
                                      if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                          local args = {
                                              [1] = "Buso"
                                          }
                                          game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                      end
                                      itemequip(_G.SelectWeapon)
                                      TP(v.HumanoidRootPart.Position,v.HumanoidRootPart.CFrame*CFrame.new(0,25,0))
                                      sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                                      v.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
                                      v.HumanoidRootPart.CanCollide = false
                                      v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                      game:GetService'VirtualUser':CaptureController()
                                      game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                  until observationv2 == false or v.Humanoid.Health <= 0
                                  TP(Vector3.new(-12512.987304688, 335.96475219727, -9872.61328125),CFrame.new(-12512.987304688, 335.96475219727, -9872.61328125))
                              end
                          end
                      else
                          TP(Vector3.new(-13493.12890625, 318.89553833008, -8373.7919921875),CFrame.new(-13493.12890625, 318.89553833008, -8373.7919921875))
                      end        
                  end
              end
              if game.Players.LocalPlayer.Backpack:FindFirstChild("Banana") and  game.Players.LocalPlayer.Backpack:FindFirstChild("Apple") and game.Players.LocalPlayer.Backpack:FindFirstChild("Pineapple") then
                  TP(Vector3.new(-12444.78515625, 332.40396118164, -7673.1806640625),CFrame.new(-12444.78515625, 332.40396118164, -7673.1806640625))
                  wait(.5)
                  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress","Citizen")
              elseif game.Players.LocalPlayer.Backpack:FindFirstChild("Fruit Bowl") or game.Players.LocalPlayer.Character:FindFirstChild("Fruit Bowl") then
                  TP(Vector3.new(-10920.125, 624.20275878906, -10266.995117188),CFrame.new(-10920.125, 624.20275878906, -10266.995117188))
                  wait(.5)
                  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("KenTalk2","Start")
                  wait(1)
                  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("KenTalk2","Buy")
              else
                  for i,v in pairs(game.Workspace:GetDescendants()) do
                      if v.Name == "Apple" or v.Name == "Banana" or v.Name == "Pineapple" then
                          v.Handle.CFrame = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame
                      end
                  end   
              end
          end
      end
  end)

    AutoFram:Button("Check Observation Haki level",function()
		ui:Notification(game.Players.LocalPlayer.VisionRadius.Value,"Observation Haki level",2)
    end)
HealthMin = 25
AutoFram:Slider("Health %",true,1,100,HealthMin,function(Value)
   HealthMin = Value
end)

WaponMas = {}
for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do  
   if v:IsA("Tool") then
       table.insert(WaponMas ,v.Name)
   end
end
local SelectWeaponaMas = AutoFram:Dropdown("Select Weapon",WaponMas,function(Value)
   _G.SelectToolWeaponMas = Value
end)
AutoFram:Button("Refresh Weapon",function()
  SelectWeaponaMas:Clear()
   for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do  
       if v:IsA("Tool") then
        SelectWeaponaMas:Add(v.Name)
       end
   end
end)
AutoFram:Toggle("Auto Farm Fruit Mastery",false,function(vu)
    FarmMasteryFruit = vu 
 end)
 
 spawn(function()
    while wait() do
       if FarmMasteryFruit then
          CheckQuest()
          if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
             CheckQuest()
             TP(CFrameQuest, CFrameQuest)
             if (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - CFrameQuest).Magnitude <= 30 then
                wait(1.5)
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", QuestName, LevelQuest)
             end
          elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
             CheckQuest()
             pcall(function()
                if game:GetService("Workspace").Enemies:FindFirstChild(Ms) then
                   for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                      if v.Name == Ms then
                         repeat wait()
                            if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) then
                               HealthMin = v.Humanoid.MaxHealth * 25 / 100
                               if v.Humanoid.Health <= HealthMin then
                                itemequip(game.Players.LocalPlayer.Data.DevilFruit.Value)
                                  v.HumanoidRootPart.CanCollide = false
                                  v.HumanoidRootPart.Size = Vector3.new(2, 2, 1)
                                  TP(v.HumanoidRootPart.Position, v.HumanoidRootPart.CFrame * CFrame.new(0,20,10))
                                  if game.Players.LocalPlayer.Character:FindFirstChild("Dragon-Dragon") then
                                     if SkillZ and v.Humanoid.Health <= HealthMin then                                       
                                        game:GetService("VirtualInputManager"):SendKeyEvent(true,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                                        wait()
                                        game:GetService("VirtualInputManager"):SendKeyEvent(false,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                                        local args = {
                                           [1] = v.HumanoidRootPart.Position
                                        }
                                        game.Players.LocalPlayer.Character["Dragon-Dragon"].RemoteEvent:FireServer(unpack(args))
                                     end
                                     if SkillX and v.Humanoid.Health <= HealthMin then
                                        game:GetService("VirtualInputManager"):SendKeyEvent(true,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                                        wait()
                                        game:GetService("VirtualInputManager"):SendKeyEvent(false,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)                                       
                                        local args = {
                                           [1] = v.HumanoidRootPart.Position
                                        }
                                        game.Players.LocalPlayer.Character[game.Players.LocalPlayer.Data.DevilFruit.Value].RemoteEvent:FireServer(unpack(args))
                                     end   
                                  elseif game.Players.LocalPlayer.Character:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value) then
                                     if SkillZ and v.Humanoid.Health <= HealthMin then
                                        game:GetService("VirtualInputManager"):SendKeyEvent(true,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                                        wait()
                                        game:GetService("VirtualInputManager"):SendKeyEvent(false,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                                        local args = {
                                           [1] = v.HumanoidRootPart.Position
                                        }
                                        game.Players.LocalPlayer.Character[game.Players.LocalPlayer.Data.DevilFruit.Value].RemoteEvent:FireServer(unpack(args))
                                     end
                                     if SkillX and v.Humanoid.Health <= HealthMin then
                                        game:GetService("VirtualInputManager"):SendKeyEvent(true,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                                        wait()
                                        game:GetService("VirtualInputManager"):SendKeyEvent(false,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                                        local args = {
                                           [1] = v.HumanoidRootPart.Position
                                        }
                                        game.Players.LocalPlayer.Character[game.Players.LocalPlayer.Data.DevilFruit.Value].RemoteEvent:FireServer(unpack(args))
                                     end
                                     if SkillC and v.Humanoid.Health <= HealthMin then
                                        game:GetService("VirtualInputManager"):SendKeyEvent(true,99,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                                        wait()
                                        game:GetService("VirtualInputManager"):SendKeyEvent(false,99,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                                        local args = {
                                           [1] = v.HumanoidRootPart.Position
                                        }
                                        game.Players.LocalPlayer.Character[game.Players.LocalPlayer.Data.DevilFruit.Value].RemoteEvent:FireServer(unpack(args))
                                        
                                     end
                                     if SkillV and v.Humanoid.Health <= HealthMin then
                                        game:GetService("VirtualInputManager"):SendKeyEvent(true,118,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                                        wait()
                                        game:GetService("VirtualInputManager"):SendKeyEvent(false,118,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                                        local args = {
                                           [1] = v.HumanoidRootPart.Position
                                        }
                                        game.Players.LocalPlayer.Character[game.Players.LocalPlayer.Data.DevilFruit.Value].RemoteEvent:FireServer(unpack(args))                                    
                                     end
                                  end
                               else                       
                                itemequip(_G.SelectToolWeaponMas)
                                  v.HumanoidRootPart.CanCollide = false
                                  v.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                                  TP(v.HumanoidRootPart.Position, v.HumanoidRootPart.CFrame * CFrame.new(0,20,10))
                                  game:GetService'VirtualUser':CaptureController()
                                  game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))  
                               end
                            else
                               game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                            end
                         until not FarmMasteryFruit or not v.Parent or v.Humanoid.Health <= 0 or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                      end
                   end
                else
                   TP(CFrameMon, CFrameMon)
                end
             end)
          end
       end
    end
 end)
AutoFram:Toggle("Auto Farm Mastery Gun",_G.AutoFarmMasGun,function(value)
_G.AutoFarmMasGun = value
while _G.AutoFarmMasGun do game:GetService("RunService").Heartbeat:wait()
   pcall(function()
   CheckQuest()
   magnitude = (workspace[NameMon].Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
   if magnitude < 2250 then
      if _G.AutoFarmMasGun == true then
         if game:GetService("Workspace").Enemies:FindFirstChild(Ms) then
            if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
               if string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) then
                  for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                     if v.Name == Ms then
                        if v.Humanoid.Health > 0 then
                           repeat game:GetService("RunService").Heartbeat:wait()
for i,v in pairs(game:GetService("Workspace").Enemies:GetDescendants()) do if v.ClassName == "MeshPart" then v.Transparency = .9 end end for i,v in pairs(game:GetService("Workspace").Enemies:GetDescendants()) do if v.Name == "Head" then v.Transparency = .9 end end for i,v in pairs(game:GetService("Workspace").Enemies:GetDescendants()) do if v.ClassName == "Accessory" then v.Handle.Transparency = .9 end end
                              click()
                              v.Humanoid:ChangeState(11)
                              MinHealth = v.Humanoid.MaxHealth * 35 / 100
                              local magnitudX = (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
                              if v.Humanoid.Health > MinHealth then
                                 local Distance = (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude -- จุดที่จะไป Position Only
                                 local Speed = 1250 -- ความเร็วของมึง
                                 tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear)
                                 tween = tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0,0,15)})
                                 tween:Play()
                              else
                                 tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(0.5, Enum.EasingStyle.Linear)
                                 tween = tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0,16,0)})
                                 tween:Play()
                              end
                              equipgun()
                              game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
                              local args = {
                                 [1] = v.Head.Position,
                                 [2] = workspace.Enemies:FindFirstChild(Ms).HumanoidRootPart
                              }
                              game:GetService("Players").LocalPlayer.Character[gunname()].RemoteFunctionShoot:InvokeServer(unpack(args))
                              v.HumanoidRootPart.Size = Vector3.new(40,40,40)
                              v.HumanoidRootPart.CanCollide = false
                              game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState(11)
                              game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
                           until v.Humanoid.Health <= 0 or _G.AutoFarmMasGun == false
                        elseif v.Humanoid.Health <= 0  then
                           local Distance = (Vector3.new(CFrameMon) - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude -- จุดที่จะไป Position Only
                           local Speed = 10000 -- ความเร็วของมึง
                           tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear)
                           tween = tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrameMon})
                           tween:Play()
                           wait(Distance/Speed)
                        end
                     end
                  end
               else
                  CheckQuest()
                  local args = {
                     [1] = "AbandonQuest"
                  }

                  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
               end
            elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
               if _G.AutoFarmMasGun == true then
                  CheckQuest()
                  local Distance = (game.Workspace[NameMon].Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude -- จุดที่จะไป Position Only
                  local Speed = 500 -- ความเร็วของมึง
                  tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear)
                  tween = tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrameQuest})
                  tween:Play()
                  print(magnitude)
                  wait(Distance/Speed)
                  wait(3)

                  local args = {
                     [1] = "StartQuest",
                     [2] = QuestName,
                     [3] = LevelQuest
                  }

                  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
               end
            end
         else
            CheckQuest()
            local Distance = (game.Workspace[NameMon].Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude -- จุดที่จะไป Position Only
            local Speed = 1500 -- ความเร็วของมึง
            tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear)
            tween = tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrameMon})
            print(magnitude)
            tween:Play()
            wait(Distance/Speed)
         end
      end
   else
      CheckQuest()
      local Distancex = (game.Workspace[NameMon].Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude -- จุดที่จะไป Position Only
      local Speexd = 99 -- ความเร็วของมึง
      tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(Distancex/Speexd, Enum.EasingStyle.Linear)
      tweenx = tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrameQuest})
      tweenx:Play()
      print(magnitude)
      print(Distancex/Speexd)
      wait(Distancex/Speexd)
      wait(3)
      local args = {
         [1] = "StartQuest",
         [2] = QuestName,
         [3] = LevelQuest
      }

      game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
   end
   end)
end
end)
function equipgun()
   pcall(function()
   for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
      if v.ClassName == "Tool" then
         if v.ToolTip == "Gun" then
            if game.Players.LocalPlayer.Backpack:FindFirstChild(v.Name) then
               local ToolSe = tostring(v.Name)
               local tool = game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe)
               game.Players.LocalPlayer.Character.Humanoid:EquipTool(tool)
            end
         end
      end
   end
   end)
end
game:GetService("RunService").Heartbeat:Connect(function()
if _G.farmmasfruit then
   noclipnew()
end
end)
AutoFram:Title("Boss")
function CheckQuestBoss()
	if SelectBoss == "Diamond [Lv. 750] [Boss]" then
	   MsBoss = "Diamond [Lv. 750] [Boss]"
		NaemQuestBoss = "Area1Quest"
		LevelQuestBoss = 3
		CFrameQuestBoss = CFrame.new(-424.080078, 73.0055847, 1836.91589, 0.253544956, -1.42165932e-08, 0.967323601, -6.00147771e-08, 1, 3.04272909e-08, -0.967323601, -6.5768397e-08, 0.253544956)
		CFrameBoss = CFrame.new(-1736.26587, 198.627731, -236.412857, -0.997808516, 0, -0.0661673471, 0, 1, 0, 0.0661673471, 0, -0.997808516)
	elseif SelectBoss == "Jeremy [Lv. 850] [Boss]" then
		MsBoss = "Jeremy [Lv. 850] [Boss]"
		NaemQuestBoss = "Area2Quest"
		LevelQuestBoss = 3
		CFrameQuestBoss = CFrame.new(632.698608, 73.1055908, 918.666321, -0.0319722369, 8.96074881e-10, -0.999488771, 1.36326533e-10, 1, 8.92172336e-10, 0.999488771, -1.07732087e-10, -0.0319722369)
		CFrameBoss = CFrame.new(2203.76953, 448.966034, 752.731079, -0.0217453763, 0, -0.999763548, 0, 1, 0, 0.999763548, 0, -0.0217453763)
	elseif SelectBoss == "Fajita [Lv. 925] [Boss]" then
		MsBoss = "Fajita [Lv. 925] [Boss]"
		NaemQuestBoss = "MarineQuest3"
		LevelQuestBoss = 3
		CFrameQuestBoss = CFrame.new(-2442.65015, 73.0511475, -3219.11523, -0.873540044, 4.2329841e-08, -0.486752301, 5.64383384e-08, 1, -1.43220786e-08, 0.486752301, -3.99823996e-08, -0.873540044)
		CFrameBoss = CFrame.new(-2297.40332, 115.449463, -3946.53833, 0.961227536, -1.46645796e-09, -0.275756449, -2.3212845e-09, 1, -1.34094433e-08, 0.275756449, 1.35296352e-08, 0.961227536)
	elseif SelectBoss == "Don Swan [Lv. 1000] [Boss]" then
		MsBoss = "Don Swan [Lv. 1000] [Boss]"
		CFrameBoss = CFrame.new(2288.802, 15.1870775, 863.034607, 0.99974072, -8.41247214e-08, -0.0227668174, 8.4774733e-08, 1, 2.75850098e-08, 0.0227668174, -2.95079072e-08, 0.99974072)
	elseif SelectBoss == "Smoke Admiral [Lv. 1150] [Boss]" then
		MsBoss = "Smoke Admiral [Lv. 1150] [Boss]"
		NaemQuestBoss = "IceSideQuest"
		LevelQuestBoss = 3
		CFrameQuestBoss = CFrame.new(-6059.96191, 15.9868021, -4904.7373, -0.444992423, -3.0874483e-09, 0.895534337, -3.64098796e-08, 1, -1.4644522e-08, -0.895534337, -3.91229982e-08, -0.444992423)
		CFrameBoss = CFrame.new(-5115.72754, 23.7664986, -5338.2207, 0.251453817, 1.48345061e-08, -0.967869282, 4.02796978e-08, 1, 2.57916977e-08, 0.967869282, -4.54708946e-08, 0.251453817)
	elseif SelectBoss == "Cursed Captain [Lv. 1325] [Raid Boss]" then
		MsBoss = "Cursed Captain [Lv. 1325] [Raid Boss]"
		CFrameBoss = CFrame.new(916.928589, 181.092773, 33422, -0.999505103, 9.26310495e-09, 0.0314563364, 8.42916226e-09, 1, -2.6643713e-08, -0.0314563364, -2.63653774e-08, -0.999505103)
	elseif SelectBoss == "Awakened Ice Admiral [Lv. 1400] [Boss]" then
		MsBoss = "Awakened Ice Admiral [Lv. 1400] [Boss]"
		NaemQuestBoss = "FrostQuest"
		LevelQuestBoss = 3
		CFrameQuestBoss = CFrame.new(5669.33203, 28.2118053, -6481.55908, 0.921275556, -1.25320829e-08, 0.388910472, 4.72230788e-08, 1, -7.96414241e-08, -0.388910472, 9.17372489e-08, 0.921275556)
		CFrameBoss = CFrame.new(6407.33936, 340.223785, -6892.521, 0.49051559, -5.25310213e-08, -0.871432424, -2.76146022e-08, 1, -7.58250565e-08, 0.871432424, 6.12576301e-08, 0.49051559)
	elseif SelectBoss == "Tide Keeper [Lv. 1475] [Boss]" then
		MsBoss = "Tide Keeper [Lv. 1475] [Boss]"
		NaemQuestBoss = "ForgottenQuest"             
		LevelQuestBoss = 3
		CFrameQuestBoss = CFrame.new(-3053.89648, 236.881363, -10148.2324, -0.985987961, -3.58504737e-09, 0.16681771, -3.07832915e-09, 1, 3.29612559e-09, -0.16681771, 2.73641976e-09, -0.985987961)
		CFrameBoss = CFrame.new(-3570.18652, 123.328949, -11555.9072, 0.465199202, -1.3857326e-08, 0.885206044, 4.0332897e-09, 1, 1.35347511e-08, -0.885206044, -2.72606271e-09, 0.465199202)
		-- Old World
	elseif SelectBoss == "Saber Expert [Lv. 200] [Boss]" then
		MsBoss = "Saber Expert [Lv. 200] [Boss]"
		CFrameBoss = CFrame.new(-1458.89502, 29.8870335, -50.633564, 0.858821094, 1.13848939e-08, 0.512275636, -4.85649254e-09, 1, -1.40823326e-08, -0.512275636, 9.6063415e-09, 0.858821094)
	elseif SelectBoss == "The Gorilla King [Lv. 25] [Boss]" then
		MsBoss = "The Gorilla King [Lv. 25] [Boss]"
		NaemQuestBoss = "JungleQuest"
		LevelQuestBoss = 3
		CFrameQuestBoss = CFrame.new(-1604.12012, 36.8521118, 154.23732, 0.0648873374, -4.70858913e-06, -0.997892559, 1.41431883e-07, 1, -4.70933674e-06, 0.997892559, 1.64442184e-07, 0.0648873374)
		CFrameBoss = CFrame.new(-1223.52808, 6.27936459, -502.292664, 0.310949147, -5.66602516e-08, 0.950426519, -3.37275488e-08, 1, 7.06501808e-08, -0.950426519, -5.40241736e-08, 0.310949147)
	elseif SelectBoss == "Bobby [Lv. 55] [Boss]" then
		MsBoss = "Bobby [Lv. 55] [Boss]"
		NaemQuestBoss = "BuggyQuest1"
		LevelQuestBoss = 3
		CFrameQuestBoss = CFrame.new(-1139.59717, 4.75205183, 3825.16211, -0.959730506, -7.5857054e-09, 0.280922383, -4.06310328e-08, 1, -1.11807175e-07, -0.280922383, -1.18718916e-07, -0.959730506)
		CFrameBoss = CFrame.new(-1147.65173, 32.5966301, 4156.02588, 0.956680477, -1.77109952e-10, -0.29113996, 5.16530874e-10, 1, 1.08897802e-09, 0.29113996, -1.19218679e-09, 0.956680477)
	elseif SelectBoss == "Yeti [Lv. 110] [Boss]" then
		MsBoss = "Yeti [Lv. 110] [Boss]"
		NaemQuestBoss = "SnowQuest"
		LevelQuestBoss = 3
		CFrameQuestBoss = CFrame.new(1384.90247, 87.3078308, -1296.6825, 0.280209213, 2.72035177e-08, -0.959938943, -6.75690828e-08, 1, 8.6151708e-09, 0.959938943, 6.24481444e-08, 0.280209213)
		CFrameBoss = CFrame.new(1221.7356, 138.046906, -1488.84082, 0.349343032, -9.49245944e-08, 0.936994851, 6.29478194e-08, 1, 7.7838429e-08, -0.936994851, 3.17894653e-08, 0.349343032)
	elseif SelectBoss == "Mob Leader [Lv. 120] [Boss]" then
		MsBoss = "Mob Leader [Lv. 120] [Boss]"
		CFrameBoss = CFrame.new(-2848.59399, 7.4272871, 5342.44043, -0.928248107, -8.7248246e-08, 0.371961564, -7.61816636e-08, 1, 4.44474857e-08, -0.371961564, 1.29216433e-08, -0.928248107)
		--The Gorilla King [Lv. 25] [Boss]
	elseif SelectBoss == "Vice Admiral [Lv. 130] [Boss]" then
		MsBoss = "Vice Admiral [Lv. 130] [Boss]"
		NaemQuestBoss = "MarineQuest2"
		LevelQuestBoss = 2
		CFrameQuestBoss = CFrame.new(-5035.42285, 28.6520386, 4324.50293, -0.0611100644, -8.08395768e-08, 0.998130739, -1.57416586e-08, 1, 8.00271849e-08, -0.998130739, -1.08217701e-08, -0.0611100644)
		CFrameBoss = CFrame.new(-5078.45898, 99.6520691, 4402.1665, -0.555574954, -9.88630566e-11, 0.831466436, -6.35508286e-08, 1, -4.23449258e-08, -0.831466436, -7.63661632e-08, -0.555574954)
	elseif SelectBoss == "Warden [Lv. 175] [Boss]" then
		MsBoss = "Warden [Lv. 175] [Boss]"
		NaemQuestBoss = "ImpelQuest"
		LevelQuestBoss = 1
		CFrameQuestBoss = CFrame.new(4851.35059, 5.68744135, 743.251282, -0.538484037, -6.68303741e-08, -0.842635691, 1.38001752e-08, 1, -8.81300792e-08, 0.842635691, -5.90851599e-08, -0.538484037)
		CFrameBoss = CFrame.new(5232.5625, 5.26856995, 747.506897, 0.943829298, -4.5439414e-08, 0.330433697, 3.47818627e-08, 1, 3.81658154e-08, -0.330433697, -2.45289105e-08, 0.943829298)
	elseif SelectBoss == "Chief Warden [Lv. 200] [Boss]" then
		MsBoss = "Chief Warden [Lv. 200] [Boss]"
		NaemQuestBoss = "ImpelQuest"
		LevelQuestBoss = 2
		CFrameQuestBoss = CFrame.new(4851.35059, 5.68744135, 743.251282, -0.538484037, -6.68303741e-08, -0.842635691, 1.38001752e-08, 1, -8.81300792e-08, 0.842635691, -5.90851599e-08, -0.538484037)
		CFrameBoss = CFrame.new(5232.5625, 5.26856995, 747.506897, 0.943829298, -4.5439414e-08, 0.330433697, 3.47818627e-08, 1, 3.81658154e-08, -0.330433697, -2.45289105e-08, 0.943829298)
	elseif SelectBoss == "Flamingo [Lv. 225] [Boss]" then
		MsBoss = "Flamingo [Lv. 225] [Boss]"
		NaemQuestBoss = "ImpelQuest"
		LevelQuestBoss = 3
		CFrameQuestBoss = CFrame.new(4851.35059, 5.68744135, 743.251282, -0.538484037, -6.68303741e-08, -0.842635691, 1.38001752e-08, 1, -8.81300792e-08, 0.842635691, -5.90851599e-08, -0.538484037)
		CFrameBoss = CFrame.new(5232.5625, 5.26856995, 747.506897, 0.943829298, -4.5439414e-08, 0.330433697, 3.47818627e-08, 1, 3.81658154e-08, -0.330433697, -2.45289105e-08, 0.943829298)
	elseif SelectBoss == "Magma Admiral [Lv. 350] [Boss]" then
		MsBoss = "Magma Admiral [Lv. 350] [Boss]"
		NaemQuestBoss = "MagmaQuest"
		LevelQuestBoss = 3
		CFrameQuestBoss = CFrame.new(-5317.07666, 12.2721891, 8517.41699, 0.51175487, -2.65508806e-08, -0.859131515, -3.91131572e-08, 1, -5.42026761e-08, 0.859131515, 6.13418294e-08, 0.51175487)
		CFrameBoss = CFrame.new(-5530.12646, 22.8769703, 8859.91309, 0.857838571, 2.23414389e-08, 0.513919294, 1.53689133e-08, 1, -6.91265853e-08, -0.513919294, 6.71978384e-08, 0.857838571)
	elseif SelectBoss == "Fishman Lord [Lv. 425] [Boss]" then
		MsBoss = "Fishman Lord [Lv. 425] [Boss]"
		NaemQuestBoss = "FishmanQuest"
		LevelQuestBoss = 3
		CFrameQuestBoss = CFrame.new(61123.0859, 18.5066795, 1570.18018, 0.927145958, 1.0624845e-07, 0.374700129, -6.98219367e-08, 1, -1.10790765e-07, -0.374700129, 7.65569368e-08, 0.927145958)
		CFrameBoss = CFrame.new(61351.7773, 31.0306778, 1113.31409, 0.999974668, 0, -0.00714713801, 0, 1.00000012, 0, 0.00714714266, 0, 0.999974549)
	elseif SelectBoss == "Wysper [Lv. 500] [Boss]" then
		MsBoss = "Wysper [Lv. 500] [Boss]"
		NaemQuestBoss = "SkyExp1Quest"
		LevelQuestBoss = 3
		CFrameQuestBoss = CFrame.new(-7862.94629, 5545.52832, -379.833954, 0.462944925, 1.45838088e-08, -0.886386991, 1.0534996e-08, 1, 2.19553424e-08, 0.886386991, -1.95022007e-08, 0.462944925)
		CFrameBoss = CFrame.new(-7925.48389, 5550.76074, -636.178345, 0.716468513, -1.22915289e-09, 0.697619379, 3.37381434e-09, 1, -1.70304748e-09, -0.697619379, 3.57381835e-09, 0.716468513)
	elseif SelectBoss == "Thunder God [Lv. 575] [Boss]" then
		MsBoss = "Thunder God [Lv. 575] [Boss]"
		NaemQuestBoss = "SkyExp2Quest"
		LevelQuestBoss = 3
		CFrameQuestBoss = CFrame.new(-7902.78613, 5635.99902, -1411.98706, -0.0361216255, -1.16895912e-07, 0.999347389, 1.44533963e-09, 1, 1.17024491e-07, -0.999347389, 5.6715117e-09, -0.0361216255)
		CFrameBoss = CFrame.new(-7917.53613, 5616.61377, -2277.78564, 0.965189934, 4.80563429e-08, -0.261550069, -6.73089886e-08, 1, -6.46515304e-08, 0.261550069, 8.00056768e-08, 0.965189934)
	elseif SelectBoss == "Cyborg [Lv. 675] [Boss]" then
		MsBoss = "Cyborg [Lv. 675] [Boss]"
		NaemQuestBoss = "FountainQuest"
		LevelQuestBoss = 3
		CFrameQuestBoss = CFrame.new(5253.54834, 38.5361786, 4050.45166, -0.0112687312, -9.93677887e-08, -0.999936521, 2.55291371e-10, 1, -9.93769547e-08, 0.999936521, -1.37512213e-09, -0.0112687312)
		CFrameBoss = CFrame.new(6041.82813, 52.7112198, 3907.45142, -0.563162148, 1.73805248e-09, -0.826346457, -5.94632716e-08, 1, 4.26280238e-08, 0.826346457, 7.31437524e-08, -0.563162148)
   elseif SelectBoss == "Stone [Lv. 1550] [Boss]" then
      MsBoss = "Stone [Lv. 1550] [Boss]"
      NaemQuestBoss = "PiratePortQuest"
      LevelQuestBoss = 3
      CFrameQuestBoss = CFrame.new(-288.003815, 43.7675667, 5573.12012, -0.959750533, 1.11968195e-08, 0.280853927, -1.77952231e-08, 1, -1.00677937e-07, -0.280853927, -1.01623563e-07, -0.959750533)
      CFrameBoss = CFrame.new(-1086.11621, 38.8425903, 6768.71436, 0.0231462717, -0.592676699, 0.805107772, 2.03251839e-05, 0.805323839, 0.592835128, -0.999732077, -0.0137055516, 0.0186523199)
   elseif SelectBoss == "Island Empress [Lv. 1675] [Boss]" then
      MsBoss = "Island Empress [Lv. 1675] [Boss]"
      NaemQuestBoss = "AmazonQuest2"
      LevelQuestBoss = 3
      CFrameQuestBoss = CFrame.new(5444.14355, 601.603821, 751.306763, 0.0994469747, 6.9440496e-08, -0.995042861, -6.87854964e-08, 1, 6.29118517e-08, 0.995042861, 6.21881213e-08, 0.0994469747)
      CFrameBoss = CFrame.new(5713.98877, 601.922974, 202.751251, -0.101080291, -0, -0.994878292, -0, 1, -0, 0.994878292, 0, -0.101080291)
   elseif SelectBoss == "Kilo Admiral [Lv. 1750] [Boss]" then
      MsBoss = "Kilo Admiral [Lv. 1750] [Boss]"
      NaemQuestBoss = "MarineTreeIsland"
      LevelQuestBoss = 3
      CFrameQuestBoss = CFrame.new(2223.3645, 28.7049141, -6719.18408, -0.953810513, 0.000124398866, 0.30040893, 0.000600414874, 0.999998689, 0.00149224349, -0.300408363, 0.00160368741, -0.953809321)
      CFrameBoss = CFrame.new(2877.61743, 423.558685, -7207.31006, -0.989591599, -0, -0.143904909, -0, 1.00000012, -0, 0.143904924, 0, -0.989591479)
   elseif SelectBoss == "Captain Elephant [Lv. 1875] [Boss]" then
      MsBoss = "Captain Elephant [Lv. 1875] [Boss]"
      NaemQuestBoss = "DeepForestIsland"
      LevelQuestBoss = 3
      CFrameQuestBoss = CFrame.new(-13231.1602, 333.744446, -7624.40723, -0.0901302397, 8.36351219e-08, 0.995930016, 2.76566414e-08, 1, -8.14740204e-08, -0.995930016, 2.02008046e-08, -0.0901302397)
      CFrameBoss = CFrame.new(-13485.0283, 331.709259, -8012.4873, 0.714521289, 7.98849911e-08, 0.69961375, -1.02065748e-07, 1, -9.94383065e-09, -0.69961375, -6.43015241e-08, 0.714521289)
	elseif SelectBoss == "Beautiful Pirate [Lv. 1950] [Boss]" then
		MsBoss = "Beautiful Pirate [Lv. 1950] [Boss]"
		NaemQuestBoss = "DeepForestIsland2"
		LevelQuestBoss = 3
		CFrameQuestBoss = CFrame.new(-12680.3818, 389.971039, -9902.01953, -0.0871315002, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, -0.0871315002)
		CFrameBoss = CFrame.new(5310.80957, 22.5622349, 129.390533, 1, -2.47274325e-08, 1.41872977e-13, 2.47274325e-08, 1, -4.55364528e-08, -1.40746979e-13, 4.55364528e-08, 1)
	elseif SelectBoss == "Longma [Lv. 2000] [Boss]" then
		MsBoss = "Longma [Lv. 2000] [Boss]"
		CFrameBoss = CFrame.new(-10293.208, 332.791351, -9450.625, 0.132661447, -0.213521436, -0.96788919, -0.0110089043, 0.976142585, -0.21685116, 0.991100252, 0.0394231752, 0.127145842)
	elseif SelectBoss == "Stone [Lv. 1550] [Boss]" then
		MsBoss = "Stone [Lv. 1550] [Boss]"
		NaemQuestBoss = "PiratePortQuest"
		LevelQuestBoss = 3
		CFrameQuestBoss = CFrame.new(-290.074677, 42.9034653, 5581.58984, 0.965929627, -0, -0.258804798, 0, 1, -0, 0.258804798, 0, 0.965929627)
		CFrameBoss = CFrame.new(-970.778564, 40.0068855, 6795.5249, -0.179641441, -2.87076816e-08, 0.983732164, -4.4126935e-08, 1, 2.11243023e-08, -0.983732164, -3.96142852e-08, -0.179641441)
	elseif SelectBoss == "Island Empress [Lv. 1675] [Boss]" then
		MsBoss = "Island Empress [Lv. 1675] [Boss]"
		NaemQuestBoss = "AmazonQuest2"
		LevelQuestBoss = 3
		CFrameQuestBoss = CFrame.new(5448.86133, 601.516174, 751.130676, 0, 0, 1, 0, 1, -0, -1, 0, 0)
		CFrameBoss = CFrame.new(5813.94140625, 661.14862060547, 202.04710388184)
	elseif SelectBoss == "Cake Queen [Lv. 2175] [Boss]" then	
		MsBoss = "Cake Queen [Lv. 2175] [Boss]"
		NaemQuestBoss = "IceCreamIslandQuest"
		LevelQuestBoss = 3
		CFrameQuestBoss = CFrame.new(-823.451416, 64.6137619, -10963.6523, 0.766364694, 3.31299432e-08, -0.642405748, -1.98677643e-08, 1, 2.78702217e-08, 0.642405748, -8.59558913e-09, 0.766364694)
		CFrameBoss = CFrame.new(-651.757263, 350.213928, -11256.1494, 0.821053803, 4.03152001e-08, -0.570850849, -7.25812166e-09, 1, 6.01836589e-08, 0.570850849, -4.5270717e-08, 0.821053803)	elseif SelectBoss == "Beautiful Pirate [Lv. 1950] [Boss]" then
		MsBoss = "Beautiful Pirate [Lv. 1950] [Boss]"
		NaemQuestBoss = "DeepForestIsland2"
		LevelQuestBoss = 3
		CFrameQuestBoss = CFrame.new(-12680.3818, 389.971039, -9902.01953, -0.0871315002, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, -0.0871315002)
		CFrameBoss = CFrame.new(5310.80957, 22.5622349, 129.390533, 1, -2.47274325e-08, 1.41872977e-13, 2.47274325e-08, 1, -4.55364528e-08, -1.40746979e-13, 4.55364528e-08, 1)
	elseif SelectBoss == "Longma [Lv. 2000] [Boss]" then
		MsBoss = "Longma [Lv. 2000] [Boss]"
		CFrameBoss = CFrame.new(-10293.208, 332.791351, -9450.625, 0.132661447, -0.213521436, -0.96788919, -0.0110089043, 0.976142585, -0.21685116, 0.991100252, 0.0394231752, 0.127145842)
	elseif SelectBoss == "Stone [Lv. 1550] [Boss]" then
		MsBoss = "Stone [Lv. 1550] [Boss]"
		NaemQuestBoss = "PiratePortQuest"
		LevelQuestBoss = 3
		CFrameQuestBoss = CFrame.new(-290.074677, 42.9034653, 5581.58984, 0.965929627, -0, -0.258804798, 0, 1, -0, 0.258804798, 0, 0.965929627)
		CFrameBoss = CFrame.new(-970.778564, 40.0068855, 6795.5249, -0.179641441, -2.87076816e-08, 0.983732164, -4.4126935e-08, 1, 2.11243023e-08, -0.983732164, -3.96142852e-08, -0.179641441)
	elseif SelectBoss == "Island Empress [Lv. 1675] [Boss]" then
		MsBoss = "Island Empress [Lv. 1675] [Boss]"
		NaemQuestBoss = "AmazonQuest2"
		LevelQuestBoss = 3
		CFrameQuestBoss = CFrame.new(5448.86133, 601.516174, 751.130676, 0, 0, 1, 0, 1, -0, -1, 0, 0)
		CFrameBoss = CFrame.new(5813.94140625, 661.14862060547, 202.04710388184)
	elseif SelectBoss == "Cake Queen [Lv. 2175] [Boss]" then	
		MsBoss = "Cake Queen [Lv. 2175] [Boss]"
		NaemQuestBoss = "IceCreamIslandQuest"
		LevelQuestBoss = 3
		CFrameQuestBoss = CFrame.new(-823.451416, 64.6137619, -10963.6523, 0.766364694, 3.31299432e-08, -0.642405748, -1.98677643e-08, 1, 2.78702217e-08, 0.642405748, -8.59558913e-09, 0.766364694)
		CFrameBoss = CFrame.new(-651.757263, 350.213928, -11256.1494, 0.821053803, 4.03152001e-08, -0.570850849, -7.25812166e-09, 1, 6.01836589e-08, 0.570850849, -4.5270717e-08, 0.821053803)
	end 
end
	local Boss = {}
	for i, v in pairs(game.ReplicatedStorage:GetChildren()) do
		if string.find(v.Name, "Boss") then
			if v.Name == "Ice Admiral [Lv. 700] [Boss]" then
			else
				table.insert(Boss, v.Name)
			end
		end
	end
	local BossName = AutoFram:Dropdown("Select Boss",Boss,function(Value)
		SelectBoss = Value
	end)
	AutoFram:Button("Refresh Boss",function()
BossName:Clear()
for i, v in pairs(game.ReplicatedStorage:GetChildren()) do
    if string.find(v.Name, "Boss") then
      BossName:Add(v.Name)
   end
   end
end)
AutoFram:Toggle("Auto Farm Boss",false,function(value)
 _G.Boss = value
 if _G.Boss == true then
pcall(function()
    while _G.Boss do wait()
        itemequip(_G.SelectWeapon)
         changestate()
           if game:GetService("ReplicatedStorage"):FindFirstChild(SelectBoss) then
                local Distancex = (Vector3.new(game:GetService("ReplicatedStorage")[SelectBoss].HumanoidRootPart.Position) - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude -- จุดที่จะไป Position Only
                local Speexd = 250 -- ความเร็วของมึง
                tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(Distancex/Speexd, Enum.EasingStyle.Linear)
                tweenx = tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = game:GetService("ReplicatedStorage")[SelectBoss].HumanoidRootPart.CFrame * CFrame.new(0,20,0)})
                tweenx:Play()
           else
              repeat wait()
                  click()
                  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies[SelectBoss].HumanoidRootPart.CFrame * CFrame.new(0,20,5)
                  game:GetService("Workspace").Enemies[SelectBoss].HumanoidRootPart.Size = Vector3.new(30,30,30)
                  game:GetService("Workspace").Enemies[SelectBoss].HumanoidRootPart.CanCollide = false
               until game:GetService("Workspace").Enemies[SelectBoss].Humanoid.Health <= 0 or _G.Boss == false
           end
           end
       end)
    end
end)



AutoFram:Toggle("Auto Farm All Boss",false,function(value)
_G.AutoFarmAllBoss = value
while _G.AutoFarmAllBoss do wait()
   pcall(function()
       itemequip(_G.SelectWeapon)
   for i,v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
      if string.find(v.Name , "Boss") then
         repeat wait()
             local magnitude = (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
             if magnitude < 1000 then
            itemequip(_G.SelectWeapon)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0,15,8)
            v.HumanoidRootPart.Size = Vector3.new(40,40,40)
            v.HumanoidRootPart.Transparency = 0.85
            v.HumanoidRootPart.CanCollide = true
            v.Humanoid.WalkSpeed = 0
            v.Humanoid:ChangeState(11)
            click()
            else
            local Distancex = (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude -- จุดที่จะไป Position Only
            local Speexd = 150 -- ความเร็วของมึง
            tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(Distancex/Speexd, Enum.EasingStyle.Linear)
            tweenx = tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = v.HumanoidRootPart.CFrame*CFrame.new(0,30,0)})
            tweenx:Play()
            wait(Distancex/Speexd)
            end
             until v.Humanoid.Health <= 0 or _G.AutoFarmAllBoss == false
       end
      end
   end)
end
end)

local LocalPlayer = game:GetService'Players'.LocalPlayer
local originalstam = LocalPlayer.Character.Energy.Value
function infinitestam()
   LocalPlayer.Character.Energy.Changed:connect(function()
   if InfinitsEnergy then
      LocalPlayer.Character.Energy.Value = originalstam
   end
   end)
end
local Stats = Tab2:newpage()
Stats:Title("Stats")
	Stats:Toggle("Melee",_G.Melee,function(Value)
		_G.Melee = Value    
	end)
	Stats:Toggle("Defense",_G.Defense,function(value)
		_G.Defense = value
	end)
	Stats:Toggle("Sword",_G.Sword,function(value)
		_G.Sword = value
	end)
	Stats:Toggle("Gun",_G.Gun,function(value)
		_G.Gun = value
	end)
	Stats:Toggle("Devil Fruit",_G.Fruit,function(value)
		_G.Fruit = value
	end)
	PointStats = 1
	local St = Stats:Slider("Point",true,1,100,PointStats,1,function(a)
	        _G.PointStats = a
	end)
	
	spawn(function()
		while wait() do
		    pcall(function()
			if game.Players.localPlayer.Data.Points.Value >= PointStats then
				if _G.Melee then
					local args = {
						[1] = "AddPoint",
						[2] = "Melee",
						[3] = _G.PointStats
					}
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
				end 
				if _G.Defense then
					local args = {
						[1] = "AddPoint",
						[2] = "Defense",
						[3] = _G.PointStats
					}
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
				end 
				if _G.Sword then
					local args = {
						[1] = "AddPoint",
						[2] = "Sword",
						[3] = _G.PointStats
					}
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
				end 
				if _G.Gun then
					local args = {
						[1] = "AddPoint",
						[2] = "Gun",
						[3] = _G.PointStats
					}
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
				end 
				if _G.Fruit then
					local args = {
						[1] = "AddPoint",
						[2] = "Demon Fruit",
						[3] = _G.PointStats
					}
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
				end
			end
		    end)
		    end
	end)
local Tab3 = win:Tap("Game")
local Game = Tab3:newpage()
Game:Title("Game")
    Game:Toggle("Auto Superhuman",_G.Superhuman,function(value)
    _G.Superhuman = value
    end)
    Game:Toggle("Auto DeathStep",_G.DeathStep,function(value)
    _G.DeathStep = value
    end)
    Game:Toggle("Auto Electric Claw",_G.Electro,function(value)
    _G.Electro = value
    end)
   Game:Toggle("Auto Dragon Talon",_G.Dragon_Talon,function(value)
      _G.Dragon_Talon = value
   end)
  spawn(function()
      while wait() do
          if _G.Dragon_Talon then
              if game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") or game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw") or game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Talon") or game.Players.LocalPlayer.Character:FindFirstChild("Dragon Talon") then
                  if game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw").Level.Value >= 400 then
                      local args = {
                          [1] = "BuyDragonTalon"
                      }
                      
                      game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                      _G.SelectWeapon = "Dragon Talon"
                  end  
                  if game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw") and game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw").Level.Value >= 400 then
                      local args = {
                          [1] = "BuyDragonTalon"
                      }
                      
                      game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
  
                      _G.SelectWeapon = "Dragon Talon"
                  end
              end
          end
      end
      end)
      Game:Toggle("Auto Saber",_G.Saber,function(value)
        _G.Saber = value
      end)
      
     
      
      spawn(function()
           while wait() do
              if _G.Saber then
                 local MyLevel = game.Players.localPlayer.Data.Level.Value
                 if MyLevel >= 200 and First_World then
                    local ply = game.Players.LocalPlayer.Character.HumanoidRootPart
                    TP(Vector3.new(-1249.77222, 11.8870859, 341.356476),CFrame.new(-1249.77222, 11.8870859, 341.356476))
                 
                    ply.CFrame = CFrame.new(-1180.89563, 21.0007095, 187.861374, -0.866141438, -2.23321149e-05, -0.499799222, 2.23321149e-05, 1, -8.33832528e-05, 0.499799222, -8.33832528e-05, -0.866141438)
                    wait(.5)
                    ply.CFrame = CFrame.new(-1421.19995, 44.5000229, 21.6000061, -0.866039991, -0.499974549, -5.5283308e-06, -5.5283308e-06, 2.06232071e-05, -0.99999994, 0.499974549, -0.866040051, -2.06232071e-05)
                    wait(.5)
                    ply.CFrame = CFrame.new(-1648.49451, 19.5000286, 437.794678, -0.190788865, -0.981631041, 4.50909138e-05, 4.50909138e-05, -5.47170639e-05, -1, 0.981631041, -0.190788865, 5.47170639e-05)
                    wait(.5)
                    ply.CFrame = CFrame.new(-1324.10144, 31.4560413, -461.404114, 0.766120374, 2.95190748e-05, 0.642697096, 2.95190748e-05, 1, -8.11179052e-05, -0.642697096, 8.11179052e-05, 0.766120374)
                    wait(.5)
                    ply.CFrame = CFrame.new(-1151.71204, 2.64512515, -699.488281, -0.999938607, -8.41316439e-09, -0.0110825691, -8.28433233e-09, 1, -1.16706884e-08, 0.0110825691, -1.15781598e-08, -0.999938607)
                    wait(.5)
                    ply.CFrame = CFrame.new(-1611.09485, 16.2000656, 133.827881, 0.499959469, -0, -0.866048813, 0, 1, -0, 0.866048813, 0, 0.499959469)
                    wait(.5)
                    local args = {
                        [1] = "ProQuestProgress",
                        [2] = "GetTorch"
                    }
                 
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                    itemequip("Torch")
                    wait(1)
                    TP(Vector3.new(1113.20667, 5.04727077, 4364.80225, -0.780225277, 0, -0.625498652, 0, 1, 0, 0.625498652, 0, -0.780225277),CFrame.new(1113.20667, 5.04727077, 4364.80225, -0.780225277, 0, -0.625498652, 0, 1, 0, 0.625498652, 0, -0.780225277))
                    wait(.5)
                    local args = {
                       [1] = "ProQuestProgress",
                       [2] = "DestroyTorch"
                    }
                 
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                    local args = {
                       [1] = "ProQuestProgress"
                    }
                 
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                    wait(.5)
                    local args = {
                       [1] = "ProQuestProgress",
                       [2] = "GetCup"
                    }
                 
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                    itemequip("Cup" )
                    wait(.5)
                    TP(Vector3.new(1393.15234, 37.3737411, -1321.66858, 0.0851671547, -1.41589218e-09, 0.99636668, 2.91190938e-09, 1, 1.17215193e-09, -0.99636668, 2.80150059e-09, 0.0851671547),CFrame.new(1393.15234, 37.3737411, -1321.66858, 0.0851671547, -1.41589218e-09, 0.99636668, 2.91190938e-09, 1, 1.17215193e-09, -0.99636668, 2.80150059e-09, 0.0851671547))
                 
                    wait(.5)
                    local args = {
                       [1] = "ProQuestProgress",
                       [2] = "FillCup",
                       [3] = game:GetService("Players").LocalPlayer.Character.Cup
                    }
                 
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                    local args = {
                       [1] = "ProQuestProgress"
                    }
                 
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                    wait(.5)
                    ply.CFrame = CFrame.new(1457.9043, 88.277977, -1390.95496, -0.537260771, 1.63033693e-08, -0.843416214, -7.49195621e-08, 1, 6.70543372e-08, 0.843416214, 9.92140343e-08, -0.537260771)
                    wait(.5)
                    local args = {
                       [1] = "ProQuestProgress",
                       [2] = "SickMan"
                    }
                 
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                    wait(.5)
                    TP(Vector3.new(-908.365845, 13.7778397, 4077.84668, -0.0465272143, 3.05009067e-08, -0.998917043, -2.55670285e-09, 1, 3.06530588e-08, 0.998917043, 3.98013533e-09, -0.0465272143),CFrame.new(-908.365845, 13.7778397, 4077.84668, -0.0465272143, 3.05009067e-08, -0.998917043, -2.55670285e-09, 1, 3.06530588e-08, 0.998917043, 3.98013533e-09, -0.0465272143))
                    wait(.5)
                    local args = {
                       [1] = "ProQuestProgress",
                       [2] = "RichSon"
                    }
                 
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                    wait(.5)
                    TP(Vector3.new(-2850.20068, 7.39224768, 5354.99268),CFrame.new(-2850.20068, 7.39224768, 5354.99268))
                    wait(.5)
                    while wait() do 
                          game:GetService'VirtualUser':CaptureController()
                          game:GetService('VirtualUser'):ClickButton1(Vector2.new(851, 158), game:GetService("Workspace").Camera.CFrame)  
                          game:GetService("Workspace").Enemies["Mob Leader [Lv. 120] [Boss]"].HumanoidRootPart.Size = Vector3.new(50,50,50)
                          game:GetService("Workspace").Enemies["Mob Leader [Lv. 120] [Boss]"].HumanoidRootPart.CanCollide = false
                          ply.CFrame = game:GetService("Workspace").Enemies["Mob Leader [Lv. 120] [Boss]"].HumanoidRootPart.CFrame * CFrame.new(0,25,0)
                          itemequip(_G.SelectWeapon)
                          if game:GetService("Workspace").Enemies["Mob Leader [Lv. 120] [Boss]"].Humanoid.Health == 0 then
                             TP(Vector3.new(-908.365845, 13.7778397, 4077.84668, -0.0465272143, 3.05009067e-08, -0.998917043, -2.55670285e-09, 1, 3.06530588e-08, 0.998917043, 3.98013533e-09, -0.0465272143),CFrame.new(-908.365845, 13.7778397, 4077.84668, -0.0465272143, 3.05009067e-08, -0.998917043, -2.55670285e-09, 1, 3.06530588e-08, 0.998917043, 3.98013533e-09, -0.0465272143))
                             wait(.5)
                             local args = {
                                [1] = "ProQuestProgress",
                                [2] = "RichSon"
                             }
                 
                             game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                             local args = {
                                [1] = "ProQuestProgress"
                             }
                 
                             game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                             wait(.5)
                             local toolname = "Relic" 
                             local Plr = game:GetService("Players").LocalPlayer
                             pcall(function()
                                if Plr.Backpack:FindFirstChild(toolname) and Plr.Character:FindFirstChild(toolname) == nil then
                                   local tool = Plr.Backpack:FindFirstChild(toolname)
                                   Plr.Character.Humanoid:EquipTool(tool)
                                end
                             end)
                             TP(Vector3.new(-1405.45728, 29.8778057, 4.69083405, 0.87234509, 1.10293916e-08, 0.488890588, -2.06415529e-09, 1, -1.88768947e-08, -0.488890588, 1.54580206e-08, 0.87234509),CFrame.new(-1405.45728, 29.8778057, 4.69083405, 0.87234509, 1.10293916e-08, 0.488890588, -2.06415529e-09, 1, -1.88768947e-08, -0.488890588, 1.54580206e-08, 0.87234509))
                             wait(.5)
                 
                             local args = {
                                [1] = "ProQuestProgress",
                                [2] = "PlaceRelic"
                             }
                 
                             game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                             local args = {
                                [1] = "ProQuestProgress"
                             }
                             if _G.Saber then
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                game:GetService'VirtualUser':CaptureController()
                                game:GetService('VirtualUser'):ClickButton1(Vector2.new(851, 158), game:GetService("Workspace").Camera.CFrame)  
                                game:GetService("Workspace").Enemies["Saber Expert [Lv. 200] [Boss]"].HumanoidRootPart.Size = Vector3.new(40,40,40)
                                game:GetService("Workspace").Enemies["Saber Expert [Lv. 200] [Boss]"].HumanoidRootPart.CanCollide = false
                                itemequip(_G.SelectWeapon)
                                ply.CFrame = game:GetService("Workspace").Enemies["Saber Expert [Lv. 200] [Boss]"].HumanoidRootPart.CFrame * CFrame.new(0,25,0)
                            
                            end
                        end
                    end
                 end
              end
           end
      end)
    Game:Toggle("Auto Elite Hunter",_G.elitehunt,function(value)
    _G.elitehunt = value
    end)
    function enemylongma()
        Tushitatarget(CFrame.new(-10171.7051, 406.981995, -9552.31738))
        if game.Workspace.Enemies:FindFirstChild("Longma [Lv. 2000] [Boss]") then
            local mobs = game.Workspace.Enemies:GetChildren()
            for i,v in pairs(mobs) do
                if v.Name == "Longma [Lv. 2000] [Boss]" and v:IsA("Model") and v:FindFirstChild("Humanoid") and
                    v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                    return v
                end
            end
        end
        return game.ReplicatedStorage:FindFirstChild("Longma [Lv. 2000] [Boss]")
    end
    
    function Tushitatarget(CFgo)
        local tween_s = game:service"TweenService"
        local info = TweenInfo.new((game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart.Position - CFgo.Position).Magnitude/300, Enum.EasingStyle.Linear)
        local tween, err = pcall(function()
            tween = tween_s:Create(game.Players.LocalPlayer.Character["HumanoidRootPart"], info, {CFrame = CFgo})
            tween:Play()
        end)
        if not tween then return err end
    end
    
    function enemyEliteBoss()
        if game.Workspace.Enemies:FindFirstChild("Deandre [Lv. 1750]") or game.Workspace.Enemies:FindFirstChild("Urban [Lv. 1750]") or game.Workspace.Enemies:FindFirstChild("Diablo [Lv. 1750]") then
            local mobs = game.Workspace.Enemies:GetChildren()
            for i,v in pairs(mobs) do
                if v.Name == "Deandre [Lv. 1750]" or v.Name == "Diablo [Lv. 1750]" or v.Name == "Urban [Lv. 1750]"  and v:IsA("Model") and v:FindFirstChild("Humanoid") and
                    v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                    return v
                end
            end
        end
        return game.ReplicatedStorage:FindFirstChild("Deandre [Lv. 1750]") or game.ReplicatedStorage:FindFirstChild("Urban [Lv. 1750]") or game.ReplicatedStorage:FindFirstChild("Diablo [Lv. 1750]")
    end
    
    Game:Toggle("Auto Tushita",_G.Auto_Thusita,function(value)
        _G.Auto_Thusita = value
    end)
    
    spawn(function()
        while wait(.1) do
            if _G.Auto_Thusita then
                AutoTushitaNoobHub()
            end
        end
    end)
    
    _G.checkup = true
    function AutoTushitaNoobHub()
        if _G.checkup and not game.Players.LocalPlayer.Backpack:FindFirstChild("God's Chalice") and not game.Players.LocalPlayer.Character:FindFirstChild("God's Chalice") then
            if game.Workspace.Enemies:FindFirstChild("Deandre [Lv. 1750]") or game.Workspace.Enemies:FindFirstChild("Urban [Lv. 1750]") or game.Workspace.Enemies:FindFirstChild("Diablo [Lv. 1750]") or game.ReplicatedStorage:FindFirstChild("Deandre [Lv. 1750]") or game.ReplicatedStorage:FindFirstChild("Urban [Lv. 1750]") or game.ReplicatedStorage:FindFirstChild("Diablo [Lv. 1750]") then
                if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                    _G.FastBoss = false
                    repeat Tushitatarget(CFrame.new(5420.49219, 314.446045, -2823.07373)) wait() until _G.StopTween == true or not _G.Tushitahop or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(5420.49219, 314.446045, -2823.07373)).Magnitude <= 10
                    wait(1)
                    repeat Tushitatarget(CFrame.new(5420.49219, 314.446045, -2823.07373)) wait() until _G.StopTween == true or not _G.Tushitahop or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(5420.49219, 314.446045, -2823.07373)).Magnitude <= 10
                    wait(1.1)
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter")
                    wait(1)
                elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                    CheckQuest()
                    pcall(function()
                        itemequip(_G.SelectWeapon)
                        pcall(function()
                            local v = enemyEliteBoss()
                            v.HumanoidRootPart.CanCollide = false
                            v.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                            Tushitatarget(v.HumanoidRootPart.CFrame * CFrame.new(1,20,1))
                            _G.FastBoss = true
                        end)
                    end)
                end
            elseif _G.ServerHop then
                _G.FastBoss = false
                Tushitatarget(CFrame.new(-12554.9443, 337.194092, -7501.44727))
                wait(1)
            end
        elseif game.Players.LocalPlayer.Backpack:FindFirstChild("God's Chalice") or game.Players.LocalPlayer.Character:FindFirstChild("God's Chalice") then
            _G.checkup = false
            _G.FastBoss = false
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("activateColor","Winter Sky")
            wait(0.5)
            repeat Tushitatarget(CFrame.new(-5420.16602, 1084.9657, -2666.8208)) wait() until _G.StopTween == true or not _G.Tushitahop or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-5420.16602, 1084.9657, -2666.8208)).Magnitude <= 10
            wait(0.5)
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("activateColor","Pure Red")
            wait(0.5)
            repeat Tushitatarget(CFrame.new(-5414.41357, 309.865753, -2212.45776)) wait() until _G.StopTween == true or not _G.Tushitahop or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-5414.41357, 309.865753, -2212.45776)).Magnitude <= 10
            wait(0.5)
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("activateColor","Snow White")
            wait(0.5)
            repeat Tushitatarget(CFrame.new(-4971.47559, 331.565765, -3720.02954)) wait() until _G.StopTween == true or not _G.Tushitahop or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-4971.47559, 331.565765, -3720.02954)).Magnitude <= 10
            wait(0.5)
            itemequip("God's Chalice")
            wait(0.5)
            repeat Tushitatarget(CFrame.new(-5560.27295, 313.915466, -2663.89795)) wait() until _G.StopTween == true or not _G.Tushitahop or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-5560.27295, 313.915466, -2663.89795)).Magnitude <= 10
            wait(0.5)
            repeat Tushitatarget(CFrame.new(-5561.37451, 313.342529, -2663.4948)) wait() until _G.StopTween == true or not _G.Tushitahop or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(5420.49219, 314.446045, -2823.07373)).Magnitude <= 10
            wait(1)
            repeat Tushitatarget(CFrame.new(5154.17676, 141.786423, 911.046326)) wait() until _G.StopTween == true or not _G.Tushitahop or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(5420.49219, 314.446045, -2823.07373)).Magnitude <= 10
            wait(0.2)
            repeat Tushitatarget(CFrame.new(5148.03613, 162.352493, 910.548218)) wait() until _G.StopTween == true or not _G.Tushitahop or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(5420.49219, 314.446045, -2823.07373)).Magnitude <= 10
            wait(1)
            itemequip("Holy Torch")
            wait(1)
            wait(0.4)
            repeat Tushitatarget(CFrame.new(-10752.7695, 412.229523, -9366.36328)) wait() until _G.StopTween == true or not _G.Tushitahop or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(5420.49219, 314.446045, -2823.07373)).Magnitude <= 10
            wait(0.4)
            repeat Tushitatarget(CFrame.new(-11673.4111, 331.749023, -9474.34668)) wait() until _G.StopTween == true or not _G.Tushitahop or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(5420.49219, 314.446045, -2823.07373)).Magnitude <= 10
            wait(0.4)
            repeat Tushitatarget(CFrame.new(-12133.3389, 519.47522, -10653.1904)) wait() until _G.StopTween == true or not _G.Tushitahop or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(5420.49219, 314.446045, -2823.07373)).Magnitude <= 10
            wait(0.4)
            repeat Tushitatarget(CFrame.new(-13336.5, 485.280396, -6983.35254)) wait() until _G.StopTween == true or not _G.Tushitahop or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(5420.49219, 314.446045, -2823.07373)).Magnitude <= 10
            wait(0.4)
            repeat Tushitatarget(CFrame.new(-13487.4131, 334.84845, -7926.34863)) wait() until _G.StopTween == true or not _G.Tushitahop or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(5420.49219, 314.446045, -2823.07373)).Magnitude <= 10
            wait(1)
        elseif game.Workspace.Enemies:FindFirstChild("Longma [Lv. 2000] [Boss]") or game.ReplicatedStorage:FindFirstChild("Longma [Lv. 2000] [Boss]") then
            pcall(function()
                itemequip(_G.SelectWeapon)
                pcall(function()
                    local v = enemylongma()
                    v.HumanoidRootPart.CanCollide = false
                    v.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                    Tushitatarget(v.HumanoidRootPart.CFrame * CFrame.new(1,20,1))
                    _G.FastBoss = true
                end)
            end)
        elseif game.Workspace.Enemies:FindFirstChild("rip_indra True Form [Lv. 5000] [Raid Boss]")  or game.ReplicatedStorage:FindFirstChild("rip_indra True Form [Lv. 5000] [Raid Boss]") then
            pcall(function()
                itemequip(_G.SelectWeapon)
                pcall(function()
                    local v = enemyrip()
                    v.HumanoidRootPart.CanCollide = false
                    v.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                    Tushitatarget(v.HumanoidRootPart.CFrame * CFrame.new(1,20,1))
                    _G.FastBoss = true
                end)
            end)
        elseif _G.ServerHop then
            _G.FastBoss = false
            Tushitatarget(CFrame.new(-12554.9443, 337.194092, -7501.44727))
            wait(1)
        end
    end
    Game:Toggle("Auto Buy Legendary Sword",_G.BuySwordLegendary,function(value)
    _G.BuySwordLegendary = value
    end)
   Game:Toggle("Auto Buy Haki Color",_G.BuyHakiColorsDealer,function(value)
    _G.BuyHakiColorsDealer = value
    end)
Game:Toggle("Auto Store Fruit All",_G.AutoStoreFruitAll,function(value)
    _G.AutoStoreFruitAll = value
end)
spawn(function()
    while wait(.1) do
    if _G.AutoStoreFruitAll then
pcall(function()
   if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Bomb Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bomb Fruit") then
      game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Bomb-Bomb")
   elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Spike Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spike Fruit") then
      game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Spike-Spike")
   elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Chop Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Chop Fruit") then
      game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Chop-Chop")
   elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Spring Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spring Fruit") then
      game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Spring-Spring")
   elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Kilo Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Kilo Fruit") then
      game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Kilo-Kilo")
   elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Smoke Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Smoke Fruit") then
      game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Smoke-Smoke")
   elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Spin Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spin Fruit") then
      game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Spin-Spin")
   elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Flame Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flame Fruit") then
      game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Flame-Flame")
   elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Bird: Falcon Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bird: Falcon Fruit") then
      game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Bird-Bird: Falcon")
   elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Ice Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Ice Fruit") then
      game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Ice-Ice")
   elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Sand Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Sand Fruit") then
      game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Sand-Sand")
   elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dark Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dark Fruit") then
      game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Dark-Dark")
   elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Diamond Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Diamond Fruit") then
      game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Diamond-Diamond")
   elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Light Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Light Fruit") then
      game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Light-Light")
   elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Love Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Love Fruit") then
      game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Love-Love")
   elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Rubber Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Rubber Fruit") then
      game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Rubber-Rubber")
   elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Barrier Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Barrier Fruit") then
      game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Barrier-Barrier")
   elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Magma Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Magma Fruit") then
      game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Magma-Magma")
   elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Door Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Door Fruit") then
      game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Door-Door")
   elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Quake Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Quake Fruit") then
      game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Quake-Quake")
   elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Human-Human: Buddha Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Human-Human: Buddha Fruit") then
      game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Human-Human: Buddha")
   elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("String Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("String Fruit") then
      game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","String-String")
   elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Bird: Phoenix Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bird: Phoenix Fruit") then
      game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Bird-Bird: Phoenix")
   elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Rumble Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Rumble Fruit") then
      game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Rumble-Rumble")
   elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Paw Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Paw Fruit") then
      game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Paw-Paw")
   elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Gravity Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Gravity Fruit") then
      game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Gravity-Gravity")
   elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dough Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dough Fruit") then
      game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Dough-Dough")
   elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Venom Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Venom Fruit") then
      game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Venom-Venom")
   elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Control Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Control Fruit") then
      game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Control-Control")
   elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Fruit") then
      game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Dragon-Dragon")
   end
end)
end
end
end)    
Game:Toggle("Grab All Fruit",_G.BringFruit,function(bring)
_G.BringFruit = bring
end)

spawn(function()
    while wait() do
        if _G.BringFruit then
            pcall(function()
                for i,v in pairs(game.Workspace:GetChildren()) do
                    if string.find(v.Name, "Fruit") then
                        local OF = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                        if (v.Handle.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 450 then
                            v.Handle.CFrame = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame
                        else 
                            Distance = (v.Handle.CFrame - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude -- จุดที่จะไป Position Only
                            Speed = 150 -- ความเร็วของมึง
                            tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear)
                            tween = tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = v.Handle.CFrame*CFrame.new(20,0,9)})
                            tween:Play()
                            _G.Clip = true
                            wait(Distance/Speed)
                            _G.Clip = false                            
                            wait(.8)
                            Distance = (v.Handle.CFrame - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude -- จุดที่จะไป Position Only
                            Speed = 150 -- ความเร็วของมึง
                            tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear)
                            tween = tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = v.Handle.CFrame})
                            tween:Play()
                            wait(.8)
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = OF
                        end
                    end
                end
            end)
        end
    end
end)
Game:Toggle("Auto BuyFruit",_G.autobuyfruit,function(value)
_G.autobuyfruit = value
end)
spawn(function()
    while wait(.1) do
if _G.autobuyfruit then
    local args = {
        [1] = "Cousin",
        [2] = "Buy"
    }
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
wait(.1)
end
end
end)
Game:Button("BuyFruit", function()
local args = {
    [1] = "Cousin",
    [2] = "Buy"
}
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end)
Game:Label("Use Candy")
Game:Button("2x EXP", function()
local args = {
    [1] = "Candies",
    [2] = "Buy",
    [3] = 1,
    [4] = 1
}

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end)
Game:Button("Stats Refund", function()
local args = {
    [1] = "Candies",
    [2] = "Buy",
    [3] = 1,
    [4] = 2
}

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end)
Game:Button("Race Rerool", function()
local args = {
    [1] = "Candies",
    [2] = "Buy",
    [3] = 1,
    [4] = 3
}

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end)
Game:Button("Elf Hat", function()
local args = {
    [1] = "Candies",
    [2] = "Buy",
    [3] = 3,
    [4] = 1
}

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end)
Game:Button("Santa Hat", function()
local args = {
    [1] = "Candies",
    [2] = "Buy",
    [3] = 3,
    [4] = 2
}

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end)
Game:Button("Sleigh", function()
local args = {
    [1] = "Candies",
    [2] = "Buy",
    [3] = 3,
    [4] = 3
}

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end)
local Game1 = Tab3:newpage()
Game1:Title("Shop")
Game1:Button("DragonClaw", function()
local args = {
    [1] = "BlackbeardReward",
    [2] = "DragonClaw",
    [3] = "2"
}

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end)
Game1:Button("BuySuperhuman", function()
local args = {
    [1] = "BuySuperhuman"
}

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end)
Game1:Button("BuySharkmanKarate", function()
local args = {
    [1] = "BuySharkmanKarate"
}

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end)
Game1:Button("BuyFishmanKarate", function()
local args = {
    [1] = "BuyFishmanKarate"
}
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end)
Game1:Button("BuyElectro", function()
local args = {
    [1] = "BuyElectro"
}
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end)
Game1:Button("BuyBlackLeg", function()
local args = {
    [1] = "BuyBlackLeg"
}

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end)
Game1:Button("BuyDeathStep", function()
local args = {
    [1] = "BuyDeathStep"
}

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end)
Game1:Button("BuyElectricClaw", function()
local args = {
    [1] = "BuyElectricClaw"
}

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end)
Game1:Button("BuyDragonTalon", function()

local args = {
    [1] = "BuyDragonTalon"
}

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end)
    Game1:Title("Abilities")
Game1:Button("Geppo ",function()
		local args = {
			[1] = "BuyHaki",
			[2] = "Geppo"
		}
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
	end)
Game1:Button("Buso Haki",function()
		local args = {
			[1] = "BuyHaki",
			[2] = "Buso"
		}

		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
	end)
Game1:Button("Ken Haki",function()
		local args = {
			[1] = "KenTalk",
			[2] = "Buy"
		}
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
	end)
Game1:Button("Soru",function()
		local args = {
			[1] = "BuyHaki",
			[2] = "Soru"
		}
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
	end)

function click()
   game:GetService'VirtualUser':CaptureController()
   game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
end
local Tab4 = win:Tap("Misc")
local Misc = Tab4:newpage()
Misc:Title("Level Lock")
	_G.LockLevelValue = 2200
	OldLevel = game.Players.localPlayer.Data.Level.Value
Misc:Slider("Select Level Lock",true,1,_G.LockLevelValue,_G.LockLevelValue,function(value)
		_G.LockLevelValue = value
	end)
local M1 = Misc:Toggle("Lock Level",_G.LockLevel,function(value)
		_G.LockLevel = value
end)
Misc:Line()
Misc:Button("Lock",function()
	M1:lock()
end)
Misc:Button("Unlock",function()
	M1:unlock()
end)
Misc:Line()
	spawn(function()
		while wait(.1) do
			if _G.LockLevel then
				if game.Players.localPlayer.Data.Level.Value >= _G.LockLevelValue then
					game.Players.localPlayer:Kick("การฟามเสร็จสิ้นแล้ว")
				end
			end
		end
	end)
Misc:Title("Character")
	Misc:Toggle("Auto Haki",_G.AutoHaki,function(Value)
		_G.AutoHaki = Value  
	end)
spawn(function()
		while wait(.1) do
			if _G.AutoHaki then 
				if game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then

				else
					local args = {
						[1] = "Buso"
					}
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
				end
			end
		end
	end)
Misc:Toggle("Dodge No Cooldown",_G.nododgecool,function(value)
_G.nododgecool = value
NoDodgeCool()
end)
Misc:Toggle("Inf Stamina",_G.InfinitsEnergy,function(value)
_G.InfinitsEnergy = value
originalstam = LocalPlayer.Character.Energy.Value
end)
Misc:Toggle("Invisble Mob",false,function(value)
    _G.inv = value
    while _G.inv do wait()
        pcall(function()
for i,v in pairs(game:GetService("Workspace").Enemies:GetDescendants()) do
	if v.ClassName == "MeshPart" then
	v.Transparency = 1
end
end
for i,v in pairs(game:GetService("Workspace").Enemies:GetDescendants()) do
	if v.Name == "Head" then
	v.Transparency = 1
end
end
	for i,v in pairs(game:GetService("Workspace").Enemies:GetDescendants()) do
		if v.ClassName == "Accessory" then
			v.Handle.Transparency = 1
		end
	end
	for i,v in pairs(game:GetService("Workspace").Enemies:GetDescendants()) do
		if v.ClassName == "Decal" then
		v.Transparency = 1
		end
end
end)
end
end)
Misc:Toggle("Invisble My Character",false,function(value)
    _G.invme = value
    while _G.invme do wait()
        pcall(function()
        for i,v in pairs(game:GetService("Players").LocalPlayer.Character:GetDescendants()) do
	if v.ClassName == "MeshPart" then
	v.Transparency = 1
end
end
for i,v in pairs(game:GetService("Players").LocalPlayer:GetDescendants()) do
	if v.Name == "Head" then
	v.Transparency = 1
end
end
	for i,v in pairs(game:GetService("Players").LocalPlayer:GetDescendants()) do
		if v.ClassName == "Accessory" then
			v.Handle.Transparency = 1
		end
	end
	for i,v in pairs(game:GetService("Players").LocalPlayer:GetDescendants()) do
		if v.ClassName == "Decal" then
		v.Transparency = 1
		end
end
        end)
end
end)
Misc:Toggle("No Clip",_G.NoClip,function(t)
_G.NoClip = t
  if _G.NoClip == true then
  _G.conn = game:GetService("RunService").Stepped:Connect(function()
     for _, v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
        if v:IsA("BasePart") then
           v.CanCollide = false    
        end
     end
   end)
  else
   _G.conn:Disconnect()
  end
end)

Misc:Toggle("Walk On Water",_G.WalkWater,function(Value)
    _G.WalkWater = Value
    if _G.WalkWater == true then
        game.Players.LocalPlayer.Data.DevilFruit.Value = ("Ice-Ice")
    elseif _G.WalkWater == false then
        game.Players.LocalPlayer.Data.DevilFruit.Value = ("")
    end
end)
local Misc1 = Tab4:newpage("")
Misc1:Button("Open Awakening",function()
                                    local args = {
                                        [1] = "AwakeningChanger",
                                        [2] = "Check"
                                    }
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                    game.Players.localPlayer.PlayerGui.Main.AwakeningToggler.Visible = true
                                end)
                                Misc1:Button("Open Inventory", function()
                                    local args = {
                                        [1] = "getInventoryWeapons"
                                    }
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                    game.Players.localPlayer.PlayerGui.Main.Inventory.Visible = true
                                end)
                                Misc1:Button("Open Devil Shop", function()
                                    local args = {
                                        [1] = "GetFruits"
                                    }
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                    game.Players.localPlayer.PlayerGui.Main.FruitShop.Visible = true
                                end)
                                Misc1:Button("Open Color Haki", function()
                                    game.Players.localPlayer.PlayerGui.Main.Colors.Visible = true
                                end)
                                Misc1:Button("Open Title Name", function()
                                    local args = {
                                        [1] = "getTitles"
                                    }
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                    game.Players.localPlayer.PlayerGui.Main.Titles.Visible = true
                                end)
                               Misc1:Button("Open Store Fruit", function()
                              local args = {
                              [1] = "getInventoryFruits"
                                          }

                                       game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                    game.Players.localPlayer.PlayerGui.Main.FruitInventory.Visible = true
                               end)
Misc1:Title("Team")
    Misc1:Button("Join Pirates Team",function()
        local args = {
            [1] = "SetTeam",
            [2] = "Pirates"
        }
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args)) 
        local args = {
            [1] = "BartiloQuestProgress"
        }
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
        local args = {
            [1] = "Buso"
        }
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
    end)
    
    Misc1:Button("Join Marines Team", function()
        local args = {
            [1] = "SetTeam",
            [2] = "Marines"
        }
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
        local args = {
            [1] = "BartiloQuestProgress"
        }
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
        local args = {
            [1] = "Buso"
        }
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
    end)
       Misc1:Title("ESP", true)
    function isnil(thing)
        return (thing == nil)
    end
    local function round(n)
        return math.floor(tonumber(n) + 0.5)
    end
    Number = math.random(1, 1000000)
    function UpdatePlayerChams()
        for i,v in pairs(game:GetService'Players':GetChildren()) do
            pcall(function()
                if not isnil(v.Character) then
                    if ESPPlayer then
                        if not isnil(v.Character.Head) and not v.Character.Head:FindFirstChild('NameEsp'..Number) then
                            local bill = Instance.new('BillboardGui',v.Character.Head)
                            bill.Name = 'NameEsp'..Number
                            bill.ExtentsOffset = Vector3.new(0, 1, 0)
                            bill.Size = UDim2.new(1,200,1,30)
                            bill.Adornee = v.Character.Head
                            bill.AlwaysOnTop = true
                            local name = Instance.new('TextLabel',bill)
                            name.Font = "GothamBold"
                            name.FontSize = "Size14"
                            name.TextWrapped = true
                            name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Character.Head.Position).Magnitude/3) ..' M')
                            name.Size = UDim2.new(1,0,1,0)
                            name.TextYAlignment = 'Top'
                            name.BackgroundTransparency = 1
                            name.TextStrokeTransparency = 0.5
                            if v.Team == game.Players.LocalPlayer.Team then
                                name.TextColor3 = Color3.new(255, 255 ,255)
                            else
                                name.TextColor3 = Color3.new(255, 255 ,255)
                            end
                        else
                            v.Character.Head['NameEsp'..Number].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Character.Head.Position).Magnitude/3) ..' M')
                        end
                    else
                        if v.Character.Head:FindFirstChild('NameEsp'..Number) then
                            v.Character.Head:FindFirstChild('NameEsp'..Number):Destroy()
                        end
                    end
                end
            end)
        end
    end
    function UpdateChestChams() 
        for i,v in pairs(game.Workspace:GetChildren()) do
            pcall(function()
                if string.find(v.Name,"Chest") then
                    if ChestESP then
                        if string.find(v.Name,"Chest") then
                            if not v:FindFirstChild('NameEsp'..Number) then
                                local bill = Instance.new('BillboardGui',v)
                                bill.Name = 'NameEsp'..Number
                                bill.ExtentsOffset = Vector3.new(0, 1, 0)
                                bill.Size = UDim2.new(1,200,1,30)
                                bill.Adornee = v
                                bill.AlwaysOnTop = true
                                local name = Instance.new('TextLabel',bill)
                                name.Font = "GothamBold"
                                name.FontSize = "Size14"
                                name.TextWrapped = true
                                name.Size = UDim2.new(1,0,1,0)
                                name.TextYAlignment = 'Top'
                                name.BackgroundTransparency = 1
                                name.TextStrokeTransparency = 0.5
                                if v.Name == "Chest1" then
                                    name.TextColor3 = Color3.fromRGB(255, 255, 255)
                                    name.Text = ("Chest 1" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
                                end
                                if v.Name == "Chest2" then
                                    name.TextColor3 = Color3.fromRGB(255, 255, 255)
                                    name.Text = ("Chest 2" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
                                end
                                if v.Name == "Chest3" then
                                    name.TextColor3 = Color3.fromRGB(255, 255 ,255)
                                    name.Text = ("Chest 3" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
                                end
                            else
                                v['NameEsp'..Number].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
                            end
                        end
                    else
                        if v:FindFirstChild('NameEsp'..Number) then
                            v:FindFirstChild('NameEsp'..Number):Destroy()
                        end
                    end
                end
            end)
        end
    end
    function UpdateDevilChams() 
        for i,v in pairs(game.Workspace:GetChildren()) do
            pcall(function()
                if DevilFruitESP then
                    if string.find(v.Name, "Fruit") then   
                        if not v.Handle:FindFirstChild('NameEsp'..Number) then
                            local bill = Instance.new('BillboardGui',v.Handle)
                            bill.Name = 'NameEsp'..Number
                            bill.ExtentsOffset = Vector3.new(0, 1, 0)
                            bill.Size = UDim2.new(1,200,1,30)
                            bill.Adornee = v.Handle
                            bill.AlwaysOnTop = true
                            local name = Instance.new('TextLabel',bill)
                            name.Font = "GothamBold"
                            name.FontSize = "Size14"
                            name.TextWrapped = true
                            name.Size = UDim2.new(1,0,1,0)
                            name.TextYAlignment = 'Top'
                            name.BackgroundTransparency = 1
                            name.TextStrokeTransparency = 0.5
                            name.TextColor3 = Color3.fromRGB(255, 255 ,255)
                            name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' M')
                        else
                            v.Handle['NameEsp'..Number].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' M')
                        end
                    end
                else
                    if v.Handle:FindFirstChild('NameEsp'..Number) then
                        v.Handle:FindFirstChild('NameEsp'..Number):Destroy()
                    end
                end
            end)
        end
    end
    function UpdateFlowerChams() 
        for i,v in pairs(game.Workspace:GetChildren()) do
            pcall(function()
                if v.Name == "Flower2" or v.Name == "Flower1" then
                    if FlowerESP then 
                        if not v:FindFirstChild('NameEsp'..Number) then
                            local bill = Instance.new('BillboardGui',v)
                            bill.Name = 'NameEsp'..Number
                            bill.ExtentsOffset = Vector3.new(0, 1, 0)
                            bill.Size = UDim2.new(1,200,1,30)
                            bill.Adornee = v
                            bill.AlwaysOnTop = true
                            local name = Instance.new('TextLabel',bill)
                            name.Font = "GothamBold"
                            name.FontSize = "Size14"
                            name.TextWrapped = true
                            name.Size = UDim2.new(1,0,1,0)
                            name.TextYAlignment = 'Top'
                            name.BackgroundTransparency = 1
                            name.TextStrokeTransparency = 0.5
                            name.TextColor3 = Color3.fromRGB(255, 255 ,255)
                            if v.Name == "Flower1" then 
                                name.Text = ("Blue Flower" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
                                name.TextColor3 = Color3.fromRGB(255, 255 ,255)
                            end
                            if v.Name == "Flower2" then
                                name.Text = ("Red Flower" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
                                name.TextColor3 = Color3.fromRGB(255, 255 ,255)
                            end
                        else
                            v['NameEsp'..Number].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
                        end
                    else
                        if v:FindFirstChild('NameEsp'..Number) then
                            v:FindFirstChild('NameEsp'..Number):Destroy()
                        end
                    end
                end   
            end)
        end
    end
    Misc1:Toggle("ESP Player",false,function(a)
        ESPPlayer = a
        while ESPPlayer do wait()
            UpdatePlayerChams()
        end
    end)
    Misc1:Toggle("ESP Chest",false,function(a)
        ChestESP = a
        while ChestESP do wait()
            UpdateChestChams() 
        end
    end)
    Misc1:Toggle("ESP Devil Fruit",false,function(a)
        DevilFruitESP = a
        while DevilFruitESP do wait()
            UpdateDevilChams() 
        end
    end)
    Misc1:Toggle("ESP Flower",false,function(a)
        FlowerESP = a
        while FlowerESP do wait()
            UpdateFlowerChams() 
        end
    end)
Misc1:Title("Misc") 
if _G.FPSBoost then
    spawn(function()
        wait(3)
        local decalsyeeted = true -- Leaving this on makes games look shitty but the fps goes up by at least 20.
        local g = game
        local w = g.Workspace
        local l = g.Lighting
        local t = w.Terrain
        t.WaterWaveSize = 0
        t.WaterWaveSpeed = 0
        t.WaterReflectance = 0
        t.WaterTransparency = 0
        l.GlobalShadows = false
        l.FogEnd = 9e9
        l.Brightness = 0
        settings().Rendering.QualityLevel = "Level01"
        for i, v in pairs(g:GetDescendants()) do
            if v:IsA("Part") or v:IsA("Union") or v:IsA("CornerWedgePart") or v:IsA("TrussPart") then 
                v.Material = "Plastic"
                v.Reflectance = 0
            elseif v:IsA("Decal") or v:IsA("Texture") and decalsyeeted then
                v.Transparency = 1
            elseif v:IsA("ParticleEmitter") or v:IsA("Trail") then
                v.Lifetime = NumberRange.new(0)
            elseif v:IsA("Explosion") then
                v.BlastPressure = 1
                v.BlastRadius = 1
            elseif v:IsA("Fire") or v:IsA("SpotLight") or v:IsA("Smoke") or v:IsA("Sparkles") then
                v.Enabled = false
            elseif v:IsA("MeshPart") then
                v.Material = "Plastic"
                v.Reflectance = 0
                v.TextureID = 10385902758728957
            end
        end
        for i, e in pairs(l:GetChildren()) do
            if e:IsA("BlurEffect") or e:IsA("SunRaysEffect") or e:IsA("ColorCorrectionEffect") or e:IsA("BloomEffect") or e:IsA("DepthOfFieldEffect") then
                e.Enabled = false
            end
        end
    end)
 end
 Misc1:Button("FPS Boost",function(t)
    local decalsyeeted = true -- Leaving this on makes games look shitty but the fps goes up by at least 20.
    local g = game
    local w = g.Workspace
    local l = g.Lighting
    local t = w.Terrain
    t.WaterWaveSize = 0
    t.WaterWaveSpeed = 0
    t.WaterReflectance = 0
    t.WaterTransparency = 0
    l.GlobalShadows = false
    l.FogEnd = 9e9
    l.Brightness = 0
    settings().Rendering.QualityLevel = "Level01"
    for i, v in pairs(g:GetDescendants()) do
        if v:IsA("Part") or v:IsA("Union") or v:IsA("CornerWedgePart") or v:IsA("TrussPart") then 
            v.Material = "Plastic"
            v.Reflectance = 0
        elseif v:IsA("Decal") or v:IsA("Texture") and decalsyeeted then
            v.Transparency = 1
        elseif v:IsA("ParticleEmitter") or v:IsA("Trail") then
            v.Lifetime = NumberRange.new(0)
        elseif v:IsA("Explosion") then
            v.BlastPressure = 1
            v.BlastRadius = 1
        elseif v:IsA("Fire") or v:IsA("SpotLight") or v:IsA("Smoke") or v:IsA("Sparkles") then
            v.Enabled = false
        elseif v:IsA("MeshPart") then
            v.Material = "Plastic"
            v.Reflectance = 0
            v.TextureID = 10385902758728957
        end
    end
    for i, e in pairs(l:GetChildren()) do
        if e:IsA("BlurEffect") or e:IsA("SunRaysEffect") or e:IsA("ColorCorrectionEffect") or e:IsA("BloomEffect") or e:IsA("DepthOfFieldEffect") then
            e.Enabled = false
        end
    end
 end)
Misc1:Button("Anti-AFK", function()
    local vu = game:GetService("VirtualUser")
	game:GetService("Players").LocalPlayer.Idled:connect(function()
		vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
		wait(1)
		vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)

end)
end)
 Misc1:Button("Rejoin", function()
 local ts = game:GetService("TeleportService")
	local p = game:GetService("Players").LocalPlayer
	ts:Teleport(game.PlaceId, p)
end)
Misc1:Button("Server Hop", function()
        local PlaceID = game.PlaceId
    local AllIDs = {}
    local foundAnything = ""
    local actualHour = os.date("!*t").hour
    local Deleted = false
    --[[
    local File = pcall(function()
        AllIDs = game:GetService('HttpService'):JSONDecode(readfile("NotSameServers.json"))
    end)
    if not File then
        table.insert(AllIDs, actualHour)
        writefile("NotSameServers.json", game:GetService('HttpService'):JSONEncode(AllIDs))
    end
    ]]
    function TPReturner()
        local Site;
        if foundAnything == "" then
            Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100'))
        else
            Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100&cursor=' .. foundAnything))
        end
        local ID = ""
        if Site.nextPageCursor and Site.nextPageCursor ~= "null" and Site.nextPageCursor ~= nil then
            foundAnything = Site.nextPageCursor
        end
        local num = 0;
        for i,v in pairs(Site.data) do
            local Possible = true
            ID = tostring(v.id)
            if tonumber(v.maxPlayers) > tonumber(v.playing) then
                for _,Existing in pairs(AllIDs) do
                    if num ~= 0 then
                        if ID == tostring(Existing) then
                            Possible = false
                        end
                    else
                        if tonumber(actualHour) ~= tonumber(Existing) then
                            local delFile = pcall(function()
                                -- delfile("NotSameServers.json")
                                AllIDs = {}
                                table.insert(AllIDs, actualHour)
                            end)
                        end
                    end
                    num = num + 1
                end
                if Possible == true then
                    table.insert(AllIDs, ID)
                    wait()
                    pcall(function()
                        -- writefile("NotSameServers.json", game:GetService('HttpService'):JSONEncode(AllIDs))
                        wait()
                        game:GetService("TeleportService"):TeleportToPlaceInstance(PlaceID, ID, game.Players.LocalPlayer)
                    end)
                    wait(4)
                end
            end
        end
    end

    function Teleport()
        while wait() do
            pcall(function()
                TPReturner()
                if foundAnything ~= "" then
                    TPReturner()
                end
            end)
        end
    end

    Teleport()
end)
Misc1:Button("Server Hop Less",function()
local maxplayers, gamelink, goodserver, data_table = math.huge, "https://games.roblox.com/v1/games/" .. game.PlaceId .. "/servers/Public?sortOrder=Asc&limit=100"
    if not _G.FailedServerID then _G.FailedServerID = {} end

    local function serversearch()
        data_table = game:GetService"HttpService":JSONDecode(game:HttpGetAsync(gamelink))
        for _, v in pairs(data_table.data) do
            pcall(function()
                if type(v) == "table" and v.id and v.playing and tonumber(maxplayers) > tonumber(v.playing) and not table.find(_G.FailedServerID, v.id) then
                    maxplayers = v.playing
                    goodserver = v.id
                end
            end)
        end
    end

    function getservers()
        pcall(serversearch)
        for i, v in pairs(data_table) do
            if i == "nextPageCursor" then
                if gamelink:find"&cursor=" then
                    local a = gamelink:find"&cursor="
                    local b = gamelink:sub(a)
                    gamelink = gamelink:gsub(b, "")
                end
                gamelink = gamelink .. "&cursor=" .. v
                pcall(getservers)
            end
        end
    end

    pcall(getservers)
    wait()
    if goodserver == game.JobId or maxplayers == #game:GetService"Players":GetChildren() - 1 then
    end
    table.insert(_G.FailedServerID, goodserver)
    game:GetService"TeleportService":TeleportToPlaceInstance(game.PlaceId, goodserver)
end)
local Misc2 = Tab4:newpage()
Misc2:Title("Code") 
local code = {
"3BVISITS",
"UPD16",
"SUB2GAMERROBOT_EXP1",
"Sub2NoobMaster123",
"Sub2Daigrock",
"Axiore",
"TantaiGaming",
"STRAWHATMAINE",
"Sub2OfficialNoobie",
"TheGreatAce",
"fudd10_v2 ",
"2BILLION",
"THIRDSEA",
"UPD15",
"BIGNEWS",
"THEGREATACE",
}
local code1 = {
    "SUB2GAMERROBOT_RESET1",
    "Sub2UncleKizaru",
    "1MLIKES_RESET",
}
Misc2:Dropdown("Select Code Exp!",code,function(s)
e = s
end)
Misc2:Dropdown("Select Code Refund!",code1,function(s)
e = s
end)
Misc2:Button("Redeem Code!",function()
local args = {
    [1] = e
}

game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer(unpack(args))
end)
Misc2:Button("Redeem Code! All",function()
      function UseCode(Text)
         game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer(Text)
      end
    UseCode("3BVISITS")
    UseCode("UPD16")
    UseCode("SUB2GAMERROBOT_EXP1")
    UseCode("Sub2NoobMaster123")
    UseCode("Sub2Daigrock")
    UseCode("Axiore")
    UseCode("TantaiGaming")
    UseCode("STRAWHATMAINE")
    UseCode("Sub2OfficialNoobie")
    UseCode("TheGreatAce")
    UseCode("fudd10_v2 ")
    UseCode("2BILLION")
    UseCode("THIRDSEA")
    UseCode("UPD15")
    UseCode("BIGNEWS")
    UseCode("THEGREATACE")
end)


function TPISLAND(ar1,ar2)
   local Distance = (ar1 - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude -- จุดที่จะไป Position Only
   local Speed = 300 -- ความเร็วของมึง
   tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear)
   tween = tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = ar2})
   tween:Play()
   _G.NoClip = true
end 
local Tab5 = win:Tap("Teleport - Raid")
local Teleport = Tab5:newpage("")
        Teleport:Button("Teleport To Old World",function()
            local args = {
                [1] = "TravelMain" -- OLD WORLD to NEW WORLD
            }
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
        end)
        Teleport:Button("Teleport To NewWorld",function()
            local args = {
                [1] = "TravelDressrosa" -- NEW WORLD to OLD WORLD
            }
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
        end)
        Teleport:Button("Teleport To Sea3",function()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
        end)
if OldWorld then
   local DinoDropdown = Teleport:Dropdown("Select Island!", {
      "Start Island",
      "Marine Start",
      "Middle Town",
      "Jungle",
      "Pirate Village",
      "Desert",
      "Frozen Village",
      "MarineFord",
      "Colosseum",
      "Sky 1st Floor",
      "Sky 2st Floor",
      "Sky 3st Floor",
      "Prison",
      "Magma Village",
      "UndeyWater City",
      "Fountain City",
      "House Cyborg's",
      "Shank's Room",
      "Mob Island"
   }, function(list)
   ISLAND = list
   end)
end
if Sea2 then
   local DinoDropdown = Teleport:Dropdown("Select Island!",{
      "Dock",
      "Kingdom of Rose",
      "Mansion",
      "Flamingo Room",
      "Green Zone",
      "Cafe",
      "Factroy",
      "Colosseum",
      "GraveIsland",
      "Snow Mountain",
      "Cold Island",
      "Hot Island",
      "Cursed Ship",
      "IceCastle",
      "Forgotten Island",
      "Usoapp Island",
      "Minisky Island"
   }, function(list)
   ISLAND = list
   end)
end
if ThreeWorld then
   local DinoDropdown = Teleport:Dropdown("Select Island", {
      "Port Towen",
      "Hydra Island" ,
      "Great Tree",
      "Castle on the Sea",
      "Floating Turtle",
      "Mansion",
      "Secret Temple",
      "Friendly Arena",
      "Beautelseiful Pirate Domain",
      "Haunted Castle",
      "Ice Cream"
   }, function(list)
   ISLAND = list
   end)
end

Teleport:Toggle("Teleport",false, function(State)
_G.Teleport = State
pcall(function()
if _G.Teleport then
   if OldWorld then
      if ISLAND =="Start Island" then
         TPISLAND(Vector3.new(1071.2832, 16.3085976, 1426.86792),CFrame.new(1071.2832, 16.3085976, 1426.86792))
      elseif ISLAND =="Marine Start" then
         TPISLAND(Vector3.new(-2573.3374, 6.88881969, 2046.99817),CFrame.new(-2573.3374, 6.88881969, 2046.99817))
      elseif ISLAND =="Middle Town" then
         TPISLAND(Vector3.new(-655.824158, 7.88708115, 1436.67908),CFrame.new(-655.824158, 7.88708115, 1436.67908))
      elseif ISLAND == "Jungle" then
         TPISLAND(Vector3.new(-1249.77222, 11.8870859, 341.356476),CFrame.new(-1249.77222, 11.8870859, 341.356476))
      elseif ISLAND =="Pirate Village" then
         TPISLAND(Vector3.new(-1122.34998, 4.78708982, 3855.91992),CFrame.new(-1122.34998, 4.78708982, 3855.91992))

      elseif ISLAND =="Desert" then
         TPISLAND(Vector3.new(1094.14587, 6.47350502, 4192.88721),CFrame.new(1094.14587, 6.47350502, 4192.88721))

      elseif ISLAND =="Frozen Village" then
         TPISLAND(Vector3.new(1198.00928, 27.0074959, -1211.73376),CFrame.new(1198.00928, 27.0074959, -1211.73376))

      elseif ISLAND =="MarineFord" then
         TPISLAND(Vector3.new(-4505.375, 20.687294, 4260.55908),CFrame.new(-4505.375, 20.687294, 4260.55908))

      elseif ISLAND =="Colosseum" then
         TPISLAND(Vector3.new(-1428.35474, 7.38933945, -3014.37305),CFrame.new(-1428.35474, 7.38933945, -3014.37305))

      elseif ISLAND =="Sky 1st Floor" then
         TPISLAND(Vector3.new(-4970.21875, 717.707275, -2622.35449),CFrame.new(-4970.21875, 717.707275, -2622.35449))

      elseif ISLAND =="Sky 2st Floor" then
         TPISLAND(Vector3.new(-4813.0249, 903.708557, -1912.69055),CFrame.new(-4813.0249, 903.708557, -1912.69055))

      elseif ISLAND =="Sky 3st Floor" then
         TPISLAND(Vector3.new(-7952.31006, 5545.52832, -320.704956),CFrame.new(-7952.31006, 5545.52832, -320.704956))

      elseif ISLAND =="Prison" then
         TPISLAND(Vector3.new(4854.16455, 5.68742752, 740.194641),CFrame.new(4854.16455, 5.68742752, 740.194641))

      elseif ISLAND =="Magma Village" then
         TPISLAND(Vector3.new(-5231.75879, 8.61593437, 8467.87695),CFrame.new(-5231.75879, 8.61593437, 8467.87695))

      elseif ISLAND =="UndeyWater City" then
         TPISLAND(Vector3.new(61163.8516, 11.7796879, 1819.78418),CFrame.new(61163.8516, 11.7796879, 1819.78418))

      elseif ISLAND =="Fountain City" then
         TPISLAND(Vector3.new(5132.7124, 4.53632832, 4037.8562),CFrame.new(5132.7124, 4.53632832, 4037.8562))

      elseif ISLAND =="House Cyborg's" then
         TPISLAND(Vector3.new(6262.72559, 71.3003616, 3998.23047),CFrame.new(6262.72559, 71.3003616, 3998.23047))

      elseif ISLAND =="Shank's Room" then
         TPISLAND(Vector3.new(-1442.16553, 29.8788261, -28.3547478),CFrame.new(-1442.16553, 29.8788261, -28.3547478))

      elseif ISLAND =="Mob Island" then
         TPISLAND(Vector3.new(-2850.20068, 7.39224768, 5354.99268),CFrame.new(-2850.20068, 7.39224768, 5354.99268))
      end
   end

   if Sea2 then
      if ISLAND =="Dock" then
         TPISLAND(Vector3.new(82.9490662, 18.0710983, 2834.98779),CFrame.new(82.9490662, 18.0710983, 2834.98779))

      elseif ISLAND =="Kingdom of Rose" then
         TPISLAND(Vector3.new(-394.983521, 118.503128, 1245.8446),CFrame.new(-394.983521, 118.503128, 1245.8446))

      elseif ISLAND =="Mansion" then
         TPISLAND(Vector3.new(-390.096313, 331.886475, 673.464966),CFrame.new(-390.096313, 331.886475, 673.464966))

      elseif ISLAND =="Flamingo Room" then
         TPISLAND(Vector3.new(2302.19019, 15.1778421, 663.811035),CFrame.new(2302.19019, 15.1778421, 663.811035))

      elseif ISLAND =="Green Zone" then
         TPISLAND(Vector3.new(-2372.14697, 72.9919434, -3166.51416),CFrame.new(-2372.14697, 72.9919434, -3166.51416))

      elseif ISLAND =="Cafe" then
         TPISLAND(Vector3.new(-385.250916, 73.0458984, 297.388397),CFrame.new(-385.250916, 73.0458984, 297.388397))

      elseif ISLAND =="Factroy" then
         TPISLAND(Vector3.new(430.42569, 210.019623, -432.504791),CFrame.new(430.42569, 210.019623, -432.504791))

      elseif ISLAND =="Colosseum" then
         TPISLAND(Vector3.new(-1836.58191, 44.5890656, 1360.30652),CFrame.new(-1836.58191, 44.5890656, 1360.30652))

      elseif ISLAND =="GraveIsland" then
         TPISLAND(Vector3.new(-5411.47607, 48.8234024, -721.272522),CFrame.new(-5411.47607, 48.8234024, -721.272522))

      elseif ISLAND =="Snow Mountain" then
         TPISLAND(Vector3.new(511.825226, 401.765198, -5380.396),CFrame.new(511.825226, 401.765198, -5380.396))

      elseif ISLAND =="Cold Island" then
         TPISLAND(Vector3.new(-6026.96484, 14.7461271, -5071.96338),CFrame.new(-6026.96484, 14.7461271, -5071.96338))

      elseif ISLAND =="Hot Island" then
         TPISLAND(Vector3.new(-5478.39209, 15.9775667, -5246.9126),CFrame.new(-5478.39209, 15.9775667, -5246.9126))

      elseif ISLAND =="Cursed Ship" then
         TPISLAND(Vector3.new(902.059143, 124.752518, 33071.8125),CFrame.new(902.059143, 124.752518, 33071.8125))

      elseif ISLAND =="IceCastle" then
         TPISLAND(Vector3.new(5400.40381, 28.21698, -6236.99219),CFrame.new(5400.40381, 28.21698, -6236.99219))

      elseif ISLAND =="Forgotten Island" then
         TPISLAND(Vector3.new(-3043.31543, 238.881271, -10191.5791),CFrame.new(-3043.31543, 238.881271, -10191.5791))

      elseif ISLAND =="Usoapp Island" then
         TPISLAND(Vector3.new(4748.78857, 8.35370827, 2849.57959),CFrame.new(4748.78857, 8.35370827, 2849.57959))

      elseif ISLAND =="Minisky Island" then
         TPISLAND(Vector3.new(-260.358917, 49325.7031, -35259.3008),CFrame.new(-260.358917, 49325.7031, -35259.3008))
      end
   end

   if ThreeWorld then
      if ISLAND =="Port Towen" then
         TPISLAND(Vector3.new(-610.309692, 57.8323097, 6436.33594),CFrame.new(-610.309692, 57.8323097, 6436.33594))

      elseif ISLAND =="Hydra Island" then
         TPISLAND(Vector3.new(5229.99561, 603.916565, 345.154022),CFrame.new(5229.99561, 603.916565, 345.154022, -0.137452736))

      elseif ISLAND =="Great Tree" then
         TPISLAND(Vector3.new(2174.94873, 28.7312393, -6728.83154),CFrame.new(2174.94873, 28.7312393, -6728.83154))

      elseif ISLAND =="Castle on the Sea" then
         TPISLAND(Vector3.new(-5477.62842, 313.794739, -2808.4585),CFrame.new(-5477.62842, 313.794739, -2808.4585))

      elseif ISLAND =="Floating Turtle" then
         TPISLAND(Vector3.new(-10919.2998, 331.788452, -8637.57227),CFrame.new(-10919.2998, 331.788452, -8637.57227))

      elseif ISLAND =="Mansion" then
         TPISLAND(Vector3.new(-12553.8125, 332.403961, -7621.91748),CFrame.new(-12553.8125, 332.403961, -7621.91748))

      elseif ISLAND =="Secret Temple" then
         TPISLAND(Vector3.new(5217.35693, 6.56511116, 1100.88159, 0.00408430398),CFrame.new(5217.35693, 6.56511116, 1100.88159, 0.00408430398))

      elseif ISLAND =="Friendly Arena" then
         TPISLAND(Vector3.new(5220.28955, 72.8193436, -1450.86304),CFrame.new(5220.28955, 72.8193436, -1450.86304))

      elseif ISLAND =="Beautelseiful Pirate Domain" then
         TPISLAND(Vector3.new(5310.8095703125, 21.594484329224, 129.39053344727),CFrame.new(5310.8095703125, 21.594484329224, 129.39053344727))
      elseif ISLAND =="Haunted Castle" then
         TPISLAND(Vector3.new(-9506.1064453125, 142.13989257813, 5526.0405273438),CFrame.new(-9506.1064453125, 142.13989257813, 5526.0405273438))
      elseif ISLAND =="Ice Cream" then
        TPISLAND(Vector3.new(-877.92474365234, 118.27101898193, -11032.12109375),CFrame.new(-877.92474365234, 118.27101898193, -11032.12109375))
        end
   end
else
   tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(.1, Enum.EasingStyle.Linear)
   tween = tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame})
   tween:Play()
   _G.NoClip = false
end
end)
end)
local Raid = Tab5:newpage("Raid")
Wapon = {}
for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do  
    if v:IsA("Tool") then
        table.insert(Wapon ,v.Name)
    end
end
local SelectWeapona = Raid:Dropdown("Select Weapon",Wapon,function(Value)
    _G.SelectWeapon = Value
end)
Raid:Button("Refresh Weapon",function()
    SelectWeapona:Clear()
    for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do  
        if v:IsA("Tool") then
            SelectWeapona:Add(v.Name)
        end
    end
end)
Raid:Toggle("Kill Aura",false,function(kill)
    _G.Killall = kill
end)
spawn(function()
    while wait() do
        if _G.Killall then
            for i,v in pairs(game.Workspace.Enemies:GetDescendants()) do
                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                    pcall(function()
                        repeat wait()
                            sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                            v.Humanoid.Health = 0
                            v.HumanoidRootPart.CanCollide = false
                            v.HumanoidRootPart.Size = Vector3.new(80,80,80)
                            v.HumanoidRootPart.Transparency = 1
                        until not _G.Killall or not v.Parent or v.Humanoid.Health <= 0
                    end)
                end
            end
        end
    end
end)
Raid:Toggle("Kill Mob",false,function(kill)
    _G.Raid = kill
 end)

 spawn(function()
     pcall(function() 
     while wait() do
          if _G.Raid then
              for i,v in pairs(game.Workspace.Enemies:GetDescendants()) do
                  if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                     Pos = (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
                     if Pos <= 1000 then 
                     pcall(function()
                          repeat wait()
                              v.HumanoidRootPart.CanCollide = false
                              v.HumanoidRootPart.Size = Vector3.new(120,120,120)
                              v.HumanoidRootPart.Transparency = 1
                              v.Humanoid.WalkSpeed = 0
                              v.Humanoid.JumpPower = 0 
                              itemequip(_G.SelectWeapon)
                              TP(v.HumanoidRootPart.Position,v.HumanoidRootPart.CFrame*CFrame.new(0,45,0))
                             game:GetService'VirtualUser':CaptureController()
                             game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                          until not _G.Raid or not v.Parent or v.Humanoid.Health <= 0 or not game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1")
                      end)
                     end
                 else
                     if game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5") then
                         Distance = (game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5").Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude -- จุดที่จะไป Position Only
                         Speed = 150 -- ความเร็วของมึง
                         tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear)
                         tween = tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5").CFrame*CFrame.new(0,20,0)})
                         tween:Play()
                     elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4") then
                         Distance = (game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4").Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude -- จุดที่จะไป Position Only
                         Speed = 150 -- ความเร็วของมึง
                         tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear)
                         tween = tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4").CFrame*CFrame.new(0,20,0)})
                         tween:Play()
                     elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3") then
                         Distance = (game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3").Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude -- จุดที่จะไป Position Only
                         Speed = 150 -- ความเร็วของมึง
                         tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear)
                         tween = tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3").CFrame*CFrame.new(0,20,0)})
                         tween:Play()
                     elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2") then
                         Distance = (game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2").Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude -- จุดที่จะไป Position Only
                         Speed = 150 -- ความเร็วของมึง
                         tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear)
                         tween = tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2").CFrame*CFrame.new(0,20,0)})
                         tween:Play()
                     elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") then
                         Distance = (game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1").Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude -- จุดที่จะไป Position Only
                         Speed = 150 -- ความเร็วของมึง
                         tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear)
                         tween = tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1").CFrame*CFrame.new(0,20,0)})
                         tween:Play()
                     else
                      if Sea2 then                        
                              Lab2 = Vector3.new(-6438.73535, 250.645355, -4501.50684)
                              local Distance = (Lab2 - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
                              local Speed = 150 -- ความเร็วของมึง
                              tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear)
                              tween = tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(-6438.73535, 250.645355, -4501.50684)})
                              tween:Play()
                              _G.Clip = true
                              wait(Distance/Speed)   
                              _G.Clip = false                
                      end
                      if ThreeWorld then                        
                              Lab3 = Vector3.new(-5017.40869, 314.844055, -2823.0127, -0.925743818, 4.48217499e-08, -0.378151238, 4.55503146e-09, 1, 1.07377559e-07, 0.378151238, 9.7681621e-08, -0.925743818)
                              local Distance = (Lab3 - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
                              local Speed = 150 -- ความเร็วของมึง
                              tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear)
                              tween = tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(-5017.40869, 314.844055, -2823.0127, -0.925743818, 4.48217499e-08, -0.378151238, 4.55503146e-09, 1, 1.07377559e-07, 0.378151238, 9.7681621e-08, -0.925743818)})
                              tween:Play() 
                              _G.Clip = true
                              wait(Distance/Speed)   
                              _G.Clip = false    
                     end        
                   end       
                 end
              end
          end
      end
     end)
  end)
Raid:Toggle("Auto Next Island",false,function(is)
    _G.Autonext = is
noclipnew()
end)

spawn(function()
    while wait(.1) do
        if _G.Autonext then
            if game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5") then
                Distance = (game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5").Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude -- จุดที่จะไป Position Only
                Speed = 150 -- ความเร็วของมึง
                tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear)
                tween = tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5").CFrame*CFrame.new(0,30,0)})
                tween:Play()
            elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4") then
                Distance = (game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4").Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude -- จุดที่จะไป Position Only
                Speed = 150 -- ความเร็วของมึง
                tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear)
                tween = tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4").CFrame*CFrame.new(0,30,0)})
                tween:Play()
            elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3") then
                Distance = (game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3").Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude -- จุดที่จะไป Position Only
                Speed = 150 -- ความเร็วของมึง
                tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear)
                tween = tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3").CFrame*CFrame.new(0,30,0)})
                tween:Play()
            elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2") then
                Distance = (game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2").Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude -- จุดที่จะไป Position Only
                Speed = 150 -- ความเร็วของมึง
                tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear)
                tween = tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2").CFrame*CFrame.new(0,30,0)})
                tween:Play()
            elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") then
                Distance = (game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1").Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude -- จุดที่จะไป Position Only
                Speed = 150 -- ความเร็วของมึง
                tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear)
                tween = tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1").CFrame*CFrame.new(0,30,0)})
                tween:Play()
            else
               if Sea2 then                        
                Lab2 = Vector3.new(-6438.73535, 250.645355, -4501.50684)
                local Distance = (Lab2 - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude -- จุดที่จะไป Position Only
                local Speed = 150 -- ความเร็วของมึง
                tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear)
                tween = tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(-6438.73535, 250.645355, -4501.50684)})
                tween:Play()
                _G.Clip = true
                wait(Distance/Speed)   
                _G.Clip = false                
        end
        if ThreeWorld then                        
                Lab3 = Vector3.new(-5017.40869, 314.844055, -2823.0127, -0.925743818, 4.48217499e-08, -0.378151238, 4.55503146e-09, 1, 1.07377559e-07, 0.378151238, 9.7681621e-08, -0.925743818)
                local Distance = (Lab3 - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude -- จุดที่จะไป Position Only
                local Speed = 150 -- ความเร็วของมึง
                tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear)
                tween = tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(-5017.40869, 314.844055, -2823.0127, -0.925743818, 4.48217499e-08, -0.378151238, 4.55503146e-09, 1, 1.07377559e-07, 0.378151238, 9.7681621e-08, -0.925743818)})
                tween:Play() 
        end
               end
        end
    end
end)

Raid:Button("Next Island",function()
    if game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5") then
        Distance = (game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5").Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude -- จุดที่จะไป Position Only
        Speed = 150 -- ความเร็วของมึง
        tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear)
        tween = tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5").CFrame*CFrame.new(0,30,0)})
        tween:Play()
        _G.Clip = true
        wait(Distance/Speed)   
        _G.Clip = false                
    elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4") then
        Distance = (game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4").Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude -- จุดที่จะไป Position Only
        Speed = 150 -- ความเร็วของมึง
        tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear)
        tween = tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4").CFrame*CFrame.new(0,30,0)})
        tween:Play()
        _G.Clip = true
        wait(Distance/Speed)   
        _G.Clip = false                
    elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3") then
        Distance = (game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3").Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude -- จุดที่จะไป Position Only
        Speed = 150 -- ความเร็วของมึง
        tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear)
        tween = tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3").CFrame*CFrame.new(0,30,0)})
        tween:Play()
        _G.Clip = true
        wait(Distance/Speed)   
        _G.Clip = false                
    elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2") then
        Distance = (game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2").Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude -- จุดที่จะไป Position Only
        Speed = 150 -- ความเร็วของมึง
        tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear)
        tween = tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2").CFrame*CFrame.new(0,30,0)})
        tween:Play()
        _G.Clip = true
        wait(Distance/Speed)   
        _G.Clip = false                
    elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") then
        Distance = (game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1").Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude -- จุดที่จะไป Position Only
        Speed = 150 -- ความเร็วของมึง
        tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear)
        tween = tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1").CFrame*CFrame.new(0,30,0)})
        tween:Play()
        _G.Clip = true
        wait(Distance/Speed)   
        _G.Clip = false                
    else
        if Sea2 then                        
                Lab2 = Vector3.new(-6438.73535, 250.645355, -4501.50684)
                local Distance = (Lab2 - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude -- จุดที่จะไป Position Only
                local Speed = 150 -- ความเร็วของมึง
                tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear)
                tween = tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(-6438.73535, 250.645355, -4501.50684)})
                tween:Play()
                _G.Clip = true
                wait(Distance/Speed)   
                _G.Clip = false                
        end
        if ThreeWorld then                        
                Lab3 = Vector3.new(-5017.40869, 314.844055, -2823.0127, -0.925743818, 4.48217499e-08, -0.378151238, 4.55503146e-09, 1, 1.07377559e-07, 0.378151238, 9.7681621e-08, -0.925743818)
                local Distance = (Lab3 - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude -- จุดที่จะไป Position Only
                local Speed = 150 -- ความเร็วของมึง
                tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear)
                tween = tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(-5017.40869, 314.844055, -2823.0127, -0.925743818, 4.48217499e-08, -0.378151238, 4.55503146e-09, 1, 1.07377559e-07, 0.378151238, 9.7681621e-08, -0.925743818)})
                tween:Play() 
                _G.Clip = true
                wait(Distance/Speed)   
                _G.Clip = false                                  
        end
    end
end)

if Sea2 then
Raid:Button("Teleport to Lab",function()
        TP(Vector3.new(-6438.73535, 250.645355, -4501.50684),CFrame.new(-6438.73535, 250.645355, -4501.50684))
    end)
end
if ThreeWorld then
Raid:Button("Teleport to Lab",function()
    TP(Vector3.new(-5017.40869, 314.844055, -2823.0127, -0.925743818, 4.48217499e-08, -0.378151238, 4.55503146e-09, 1, 1.07377559e-07, 0.378151238, 9.7681621e-08, -0.925743818),CFrame.new(-5017.40869, 314.844055, -2823.0127, -0.925743818, 4.48217499e-08, -0.378151238, 4.55503146e-09, 1, 1.07377559e-07, 0.378151238, 9.7681621e-08, -0.925743818))
    end)
end

Raid:Button("Awakening Room",function()
    TP(Vector3.new(266.227783, 1.39509034, 1857.00732),CFrame.new(266.227783, 1.39509034, 1857.00732))
end)
Raid:Dropdown("Select Chips",{"Flame","Ice","Quake","Light","Dark","String","Rumble","Magma","Human: Buddha","Sand"},function(ss)
    _G.SelectChip = ss
end)

Raid:Toggle("Auto Buy Chip",_G.AutoBuy,function(ss)
    _G.AutoBuy = ss
end)

spawn(function()
    while wait(.1) do
        if not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Special Microchip") or not game:GetService("Players").LocalPlayer.Character:FindFirstChild("Special Microchip") then
        if _G.AutoBuy then
            pcall(function()
            local args = {
                [1] = "RaidsNpc",
                [2] = "Select",
                [3] = _G.SelectChip
            }
            
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
        end)
        end
    end
    end
end)

Raid:Button("Buy Chip",function()
    local args = {
        [1] = "RaidsNpc",
        [2] = "Select",
        [3] = _G.SelectChip
    }
    
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end)

Raid:Label("Start Setting")

Raid:Toggle("Auto Start Raid",_G.StartRaid,function(ss)
    _G.StartRaid = ss
end)

spawn(function()
    while wait(.1) do
        pcall(function()
        if _G.StartRaid then
            if game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Timer.Visible == false then
                if not game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1")  then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("RaidsNpc", "Select", _G.SelectChip)
                end
                if not game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") and game.Players.LocalPlayer.Backpack:FindFirstChild("Special Microchip") or  game.Players.LocalPlayer.Character:FindFirstChild("Special Microchip")  then
                    if Sea2 then
                        fireclickdetector(game:GetService("Workspace").Map.CircleIsland.RaidSummon2.Button.Main.ClickDetector)
                    elseif ThreeWorld then
                        fireclickdetector(game:GetService("Workspace").Map["Boat Castle"].RaidSummon2.Button.Main.ClickDetector)
                    end
                end
                end
            end
        end)
    end
end)

Raid:Button("Start Raid",function()
    if Second_World then
        fireclickdetector(game:GetService("Workspace").Map.CircleIsland.RaidSummon2.Button.Main.ClickDetector)
    elseif Third_World then
        fireclickdetector(game:GetService("Workspace").Map["Boat Castle"].RaidSummon2.Button.Main.ClickDetector)
    end
end)
function TP(P1,P2)
    local Distance = (P1 - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
    if Distance >= 2000 then
    Speed = 150
    else
    Speed = 300
    end
    tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear)
    tween = tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = P2})
    tween:Play()
    _G.Clip = true
    wait(Distance/Speed)
    _G.Clip = false
end
local Tab6 = win:Tap("Player")
local ZXXZZ = Tab6:newpage("")
ply = {}
for i,v in pairs(game.Players:GetPlayers()) do
   table.insert(ply,v.Name)
end
local Dropdown = ZXXZZ:Dropdown("Select Players",ply,function(Value)
    Noobply = Value
end)
ZXXZZ:Button("Refresh Players",function()
    Dropdown:Clear()
for i,v in pairs(game.Players:GetPlayers()) do
            Dropdown:Add(v.Name)
        end
end)
ZXXZZ:Toggle("Aimbot Gun",false,function(aim)
    Aim = aim
end)
ZXXZZ:Toggle("Aimbot Skill", false, function(vu)
    _G.AimbotSkill = vu
  end)
 
  spawn(function()
    pcall(function()
    while game:GetService("RunService").RenderStepped:wait() do
       if _G.AimbotSkill then
          pcall(function()
             if game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") and game.Players.LocalPlayer.Character[game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Name]:FindFirstChild("MousePos") then
                 local args = {
                     [1] = game:GetService("Players"):FindFirstChild(Noobply).Character.HumanoidRootPart.Position
                 }
                 game:GetService("Players").LocalPlayer.Character[game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(args))
             end
         end)
     end
    end
    end)
 end)
spawn(function()
    while wait(.1) do
        if Aim then
            itemequip(SelectToolWeaponGun)
            local args = {
                [1] = game.Players[Noobply].Character.HumanoidRootPart.Position,
                [2] = game.Players[Noobply].Character.HumanoidRootPart
            }
            game:GetService("Players").LocalPlayer.Character[SelectToolWeaponGun].RemoteFunctionShoot:InvokeServer(unpack(args))
            Click()
        end
    end
end)
ZXXZZ:Button("Teleport To Player", function()
    Distance = (game.Players[Noobply].Character.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
    Speed = 300
    tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear)
    tween = tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = game.Players[Noobply].Character.HumanoidRootPart.CFrame})
    tween:Play()
    _G.Clip = true
    wait(Distance/Speed)
    _G.Clip = false
end)


ZXXZZ:Toggle("Auto Bounty [ Gun Only! ]",false, function(State)
_G.RQIO = State
while _G.RQIO do wait()
   pcall(function()
   for i, v in pairs(game:GetService("Workspace").Characters:GetChildren()) do
      if v.Name == Noobply then
         equipgun()
         local magnitude = (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
         if magnitude < 1000 then
            local Distancex = (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude -- จุดที่จะไป Position Only
            local Speexd = 1000 -- ความเร็วของมึง
            tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(Distancex/Speexd, Enum.EasingStyle.Linear)
            tweenx = tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = v.HumanoidRootPart.CFrame*CFrame.new(0,30,9)})
            tweenx:Play()
            wait(Distancex/Speexd)
            v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
            local args = {
               [1] = game:GetService("Players"):FindFirstChild(v.Name).Character.HumanoidRootPart.Position,
               [2] = game:GetService("Players"):FindFirstChild(v.Name).Character.HumanoidRootPart
            }
            game:GetService("Players").LocalPlayer.Character[gunname()].RemoteFunctionShoot:InvokeServer(unpack(args))
         else
            local Distancex = (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude -- จุดที่จะไป Position Only
            local Speexd = 150 -- ความเร็วของมึง
            tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(Distancex/Speexd, Enum.EasingStyle.Linear)
            tweenx = tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = v.HumanoidRootPart.CFrame*CFrame.new(0,30,0)})
            tweenx:Play()
            wait(Distancex/Speexd)
         end
      end
   end
   end)
end
end)
  ZXXZZ:Toggle("Spectate",false, function(k)
_G.sep = k 
while _G.sep do wait()
 for i,v in pairs(game.Players:GetPlayers()) do
if v.Name == Noobply then
game.Workspace.Camera.CameraSubject = v.Character.Humanoid
end
end
end
game.Workspace.Camera.CameraSubject = game.Players.LocalPlayer.Character.Humanoid
end)

local Music = Tab6:newpage("")
Music:Line()
_G.M1= "rbxassetid://7184554636"
Instance.new("Sound", game:GetService("Workspace")).Name = "MUSIC_FUNCTION"
Music:ToggleDesc("Playing - น้ำลาย","ID 7184554636",false,function(v)
    game.workspace["MUSIC_FUNCTION"].SoundId = _G.M1
    game.workspace["MUSIC_FUNCTION"].Playing = v
end)
_G.M2= "rbxassetid://8329038471"
Music:ToggleDesc("Playing - C Walk","ID 8329038471",false,function(v)
    game.workspace["MUSIC_FUNCTION"].SoundId = _G.M2
    game.workspace["MUSIC_FUNCTION"].Playing = v
end)
_G.M3= "rbxassetid://1955210878"
Music:ToggleDesc("Playing -  เธอนะเธอ","ID 1955210878",false,function(v)
    game.workspace["MUSIC_FUNCTION"].SoundId = _G.M3
    game.workspace["MUSIC_FUNCTION"].Playing = v
end)
_G.M4= "rbxassetid://5223389928"
Music:ToggleDesc("Playing -  เสียงที่เคยได้ยิน","ID 5223389928",false,function(v)
    game.workspace["MUSIC_FUNCTION"].SoundId = _G.M4
    game.workspace["MUSIC_FUNCTION"].Playing = v
end)


Music:Line()
Music:Toggle("Loop",false,function(v)
    game:GetService("Workspace")["MUSIC_FUNCTION"].Looped = v
end)
Music:Slider("Slider",true,0,10,1,1,function(v)
    game:GetService("Workspace")["MUSIC_FUNCTION"].Volume = v
end)
Music:Line()
game:GetService("RunService").Heartbeat:Connect(function()
if _G.RQIO == true or _G.AutoFarmAllBoss == true then
   noclipnew()
end
end)
local Fast = require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework)
local CameraShaker = require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework.CameraShaker)
game:GetService("RunService").Heartbeat:Connect(function()
    pcall(function()
     if _G.FastAttack and (_G.AutoFarm or _G.elitehunt or _G.AutoFarmAllBoss or _G.Boss or _G.AutoFarmBossHallow) then
Fast.activeController.timeToNextAttack = 0.1
Fast.activeController.hitboxMagnitude = 50
game:GetService'VirtualUser':CaptureController()
game:GetService'VirtualUser':Button1Down(Vector2.new(686, 352))
CameraShaker.CameraShakeInstance.CameraShakeState = {FadingIn = 3, FadingOut = 2, Sustained = 0, Inactive = 1}
end
end)
end)
    
game:GetService("RunService").Heartbeat:Connect(function()
    pcall(function()
    if _G.AutoFarm or _G.NoClip or _G.elitehunt or _G.Electro or _G.AutoFarmBossHallow or _G.Boss then
        noclipnew()
    end
    if _G.FastAttack then
        require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework.CameraShaker).CameraShakeInstance.CameraShakeState = {FadingIn = 3,FadingOut =  2,Sustained = 0,Inactive = 1}
    end

    if _G.bringmob and _G.AutoFarm then
    pcall(function()
    CheckQuest()
    for i,x in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
            for n,y in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                if x.Name == Ms then
                    if y.Name == Ms then
                        x.HumanoidRootPart.CFrame = y.HumanoidRootPart.CFrame
                        y.HumanoidRootPart.Size = Vector3.new(40,40,40)
                        x.HumanoidRootPart.Size = Vector3.new(40,40,40)
                        y.HumanoidRootPart.Transparency = 0.99
                        x.HumanoidRootPart.CanCollide = false
                        x.Humanoid:ChangeState(11)
                        y.Humanoid:ChangeState(11)
                        if sethiddenproperty then
                            sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                        end
                    end
                end
            end
        end
    end)
end
    end)
end)

while wait(.1) do
   pcall(function()
   if _G.NoClip then
      noclipnew()
   end
   if _G.autoequipmelee then
      pcall(function()
      for i,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
         if v.ToolTip == "Melee" then
            if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
               local ToolSe = tostring(v.Name)
               local tool = game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe)
               wait(.4)
               game.Players.LocalPlayer.Character.Humanoid:EquipTool(tool)
            end
         end
      end
      end)
   end
   if _G.autoequipsword then
      pcall(function()
      for i,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
         if v.ToolTip == "Sword" then
            if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
               local ToolSe = tostring(v.Name)
               local tool = game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe)
               wait(.4)
               game.Players.LocalPlayer.Character.Humanoid:EquipTool(tool)
            end
         end
      end
      end)
   end
   if _G.Superhuman then
      pcall(function()
      if game.Players.LocalPlayer.Backpack:FindFirstChild("Combat") or game.Players.LocalPlayer.Character:FindFirstChild("Combat") then
         local args = {
            [1] = "BuyBlackLeg"
         }
         game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
      end
      if game.Players.LocalPlayer.Character:FindFirstChild("Superhuman") or game.Players.LocalPlayer.Backpack:FindFirstChild("Superhuman") then
         _G.SelectWeapon = "Superhuman"
      end
      if game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") or game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") or game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") or game.Players.LocalPlayer.Character:FindFirstChild("Electro") or game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") or game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate") or game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") or game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw") then
         if game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value <= 299 then
            _G.SelectWeapon = "Black Leg"
         end
         if game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") and game.Players.LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value <= 299 then
            _G.SelectWeapon = "Electro"
         end
         if game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") and game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate").Level.Value <= 299 then
            _G.SelectWeapon = "Fishman Karate"
         end
         if game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw").Level.Value <= 299 then
            _G.SelectWeapon = "Dragon Claw"
         end
         if game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value >= 300 then
            local args = {
               [1] = "BuyElectro"
            }
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
         end
         if game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 300 then
            local args = {
               [1] = "BuyElectro"
            }
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
         end
         if game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") and game.Players.LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value >= 300 then
            local args = {
               [1] = "BuyFishmanKarate"
            }
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
         end
         if game.Players.LocalPlayer.Character:FindFirstChild("Electro") and game.Players.LocalPlayer.Character:FindFirstChild("Electro").Level.Value >= 300 then
            local args = {
               [1] = "BuyFishmanKarate"
            }
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
         end
         if game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") and game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate").Level.Value >= 300 then
            local args = {
               [1] = "BlackbeardReward",
               [2] = "DragonClaw",
               [3] = "1"
            }
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
            local args = {
               [1] = "BlackbeardReward",
               [2] = "DragonClaw",
               [3] = "2"
            }
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
         end
         if game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate") and game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate").Level.Value >= 300 then
            local args = {
               [1] = "BlackbeardReward",
               [2] = "DragonClaw",
               [3] = "1"
            }
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
            local args = {
               [1] = "BlackbeardReward",
               [2] = "DragonClaw",
               [3] = "2"
            }
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
         end
         if game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw").Level.Value >= 300 then
            local args = {
               [1] = "BuySuperhuman"
            }
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
         end
         if game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw") and game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw").Level.Value >= 300 then
            local args = {
               [1] = "BuySuperhuman"
            }
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
         end
      end
      end)
   end
   if _G.DeathStep then
      pcall(function()
      if game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") or game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") or game.Players.LocalPlayer.Backpack:FindFirstChild("Death Step") or game.Players.LocalPlayer.Character:FindFirstChild("Death Step") then
         if game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value >= 450 then
            local args = {
               [1] = "BuyDeathStep"
            }
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
            _G.SelectWeapon = "Death Step"
         end
         if game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 450 then
            local args = {
               [1] = "BuyDeathStep"
            }
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))

            _G.SelectWeapon = "Death Step"
         end
         if game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value <= 449 then
            _G.SelectWeapon = "Black Leg"
         end
      else
         local args = {
            [1] = "BuyBlackLeg"
         }
         game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
      end
      end)
   end
   if _G.Electro then
      pcall(function()
      if game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") or game.Players.LocalPlayer.Character:FindFirstChild("Electro") or game.Players.LocalPlayer.Backpack:FindFirstChild("Electric Claw") or game.Players.LocalPlayer.Character:FindFirstChild("Electric Claw") then
         if game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") and game.Players.LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value >= 400 then
            local args = {
               [1] = "BuyElectricClaw"
            }
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
            _G.SelectWeapon = "Electric Claw"
         end
         if game.Players.LocalPlayer.Character:FindFirstChild("Electro") and game.Players.LocalPlayer.Character:FindFirstChild("Electro").Level.Value >= 400 then
            local args = {
               [1] = "BuyElectricClaw"
            }
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))

            _G.SelectWeapon = "Electric Claw"
         end
         if game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") and game.Players.LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value <= 399 then
            _G.SelectWeapon = "Electro"
         end
      else
         local args = {
            [1] = "BuyElectro"
         }
         game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
      end
      end)
   end
   if ThreeWorld then
      if _G.Electro then
         pcall(function()
         if game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") or game.Players.LocalPlayer.Character:FindFirstChild("Electro") then
            if (game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") and game.Players.LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value >= 400) or (game.Players.LocalPlayer.Character:FindFirstChild("Electro") and game.Players.LocalPlayer.Character:FindFirstChild("Electro").Level.Value >= 400) then
               if _G.AutoFarm == false then
                  wait(1.1)
                  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-10371.4717, 330.764496, -10131.4199, -0.804111481, 0, -0.594478488, 0, 1, 0, 0.594478488, 0, -0.804111481)
                  local args = {
                     [1] = "BuyElectricClaw",
                     [2] = "Start"
                  }
                  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                  wait(2)
                    local Distancex = (Vector3.new(CFrame.new(-12550.532226563, 336.22631835938, -7510.4233398438)) - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude -- จุดที่จะไป Position Only
                    local Speexd = 100 -- ความเร็วของมึง
                    tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(Distancex/Speexd, Enum.EasingStyle.Linear)
                    tweenx = tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(-12550.532226563, 336.22631835938, -7510.4233398438)})
                    tweenx:Play()
                    wait(Distancex/Speexd)
                    local Distancex = (Vector3.new(CFrame.new(-10371.4717, 330.764496, -10131.4199, -0.804111481, 0, -0.594478488, 0, 1, 0, 0.594478488, 0, -0.804111481)) - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude -- จุดที่จะไป Position Only
                    local Speexd = 100 -- ความเร็วของมึง
                    tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(Distancex/Speexd, Enum.EasingStyle.Linear)
                    tweenx = tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(-10371.4717, 330.764496, -10131.4199, -0.804111481, 0, -0.594478488, 0, 1, 0, 0.594478488, 0, -0.804111481)})
                    tweenx:Play()
                    wait(Distancex/Speexd)
                  local args = {
                     [1] = "BuyElectricClaw"
                  }
                  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
               elseif _G.AutoFarm == true then
                  _G.AutoFarm = false
                  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-10371.4717, 330.764496, -10131.4199, -0.804111481, 0, -0.594478488, 0, 1, 0, 0.594478488, 0, -0.804111481)
                  local args = {
                     [1] = "BuyElectricClaw",
                     [2] = "Start"
                  }
                  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                  wait(2)
                  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-12550.532226563, 336.22631835938, -7510.4233398438)
                  wait(1)
                  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-10371.4717, 330.764496, -10131.4199, -0.804111481, 0, -0.594478488, 0, 1, 0, 0.594478488, 0, -0.804111481)
                  local args = {
                     [1] = "BuyElectricClaw"
                  }
                  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                  wait(.1)
                  _G.AutoFarm = true
               end
            end
         end
         end)
      end
   end

   if  _G.elitehunt then
      if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
        local Distancex = (Vector3.new(CFrame.new(-5418.892578125, 313.74130249023, -2826.2260742188)) - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude -- จุดที่จะไป Position Only
         local Speexd = 150 -- ความเร็วของมึง
         tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(Distancex/Speexd, Enum.EasingStyle.Linear)
         tweenx = tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(-5418.892578125, 313.74130249023, -2826.2260742188)})
         tweenx:Play()
         wait(Distancex/Speexd)
         wait(.5)
         game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter")
      else
         if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text == "Defeat  Diablo (0/1)" then
          local magnitudez = (game:GetService("ReplicatedStorage")["Diablo [Lv. 1750]"].HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
           if magnitudez < 1000 then
            if game:GetService("Workspace").Enemies:FindFirstChild("Diablo [Lv. 1750]") then
               for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                  if v.Name == "Diablo [Lv. 1750]" then
                     repeat wait()
                        itemequip(_G.SelectWeapon)
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0,25,0)
                        v.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
                        v.HumanoidRootPart.CanCollide = false
                        v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                        v.Humanoid:ChangeState(11)
                        click()
                     until _G.elitehunt == false or v.Humanoid.Health <= 0
                  end
               end
            else
         local Distancex = (game:GetService("ReplicatedStorage")["Diablo [Lv. 1750]"].HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude -- จุดที่จะไป Position Only
         local Speexd = 150 -- ความเร็วของมึง
         tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(Distancex/Speexd, Enum.EasingStyle.Linear)
         tweenx = tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = game:GetService("ReplicatedStorage")["Diablo [Lv. 1750]"].HumanoidRootPart.CFrame})
         tweenx:Play()
         wait(Distancex/Speexd)
            end
            else
        local Distancex = (game:GetService("ReplicatedStorage")["Diablo [Lv. 1750]"].HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude -- จุดที่จะไป Position Only
         local Speexd = 150 -- ความเร็วของมึง
         tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(Distancex/Speexd, Enum.EasingStyle.Linear)
         tweenx = tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = game:GetService("ReplicatedStorage")["Diablo [Lv. 1750]"].HumanoidRootPart.CFrame})
         tweenx:Play()
         wait(Distancex/Speexd)
           end
         elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text == "Defeat  Deandre (0/1)" then
             local magnitudez = (game:GetService("ReplicatedStorage")["Deandre [Lv. 1750]"].HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
           if magnitudez < 1000 then
            if game:GetService("Workspace").Enemies:FindFirstChild("Deandre [Lv. 1750]") then
               for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                  if v.Name == "Deandre [Lv. 1750]" then
                     repeat wait()
                        itemequip(_G.SelectWeapon)
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0,25,0)
                        v.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
                        v.HumanoidRootPart.CanCollide = false
                        v.Humanoid.WalkSpeed = 0
                        v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                        v.Humanoid:ChangeState(11)
                        click()
                     until _G.elitehunt == false or v.Humanoid.Health <= 0
                  end
               end
            else
             local Distancex = (game:GetService("ReplicatedStorage")["Deandre [Lv. 1750]"].HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude -- จุดที่จะไป Position Only
             local Speexd = 150 -- ความเร็วของมึง
             tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(Distancex/Speexd, Enum.EasingStyle.Linear)
             tweenx = tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = game:GetService("ReplicatedStorage")["Deandre [Lv. 1750]"].HumanoidRootPart.CFrame})
             tweenx:Play()
             wait(Distancex/Speexd)
            end
           else
            local Distancex = (game:GetService("ReplicatedStorage")["Deandre [Lv. 1750]"].HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude -- จุดที่จะไป Position Only
             local Speexd = 150 -- ความเร็วของมึง
             tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(Distancex/Speexd, Enum.EasingStyle.Linear)
             tweenx = tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = game:GetService("ReplicatedStorage")["Deandre [Lv. 1750]"].HumanoidRootPart.CFrame})
             tweenx:Play()
             wait(Distancex/Speexd)
            end
         elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text == "Defeat  Urban (0/1)" then
                          local magnitudez = (game:GetService("ReplicatedStorage")["Urban [Lv. 1750]"].HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
           if magnitudez < 1000 then
            if game:GetService("Workspace").Enemies:FindFirstChild("Urban [Lv. 1750]") then
               for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                  if v.Name == "Urban [Lv. 1750]" then
                     repeat wait()
                        itemequip(_G.SelectWeapon)
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0,25,0)
                        v.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
                        v.HumanoidRootPart.CanCollide = false
                        v.Humanoid.WalkSpeed = 0
                        v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                        v.Humanoid:ChangeState(11)
                        click()
                     until _G.elitehunt == false or v.Humanoid.Health <= 0
                  end
               end
            else
             local Distancex = (game:GetService("ReplicatedStorage")["Urban [Lv. 1750]"].HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude -- จุดที่จะไป Position Only
             local Speexd = 150 -- ความเร็วของมึง
             tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(Distancex/Speexd, Enum.EasingStyle.Linear)
             tweenx = tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = game:GetService("ReplicatedStorage")["Urban [Lv. 1750]"].HumanoidRootPart.CFrame})
             tweenx:Play()
             wait(Distancex/Speexd)
            end
           else
            local Distancex = (game:GetService("ReplicatedStorage")["Deandre [Lv. 1750]"].HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude -- จุดที่จะไป Position Only
             local Speexd = 150 -- ความเร็วของมึง
             tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(Distancex/Speexd, Enum.EasingStyle.Linear)
             tweenx = tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = game:GetService("ReplicatedStorage")["Urban [Lv. 1750]"].HumanoidRootPart.CFrame})
             tweenx:Play()
             wait(Distancex/Speexd)
            end
         end
      end
   end
   if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
      local args = {
         [1] = "Buso"
      }
      game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
   end
   if _G.nododgecool then
      for i,v in next, getgc() do
         if game.Players.LocalPlayer.Character.Dodge then
            if typeof(v) == "function" and getfenv(v).script == game.Players.LocalPlayer.Character.Dodge then
               for i2,v2 in next, getupvalues(v) do
                  if tostring(v2) == "0.4" then
                     repeat wait()
                        setupvalue(v,i2,0)
                     until not _G.nododgecool
                  end
               end
            end
         end
      end
   end
   if InfinitsEnergy then
      wait(0.3)
      originalstam = LocalPlayer.Character.Energy.Value
      infinitestam()
   end
   if _G.BuySwordLegendary then
      local args = {
         [1] = "LegendarySwordDealer",
         [2] = "2"
      }
      game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
   end
   if _G.BuyHakiColorsDealer then
      game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ColorsDealer","2")
   end
   if _G.AutoFarmAllBoss then
      noclipnew()
   end
   if _G.AutoFarmMas then
      noclipnew()
   end
   if _G.AutoFarmMasGun then
      noclipnew()
   end
    if _G.AutoFarm or _G.AutoFarmMasGun then
        pcall(function()
            CheckQuest()
        if not game.Workspace:FindFirstChild(NameMon) then
        local part = Instance.new("Part")
        part.Name = NameMon
        part.Position = Vector3.new(0, 10, 0)
        part.Anchored = true
        part.CFrame = CFrameQuest
        part.Transparency = 1
        part.Parent = game.Workspace
        end
        end)
    end
    if _G.AutoFarm then
        wait(1000)
                local args = {
        [1] = "SetSpawnPoint"
        }
    
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
    end
   end)
end
local db = true
game:GetService("RunService").Heartbeat:Connect(function()
    if db == true then
        game:GetService("Workspace").NoClipxd.CanCollide = false
                    wait(.5)
            db = false
        else
            game:GetService("Workspace").NoClipxd.CanCollide = true
            wait(.5)
            db = true
    end
end)
game:GetService("RunService").Heartbeat:Connect(function()
pcall(function()
if _G.AutoFarm or _G.NoClip or _G.elitehunt or _G.Electro or _G.AutoFarmBossHallow or _G.AutoFarmBONE or _G.AutoFarmCandy then
   game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
end
if _G.FastAttack or _G.AutoFarm or _G.AutoFarmCandy or _G.AutoFarmBONE then
   require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework.CameraShaker).CameraShakeInstance.CameraShakeState = {FadingIn = 3,FadingOut =  2,Sustained = 0,Inactive = 1}
end
end)
end)

while wait(.1) do
    if _G.bringmob and _G.AutoFarm then
   pcall(function()
   CheckQuest()
   for i,x in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
      for n,y in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
         if x.Name == Ms then
            if y.Name == Ms then
               x.HumanoidRootPart.CFrame = BringFrame
               y.HumanoidRootPart.CFrame = BringFrame
               y.HumanoidRootPart.Size = Vector3.new(40,40,40)
               x.HumanoidRootPart.Size = Vector3.new(40,40,40)
               y.HumanoidRootPart.CanCollide = false
               y.Head.CanCollide = false
               sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
end
end
end
end
end)
end
end
spawn(function()
		while wait(.1) do
			if _G.AutoHaki then 
				if game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then

				else
					local args = {
						[1] = "Buso"
					}
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
				end
			end
		end
end)
