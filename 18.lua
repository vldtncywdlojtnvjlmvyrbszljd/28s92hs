

	repeat wait() until game:IsLoaded()
	repeat wait() until game:GetService("Players")
	repeat wait() until game:GetService("Players").LocalPlayer
	repeat wait() until game:GetService("Players").LocalPlayer.PlayerGui
	repeat wait() until game:GetService("ReplicatedStorage").Effect.Container

	if not game:IsLoaded() then
		local GameLoadGui = Instance.new("Message",workspace);
		GameLoadGui.Text = 'Wait Game Loading';
		game.Loaded:Wait();
		GameLoadGui:Destroy();
		wait(10);
	end;


	_G.Team = "Marines"


	if not game:IsLoaded() then
		local Loaded = Instance.new("Message",workspace)
		Loaded.Text = 'Wait Game Loading'
		game.Loaded:Wait()
		Loaded:Destroy()
		wait(10)
	end

	join = game.Players.localPlayer.Neutral == false
	if (_G.Team == "Pirates" or _G.Team == "Marines") and not join then
		repeat wait()
			pcall(function()
				join = game.Players.localPlayer.Neutral == false
				if _G.Team == "Pirates" then
					for i,v in pairs({"MouseButton1Click", "MouseButton1Down", "Activated"}) do
						for i,v in pairs(getconnections(game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Container.Pirates.Frame.ViewportFrame.TextButton[v])) do
							v.Function()
						end
					end
				elseif _G.Team == "Marines" then
					for i,v in pairs({"MouseButton1Click", "MouseButton1Down", "Activated"}) do
						for i,v in pairs(getconnections(game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Container.Marines.Frame.ViewportFrame.TextButton[v])) do
							v.Function()
						end
					end
				else
					for i,v in pairs({"MouseButton1Click", "MouseButton1Down", "Activated"}) do
						for i,v in pairs(getconnections(game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Container.Pirates.Frame.ViewportFrame.TextButton[v])) do
							v.Function()
						end
					end
				end
			end)
		until join == true and game.Players.LocalPlayer.Team ~= nil and game:IsLoaded() 
	end

	Old_World = false
	New_World = false
	Three_World = false
	local placeId = game.PlaceId
	if placeId == 2753915549 then
		Old_World = true
	elseif placeId == 4442272183 then
		New_World = true
	elseif placeId == 7449423635 then
		Three_World = true
	end

	_G.Settings = {

		Main = {
			["Auto Farm Level"] = false,
			["Fast Auto Farm Level"] = false,
	
			--[Mob Aura]
	
			["Distance Mob Aura"] = 1000, -- {Max : 5000} 
			["Mob Aura"] = false,
	
			--[World 1]
			["Auto New World"] = false,
			["Auto Saber"] = false,
			["Auto Pole"] = false,
	
			["Auto Buy Ablility"] = false,
	
			--[World 2]
			["Auto Third Sea"] = false,
			["Auto Factory"] = false,
			["Auto Factory Hop"] = false,
			["Auto Bartilo Quest"] = false,
	
			["Auto True Triple Katana"] = false,
			["Auto Rengoku"] = false,
			["Auto Swan Glasses"] = false,
			["Auto Dark Coat"] = false,
			["Auto Ectoplasm"] = false,
	
			["Auto Buy Legendary Sword"] = false,
			["Auto Buy Enchanment Haki"] = false,
	
			--[World 3]
			["Auto Holy Torch"] = false,
			["Auto Buddy Swords"] = false,
			["Auto Farm Boss Hallow"] = false,
			["Auto Rainbow Haki"] = false,
			["Auto Elite Hunter"] = false,
			["Auto Musketeer Hat"] = false,
			["Auto Buddy Sword"] = false,
			["Auto Farm Bone"] = false,
			["Auto Ken-Haki V2"] = false,
			["Auto Cavander"] = false,
			["Auto Yama Sword"] = false,
			["Auto Tushita Sword"] = false,
			["Auto Serpent Bow"] = false,
			["Auto Dark Dagger"] = false,
			["Auto Cake Prince"] = false,
			["Auto Dough V2"] = false,
			["Auto Random Bone"] = false,
	
			--[For God Human]
	
			["Auto Fish Tail Sea 1"] = false,
			["Auto Fish Tail Sea 3"] = false,
			["Auto Magma Ore Sea 2"] = false,
			["Auto Magma Ore Sea 1"] = false,
			["Auto Mystic Droplet"] = false,
			["Auto Dragon Scales"] = false,
	
		},
		FightingStyle = {
			["Auto God Human"] = false,
			["Auto Superhuman"] = false,
			["Auto Electric Claw"] = false,
			["Auto Death Step"] = false,
			["Auto Fully Death Step"] = false,
			["Auto SharkMan Karate"] = false,
			["Auto Fully SharkMan Karate"] = false,
			["Auto Dragon Talon"] = false,
		},
		Boss = {
			["Auto All Boss"] = false,
			["Auto Boss Select"] = false,
			["Select Boss"] = {},
	
			["Auto Quest"] = false,
		},
		Mastery = {
			["Select Multi Swordd"] = {},
			["Sword Compleat"] = {},
			["Farm Mastery SwordList"] = false,
			["Auto Farm Fruit Mastery"] = false,
			["Auto Farm Gun Mastery"] = false,
			["Mob Health (%)"] = 15,
		},
		Configs = {
			["Double Quest"] = false,
			["Bypass TP"] = false,
			["Select Team"] = {"Marine"}, --{Pirate,Marine}
	
	
			["Fast Attack"] = true,
			["Fast Attack Type"] = {"Fast"}, --{Normal,Fast,Slow}
	
			["Select Weapon"] = {},
	
	
			--[Misc Configs]
			["Auto Haki"] = true,
			["Distance Auto Farm"] = 20, --{Max : 50}
			["Camera Shaker"] = false,
	
			--[Skill Configs]
			["Skill Z"] = true,
			["Skill X"] = true,
			["Skill C"] = true,
			["Skill V"] = true,
	
			--[Mob Configs]
			["Show Hitbox"] = false,
			["Bring Mob"] = true,
			["Disabled Damage"] = false,
	
		},
		Stat = {
			--[Auto Stats]
			["Enabled Auto Stats"] = false,
			["Auto Stats Kaitun"] = false,
	
			["Select Stats"] = {"Melee"}, --{Max Stats,Melee,Defense,Sword,Devil Fruit,Gun}
			["Point Select"] = 3, --{Recommended , Max : 9}
	
			--[Auto Redeem Code]
	
			["Enabled Auto Redeem Code"] = false,
			["Select Level Redeem Code"] = 1, --{Max : 2400}
		},
	
		Misc = {
			["No Soru Cooldown"] = false,
			["No Dash Cooldown"] = false,
	
			["Infinities Geppo"] = false,
			["Infinities Energy"] = false,
	
			["No Fog"] = false,
			["Wall-TP"] = false,
	
			["Fly"] = false,
			["Fly Speed"] = 1,
	
			--[Server]
			["Auto Rejoin"] = true,
		},
		Teleport = {
			["Teleport to Sea Beast"] = false,
		},
	
		Fruits = {
			["Auto Buy Random Fruits"] = false,
			["Auto Store Fruits"] = false,
	
			["Select Devil Fruits"] = {}, -- {"Bomb-Bomb","Spike-Spike","Chop-Chop","Spring-Spring","Kilo-Kilo","Spin-Spin","Kilo-Kilo","Spin-Spin","Bird: Falcon","Smoke-Smoke","Flame-Flame","Ice-Ice","Sand-Sand","Dark-Dark","Revive-Revive","Diamond-Diamond","Light-Light","Love-Love","Rubber-Rubber","Barrier-Barrier","Magma-Magma","Door-Door","Quake-Quake","Human-Human: Buddha","String-String","Bird-Bird: Phoenix","Rumble-Rumble","Paw-Paw","Gravity-Gravity","Dough-Dough","Shadow-Shadow","Venom-Venom","Control-Control","Soul-Soul","Dragon-Dragon"}
			["Auto Buy Devil Fruits Sniper"] = false,
		},
	
		Raids = {
			["Auto Raids"] = false,
	
			["Kill Aura"] = false,
			["Auto Awakened"] = false,
			["Auto Next Place"] = false,
	
			["Select Raids"] = {}, -- {"Flame","Ice","Quake","Light","Dark","String","Rumble","Magma","Human: Buddha","Sand","Bird: Phoenix","Dough"},
		},
	
		Combat = {
			["Fov Size"] = 200,
			["Show Fov"] = false,
			["Aimbot Skill"] = false,
		},
	
		HUD = {
			["FPS"] = 60,
			["LockFPS"] = true,
			["Boost FPS Windows"] = false,
			['White Screen'] = false,
		},
		ConfigsUI = {
			ColorUI = Color3.fromRGB(255, 0, 127), --{Color UI}
		}
	}

	_G.Rejoin = false
	spawn(function()
		while true do wait()
			getgenv().rejoin = game:GetService("CoreGui").RobloxPromptGui.promptOverlay.ChildAdded:Connect(function(Kick)
				if not (_G.TP_Ser or Hop) and _G.Rejoin then
					if Kick.Name == 'ErrorPrompt' and Kick:FindFirstChild('MessageArea') and Kick.MessageArea:FindFirstChild("ErrorFrame") then
						local ts = game:GetService("TeleportService")
						local p = game:GetService("Players").LocalPlayer
						ts:Teleport(game.PlaceId, p)
						wait(50)
					end
				end
			end)
		end
	end)

	local VirtualUser=game:service'VirtualUser'
	game:service'Players'.LocalPlayer.Idled:connect(function()
		VirtualUser:CaptureController()
		VirtualUser:ClickButton2(Vector2.new())
	end)

	spawn(function()
		while wait(3) do
			game:GetService'VirtualUser':CaptureController()
		end
	end)



	_G.Setting_table = {
		Auto_Farm = false,
		Bypass = true,
		FastAttack = true,
		Auto_Buso = true,
		Auto_Ken = true,
		Show_Damage = true,
		NoClip = true,
		Save_Member = true,
		Melee_A = true,
		Defense_A = true,
		SkillZ = true,
		Rejoin = true,
		Anti_AFK = true,
		K_MAX = 50,
		Chest_Lock = 50,
		FastModeD = "Fast",
		FastMode = "Normal",
		Delay_C = 15
	}

	_G.Check_Save_Setting = "CheckSaveSetting"

	getgenv()['JsonEncode'] = function(msg)
		return game:GetService("HttpService"):JSONEncode(msg)
	end
	getgenv()['JsonDecode'] = function(msg)
		return game:GetService("HttpService"):JSONDecode(msg)
	end
	getgenv()['Check_Setting'] = function(Name)
		if not _G.Dis and not isfolder('Sulfurz Hub Srcipt Folder') then
			makefolder('Sulfurz Hub Srcipt Folder')
		end
		if not _G.Dis and not isfile('Sulfurz Hub Srcipt Folder/'..Name..'.json') then
			writefile('Sulfurz Hub Srcipt Folder/'..Name..'.json',JsonEncode(_G.Setting_table))
		end
	end
	getgenv()['Get_Setting'] = function(Name)
		if not _G.Dis and isfolder('Sulfurz Hub Srcipt Folder') and isfile('Sulfurz Hub Srcipt Folder/'..Name..'.json') then
			_G.Setting_table = JsonDecode(readfile('Sulfurz Hub Srcipt Folder/'..Name..'.json'))
			return _G.Setting_table
		elseif not _G.Dis then
			Check_Setting(Name)
		end
	end
	getgenv()['Update_Setting'] = function(Name)
		if not _G.Dis and isfolder('Sulfurz Hub Srcipt Folder') and isfile('Sulfurz Hub Srcipt Folder/'..Name..'.json') then
			writefile('Sulfurz Hub Srcipt Folder/'..Name..'.json',JsonEncode(_G.Setting_table))
		elseif not _G.Dis then
			Check_Setting(Name)
		end
	end

	Check_Setting(_G.Check_Save_Setting)
	Get_Setting(_G.Check_Save_Setting)

	if _G.Setting_table.Save_Member then
		getgenv()['MyName'] = game.Players.LocalPlayer.Name
		print("Save Member")
	elseif _G.Setting_table.Save_All_Member then
		getgenv()['MyName'] = "AllMember"
		print("Save All Member")
	else
		getgenv()['MyName'] = "None"
		_G.Dis = true
	end

	Check_Setting(getgenv()['MyName'])
	Get_Setting(getgenv()['MyName'])

	_G.Setting_table.Key = _G.wl_key
	Update_Setting(getgenv()['MyName'])


	function LoadSettings()
		if readfile and writefile and isfile and isfolder then
			if not isfolder("Unique Hub Premium Scripts") then
				makefolder("Unique Hub Premium Scripts")
			end
			if not isfolder("Unique Hub Premium Scripts/Blox Fruits/") then
				makefolder("Unique Hub Premium Scripts/Blox Fruits/")
			end
			if not isfile("Unique Hub Premium Scripts/Blox Fruits/" .. game.Players.LocalPlayer.Name .. ".json") then
				writefile("Unique Hub Premium Scripts/Blox Fruits/" .. game.Players.LocalPlayer.Name .. ".json", game:GetService("HttpService"):JSONEncode(_G.Settings))
			else
				local Decode = game:GetService("HttpService"):JSONDecode(readfile("Unique Hub Premium Scripts/Blox Fruits/" .. game.Players.LocalPlayer.Name .. ".json"))
				for i,v in pairs(Decode) do
					_G.Settings[i] = v
				end
			end
		else
			return warn("Status : Undetected Executor")
		end
	end
	
	function SaveSettings()
		if readfile and writefile and isfile and isfolder then
			if not isfile("Unique Hub Premium Scripts/Blox Fruits/" .. game.Players.LocalPlayer.Name .. ".json") then
				LoadSettings()
			else
				local Decode = game:GetService("HttpService"):JSONDecode(readfile("Unique Hub Premium Scripts/Blox Fruits/" .. game.Players.LocalPlayer.Name .. ".json"))
				local Array = {}
				for i,v in pairs(_G.Settings) do
					Array[i] = v
				end
				writefile("Unique Hub Premium Scripts/Blox Fruits/" .. game.Players.LocalPlayer.Name .. ".json", game:GetService("HttpService"):JSONEncode(Array))
			end
		else
			return warn("Status : Undetected Executor")
		end
	end
	
	LoadSettings()



	function TelePBoss(p)
		pcall(function()
			if (p.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >= 2000 and not Auto_Raid and game.Players.LocalPlayer.Character.Humanoid.Health > 0 then
				if NameQuest == "FishmanQuest" then
					_G.Stop_Tween = true
					TP(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
					wait()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
					_G.Stop_Tween = nil
				elseif Ms == "God's Guard [Lv. 450]"  then
					_G.Stop_Tween = true
					TP(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
					wait()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-4607.82275, 872.54248, -1667.55688))
					_G.Stop_Tween = nil
				elseif NameQuest == "SkyExp1Quest" then
					_G.Stop_Tween = true
					TP(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
					wait()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047))
					_G.Stop_Tween = nil
				elseif NameQuest == "ShipQuest1" then
					_G.Stop_Tween = true
					TP(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
					wait()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
					_G.Stop_Tween = nil
				elseif NameQuest == "ShipQuest2" then
					_G.Stop_Tween = true
					TP(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
					wait()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
					_G.Stop_Tween = nil
				elseif NameQuest == "FrostQuest" then
					_G.Stop_Tween = true
					TP(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
					wait()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-6508.5581054688, 89.034996032715, -132.83953857422))
					_G.Stop_Tween = nil
				else
					Mix_Farm = true
					_G.Stop_Tween = true
					repeat wait()
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = p
						wait(.05)
						game.Players.LocalPlayer.Character.Head:Destroy()
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = p
					until (p.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 1500 and game.Players.LocalPlayer.Character.Humanoid.Health > 0
					wait()
					_G.Stop_Tween = nil
					Mix_Farm = nil
				end
			end
		end)
	end

	function CheckQuestBoss()
		-- Old World
			if _G.SelectBoss == "Saber Expert [Lv. 200] [Boss]" then
				MsBoss = "Saber Expert [Lv. 200] [Boss]"
				NameBoss = "Saber Expert"
				CFrameBoss = CFrame.new(-1458.89502, 29.8870335, -50.633564, 0.858821094, 1.13848939e-08, 0.512275636, -4.85649254e-09, 1, -1.40823326e-08, -0.512275636, 9.6063415e-09, 0.858821094)
			elseif _G.SelectBoss == "The Saw [Lv. 100] [Boss]" then
				MsBoss = "The Saw [Lv. 100] [Boss]"
				NameBoss = "The Saw"
				CFrameBoss = CFrame.new(-683.519897, 13.8534927, 1610.87854, -0.290192783, 6.88365773e-08, 0.956968188, 6.98413629e-08, 1, -5.07531119e-08, -0.956968188, 5.21077759e-08, -0.290192783)
			elseif _G.SelectBoss == "Greybeard [Lv. 750] [Raid Boss]" then
				MsBoss = "Greybeard [Lv. 750] [Raid Boss]"
				NameBoss = "Greybeard"
				CFrameBoss = CFrame.new(-4955.72949, 80.8163834, 4305.82666, -0.433646321, -1.03394289e-08, 0.901083171, -3.0443168e-08, 1, -3.17633075e-09, -0.901083171, -2.88092288e-08, -0.433646321)
			elseif _G.SelectBoss == "The Gorilla King [Lv. 25] [Boss]" then
				MsBoss = "The Gorilla King [Lv. 25] [Boss]" 
				NameBoss = "The Gorilla King"
				NameQuestBoss = "JungleQuest"
				QuestLvBoss = 3
				CFrameQBoss = CFrame.new(-1604.12012, 36.8521118, 154.23732, 0.0648873374, -4.70858913e-06, -0.997892559, 1.41431883e-07, 1, -4.70933674e-06, 0.997892559, 1.64442184e-07, 0.0648873374)
				CFrameBoss = CFrame.new(-1223.52808, 6.27936459, -502.292664, 0.310949147, -5.66602516e-08, 0.950426519, -3.37275488e-08, 1, 7.06501808e-08, -0.950426519, -5.40241736e-08, 0.310949147)
				TelePBoss(CFrameBoss)
			elseif _G.SelectBoss == "Bobby [Lv. 55] [Boss]" then
				MsBoss = "Bobby [Lv. 55] [Boss]"
				NameBoss = "Bobby"
				NameQuestBoss = "BuggyQuest1"
				QuestLvBoss = 3
				CFrameQBoss = CFrame.new(-1139.59717, 4.75205183, 3825.16211, -0.959730506, -7.5857054e-09, 0.280922383, -4.06310328e-08, 1, -1.11807175e-07, -0.280922383, -1.18718916e-07, -0.959730506)
				CFrameBoss = CFrame.new(-1147.65173, 32.5966301, 4156.02588, 0.956680477, -1.77109952e-10, -0.29113996, 5.16530874e-10, 1, 1.08897802e-09, 0.29113996, -1.19218679e-09, 0.956680477)
				TelePBoss(CFrameBoss)
			elseif _G.SelectBoss == "Yeti [Lv. 110] [Boss]" then
				MsBoss = "Yeti [Lv. 110] [Boss]"
				NameBoss = "Yeti"
				NameQuestBoss = "SnowQuest"
				QuestLvBoss = 3
				CFrameQBoss = CFrame.new(1384.90247, 87.3078308, -1296.6825, 0.280209213, 2.72035177e-08, -0.959938943, -6.75690828e-08, 1, 8.6151708e-09, 0.959938943, 6.24481444e-08, 0.280209213)
				CFrameBoss = CFrame.new(1221.7356, 138.046906, -1488.84082, 0.349343032, -9.49245944e-08, 0.936994851, 6.29478194e-08, 1, 7.7838429e-08, -0.936994851, 3.17894653e-08, 0.349343032)
				TelePBoss(CFrameBoss)
			elseif _G.SelectBoss == "Mob Leader [Lv. 120] [Boss]" then
				MsBoss = "Mob Leader [Lv. 120] [Boss]"
				NameBoss = "Mob Leader"
				CFrameBoss = CFrame.new(-2848.59399, 7.4272871, 5342.44043, -0.928248107, -8.7248246e-08, 0.371961564, -7.61816636e-08, 1, 4.44474857e-08, -0.371961564, 1.29216433e-08, -0.92824)
			elseif _G.SelectBoss == "Vice Admiral [Lv. 130] [Boss]" then
				MsBoss = "Vice Admiral [Lv. 130] [Boss]"
				NameBoss = "Vice Admiral"
				NameQuestBoss = "MarineQuest2"
				QuestLvBoss = 2
				CFrameQBoss = CFrame.new(-5035.42285, 28.6520386, 4324.50293, -0.0611100644, -8.08395768e-08, 0.998130739, -1.57416586e-08, 1, 8.00271849e-08, -0.998130739, -1.08217701e-08, -0.0611100644)
				CFrameBoss = CFrame.new(-5078.45898, 99.6520691, 4402.1665, -0.555574954, -9.88630566e-11, 0.831466436, -6.35508286e-08, 1, -4.23449258e-08, -0.831466436, -7.63661632e-08, -0.555574954)
				TelePBoss(CFrameBoss)
			elseif _G.SelectBoss == "Warden [Lv. 220] [Boss]" then
				MsBoss = "Warden [Lv. 220] [Boss]"
				NameBoss = "Warden"
				NameQuestBoss = "ImpelQuest"
				QuestLvBoss = 1
				CFrameQBoss = CFrame.new(4851.35059, 5.68744135, 743.251282, -0.538484037, -6.68303741e-08, -0.842635691, 1.38001752e-08, 1, -8.81300792e-08, 0.842635691, -5.90851599e-08, -0.538484037)
				CFrameBoss = CFrame.new(5232.5625, 5.26856995, 747.506897, 0.943829298, -4.5439414e-08, 0.330433697, 3.47818627e-08, 1, 3.81658154e-08, -0.330433697, -2.45289105e-08, 0.943829298)
				TelePBoss(CFrameBoss)
			elseif _G.SelectBoss == "Chief Warden [Lv. 230] [Boss]" then
				MsBoss = "Chief Warden [Lv. 230] [Boss]"
				NameBoss = "Chief Warden"
				NameQuestBoss = "ImpelQuest"
				QuestLvBoss = 2
				CFrameQBoss = CFrame.new(4851.35059, 5.68744135, 743.251282, -0.538484037, -6.68303741e-08, -0.842635691, 1.38001752e-08, 1, -8.81300792e-08, 0.842635691, -5.90851599e-08, -0.538484037)
				CFrameBoss = CFrame.new(5232.5625, 5.26856995, 747.506897, 0.943829298, -4.5439414e-08, 0.330433697, 3.47818627e-08, 1, 3.81658154e-08, -0.330433697, -2.45289105e-08, 0.943829298)
				TelePBoss(CFrameBoss)
			elseif _G.SelectBoss == "Swan [Lv. 240] [Boss]" then
				MsBoss = "Swan [Lv. 240] [Boss]"
				NameBoss = "Swan"
				NameQuestBoss = "ImpelQuest"
				QuestLvBoss = 3
				CFrameQBoss = CFrame.new(4851.35059, 5.68744135, 743.251282, -0.538484037, -6.68303741e-08, -0.842635691, 1.38001752e-08, 1, -8.81300792e-08, 0.842635691, -5.90851599e-08, -0.538484037)
				CFrameBoss = CFrame.new(5232.5625, 5.26856995, 747.506897, 0.943829298, -4.5439414e-08, 0.330433697, 3.47818627e-08, 1, 3.81658154e-08, -0.330433697, -2.45289105e-08, 0.943829298)
				TelePBoss(CFrameBoss)
			elseif _G.SelectBoss == "Magma Admiral [Lv. 350] [Boss]" then
				MsBoss = "Magma Admiral [Lv. 350] [Boss]"
				NameBoss = "Magma Admiral"
				NameQuestBoss = "MagmaQuest"
				QuestLvBoss = 3
				CFrameQBoss = CFrame.new(-5317.07666, 12.2721891, 8517.41699, 0.51175487, -2.65508806e-08, -0.859131515, -3.91131572e-08, 1, -5.42026761e-08, 0.859131515, 6.13418294e-08, 0.51175487)
				CFrameBoss = CFrame.new(-5530.12646, 22.8769703, 8859.91309, 0.857838571, 2.23414389e-08, 0.513919294, 1.53689133e-08, 1, -6.91265853e-08, -0.513919294, 6.71978384e-08, 0.857838571)
				TelePBoss(CFrameBoss)
			elseif _G.SelectBoss == "Fishman Lord [Lv. 425] [Boss]" then
				MsBoss = "Fishman Lord [Lv. 425] [Boss]"
				NameBoss = "Fishman Lord"
				NameQuestBoss = "FishmanQuest"
				QuestLvBoss = 3
				CFrameQBoss = CFrame.new(61123.0859, 18.5066795, 1570.18018, 0.927145958, 1.0624845e-07, 0.374700129, -6.98219367e-08, 1, -1.10790765e-07, -0.374700129, 7.65569368e-08, 0.927145958)
				CFrameBoss = CFrame.new(61351.7773, 31.0306778, 1113.31409, 0.999974668, 0, -0.00714713801, 0, 1.00000012, 0, 0.00714714266, 0, 0.999974549)
				if (CFrameQBoss.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
				end
			elseif _G.SelectBoss == "Wysper [Lv. 500] [Boss]" then
				MsBoss = "Wysper [Lv. 500] [Boss]"
				NameBoss = "Wysper"
				NameQuestBoss = "SkyExp1Quest"
				QuestLvBoss = 3
				CFrameQBoss = CFrame.new(-7862.94629, 5545.52832, -379.833954, 0.462944925, 1.45838088e-08, -0.886386991, 1.0534996e-08, 1, 2.19553424e-08, 0.886386991, -1.95022007e-08, 0.462944925)
				CFrameBoss = CFrame.new(-7925.48389, 5550.76074, -636.178345, 0.716468513, -1.22915289e-09, 0.697619379, 3.37381434e-09, 1, -1.70304748e-09, -0.697619379, 3.57381835e-09, 0.716468513)
				if (CFrameQBoss.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-4607.82275, 872.54248, -1667.55688))
				end
			elseif _G.SelectBoss == "Thunder God [Lv. 575] [Boss]" then
				MsBoss = "Thunder God [Lv. 575] [Boss]"
				NameBoss = "Thunder God"
				NameQuestBoss = "SkyExp2Quest"
				QuestLvBoss = 3
				CFrameQBoss = CFrame.new(-7902.78613, 5635.99902, -1411.98706, -0.0361216255, -1.16895912e-07, 0.999347389, 1.44533963e-09, 1, 1.17024491e-07, -0.999347389, 5.6715117e-09, -0.0361216255)
				CFrameBoss = CFrame.new(-7917.53613, 5616.61377, -2277.78564, 0.965189934, 4.80563429e-08, -0.261550069, -6.73089886e-08, 1, -6.46515304e-08, 0.261550069, 8.00056768e-08, 0.965189934)
				TelePBoss(CFrameBoss)
			elseif _G.SelectBoss == "Cyborg [Lv. 675] [Boss]" then
				MsBoss = "Cyborg [Lv. 675] [Boss]"
				NameBoss = "Cyborg"
				NameQuestBoss = "FountainQuest"
				QuestLvBoss = 3
				CFrameQBoss = CFrame.new(5253.54834, 38.5361786, 4050.45166, -0.0112687312, -9.93677887e-08, -0.999936521, 2.55291371e-10, 1, -9.93769547e-08, 0.999936521, -1.37512213e-09, -0.0112687312)
				CFrameBoss = CFrame.new(6041.82813, 52.7112198, 3907.45142, -0.563162148, 1.73805248e-09, -0.826346457, -5.94632716e-08, 1, 4.26280238e-08, 0.826346457, 7.31437524e-08, -0.563162148)
				TelePBoss(CFrameBoss)
			-- New World
			elseif _G.SelectBoss == "Diamond [Lv. 750] [Boss]" then
				MsBoss = "Diamond [Lv. 750] [Boss]"
				NameBoss = "Diamond"
				NameQuestBoss = "Area1Quest"
				QuestLvBoss = 3
				CFrameQBoss = CFrame.new(-424.080078, 73.0055847, 1836.91589, 0.253544956, -1.42165932e-08, 0.967323601, -6.00147771e-08, 1, 3.04272909e-08, -0.967323601, -6.5768397e-08, 0.253544956)
				CFrameBoss = CFrame.new(-1736.26587, 198.627731, -236.412857, -0.997808516, 0, -0.0661673471, 0, 1, 0, 0.0661673471, 0, -0.997808516)
				TelePBoss(CFrameBoss)
			elseif _G.SelectBoss == "Jeremy [Lv. 850] [Boss]" then
				MsBoss = "Jeremy [Lv. 850] [Boss]"
				NameBoss = "Jeremy"
				NameQuestBoss = "Area2Quest"
				QuestLvBoss = 3
				CFrameQBoss = CFrame.new(632.698608, 73.1055908, 918.666321, -0.0319722369, 8.96074881e-10, -0.999488771, 1.36326533e-10, 1, 8.92172336e-10, 0.999488771, -1.07732087e-10, -0.0319722369)
				CFrameBoss = CFrame.new(2203.76953, 448.966034, 752.731079, -0.0217453763, 0, -0.999763548, 0, 1, 0, 0.999763548, 0, -0.0217453763)
				TelePBoss(CFrameBoss)
			elseif _G.SelectBoss == "Fajita [Lv. 925] [Boss]" then
				MsBoss = "Fajita [Lv. 925] [Boss]"
				NameBoss = "Fajita"
				NameQuestBoss = "MarineQuest3"
				QuestLvBoss = 3
				CFrameQBoss = CFrame.new(-2442.65015, 73.0511475, -3219.11523, -0.873540044, 4.2329841e-08, -0.486752301, 5.64383384e-08, 1, -1.43220786e-08, 0.486752301, -3.99823996e-08, -0.873540044)
				CFrameBoss = CFrame.new(-2297.40332, 115.449463, -3946.53833, 0.961227536, -1.46645796e-09, -0.275756449, -2.3212845e-09, 1, -1.34094433e-08, 0.275756449, 1.35296352e-08, 0.961227536)
				TelePBoss(CFrameBoss)
			elseif _G.SelectBoss == "Don Swan [Lv. 1000] [Boss]" then
				MsBoss = "Don Swan [Lv. 1000] [Boss]"
				NameBoss = "Don Swan"
				CFrameBoss = CFrame.new(2288.802, 15.1870775, 863.034607, 0.99974072, -8.41247214e-08, -0.0227668174, 8.4774733e-08, 1, 2.75850098e-08, 0.0227668174, -2.95079072e-08, 0.99974072)
				TelePBoss(CFrameBoss)
			elseif _G.SelectBoss == "Smoke Admiral [Lv. 1150] [Boss]" then
				MsBoss = "Smoke Admiral [Lv. 1150] [Boss]"
				NameBoss = "Smoke Admiral"
				NameQuestBoss = "IceSideQuest"
				QuestLvBoss = 3
				CFrameQBoss = CFrame.new(-6059.96191, 15.9868021, -4904.7373, -0.444992423, -3.0874483e-09, 0.895534337, -3.64098796e-08, 1, -1.4644522e-08, -0.895534337, -3.91229982e-08, -0.444992423)
				CFrameBoss = CFrame.new(-5115.72754, 23.7664986, -5338.2207, 0.251453817, 1.48345061e-08, -0.967869282, 4.02796978e-08, 1, 2.57916977e-08, 0.967869282, -4.54708946e-08, 0.251453817)
				TelePBoss(CFrameBoss)
			elseif _G.SelectBoss == "Cursed Captain [Lv. 1325] [Raid Boss]" then
				MsBoss = "Cursed Captain [Lv. 1325] [Raid Boss]"
				NameBoss = "Cursed Captain"
				CFrameBoss = CFrame.new(916.928589, 181.092773, 33422, -0.999505103, 9.26310495e-09, 0.0314563364, 8.42916226e-09, 1, -2.6643713e-08, -0.0314563364, -2.63653774e-08, -0.999505103)
			elseif _G.SelectBoss == "Darkbeard [Lv. 1000] [Raid Boss]" then
				MsBoss = "Darkbeard [Lv. 1000] [Raid Boss]"
				NameBoss = "Darkbeard"
				CFrameBoss = CFrame.new(3876.00366, 24.6882591, -3820.21777, -0.976951957, 4.97356325e-08, 0.213458836, 4.57335361e-08, 1, -2.36868622e-08, -0.213458836, -1.33787044e-08, -0.976951957)
			elseif _G.SelectBoss == "Order [Lv. 1250] [Raid Boss]" then
				MsBoss = "Order [Lv. 1250] [Raid Boss]"
				NameBoss = "Order"
				CFrameBoss = CFrame.new(-6221.15039, 16.2351036, -5045.23584, -0.380726993, 7.41463495e-08, 0.924687505, 5.85604774e-08, 1, -5.60738549e-08, -0.924687505, 3.28013137e-08, -0.380726993)
			elseif _G.SelectBoss == "Awakened Ice Admiral [Lv. 1400] [Boss]" then
				MsBoss = "Awakened Ice Admiral [Lv. 1400] [Boss]"
				NameBoss = "Awakened Ice Admiral"
				NameQuestBoss = "FrostQuest"
				QuestLvBoss = 3
				CFrameQBoss = CFrame.new(5669.33203, 28.2118053, -6481.55908, 0.921275556, -1.25320829e-08, 0.388910472, 4.72230788e-08, 1, -7.96414241e-08, -0.388910472, 9.17372489e-08, 0.921275556)
				CFrameBoss = CFrame.new(6407.33936, 340.223785, -6892.521, 0.49051559, -5.25310213e-08, -0.871432424, -2.76146022e-08, 1, -7.58250565e-08, 0.871432424, 6.12576301e-08, 0.49051559)
				TelePBoss(CFrameBoss)
			elseif _G.SelectBoss == "Tide Keeper [Lv. 1475] [Boss]" then
				MsBoss = "Tide Keeper [Lv. 1475] [Boss]"
				NameBoss = "Tide Keeper"
				NameQuestBoss = "ForgottenQuest"             
				QuestLvBoss = 3
				CFrameQBoss = CFrame.new(-3053.89648, 236.881363, -10148.2324, -0.985987961, -3.58504737e-09, 0.16681771, -3.07832915e-09, 1, 3.29612559e-09, -0.16681771, 2.73641976e-09, -0.985987961)
				CFrameBoss = CFrame.new(-3570.18652, 123.328949, -11555.9072, 0.465199202, -1.3857326e-08, 0.885206044, 4.0332897e-09, 1, 1.35347511e-08, -0.885206044, -2.72606271e-09, 0.465199202)
				TelePBoss(CFrameBoss)
			-- Thire World
			elseif _G.SelectBoss == "Stone [Lv. 1550] [Boss]" then
				MsBoss = "Stone [Lv. 1550] [Boss]"
				NameBoss = "Stone"
				NameQuestBoss = "PiratePortQuest"             
				QuestLvBoss = 3
				CFrameQBoss = CFrame.new(-290, 44, 5577)
				CFrameBoss = CFrame.new(-1085, 40, 6779)
				TelePBoss(CFrameBoss)
			elseif _G.SelectBoss == "Island Empress [Lv. 1675] [Boss]" then
				MsBoss = "Island Empress [Lv. 1675] [Boss]"
				NameBoss = "Island Empress"
				NameQuestBoss = "AmazonQuest2"             
				QuestLvBoss = 3
				CFrameQBoss = CFrame.new(5443, 602, 752)
				CFrameBoss = CFrame.new(5659, 602, 244)
				TelePBoss(CFrameBoss)
			elseif _G.SelectBoss == "Kilo Admiral [Lv. 1750] [Boss]" then
				MsBoss = "Kilo Admiral [Lv. 1750] [Boss]"
				NameBoss = "Kilo Admiral"
				NameQuestBoss = "MarineTreeIsland"             
				QuestLvBoss = 3
				CFrameQBoss = CFrame.new(2178, 29, -6737)
				CFrameBoss =CFrame.new(2846, 433, -7100)
				TelePBoss(CFrameBoss)
			elseif _G.SelectBoss == "Captain Elephant [Lv. 1875] [Boss]" then
				MsBoss = "Captain Elephant [Lv. 1875] [Boss]"
				NameBoss = "Captain Elephant"
				NameQuestBoss = "DeepForestIsland"             
				QuestLvBoss = 3
				CFrameQBoss = CFrame.new(-13232, 333, -7631)
				CFrameBoss = CFrame.new(-13221, 325, -8405)
				TelePBoss(CFrameBoss)
			elseif _G.SelectBoss == "Beautiful Pirate [Lv. 1950] [Boss]" then
				MsBoss = "Beautiful Pirate [Lv. 1950] [Boss]"
				NameBoss = "Beautiful Pirate"
				NameQuestBoss = "DeepForestIsland2"             
				QuestLvBoss = 3
				CFrameQBoss = CFrame.new(-12686, 391, -9902)
				CFrameBoss = CFrame.new(5182, 23, -20)
				TelePBoss(CFrameBoss)
			elseif _G.SelectBoss == "rip_indra True Form [Lv. 5000] [Raid Boss]" then
				MsBoss = "rip_indra True Form [Lv. 5000] [Raid Boss]"
				NameBoss = "rip_indra True Form"
				CFrameBoss = CFrame.new(-5359, 424, -2735)
				TelePBoss(CFrameBoss)
			elseif _G.SelectBoss == "Longma [Lv. 2000] [Boss]" then
				MsBoss = "Longma [Lv. 2000] [Boss]"
				NameBoss = "Longma"
				CFrameBoss = CFrame.new(-10248.3936, 353.79129, -9306.34473)
				TelePBoss(CFrameBoss)
			elseif _G.SelectBoss == "Soul Reaper [Lv. 2100] [Raid Boss]" then
				MsBoss = "Soul Reaper [Lv. 2100] [Raid Boss]"
				NameBoss = "Soul Reaper"
				CFrameBoss = CFrame.new(-9515.62109, 315.925537, 6691.12012)
				TelePBoss(CFrameBoss)
			elseif _G.SelectBoss == "Cake Queen [Lv. 2175] [Boss]" then
				MsBoss = "Cake Queen [Lv. 2175] [Boss]"
				NameBoss = "Cake Queen"
				NameQuestBoss = "IceCreamIslandQuest"             
				QuestLvBoss = 3
				CFrameQBoss = CFrame.new(-821.267456, 65.9448776, -10964.3994, 0.814093888, -3.67296735e-08, -0.58073324, 3.30765637e-08, 1, -1.6879099e-08, 0.58073324, -5.46748513e-09, 0.814093888)
				CFrameBoss = CFrame.new(-715.467102, 381.69104, -11019.8896, 0.955998719, -1.07319993e-08, -0.293370903, 5.00311881e-09, 1, -2.02781667e-08, 0.293370903, 1.7918131e-08, 0.955998719)
				TelePBoss(CFrameBoss)
			end
		end

		function CheckBossQuest()
			if _G.Setting_table.Selectb == "Saber Expert [Lv. 200] [Boss]" then
				MsBoss = "Saber Expert [Lv. 200] [Boss]"
				NameBoss = "Saber Expert"
				CFrameBoss = CFrame.new(-1458.89502, 29.8870335, -50.633564, 0.858821094, 1.13848939e-08, 0.512275636, -4.85649254e-09, 1, -1.40823326e-08, -0.512275636, 9.6063415e-09, 0.858821094)
			elseif _G.Setting_table.Selectb == "The Saw [Lv. 100] [Boss]" then
				MsBoss = "The Saw [Lv. 100] [Boss]"
				NameBoss = "The Saw"
				CFrameBoss = CFrame.new(-683.519897, 13.8534927, 1610.87854, -0.290192783, 6.88365773e-08, 0.956968188, 6.98413629e-08, 1, -5.07531119e-08, -0.956968188, 5.21077759e-08, -0.290192783)
			elseif _G.Setting_table.Selectb == "Greybeard [Lv. 750] [Raid Boss]" then
				MsBoss = "Greybeard [Lv. 750] [Raid Boss]"
				NameBoss = "Greybeard"
				CFrameBoss = CFrame.new(-4955.72949, 80.8163834, 4305.82666, -0.433646321, -1.03394289e-08, 0.901083171, -3.0443168e-08, 1, -3.17633075e-09, -0.901083171, -2.88092288e-08, -0.433646321)
			elseif _G.Setting_table.Selectb == "The Gorilla King [Lv. 25] [Boss]" then
				MsBoss = "The Gorilla King [Lv. 25] [Boss]"
				NameBoss = "The Gorilla King"
				NameQuestBoss = "JungleQuest"
				LevelQuestBoss = 3
				CFrameQuestBoss = CFrame.new(-1604.12012, 36.8521118, 154.23732, 0.0648873374, -4.70858913e-06, -0.997892559, 1.41431883e-07, 1, -4.70933674e-06, 0.997892559, 1.64442184e-07, 0.0648873374)
				CFrameBoss = CFrame.new(-1223.52808, 6.27936459, -502.292664, 0.310949147, -5.66602516e-08, 0.950426519, -3.37275488e-08, 1, 7.06501808e-08, -0.950426519, -5.40241736e-08, 0.310949147)
			elseif _G.Setting_table.Selectb == "Bobby [Lv. 55] [Boss]" then
				MsBoss = "Bobby [Lv. 55] [Boss]"
				NameBoss = "Bobby"
				NameQuestBoss = "BuggyQuest1"
				LevelQuestBoss = 3
				CFrameQuestBoss = CFrame.new(-1139.59717, 4.75205183, 3825.16211, -0.959730506, -7.5857054e-09, 0.280922383, -4.06310328e-08, 1, -1.11807175e-07, -0.280922383, -1.18718916e-07, -0.959730506)
				CFrameBoss = CFrame.new(-1147.65173, 32.5966301, 4156.02588, 0.956680477, -1.77109952e-10, -0.29113996, 5.16530874e-10, 1, 1.08897802e-09, 0.29113996, -1.19218679e-09, 0.956680477)
			elseif _G.Setting_table.Selectb == "Yeti [Lv. 110] [Boss]" then
				MsBoss = "Yeti [Lv. 110] [Boss]"
				NameBoss = "Yeti"
				NameQuestBoss = "SnowQuest"
				LevelQuestBoss = 3
				CFrameQuestBoss = CFrame.new(1384.90247, 87.3078308, -1296.6825, 0.280209213, 2.72035177e-08, -0.959938943, -6.75690828e-08, 1, 8.6151708e-09, 0.959938943, 6.24481444e-08, 0.280209213)
				CFrameBoss = CFrame.new(1221.7356, 138.046906, -1488.84082, 0.349343032, -9.49245944e-08, 0.936994851, 6.29478194e-08, 1, 7.7838429e-08, -0.936994851, 3.17894653e-08, 0.349343032)
			elseif _G.Setting_table.Selectb == "Mob Leader [Lv. 120] [Boss]" then
				MsBoss = "Mob Leader [Lv. 120] [Boss]"
				NameBoss = "Mob Leader"
				CFrameBoss = CFrame.new(-2848.59399, 7.4272871, 5342.44043, -0.928248107, -8.7248246e-08, 0.371961564, -7.61816636e-08, 1, 4.44474857e-08, -0.371961564, 1.29216433e-08, -0.92824)
			elseif _G.Setting_table.Selectb == "Vice Admiral [Lv. 130] [Boss]" then
				MsBoss = "Vice Admiral [Lv. 130] [Boss]"
				NameBoss = "Vice Admiral"
				NameQuestBoss = "MarineQuest2"
				LevelQuestBoss = 2
				CFrameQuestBoss = CFrame.new(-5035.42285, 28.6520386, 4324.50293, -0.0611100644, -8.08395768e-08, 0.998130739, -1.57416586e-08, 1, 8.00271849e-08, -0.998130739, -1.08217701e-08, -0.0611100644)
				CFrameBoss = CFrame.new(-5078.45898, 99.6520691, 4402.1665, -0.555574954, -9.88630566e-11, 0.831466436, -6.35508286e-08, 1, -4.23449258e-08, -0.831466436, -7.63661632e-08, -0.555574954)
			elseif _G.Setting_table.Selectb == "Warden [Lv. 175] [Boss]" then
				MsBoss = "Warden [Lv. 175] [Boss]"
				NameBoss = "Warden"
				NameQuestBoss = "ImpelQuest"
				LevelQuestBoss = 1
				CFrameQuestBoss = CFrame.new(4851.35059, 5.68744135, 743.251282, -0.538484037, -6.68303741e-08, -0.842635691, 1.38001752e-08, 1, -8.81300792e-08, 0.842635691, -5.90851599e-08, -0.538484037)
				CFrameBoss = CFrame.new(5232.5625, 5.26856995, 747.506897, 0.943829298, -4.5439414e-08, 0.330433697, 3.47818627e-08, 1, 3.81658154e-08, -0.330433697, -2.45289105e-08, 0.943829298)
			elseif _G.Setting_table.Selectb == "Chief Warden [Lv. 200] [Boss]" then
				MsBoss = "Chief Warden [Lv. 200] [Boss]"
				NameBoss = "Chief Warden"
				NameQuestBoss = "ImpelQuest"
				LevelQuestBoss = 2
				CFrameQuestBoss = CFrame.new(4851.35059, 5.68744135, 743.251282, -0.538484037, -6.68303741e-08, -0.842635691, 1.38001752e-08, 1, -8.81300792e-08, 0.842635691, -5.90851599e-08, -0.538484037)
				CFrameBoss = CFrame.new(5232.5625, 5.26856995, 747.506897, 0.943829298, -4.5439414e-08, 0.330433697, 3.47818627e-08, 1, 3.81658154e-08, -0.330433697, -2.45289105e-08, 0.943829298)
			elseif _G.Setting_table.Selectb == "Swan [Lv. 225] [Boss]" then
				MsBoss = "Swan [Lv. 225] [Boss]"
				NameBoss = "Swan"
				NameQuestBoss = "ImpelQuest"
				LevelQuestBoss = 3
				CFrameQuestBoss = CFrame.new(4851.35059, 5.68744135, 743.251282, -0.538484037, -6.68303741e-08, -0.842635691, 1.38001752e-08, 1, -8.81300792e-08, 0.842635691, -5.90851599e-08, -0.538484037)
				CFrameBoss = CFrame.new(5232.5625, 5.26856995, 747.506897, 0.943829298, -4.5439414e-08, 0.330433697, 3.47818627e-08, 1, 3.81658154e-08, -0.330433697, -2.45289105e-08, 0.943829298)
			elseif _G.Setting_table.Selectb == "Magma Admiral [Lv. 350] [Boss]" then
				MsBoss = "Magma Admiral [Lv. 350] [Boss]"
				NameBoss = "Magma Admiral"
				NameQuestBoss = "MagmaQuest"
				LevelQuestBoss = 3
				CFrameQuestBoss = CFrame.new(-5317.07666, 12.2721891, 8517.41699, 0.51175487, -2.65508806e-08, -0.859131515, -3.91131572e-08, 1, -5.42026761e-08, 0.859131515, 6.13418294e-08, 0.51175487)
				CFrameBoss = CFrame.new(-5530.12646, 22.8769703, 8859.91309, 0.857838571, 2.23414389e-08, 0.513919294, 1.53689133e-08, 1, -6.91265853e-08, -0.513919294, 6.71978384e-08, 0.857838571)
			elseif _G.Setting_table.Selectb == "Fishman Lord [Lv. 425] [Boss]" then
				MsBoss = "Fishman Lord [Lv. 425] [Boss]"
				NameBoss = "Fishman Lord"
				NameQuestBoss = "FishmanQuest"
				LevelQuestBoss = 3
				CFrameQuestBoss = CFrame.new(61123.0859, 18.5066795, 1570.18018, 0.927145958, 1.0624845e-07, 0.374700129, -6.98219367e-08, 1, -1.10790765e-07, -0.374700129, 7.65569368e-08, 0.927145958)
				CFrameBoss = CFrame.new(61351.7773, 31.0306778, 1113.31409, 0.999974668, 0, -0.00714713801, 0, 1.00000012, 0, 0.00714714266, 0, 0.999974549)
			elseif _G.Setting_table.Selectb == "Wysper [Lv. 500] [Boss]" then
				MsBoss = "Wysper [Lv. 500] [Boss]"
				NameBoss = "Wysper"
				NameQuestBoss = "SkyExp1Quest"
				LevelQuestBoss = 3
				CFrameQuestBoss = CFrame.new(-7862.94629, 5545.52832, -379.833954, 0.462944925, 1.45838088e-08, -0.886386991, 1.0534996e-08, 1, 2.19553424e-08, 0.886386991, -1.95022007e-08, 0.462944925)
				CFrameBoss = CFrame.new(-7925.48389, 5550.76074, -636.178345, 0.716468513, -1.22915289e-09, 0.697619379, 3.37381434e-09, 1, -1.70304748e-09, -0.697619379, 3.57381835e-09, 0.716468513)
			elseif _G.Setting_table.Selectb == "Thunder God [Lv. 575] [Boss]" then
				MsBoss = "Thunder God [Lv. 575] [Boss]"
				NameBoss = "Thunder God"
				NameQuestBoss = "SkyExp2Quest"
				LevelQuestBoss = 3
				CFrameQuestBoss = CFrame.new(-7902.78613, 5635.99902, -1411.98706, -0.0361216255, -1.16895912e-07, 0.999347389, 1.44533963e-09, 1, 1.17024491e-07, -0.999347389, 5.6715117e-09, -0.0361216255)
				CFrameBoss = CFrame.new(-7917.53613, 5616.61377, -2277.78564, 0.965189934, 4.80563429e-08, -0.261550069, -6.73089886e-08, 1, -6.46515304e-08, 0.261550069, 8.00056768e-08, 0.965189934)
			elseif _G.Setting_table.Selectb == "Cyborg [Lv. 675] [Boss]" then
				MsBoss = "Cyborg [Lv. 675] [Boss]"
				NameBoss = "Cyborg"
				NameQuestBoss = "FountainQuest"
				LevelQuestBoss = 3
				CFrameQuestBoss = CFrame.new(5253.54834, 38.5361786, 4050.45166, -0.0112687312, -9.93677887e-08, -0.999936521, 2.55291371e-10, 1, -9.93769547e-08, 0.999936521, -1.37512213e-09, -0.0112687312)
				CFrameBoss = CFrame.new(6041.82813, 52.7112198, 3907.45142, -0.563162148, 1.73805248e-09, -0.826346457, -5.94632716e-08, 1, 4.26280238e-08, 0.826346457, 7.31437524e-08, -0.563162148)
				-- New World
			elseif _G.Setting_table.Selectb == "Diamond [Lv. 750] [Boss]" then
				MsBoss = "Diamond [Lv. 750] [Boss]"
				NameBoss = "Diamond"
				NameQuestBoss = "Area1Quest"
				LevelQuestBoss = 3
				CFrameQuestBoss = CFrame.new(-424.080078, 73.0055847, 1836.91589, 0.253544956, -1.42165932e-08, 0.967323601, -6.00147771e-08, 1, 3.04272909e-08, -0.967323601, -6.5768397e-08, 0.253544956)
				CFrameBoss = CFrame.new(-1736.26587, 198.627731, -236.412857, -0.997808516, 0, -0.0661673471, 0, 1, 0, 0.0661673471, 0, -0.997808516)
			elseif _G.Setting_table.Selectb == "Jeremy [Lv. 850] [Boss]" then
				MsBoss = "Jeremy [Lv. 850] [Boss]"
				NameBoss = "Jeremy"
				NameQuestBoss = "Area2Quest"
				LevelQuestBoss = 3
				CFrameQuestBoss = CFrame.new(632.698608, 73.1055908, 918.666321, -0.0319722369, 8.96074881e-10, -0.999488771, 1.36326533e-10, 1, 8.92172336e-10, 0.999488771, -1.07732087e-10, -0.0319722369)
				CFrameBoss = CFrame.new(2203.76953, 448.966034, 752.731079, -0.0217453763, 0, -0.999763548, 0, 1, 0, 0.999763548, 0, -0.0217453763)
			elseif _G.Setting_table.Selectb == "Fajita [Lv. 925] [Boss]" then
				MsBoss = "Fajita [Lv. 925] [Boss]"
				NameBoss = "Fajita"
				NameQuestBoss = "MarineQuest3"
				LevelQuestBoss = 3
				CFrameQuestBoss = CFrame.new(-2442.65015, 73.0511475, -3219.11523, -0.873540044, 4.2329841e-08, -0.486752301, 5.64383384e-08, 1, -1.43220786e-08, 0.486752301, -3.99823996e-08, -0.873540044)
				CFrameBoss = CFrame.new(-2297.40332, 115.449463, -3946.53833, 0.961227536, -1.46645796e-09, -0.275756449, -2.3212845e-09, 1, -1.34094433e-08, 0.275756449, 1.35296352e-08, 0.961227536)
			elseif _G.Setting_table.Selectb == "Don Swan [Lv. 1000] [Boss]" then
				MsBoss = "Don Swan [Lv. 1000] [Boss]"
				NameBoss = "Don Swan"
				CFrameBoss = CFrame.new(2288.802, 15.1870775, 863.034607, 0.99974072, -8.41247214e-08, -0.0227668174, 8.4774733e-08, 1, 2.75850098e-08, 0.0227668174, -2.95079072e-08, 0.99974072)
			elseif _G.Setting_table.Selectb == "Smoke Admiral [Lv. 1150] [Boss]" then
				MsBoss = "Smoke Admiral [Lv. 1150] [Boss]"
				NameBoss = "Smoke Admiral"
				NameQuestBoss = "IceSideQuest"
				LevelQuestBoss = 3
				CFrameQuestBoss = CFrame.new(-6059.96191, 15.9868021, -4904.7373, -0.444992423, -3.0874483e-09, 0.895534337, -3.64098796e-08, 1, -1.4644522e-08, -0.895534337, -3.91229982e-08, -0.444992423)
				CFrameBoss = CFrame.new(-5115.72754, 23.7664986, -5338.2207, 0.251453817, 1.48345061e-08, -0.967869282, 4.02796978e-08, 1, 2.57916977e-08, 0.967869282, -4.54708946e-08, 0.251453817)
			elseif _G.Setting_table.Selectb == "Cursed Captain [Lv. 1325] [Raid Boss]" then
				MsBoss = "Cursed Captain [Lv. 1325] [Raid Boss]"
				NameBoss = "Cursed Captain"
				CFrameBoss = CFrame.new(916.928589, 181.092773, 33422, -0.999505103, 9.26310495e-09, 0.0314563364, 8.42916226e-09, 1, -2.6643713e-08, -0.0314563364, -2.63653774e-08, -0.999505103)
			elseif _G.Setting_table.Selectb == "Darkbeard [Lv. 1000] [Raid Boss]" then
				MsBoss = "Darkbeard [Lv. 1000] [Raid Boss]"
				NameBoss = "Darkbeard"
				CFrameBoss = CFrame.new(3876.00366, 24.6882591, -3820.21777, -0.976951957, 4.97356325e-08, 0.213458836, 4.57335361e-08, 1, -2.36868622e-08, -0.213458836, -1.33787044e-08, -0.976951957)
			elseif _G.Setting_table.Selectb == "Order [Lv. 1250] [Raid Boss]" then
				MsBoss = "Order [Lv. 1250] [Raid Boss]"
				NameBoss = "Order"
				CFrameBoss = CFrame.new(-6221.15039, 16.2351036, -5045.23584, -0.380726993, 7.41463495e-08, 0.924687505, 5.85604774e-08, 1, -5.60738549e-08, -0.924687505, 3.28013137e-08, -0.380726993)
			elseif _G.Setting_table.Selectb == "Awakened Ice Admiral [Lv. 1400] [Boss]" then
				MsBoss = "Awakened Ice Admiral [Lv. 1400] [Boss]"
				NameBoss = "Awakened Ice Admiral"
				NameQuestBoss = "FrostQuest"
				LevelQuestBoss = 3
				CFrameQuestBoss = CFrame.new(5669.33203, 28.2118053, -6481.55908, 0.921275556, -1.25320829e-08, 0.388910472, 4.72230788e-08, 1, -7.96414241e-08, -0.388910472, 9.17372489e-08, 0.921275556)
				CFrameBoss = CFrame.new(6407.33936, 340.223785, -6892.521, 0.49051559, -5.25310213e-08, -0.871432424, -2.76146022e-08, 1, -7.58250565e-08, 0.871432424, 6.12576301e-08, 0.49051559)
			elseif _G.Setting_table.Selectb == "Tide Keeper [Lv. 1475] [Boss]" then
				MsBoss = "Tide Keeper [Lv. 1475] [Boss]"
				NameBoss = "Tide Keeper"
				NameQuestBoss = "ForgottenQuest"             
				LevelQuestBoss = 3
				CFrameQuestBoss = CFrame.new(-3053.89648, 236.881363, -10148.2324, -0.985987961, -3.58504737e-09, 0.16681771, -3.07832915e-09, 1, 3.29612559e-09, -0.16681771, 2.73641976e-09, -0.985987961)
				CFrameBoss = CFrame.new(-3570.18652, 123.328949, -11555.9072, 0.465199202, -1.3857326e-08, 0.885206044, 4.0332897e-09, 1, 1.35347511e-08, -0.885206044, -2.72606271e-09, 0.465199202)
				-- Thire World
			elseif _G.Setting_table.Selectb == "Stone [Lv. 1550] [Boss]" then
				MsBoss = "Stone [Lv. 1550] [Boss]"
				NameBoss = "Stone"
				NameQuestBoss = "PiratePortQuest"             
				LevelQuestBoss = 3
				CFrameQuestBoss = CFrame.new(-290, 44, 5577)
				CFrameBoss = CFrame.new(-1085, 40, 6779)
			elseif _G.Setting_table.Selectb == "Island Empress [Lv. 1675] [Boss]" then
				MsBoss = "Island Empress [Lv. 1675] [Boss]"
				NameBoss = "Island Empress"
				NameQuestBoss = "AmazonQuest2"             
				LevelQuestBoss = 3
				CFrameQuestBoss = CFrame.new(5443, 602, 752)
				CFrameBoss = CFrame.new(5659, 602, 244)
			elseif _G.Setting_table.Selectb == "Kilo Admiral [Lv. 1750] [Boss]" then
				MsBoss = "Kilo Admiral [Lv. 1750] [Boss]"
				NameBoss = "Kilo Admiral"
				NameQuestBoss = "MarineTreeIsland"             
				LevelQuestBoss = 3
				CFrameQuestBoss = CFrame.new(2178, 29, -6737)
				CFrameBoss =CFrame.new(2846, 433, -7100)
			elseif _G.Setting_table.Selectb == "Captain Elephant [Lv. 1875] [Boss]" then
				MsBoss = "Captain Elephant [Lv. 1875] [Boss]"
				NameBoss = "Captain Elephant"
				NameQuestBoss = "DeepForestIsland"             
				LevelQuestBoss = 3
				CFrameQuestBoss = CFrame.new(-13232, 333, -7631)
				CFrameBoss = CFrame.new(-13221, 325, -8405)
			elseif _G.Setting_table.Selectb == "Beautiful Pirate [Lv. 1950] [Boss]" then
				MsBoss = "Beautiful Pirate [Lv. 1950] [Boss]"
				NameBoss = "Beautiful Pirate"
				NameQuestBoss = "DeepForestIsland2"             
				LevelQuestBoss = 3
				CFrameQuestBoss = CFrame.new(-12686, 391, -9902)
				CFrameBoss = CFrame.new(5182, 23, -20)
			elseif _G.Setting_table.Selectb == "Cake Queen [Lv. 2175] [Boss]" then
				MsBoss = "Cake Queen [Lv. 2175] [Boss]"
				NameBoss = "Cake Queen"
				NameQuestBoss = "IceCreamIslandQuest"             
				LevelQuestBoss = 3
				CFrameQuestBoss = CFrame.new(-716, 382, -11010)
				CFrameBoss = CFrame.new(-821, 66, -10965)
			elseif _G.Setting_table.Selectb == "rip_indra True Form [Lv. 5000] [Raid Boss]" then
				MsBoss = "rip_indra True Form [Lv. 5000] [Raid Boss]"
				NameBoss = "rip_indra True Form"
				CFrameBoss = CFrame.new(-5359, 424, -2735)
			elseif _G.Setting_table.Selectb == "Longma [Lv. 2000] [Boss]" then
				MsBoss = "Longma [Lv. 2000] [Boss]"
				NameBoss = "Longma"
				CFrameBoss = CFrame.new(-10248.3936, 353.79129, -9306.34473)
			elseif _G.Setting_table.Selectb == "Soul Reaper [Lv. 2100] [Raid Boss]" then
				MsBoss = "Soul Reaper [Lv. 2100] [Raid Boss]"
				NameBoss = "Soul Reaper"
				CFrameBoss = CFrame.new(-9515.62109, 315.925537, 6691.12012)
			end
		end
		
		_G.GetBoss = false
		function GetBossName()
			for i,v in pairs(game.ReplicatedStorage:GetChildren()) do
				if not _G.GetBoss then
					-- World 1
					if v.Name == "The Gorilla King [Lv. 25] [Boss]" and game.Players.localPlayer.Data.Level.Value >= 20  then
						_G.Setting_table.Selectb = "The Gorilla King [Lv. 25] [Boss]"
					elseif v.Name == "Bobby [Lv. 55] [Boss]" and game.Players.localPlayer.Data.Level.Value >= 55  then
						_G.Setting_table.Selectb = "Bobby [Lv. 55] [Boss]" 
					elseif v.Name == "Yeti [Lv. 110] [Boss]" and game.Players.localPlayer.Data.Level.Value >= 105  then
						_G.Setting_table.Selectb = "Yeti [Lv. 110] [Boss]"
					elseif v.Name == "Mob Leader [Lv. 120] [Boss]"  and game.Players.localPlayer.Data.Level.Value >= 120 then
						_G.Setting_table.Selectb = "Mob Leader [Lv. 120] [Boss]"
					elseif v.Name == "Vice Admiral [Lv. 130] [Boss]"  and game.Players.localPlayer.Data.Level.Value >= 130 then
						_G.Setting_table.Selectb = "Vice Admiral [Lv. 130] [Boss]"
					elseif v.Name == "Warden [Lv. 175] [Boss]" and game.Players.localPlayer.Data.Level.Value >= 175 then
						_G.Setting_table.Selectb = "Warden [Lv. 175] [Boss]"
					elseif v.Name == "Saber Expert [Lv. 200] [Boss]" and game.Workspace.Map.Jungle.Final.Part.Transparency == 1 then
						_G.Setting_table.Selectb = "Saber Expert [Lv. 200] [Boss]"
					elseif v.Name == "Chief Warden [Lv. 200] [Boss]"  and game.Players.localPlayer.Data.Level.Value >= 200 then
						_G.Setting_table.Selectb = "Chief Warden [Lv. 200] [Boss]"
					elseif v.Name == "Swan [Lv. 225] [Boss]"  and game.Players.localPlayer.Data.Level.Value >= 250 then
						_G.Setting_table.Selectb = "Swan [Lv. 225] [Boss]"
					elseif v.Name == "Magma Admiral [Lv. 350] [Boss]" and game.Players.localPlayer.Data.Level.Value >= 350  then
						_G.Setting_table.Selectb = "Magma Admiral [Lv. 350] [Boss]"
					elseif v.Name == "Fishman Lord [Lv. 425] [Boss]" and game.Players.localPlayer.Data.Level.Value >= 425  then
						_G.Setting_table.Selectb = "Fishman Lord [Lv. 425] [Boss]"
					elseif v.Name == "Wysper [Lv. 500] [Boss]" and game.Players.localPlayer.Data.Level.Value >= 500 then
						_G.Setting_table.Selectb = "Wysper [Lv. 500] [Boss]"
					elseif v.Name == "Thunder God [Lv. 575] [Boss]"  and game.Players.localPlayer.Data.Level.Value >= 575 then
						_G.Setting_table.Selectb = "Thunder God [Lv. 575] [Boss]"
					elseif v.Name == "Cyborg [Lv. 675] [Boss]" and game.Players.localPlayer.Data.Level.Value >= 675 then
						_G.Setting_table.Selectb = "Cyborg [Lv. 675] [Boss]"
						-- World2
					elseif v.Name == "Diamond [Lv. 750] [Boss]" and game.Players.localPlayer.Data.Level.Value >= 750 then
						_G.Setting_table.Selectb = "Diamond [Lv. 750] [Boss]"
					elseif v.Name == "Jeremy [Lv. 850] [Boss]" and game.Players.localPlayer.Data.Level.Value >= 850 then
						_G.Setting_table.Selectb = "Jeremy [Lv. 850] [Boss]"
					elseif v.Name == "Fajita [Lv. 925] [Boss]" and game.Players.localPlayer.Data.Level.Value >= 925  then
						_G.Setting_table.Selectb = "Fajita [Lv. 925] [Boss]"
					elseif v.Name == "Don Swan [Lv. 1000] [Boss]" and game.Players.localPlayer.Data.Level.Value >= 1000 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TalkTrevor","1") == 0 then
						_G.Setting_table.Selectb = "Don Swan [Lv. 1000] [Boss]" 
					elseif v.Name == "Smoke Admiral [Lv. 1150] [Boss]" and game.Players.localPlayer.Data.Level.Value >= 1150 then
						_G.Setting_table.Selectb = "Smoke Admiral [Lv. 1150] [Boss]"
					elseif v.Name == "Cursed Captain [Lv. 1325] [Raid Boss]" and game.Players.localPlayer.Data.Level.Value >= 1325 then
						_G.Setting_table.Selectb = "Cursed Captain [Lv. 1325] [Raid Boss]"
					elseif v.Name == "Awakened Ice Admiral [Lv. 1400] [Boss]" and game.Players.localPlayer.Data.Level.Value >= 1400  then
						_G.Setting_table.Selectb = "Awakened Ice Admiral [Lv. 1400] [Boss]"
					elseif v.Name == "Tide Keeper [Lv. 1475] [Boss]" and game.Players.localPlayer.Data.Level.Value >= 1475  then
						_G.Setting_table.Selectb = "Tide Keeper [Lv. 1475] [Boss]"
						-- World3
					elseif v.Name == "Stone [Lv. 1550] [Boss]" and game.Players.localPlayer.Data.Level.Value >= 1550 then
						_G.Setting_table.Selectb = "Stone [Lv. 1550] [Boss]"
					elseif v.Name == "Island Empress [Lv. 1675] [Boss]" and game.Players.localPlayer.Data.Level.Value >= 1675 then
						_G.Setting_table.Selectb = "Island Empress [Lv. 1675] [Boss]"
					elseif v.Name == "Kilo Admiral [Lv. 1750] [Boss]" and game.Players.localPlayer.Data.Level.Value >= 1750 then
						_G.Setting_table.Selectb = "Kilo Admiral [Lv. 1750] [Boss]"
					elseif v.Name == "Captain Elephant [Lv. 1875] [Boss]" and game.Players.localPlayer.Data.Level.Value >= 1875 then
						_G.Setting_table.Selectb = "Captain Elephant [Lv. 1875] [Boss]"
					elseif v.Name == "Beautiful Pirate [Lv. 1950] [Boss]" and game.Players.localPlayer.Data.Level.Value >= 1950 then
						_G.Setting_table.Selectb = "Beautiful Pirate [Lv. 1950] [Boss]"
					elseif v.Name == "Cake Queen [Lv. 2175] [Boss]" and game.Players.localPlayer.Data.Level.Value >= 2175 then
						_G.Setting_table.Selectb = "Cake Queen [Lv. 2175] [Boss]"
					end 
				end 
			end
		end
		

		function CheckLevel()
			local Lv = game:GetService("Players").LocalPlayer.Data.Level.Value
			if Lv >= 2400 and Lv <= 2450 or SelectMonster == "Candy Pirate [Lv. 2400]" then 
				Ms = "Candy Pirate [Lv. 2400]"
				NameQuest = "CandyQuest1"
				QuestLv = 1
				NameMon = "Candy Pirate"
				CFrameQ = CFrame.new(-1147.95142, 16.1072559, -14445.3105, -0.0240679532, 4.06167295e-08, 0.999710321, 7.46657349e-08, 1, -3.8830926e-08, -0.999710321, 7.3709522e-08, -0.0240679532)
				CFrameMon = CFrame.new(-1423.03235, 113.437248, -14594.1602, 0.0492029786, 2.03225614e-08, -0.998788774, -2.60848516e-08, 1, 1.90621972e-08, 0.998788774, 2.51153409e-08, 0.0492029786)
			elseif Lv >= 2400 or SelectMonster == "Snow Demon [Lv. 2425]" then 
				Ms = "Snow Demon [Lv. 2425]"
				NameQuest = "CandyQuest1"
				QuestLv = 2
				NameMon = "Snow Demon"
				CFrameQ = CFrame.new(-1147.95142, 16.1072559, -14445.3105, -0.0240679532, 4.06167295e-08, 0.999710321, 7.46657349e-08, 1, -3.8830926e-08, -0.999710321, 7.3709522e-08, -0.0240679532)
				CFrameMon = CFrame.new(-883.241455, 40.9553833, -14538.4951, -0.28144443, -1.18274158e-07, 0.959577501, 1.83865634e-08, 1, 1.28649276e-07, -0.959577501, 5.38509575e-08, -0.28144443)
				SelectMonster = "Candy Pirate [Lv. 2400]"
			end
		end

		function CheckLevel1()
			local Lv = game:GetService("Players").LocalPlayer.Data.Level.Value
			if _G.Upto then
				Lv = Lv + 100
			end
			if Old_World and not Auto_Raid then
				if Lv == 1 or Lv <= 9 or SelectMonster == "" then -- Bandit
					local SW = "Bandit [Lv. 5]"
				elseif Lv == 10 or Lv <= 14 or SelectMonster == "Monkey [Lv. 14]" then -- Monkey
					
					local SW = "Monkey [Lv. 14]"
					
				elseif Lv == 15 or Lv <= 19 or SelectMonster == "Gorilla [Lv. 20]" then -- Gorilla
					local SW = "Gorilla [Lv. 20]"
				elseif Lv == 300 or Lv <= 324 or SelectMonster == "Military Soldier [Lv. 300]" then -- Military Soldier
					
					local SW = "Military Soldier [Lv. 300]"
					
					
				elseif Lv == 325 or Lv <= 374 or SelectMonster == "Military Spy [Lv. 325]" then -- Military Spy
					
					local SW = "Military Spy [Lv. 325]"
					
				elseif Lv == 375 or Lv <= 399 or SelectMonster == "Fishman Warrior [Lv. 375]" then -- Fishman Warrior
					
					local SW = "Fishman Warrior [Lv. 375]"
					
				elseif Lv == 400 or Lv <= 449 or SelectMonster == "Fishman Commando [Lv. 400]" then -- Fishman Commando
					
					local SW = "Fishman Commando [Lv. 400]"
					
				elseif Lv == 450 or Lv <= 474 or SelectMonster == "God's Guard [Lv. 450]" then 
					local SW = "God's Guard [Lv. 450]"
				
		
				elseif Lv == 475 or Lv <= 524 or SelectMonster == "Shanda [Lv. 475]" then
					local SW = "Shanda [Lv. 475]"
					
				elseif Lv == 525 or Lv <= 549 or SelectMonster == "Royal Squad [Lv. 525]" then -- Royal Squad
					
					local SW = "Royal Squad [Lv. 525]"
					
				elseif Lv == 550 or Lv <= 624 or SelectMonster == "Royal Soldier [Lv. 550]" then -- Royal Soldier
					
					local SW = "Royal Soldier [Lv. 550]"
					
				elseif Lv == 625 or Lv <= 649 or SelectMonster == "Galley Pirate [Lv. 625]" then -- Galley Pirate
					
					local SW = "Galley Pirate [Lv. 625]"
					
				elseif Lv >= 650 or SelectMonster == "Galley Captain [Lv. 650]" then -- Galley Captain
					
					local SW = "Galley Captain [Lv. 650]"
				end
			end
			if New_World and not Auto_Raid then
				
				if Lv == 700 or Lv <= 724 or SelectMonster == "Raider [Lv. 700]" then -- Raider [Lv. 700]
					local SW = "Raider [Lv. 700]"
				
				elseif Lv == 725 or Lv <= 774 or SelectMonster == "Mercenary [Lv. 725]" then -- Mercenary [Lv. 725]
					local SW = "Mercenary [Lv. 725]"
					
					
				elseif Lv == 775 or Lv <= 799 or SelectMonster == "Swan Pirate [Lv. 775]" then -- Swan Pirate [Lv. 775]
					local SW = "Swan Pirate [Lv. 775]"
					
				elseif Lv == 800 or Lv <= 874 or SelectMonster == "Factory Staff [Lv. 800]" then -- Factory Staff [Lv. 800]
					local SW = "Factory Staff [Lv. 800]"
		
				elseif Lv == 875 or Lv <= 899 or SelectMonster == "Marine Lieutenant [Lv. 875]" then -- Marine Lieutenant [Lv. 875]
					local SW = "Marine Lieutenant [Lv. 875]"
					
				elseif Lv == 900 or Lv <= 949 or SelectMonster == "Marine Captain [Lv. 900]" then -- Marine Captain [Lv. 900]
					local SW = "Marine Captain [Lv. 900]"
					
					SelectMonster = "Marine Lieutenant [Lv. 875]"
				elseif Lv == 950 or Lv <= 974 or SelectMonster == "Zombie [Lv. 950]" then -- Zombie [Lv. 950]
					local SW = "Zombie [Lv. 950]"
					
				elseif Lv == 975 or Lv <= 999 or SelectMonster == "Vampire [Lv. 975]" then -- Vampire [Lv. 975]
					local SW = "Vampire [Lv. 975]"
					
				elseif Lv == 1000 or Lv <= 1049 or SelectMonster == "Snow Trooper [Lv. 1000]" then -- Snow Trooper [Lv. 1000] **
					local SW = "Snow Trooper [Lv. 1000]"
					
				elseif Lv == 1050 or Lv <= 1099 or SelectMonster == "Winter Warrior [Lv. 1050]" then -- Winter Warrior [Lv. 1050]
					local SW = "Winter Warrior [Lv. 1050]"
		
				elseif Lv == 1100 or Lv <= 1124 or SelectMonster == "Lab Subordinate [Lv. 1100]" then -- Lab Subordinate [Lv. 1100]
					local SW = "Lab Subordinate [Lv. 1100]"
					
				elseif Lv == 1125 or Lv <= 1174 or SelectMonster == "Horned Warrior [Lv. 1125]" then -- Horned Warrior [Lv. 1125]
					local SW = "Horned Warrior [Lv. 1125]"
				elseif Lv == 1175 or Lv <= 1199 or SelectMonster == "Magma Ninja [Lv. 1175]" then -- Magma Ninja [Lv. 1175]
					local SW = "Magma Ninja [Lv. 1175]"
					
				elseif Lv == 1200 or Lv <= 1249 or SelectMonster == "Lava Pirate [Lv. 1200]" then 
					local SW = "Lava Pirate [Lv. 1200]"
					
				elseif Lv == 1250 or Lv <= 1274 or SelectMonster == "Ship Deckhand [Lv. 1250]" then 
					local SW = "Ship Deckhand [Lv. 1250]"
					
				elseif Lv == 1275 or Lv <= 1299 or SelectMonster == "Ship Engineer [Lv. 1275]" then 
					local SW = "Ship Engineer [Lv. 1275]"
					
				elseif Lv == 1300 or Lv <= 1324 or SelectMonster == "Ship Steward [Lv. 1300]" then 
					local SW = "Ship Steward [Lv. 1300]"
				
				elseif Lv == 1325 or Lv <= 1349 or SelectMonster == "Ship Officer [Lv. 1325]" then 
					local SW = "Ship Officer [Lv. 1325]"
					
				elseif Lv == 1350 or Lv <= 1374 or SelectMonster == "Arctic Warrior [Lv. 1350]" then 
					local SW = "Arctic Warrior [Lv. 1350]"
					
				elseif Lv == 1375 or Lv <= 1424 or SelectMonster == "Snow Lurker [Lv. 1375]" then -- Snow Lurker [Lv. 1375]
					local SW = "Snow Lurker [Lv. 1375]"
				
				elseif Lv == 1425 or Lv <= 1449 or SelectMonster == "Sea Soldier [Lv. 1425]" then -- Sea Soldier [Lv. 1425]
					local SW = "Sea Soldier [Lv. 1425]"
					
				elseif Lv >= 1450 or SelectMonster == "Water Fighter [Lv. 1450]" then -- Water Fighter [Lv. 1450]
					local SW = "Water Fighter [Lv. 1450]"
				
				end
			end
			if Three_World and not Auto_Raid then
				if Lv >= 1500 and Lv <= 1524 or SelectMonster == "Pirate Millionaire [Lv. 1500]" then -- Pirate Millionaire [Lv. 1500]
					local SW = "Pirate Millionaire [Lv. 1500]"
					
				elseif Lv >= 1525 and Lv <= 1574 or SelectMonster == "Pistol Billionaire [Lv. 1525]" then -- Pistol Billionaire [Lv. 1525]
					local SW = "Pistol Billionaire [Lv. 1525]"
				
				elseif Lv >= 1575 and Lv <= 1599 or SelectMonster == "Dragon Crew Warrior [Lv. 1575]" then -- Dragon Crew Warrior [Lv. 1575]
					local SW = "Dragon Crew Warrior [Lv. 1575]"
					
				elseif Lv >= 1600 and Lv <= 1624 or SelectMonster == "Dragon Crew Archer [Lv. 1600]" then -- Dragon Crew Archer [Lv. 1600]
					local SW = "Dragon Crew Archer [Lv. 1600]"
		
				elseif Lv >= 1625 and Lv <= 1649 or SelectMonster == "Female Islander [Lv. 1625]" then -- Female Islander [Lv. 1625]
					local SW = "Female Islander [Lv. 1625]"
					
				elseif Lv >= 1650 and Lv <= 1699 or SelectMonster == "Giant Islander [Lv. 1650]" then -- Giant Islander [Lv. 1650]
					local SW = "Giant Islander [Lv. 1650]"
					
				
				elseif Lv >= 1700 and Lv <= 1724 or SelectMonster == "Marine Commodore [Lv. 1700]" then -- Marine Commodore [Lv. 1700]
					local SW = "Marine Commodore [Lv. 1700]"
				
				elseif Lv >= 1725 and Lv <= 1774 or SelectMonster == "Marine Rear Admiral [Lv. 1725]" then -- Marine Rear Admiral [Lv. 1725]
					local SW = "Marine Rear Admiral [Lv. 1725]"
					
				elseif Lv >= 1775 and Lv <= 1799 or SelectMonster == "Fishman Raider [Lv. 1775]" then -- Fishman Raider [Lv. 1775]
					local SW = "Fishman Raider [Lv. 1775]"
				
				elseif Lv >= 1800 and Lv <= 1824 or SelectMonster == "Fishman Captain [Lv. 1800]" then -- Fishman Captain [Lv. 1800]
					local SW = "Fishman Captain [Lv. 1800]"
				
				elseif Lv >= 1825 and Lv <= 1849 or SelectMonster == "Forest Pirate [Lv. 1825]" then -- Forest Pirate [Lv. 1825]
					local SW = "Forest Pirate [Lv. 1825]"
		
				
				elseif Lv >= 1850 and Lv <= 1899 or SelectMonster == "Mythological Pirate [Lv. 1850]" then -- Mythological Pirate [Lv. 1850]
					local SW = "Mythological Pirate [Lv. 1850]"
					NameQuest = "DeepForestIsland"
				
				elseif Lv >= 1900 and Lv <= 1924 or SelectMonster == "Jungle Pirate [Lv. 1900]" then -- Jungle Pirate [Lv. 1900]
					local SW = "Jungle Pirate [Lv. 1900]"
					
				elseif Lv >= 1925 and Lv <= 1974 or SelectMonster == "Musketeer Pirate [Lv. 1925]" then -- Musketeer Pirate [Lv. 1925]
					local SW = "Musketeer Pirate [Lv. 1925]"
				
				elseif Lv >= 1975 and Lv <= 1999 or SelectMonster == "Reborn Skeleton [Lv. 1975]" then
					local SW = "Reborn Skeleton [Lv. 1975]"
					
				elseif Lv >= 2000 and Lv <= 2024 or SelectMonster == "Living Zombie [Lv. 2000]" then
					local SW = "Living Zombie [Lv. 2000]"
					
				elseif Lv >= 2025 and Lv <= 2049  or  SelectMonster == "Demonic Soul [Lv. 2025]" then
					local SW = "Demonic Soul [Lv. 2025]"
					
				elseif Lv >= 2050 and Lv <= 2074 or SelectMonster == "Posessed Mummy [Lv. 2050]" then
					local SW = "Posessed Mummy [Lv. 2050]"
					
				elseif Lv >= 2075 and Lv <= 2099 or SelectMonster == "Peanut Scout [Lv. 2075]" then
					local SW = "Peanut Scout [Lv. 2075]"
				
				elseif Lv >= 2100 and Lv <= 2124 or SelectMonster == "Peanut President [Lv. 2100]" then
					local SW = "Peanut President [Lv. 2100]"
					
				elseif Lv >= 2125 and Lv <= 2149 or SelectMonster == "Ice Cream Chef [Lv. 2125]" then
					local SW = "Ice Cream Chef [Lv. 2125]"
					
				elseif Lv >= 2150 and Lv <= 2199 or SelectMonster == "Ice Cream Commander [Lv. 2150]" then 
					local SW = "Ice Cream Commander [Lv. 2150]"
					
				elseif Lv >= 2200 and Lv <= 2224 or SelectMonster == "Cookie Crafter [Lv. 2200]" then 
					local SW = "Cookie Crafter [Lv. 2200]"
					
				elseif Lv >= 2225 and Lv <= 2249 or SelectMonster == "Cake Guard [Lv. 2225]" then 
					local SW = "Cake Guard [Lv. 2225]"
					
				elseif Lv >= 2250 and Lv <= 2274 or SelectMonster == "Baking Staff [Lv. 2250]" then 
					local SW = "Baking Staff [Lv. 2250]"
					
				elseif Lv >= 2275 and Lv <= 2299 or SelectMonster == "Head Baker [Lv. 2275]" then 
					local SW = "Head Baker [Lv. 2275]"
					
				elseif Lv >= 2300 and Lv <= 2324 or SelectMonster == "Cocoa Warrior [Lv. 2300]" then 
					local SW = "Cocoa Warrior [Lv. 2300]"
					
				elseif Lv >= 2325 and Lv <= 2349 or SelectMonster == "Chocolate Bar Battler [Lv. 2325]" then 
					local SW = "Chocolate Bar Battler [Lv. 2325]"
					
				elseif Lv >= 2350 and Lv <= 2374 or SelectMonster == "Sweet Thief [Lv. 2350]" then 
					local SW = "Sweet Thief [Lv. 2350]"
					
				elseif Lv >= 2375 and Lv <= 2399 or SelectMonster == "Candy Rebel [Lv. 2375]" then 
					local SW = "Candy Rebel [Lv. 2375]"
					
				elseif Lv >= 2400 and Lv <= 2424 or SelectMonster == "Candy Pirate [Lv. 2400]" then 
					local SW = "Candy Pirate [Lv. 2400]"
					
				elseif Lv >= 2425  then 
					local SW = "Snow Demon [Lv. 2425]"
				
				end
			end
		end

		function CheckLevel2()
			local Lvl = game:GetService("Players").LocalPlayer.Data.Level.Value
			if Lvl >= 1 and Lvl <= 9 then
				if tostring(game.Players.LocalPlayer.Team) == "Marines" then
					namemon = "Trainee [Lv. 5]"
					namequest = "MarineQuest"
					questlv = 1
					npcpos = CFrame.new(-2709.67944, 24.5206585, 2104.24585, -0.744724929, -3.97967455e-08, -0.667371571, 4.32403588e-08, 1, -1.07884304e-07, 0.667371571, -1.09201515e-07, -0.744724929)
				elseif tostring(game.Players.LocalPlayer.Team) == "Pirates" then
					namemon = "Bandit [Lv. 5]"
					namequest = "BanditQuest1"
					questlv = 1
					npcpos = CFrame.new(1059.99731, 16.9222069, 1549.28162, -0.95466274, 7.29721794e-09, 0.297689587, 1.05190106e-08, 1, 9.22064114e-09, -0.297689587, 1.19340022e-08, -0.95466274)
				end
				return {["QuestLv"] = questlv, ["CFrameQuest"] = npcpos, ["NameMon"] = namemon, ["NameQuest"] = namequest}
			end
			local GuideModule = require(game:GetService("ReplicatedStorage").GuideModule)
			local Quests = require(game:GetService("ReplicatedStorage").Quests)
			for i,v in pairs(GuideModule["Data"]["NPCList"]) do
				for i1,v1 in pairs(v["Levels"]) do
					if Lvl >= v1 then
						if not levelreq then
							levelreq = 0
						end
						if v1 > levelreq then
							npcpos = i["CFrame"]
							questlv = i1
							levelreq = v1
						end
						if #v["Levels"] == 3 and questlv == 3 then
							npcpos = i["CFrame"]
							questlv = 2
							levelreq = v["Levels"][2]
						end
					end
				end
			end
			for i,v in pairs(Quests) do
				for i1,v1 in pairs(v) do
					if v1["LevelReq"] == levelreq and i ~= "CitizenQuest" then
						namequest = i
						for i2,v2 in pairs(v1["Task"]) do
							namemon = i2
						end
					end
				end
			end
			if namequest == "MarineQuest2" then
				namequest = "MarineQuest2"
				questlv = 1
				namemon = "Chief Petty Officer [Lv. 120]"
				levelreq = 120
			elseif namequest == "ImpelQuest" then
				namequest = "PrisonerQuest"
				questlv = 2
				namemon = "Dangerous Prisoner"
				levelreq = 210
				npcpos = CFrame.new(5310.60547, 0.350014925, 474.946594, 0.0175017118, 0, 0.999846935, 0, 1, 0, -0.999846935, 0, 0.0175017118)
			elseif namequest == "SkyExp1Quest" then
				if questlv == 1 then
					npcpos = CFrame.new(-4721.88867, 843.874695, -1949.96643, 0.996191859, -0, -0.0871884301, 0, 1, -0, 0.0871884301, 0, 0.996191859)
				elseif questlv == 2 then
					npcpos = CFrame.new(-7859.09814, 5544.19043, -381.476196, -0.422592998, 0, 0.906319618, 0, 1, 0, -0.906319618, 0, -0.422592998)
				end
			elseif namequest == "Area2Quest" and questlv == 2 then
				namequest = "Area2Quest"
				questlv = 1
				namemon = "Swan Pirate [Lv. 775]"
				levelreq = 775
			end
			namemon = namemon:sub(1,#namemon)
			if not namemon:find("Lv") then
				for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
					monlv = string.match(v.Name, "%d+")
					if v.Name:find(namemon) and #v.Name > #namemon and tonumber(monlv) <= Lvl + 50 then
						namemon = v.Name
					end
				end
			end
			if not namemon:find("Lv") then
				for i,v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
					monlv = string.match(v.Name, "%d+")
					if v.Name:find(namemon) and #v.Name > #namemon and tonumber(monlv) <= Lvl + 50 then
						namemon = v.Name
					end
				end
			end
			return {["QuestLv"] = questlv, ["CFrameQuest"] = npcpos, ["NameMon"] = namemon, ["NameQuest"] = namequest, ["LevelReq"] = levelreq}
		end

	function CheckLevel3()
		local Lv = game:GetService("Players").LocalPlayer.Data.Level.Value
		if _G.Upto then
			Lv = Lv + 100
		end
		if Old_World and not Auto_Raid then
			if Lv == 1 or Lv <= 9 or SelectMonster == "" then -- Bandit
				Ms = "Bandit [Lv. 5]"
				NameQuest = "BanditQuest1"
				QuestLv = 1
				NameMon = "Bandit"
				CFrameQ = CFrame.new(1059.37195, 15.4495068, 1550.4231, 0.939700544, -0, -0.341998369, 0, 1, -0, 0.341998369, 0, 0.939700544)
				CFrameMon = CFrame.new(1353.44885, 3.40935516, 1376.92029, 0.776053488, -6.97791975e-08, 0.630666852, 6.99138596e-08, 1, 2.4612488e-08, -0.630666852, 2.49917598e-08, 0.776053488)
				TelePBoss(CFrameQ)
			elseif Lv == 10 or Lv <= 14 or SelectMonster == "Monkey [Lv. 14]" then -- Monkey
				
				Ms = "Monkey [Lv. 14]"
				NameQuest = "JungleQuest"
				QuestLv = 1
				NameMon = "Monkey"
				CFrameQ = CFrame.new(-1598.08911, 35.5501175, 153.377838, 0, 0, 1, 0, 1, -0, -1, 0, 0)
				CFrameMon = CFrame.new(-1402.74609, 98.5633316, 90.6417007, 0.836947978, 0, 0.547282517, -0, 1, -0, -0.547282517, 0, 0.836947978)
				TelePBoss(CFrameQ)
				
			elseif Lv == 15 or Lv <= 19 or SelectMonster == "Gorilla [Lv. 20]" then -- Gorilla
				Ms = "Gorilla [Lv. 20]"
				NameQuest = "JungleQuest"
				QuestLv = 2
				NameMon = "Gorilla"
				CFrameQ = CFrame.new(-1598.08911, 35.5501175, 153.377838, 0, 0, 1, 0, 1, -0, -1, 0, 0)
				CFrameMon = CFrame.new(-1267.89001, 66.2034225, -531.818115, -0.813996196, -5.25169774e-08, -0.580869019, -5.58769671e-08, 1, -1.21082593e-08, 0.580869019, 2.26011476e-08, -0.813996196)
				TelePBoss(CFrameQ)
				if Lv >= 25 then
					_G.SelectBoss = "The Gorilla King [Lv. 25] [Boss]" 
				end
				SelectMonster = "Monkey [Lv. 14]"
			elseif Lv == 300 or Lv <= 324 or SelectMonster == "Military Soldier [Lv. 300]" then -- Military Soldier
				
				Ms = "Military Soldier [Lv. 300]"
				NameQuest = "MagmaQuest"
				QuestLv = 1
				NameMon = "Military Soldier"
				CFrameQ = CFrame.new(-5316.55859, 12.2370615, 8517.2998, 0.588437557, -1.37880001e-08, -0.808542669, -2.10116209e-08, 1, -3.23446478e-08, 0.808542669, 3.60215964e-08, 0.588437557)
				CFrameMon = CFrame.new(-5363.01123, 41.5056877, 8548.47266, -0.578253984, -3.29503091e-10, 0.815856814, 9.11209668e-08, 1, 6.498761e-08, -0.815856814, 1.11920997e-07, -0.578253984)
				TelePBoss(CFrameQ)
				
			elseif Lv == 325 or Lv <= 374 or SelectMonster == "Military Spy [Lv. 325]" then -- Military Spy
				
				Ms = "Military Spy [Lv. 325]"
				NameQuest = "MagmaQuest"
				QuestLv = 2
				NameMon = "Military Spy"
				CFrameQ = CFrame.new(-5316.55859, 12.2370615, 8517.2998, 0.588437557, -1.37880001e-08, -0.808542669, -2.10116209e-08, 1, -3.23446478e-08, 0.808542669, 3.60215964e-08, 0.588437557)
				CFrameMon = CFrame.new(-5787.99023, 120.864456, 8762.25293, -0.188358366, -1.84706277e-08, 0.982100308, -1.23782129e-07, 1, -4.93306951e-09, -0.982100308, -1.22495649e-07, -0.188358366)
				TelePBoss(CFrameQ)
				if Lv >= 350 and Lv <= 375 then
					_G.SelectBoss = "Magma Admiral [Lv. 350] [Boss]"
				end
				SelectMonster = "Military Soldier [Lv. 300]"
			elseif Lv == 375 or Lv <= 399 or SelectMonster == "Fishman Warrior [Lv. 375]" then -- Fishman Warrior
				
				Ms = "Fishman Warrior [Lv. 375]"
				NameQuest = "FishmanQuest"
				QuestLv = 1
				NameMon = "Fishman Warrior"
				CFrameQ = CFrame.new(61122.5625, 18.4716396, 1568.16504, 0.893533468, 3.95251609e-09, 0.448996574, -2.34327455e-08, 1, 3.78297464e-08, -0.448996574, -4.43233645e-08, 0.893533468)
				CFrameMon = CFrame.new(60946.6094, 48.6735229, 1525.91687, -0.0817126185, 8.90751153e-08, 0.996655822, 2.00889794e-08, 1, -8.77269599e-08, -0.996655822, 1.28533992e-08, -0.0817126185)
				if Auto_Farm and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
					_G.Stop_Tween = true
					TP(CFrameQ)
					wait(.5)
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
					wait(.5)
					_G.Stop_Tween = nil
				end
			elseif Lv == 400 or Lv <= 449 or SelectMonster == "Fishman Commando [Lv. 400]" then -- Fishman Commando
				
				Ms = "Fishman Commando [Lv. 400]"
				NameQuest = "FishmanQuest"
				QuestLv = 2
				NameMon = "Fishman Commando"
				CFrameQ = CFrame.new(61122.5625, 18.4716396, 1568.16504)
				CFrameMon = CFrame.new(61877.8516, 75.4723358, 1400.76831, -0.828722656, -2.44484943e-09, -0.559659481, -6.34942552e-08, 1, 8.96514436e-08, 0.559659481, 1.09831348e-07, -0.828722656)
				if Auto_Farm and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
					_G.Stop_Tween = true
					TP(CFrameQ)
					wait(.5)
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
					wait(.5)
					_G.Stop_Tween = nil
				end
				if Lv >= 425 then
					_G.SelectBoss = "Fishman Lord [Lv. 425] [Boss]"
				end
				SelectMonster = "Fishman Warrior [Lv. 375]"
			elseif Lv == 450 or Lv <= 474 or SelectMonster == "God's Guard [Lv. 450]" then 
				Ms = "God's Guard [Lv. 450]"
				NameQuest = "SkyExp1Quest"
				QuestLv = 1
				NameMon = "God's Guards"
				CFrameQ = CFrame.new(-4721.71436, 845.277161, -1954.20105)
				CFrameMon = CFrame.new(-4716.95703, 853.089722, -1933.925427)
				if Auto_Farm and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
					_G.Stop_Tween = true
					TP(CFrameQ)
					wait(.5)
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-4607.82275, 872.54248, -1667.55688))
					wait(.5)
					_G.Stop_Tween = nil
				end
				if Lv >= 425 then
					_G.SelectBoss = "Fishman Lord [Lv. 425] [Boss]"
				end
				SelectMonster = "Fishman Commando [Lv. 400]"
			elseif Lv == 475 or Lv <= 524 or SelectMonster == "Shanda [Lv. 475]" then
				Ms = "Shanda [Lv. 475]"
				NameQuest = "SkyExp1Quest"
				QuestLv = 2
				NameMon = "Shandas"
				CFrameQ = CFrame.new(-7859.09814, 5544.19043, -381.476196, -0.422592998, 0, 0.906319618, 0, 1, 0, -0.906319618, 0, -0.422592998)
				CFrameMon = CFrame.new(-7904.57373, 5584.37646, -459.62973, 0.65171206, 5.11171692e-08, 0.758466363, -4.76232476e-09, 1, -6.33034247e-08, -0.758466363, 3.76435416e-08, 0.65171206)
				if Auto_Farm and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
					_G.Stop_Tween = true
					TP(CFrameQ)
					wait(.5)
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047))
					wait(.5)
					_G.Stop_Tween = nil
				end
				if Lv >= 500 then
					_G.SelectBoss = "Wysper [Lv. 500] [Boss]"
				end
				SelectMonster = "God's Guard [Lv. 450]"
			elseif Lv == 525 or Lv <= 549 or SelectMonster == "Royal Squad [Lv. 525]" then -- Royal Squad
				
				Ms = "Royal Squad [Lv. 525]"
				NameQuest = "SkyExp2Quest"
				QuestLv = 1
				NameMon = "Royal Squad"
				CFrameQ = CFrame.new(-7906.81592, 5634.6626, -1411.99194, 0, 0, -1, 0, 1, 0, 1, 0, 0)
				CFrameMon = CFrame.new(-7555.04199, 5606.90479, -1303.24744, -0.896107852, -9.6057462e-10, -0.443836004, -4.24974544e-09, 1, 6.41599973e-09, 0.443836004, 7.63560326e-09, -0.896107852)
				TelePBoss(CFrameQ) 
				SelectMonster = "Shanda [Lv. 475]"
			elseif Lv == 550 or Lv <= 624 or SelectMonster == "Royal Soldier [Lv. 550]" then -- Royal Soldier
				
				Ms = "Royal Soldier [Lv. 550]"
				NameQuest = "SkyExp2Quest"
				QuestLv = 2
				NameMon = "Royal Soldier"
				CFrameQ = CFrame.new(-7906.81592, 5634.6626, -1411.99194, 0, 0, -1, 0, 1, 0, 1, 0, 0)
				CFrameMon = CFrame.new(-7837.31152, 5649.65186, -1791.08582, -0.716008604, 0.0104285581, -0.698013008, 5.02521061e-06, 0.99988848, 0.0149335321, 0.69809103, 0.0106890313, -0.715928733)
				TelePBoss(CFrameQ)
				if Lv >= 575 then
					_G.SelectBoss = "Thunder God [Lv. 575] [Boss]"
				end
				SelectMonster = "Royal Squad [Lv. 525]"
			elseif Lv == 625 or Lv <= 649 or SelectMonster == "Galley Pirate [Lv. 625]" then -- Galley Pirate
				
				Ms = "Galley Pirate [Lv. 625]"
				NameQuest = "FountainQuest"
				QuestLv = 1
				NameMon = "Galley Pirate"
				CFrameQ = CFrame.new(5259.81982, 37.3500175, 4050.0293, 0.087131381, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, 0.087131381)
				CFrameMon = CFrame.new(5569.80518, 38.5269432, 3849.01196, 0.896460414, 3.98027495e-08, 0.443124533, -1.34262139e-08, 1, -6.26611296e-08, -0.443124533, 5.02237434e-08, 0.896460414)
				TelePBoss(CFrameQ)
			elseif Lv >= 650 or SelectMonster == "Galley Captain [Lv. 650]" then -- Galley Captain
				
				Ms = "Galley Captain [Lv. 650]"
				NameQuest = "FountainQuest"
				QuestLv = 2
				NameMon = "Galley Captain"
				CFrameQ = CFrame.new(5259.81982, 37.3500175, 4050.0293, 0.087131381, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, 0.087131381)
				CFrameMon = CFrame.new(5782.90186, 94.5326462, 4716.78174, 0.361808896, -1.24757526e-06, -0.932252586, 2.16989656e-06, 1, -4.96097414e-07, 0.932252586, -1.84339774e-06, 0.361808896)
				TelePBoss(CFrameQ)
				
				if Lv >= 675 then
					_G.SelectBoss = "Cyborg [Lv. 675] [Boss]"
				end
				SelectMonster = "Galley Pirate [Lv. 625]"
			end
		end
		if New_World and not Auto_Raid then
			
			if Lv == 700 or Lv <= 724 or SelectMonster == "Raider [Lv. 700]" then -- Raider [Lv. 700]
				Ms = "Raider [Lv. 700]"
				NameQuest = "Area1Quest"
				QuestLv = 1
				NameMon = "Raider"
				CFrameQ = CFrame.new(-429.543518, 71.7699966, 1836.18188, -0.22495985, 0, -0.974368095, 0, 1, 0, 0.974368095, 0, -0.22495985)
				CFrameMon = CFrame.new(-737.026123, 10.1748352, 2392.57959, 0.272128761, 0, -0.962260842, -0, 1, -0, 0.962260842, 0, 0.272128761)
				TelePBoss(CFrameQ)
			elseif Lv == 725 or Lv <= 774 or SelectMonster == "Mercenary [Lv. 725]" then -- Mercenary [Lv. 725]
				Ms = "Mercenary [Lv. 725]"
				NameQuest = "Area1Quest"
				QuestLv = 2
				NameMon = "Mercenary"
				CFrameQ = CFrame.new(-429.543518, 71.7699966, 1836.18188, -0.22495985, 0, -0.974368095, 0, 1, 0, 0.974368095, 0, -0.22495985)
				CFrameMon = CFrame.new(-1022.21271, 72.9855194, 1891.39148, -0.990782857, 0, -0.135460541, 0, 1, 0, 0.135460541, 0, -0.990782857)
				TelePBoss(CFrameQ)
				SelectMonster = "Raider [Lv. 700]"
			elseif Lv == 775 or Lv <= 799 or SelectMonster == "Swan Pirate [Lv. 775]" then -- Swan Pirate [Lv. 775]
				Ms = "Swan Pirate [Lv. 775]"
				NameQuest = "Area2Quest"
				QuestLv = 1
				NameMon = "Swan Pirate"
				CFrameQ = CFrame.new(638.43811, 71.769989, 918.282898, 0.139203906, 0, 0.99026376, 0, 1, 0, -0.99026376, 0, 0.139203906)
				CFrameMon = CFrame.new(976.467651, 111.174057, 1229.1084, 0.00852567982, -4.73897828e-08, -0.999963999, 1.12251888e-08, 1, -4.7295778e-08, 0.999963999, -1.08215579e-08, 0.00852567982)
				TelePBoss(CFrameQ)
			elseif Lv == 800 or Lv <= 874 or SelectMonster == "Factory Staff [Lv. 800]" then -- Factory Staff [Lv. 800]
				Ms = "Factory Staff [Lv. 800]"
				NameQuest = "Area2Quest"
				QuestLv = 2
				NameMon = "Factory Staff"
				CFrameQ = CFrame.new(638.43811, 71.769989, 918.282898, 0.139203906, 0, 0.99026376, 0, 1, 0, -0.99026376, 0, 0.139203906)
				CFrameMon = CFrame.new(336.74585, 73.1620483, -224.129272, 0.993632793, 3.40154607e-08, 0.112668738, -3.87658332e-08, 1, 3.99718729e-08, -0.112668738, -4.40850592e-08, 0.993632793)
				TelePBoss(CFrameQ)
				SelectMonster = "Swan Pirate [Lv. 775]"
			elseif Lv == 875 or Lv <= 899 or SelectMonster == "Marine Lieutenant [Lv. 875]" then -- Marine Lieutenant [Lv. 875]
				Ms = "Marine Lieutenant [Lv. 875]"
				NameQuest = "MarineQuest3"
				QuestLv = 1
				NameMon = "Marine Lieutenant"
				CFrameQ = CFrame.new(-2440.79639, 71.7140732, -3216.06812, 0.866007268, 0, 0.500031412, 0, 1, 0, -0.500031412, 0, 0.866007268)
				CFrameMon = CFrame.new(-2842.69922, 72.9919434, -2901.90479, -0.762281299, 0, -0.64724648, 0, 1.00000012, 0, 0.64724648, 0, -0.762281299)
				TelePBoss(CFrameQ)
			elseif Lv == 900 or Lv <= 949 or SelectMonster == "Marine Captain [Lv. 900]" then -- Marine Captain [Lv. 900]
				Ms = "Marine Captain [Lv. 900]"
				NameQuest = "MarineQuest3"
				QuestLv = 2
				NameMon = "Marine Captain"
				CFrameQ = CFrame.new(-2440.79639, 71.7140732, -3216.06812, 0.866007268, 0, 0.500031412, 0, 1, 0, -0.500031412, 0, 0.866007268)
				CFrameMon = CFrame.new(-1814.70313, 72.9919434, -3208.86621, -0.900422215, 7.93464423e-08, -0.435017526, 3.68856199e-08, 1, 1.06050372e-07, 0.435017526, 7.94441988e-08, -0.900422215)
				TelePBoss(CFrameQ)
				SelectMonster = "Marine Lieutenant [Lv. 875]"
			elseif Lv == 950 or Lv <= 974 or SelectMonster == "Zombie [Lv. 950]" then -- Zombie [Lv. 950]
				Ms = "Zombie [Lv. 950]"
				NameQuest = "ZombieQuest"
				QuestLv = 1
				NameMon = "Zombie"
				CFrameQ = CFrame.new(-5497.06152, 47.5923004, -795.237061, -0.29242146, 0, -0.95628953, 0, 1, 0, 0.95628953, 0, -0.29242146)
				CFrameMon = CFrame.new(-5649.23438, 126.0578, -737.773743, 0.355238914, -8.10359282e-08, 0.934775114, 1.65461245e-08, 1, 8.04023372e-08, -0.934775114, -1.3095117e-08, 0.355238914)
				TelePBoss(CFrameQ)
			elseif Lv == 975 or Lv <= 999 or SelectMonster == "Vampire [Lv. 975]" then -- Vampire [Lv. 975]
				Ms = "Vampire [Lv. 975]"
				NameQuest = "ZombieQuest"
				QuestLv = 2
				NameMon = "Vampire"
				CFrameQ = CFrame.new(-5497.06152, 47.5923004, -795.237061, -0.29242146, 0, -0.95628953, 0, 1, 0, 0.95628953, 0, -0.29242146)
				CFrameMon = CFrame.new(-6030.32031, 0.4377408, -1313.5564, -0.856965423, 3.9138893e-08, -0.515373945, -1.12178942e-08, 1, 9.45958547e-08, 0.515373945, 8.68467822e-08, -0.856965423)
				TelePBoss(CFrameQ)
				SelectMonster = "Zombie [Lv. 950]"
			elseif Lv == 1000 or Lv <= 1049 or SelectMonster == "Snow Trooper [Lv. 1000]" then -- Snow Trooper [Lv. 1000] **
				Ms = "Snow Trooper [Lv. 1000]"
				NameQuest = "SnowMountainQuest"
				QuestLv = 1
				NameMon = "Snow Trooper"
				CFrameQ = CFrame.new(609.858826, 400.119904, -5372.25928, -0.374604106, 0, 0.92718488, 0, 1, 0, -0.92718488, 0, -0.374604106)
				CFrameMon = CFrame.new(621.003418, 391.361053, -5335.43604, 0.481644779, 0, 0.876366913, 0, 1, 0, -0.876366913, 0, 0.481644779)
				TelePBoss(CFrameQ)
			elseif Lv == 1050 or Lv <= 1099 or SelectMonster == "Winter Warrior [Lv. 1050]" then -- Winter Warrior [Lv. 1050]
				Ms = "Winter Warrior [Lv. 1050]"
				NameQuest = "SnowMountainQuest"
				QuestLv = 2
				NameMon = "Winter Warrior"
				CFrameQ = CFrame.new(609.858826, 400.119904, -5372.25928, -0.374604106, 0, 0.92718488, 0, 1, 0, -0.92718488, 0, -0.374604106)
				CFrameMon = CFrame.new(1295.62683, 429.447784, -5087.04492, -0.698032081, -8.28980049e-08, -0.71606636, -1.98835952e-08, 1, -9.63858184e-08, 0.71606636, -5.30424877e-08, -0.698032081)
				TelePBoss(CFrameQ)
				SelectMonster = "Snow Trooper [Lv. 1000]"
			elseif Lv == 1100 or Lv <= 1124 or SelectMonster == "Lab Subordinate [Lv. 1100]" then -- Lab Subordinate [Lv. 1100]
				Ms = "Lab Subordinate [Lv. 1100]"
				NameQuest = "IceSideQuest"
				QuestLv = 1
				NameMon = "Lab Subordinate"
				CFrameQ = CFrame.new(-6064.06885, 15.2422857, -4902.97852, 0.453972578, -0, -0.891015649, 0, 1, -0, 0.891015649, 0, 0.453972578)
				CFrameMon = CFrame.new(-5769.2041, 37.9288292, -4468.38721, -0.569419742, -2.49055017e-08, 0.822046936, -6.96206541e-08, 1, -1.79282633e-08, -0.822046936, -6.74401548e-08, -0.569419742)
				TelePBoss(CFrameQ)
			elseif Lv == 1125 or Lv <= 1174 or SelectMonster == "Horned Warrior [Lv. 1125]" then -- Horned Warrior [Lv. 1125]
				Ms = "Horned Warrior [Lv. 1125]"
				NameQuest = "IceSideQuest"
				QuestLv = 2
				NameMon = "Horned Warrior"
				CFrameQ = CFrame.new(-6064.06885, 15.2422857, -4902.97852, 0.453972578, -0, -0.891015649, 0, 1, -0, 0.891015649, 0, 0.453972578)
				CFrameMon = CFrame.new(-6401.27979, 15.9775667, -5948.24316, 0.388303697, 0, -0.921531856, 0, 1, 0, 0.921531856, 0, 0.388303697)
				TelePBoss(CFrameQ)
				SelectMonster = "Lab Subordinate [Lv. 1100]"
			elseif Lv == 1175 or Lv <= 1199 or SelectMonster == "Magma Ninja [Lv. 1175]" then -- Magma Ninja [Lv. 1175]
				Ms = "Magma Ninja [Lv. 1175]"
				NameQuest = "FireSideQuest"
				QuestLv = 1
				NameMon = "Magma Ninja"
				CFrameQ = CFrame.new(-5428.03174, 15.0622921, -5299.43457, -0.882952213, 0, 0.469463557, 0, 1, 0, -0.469463557, 0, -0.882952213)
				CFrameMon = CFrame.new(-5466.06445, 57.6952019, -5837.42822, -0.988835871, 0, -0.149006829, 0, 1, 0, 0.149006829, 0, -0.988835871)
				TelePBoss(CFrameQ)
			elseif Lv == 1200 or Lv <= 1249 or SelectMonster == "Lava Pirate [Lv. 1200]" then 
				Ms = "Lava Pirate [Lv. 1200]"
				NameQuest = "FireSideQuest"
				QuestLv = 2
				NameMon = "Lava Pirate"
				CFrameQ = CFrame.new(-5431.09473, 15.9868021, -5296.53223, 0.831796765, 1.15322464e-07, -0.555080295, -1.10814341e-07, 1, 4.17010995e-08, 0.555080295, 2.68240168e-08, 0.831796765)
				CFrameMon = CFrame.new(-5169.71729, 34.1234779, -4669.73633, -0.196780294, 0, 0.98044765, 0, 1.00000012, -0, -0.98044765, 0, -0.196780294)
				TelePBoss(CFrameQ)
				SelectMonster = "Magma Ninja [Lv. 1175]"
			elseif Lv == 1250 or Lv <= 1274 or SelectMonster == "Ship Deckhand [Lv. 1250]" then 
				Ms = "Ship Deckhand [Lv. 1250]"
				NameQuest = "ShipQuest1"
				QuestLv = 1
				NameMon = "Ship Deckhand"
				CFrameQ = CFrame.new(1037.80127, 125.092171, 32911.6016, -0.244533166, -0, -0.969640911, -0, 1.00000012, -0, 0.96964103, 0, -0.244533136)
				CFrameMon = CFrame.new(1163.80872, 138.288452, 33058.4258, -0.998580813, 5.49076979e-08, -0.0532564968, 5.57436763e-08, 1, -1.42118655e-08, 0.0532564968, -1.71604082e-08, -0.998580813)
				if Auto_Farm and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 20000 then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
				end
			elseif Lv == 1275 or Lv <= 1299 or SelectMonster == "Ship Engineer [Lv. 1275]" then 
				Ms = "Ship Engineer [Lv. 1275]"
				NameQuest = "ShipQuest1"
				QuestLv = 2
				NameMon = "Ship Engineer"
				CFrameQ = CFrame.new(1037.80127, 125.092171, 32911.6016, -0.244533166, -0, -0.969640911, -0, 1.00000012, -0, 0.96964103, 0, -0.244533136)
				CFrameMon = CFrame.new(921.30249023438, 125.400390625, 32937.34375)
				if Auto_Farm and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 20000 then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
				end
				SelectMonster = "Ship Deckhand [Lv. 1250]"
			elseif Lv == 1300 or Lv <= 1324 or SelectMonster == "Ship Steward [Lv. 1300]" then 
				Ms = "Ship Steward [Lv. 1300]"
				NameQuest = "ShipQuest2"
				QuestLv = 1
				NameMon = "Ship Steward"
				CFrameQ = CFrame.new(968.80957, 125.092171, 33244.125, -0.869560242, 1.51905191e-08, -0.493826836, 1.44108379e-08, 1, 5.38534195e-09, 0.493826836, -2.43357912e-09, -0.869560242)
				CFrameMon = CFrame.new(917.96057128906, 136.89932250977, 33343.4140625)
				if Auto_Farm and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 20000 then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
				end
			elseif Lv == 1325 or Lv <= 1349 or SelectMonster == "Ship Officer [Lv. 1325]" then 
				Ms = "Ship Officer [Lv. 1325]"
				NameQuest = "ShipQuest2"
				QuestLv = 2
				NameMon = "Ship Officer"
				CFrameQ = CFrame.new(968.80957, 125.092171, 33244.125, -0.869560242, 1.51905191e-08, -0.493826836, 1.44108379e-08, 1, 5.38534195e-09, 0.493826836, -2.43357912e-09, -0.869560242)
				CFrameMon = CFrame.new(944.44964599609, 181.40081787109, 33278.9453125)
				if Auto_Farm and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 20000 then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
				end
				SelectMonster = "Ship Steward [Lv. 1300]"
			elseif Lv == 1350 or Lv <= 1374 or SelectMonster == "Arctic Warrior [Lv. 1350]" then 
				Ms = "Arctic Warrior [Lv. 1350]"
				NameQuest = "FrostQuest"
				QuestLv = 1
				NameMon = "Arctic Warrior"
				CFrameQ = CFrame.new(5667.6582, 26.7997818, -6486.08984, -0.933587909, 0, -0.358349502, 0, 1, 0, 0.358349502, 0, -0.933587909)
				CFrameMon = CFrame.new(5878.23486, 81.3886948, -6136.35596, -0.451037169, 2.3908234e-07, 0.892505825, -1.08168464e-07, 1, -3.22542007e-07, -0.892505825, -2.4201924e-07, -0.451037169)
				if Auto_Farm and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 20000 then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-6508.5581054688, 89.034996032715, -132.83953857422))
				end
			elseif Lv == 1375 or Lv <= 1424 or SelectMonster == "Snow Lurker [Lv. 1375]" then -- Snow Lurker [Lv. 1375]
				Ms = "Snow Lurker [Lv. 1375]"
				NameQuest = "FrostQuest"
				QuestLv = 2
				NameMon = "Snow Lurker"
				CFrameQ = CFrame.new(5667.6582, 26.7997818, -6486.08984, -0.933587909, 0, -0.358349502, 0, 1, 0, 0.358349502, 0, -0.933587909)
				CFrameMon = CFrame.new(5513.36865, 60.546711, -6809.94971, -0.958693981, -1.65617333e-08, 0.284439981, -4.07668654e-09, 1, 4.44854642e-08, -0.284439981, 4.14883701e-08, -0.958693981)
				if Auto_Farm and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 20000 then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-6508.5581054688, 89.034996032715, -132.83953857422))
				end
				SelectMonster = "Arctic Warrior [Lv. 1350]"
			elseif Lv == 1425 or Lv <= 1449 or SelectMonster == "Sea Soldier [Lv. 1425]" then -- Sea Soldier [Lv. 1425]
				Ms = "Sea Soldier [Lv. 1425]"
				NameQuest = "ForgottenQuest"
				QuestLv = 1
				NameMon = "Sea Soldier"
				CFrameQ = CFrame.new(-3054.44458, 235.544281, -10142.8193, 0.990270376, -0, -0.13915664, 0, 1, -0, 0.13915664, 0, 0.990270376)
				if raMon == 1 then
					CFrameMon = CFrame.new(-3367.19287, 46.9959602, -9702.30273, 0.971349716, 2.75949148e-08, -0.237654611, -3.49465523e-08, 1, -2.67211728e-08, 0.237654611, 3.42608146e-08, 0.971349716)
				elseif raMon == 2 then
					CFrameMon = CFrame.new(-2676.83496, 63.7505951, -9867.9502, 0.907862604, 3.37670762e-08, 0.419267774, -2.94639158e-08, 1, -1.67384382e-08, -0.419267774, 2.84293189e-09, 0.907862604)
				end
				TelePBoss(CFrameQ)
			elseif Lv >= 1450 or SelectMonster == "Water Fighter [Lv. 1450]" then -- Water Fighter [Lv. 1450]
				Ms = "Water Fighter [Lv. 1450]"
				NameQuest = "ForgottenQuest"
				QuestLv = 2
				NameMon = "Water Fighter"
				CFrameQ = CFrame.new(-3054.44458, 235.544281, -10142.8193, 0.990270376, -0, -0.13915664, 0, 1, -0, 0.13915664, 0, 0.990270376)
				CFrameMon = CFrame.new(-3273.9021, 295.388245, -10612.5547, -0.171454117, 1.56274425e-08, 0.98519212, -2.4293584e-08, 1, -2.00901713e-08, -0.98519212, -2.73783893e-08, -0.171454117)
				TelePBoss(CFrameQ)
				SelectMonster = "Sea Soldier [Lv. 1425]"
				if Lv >= 1475 then
					_G.SelectBoss = "Tide Keeper [Lv. 1475] [Boss]"
				end
			end
		end
		if Three_World and not Auto_Raid then
			if Lv >= 1500 and Lv <= 1524 or SelectMonster == "Pirate Millionaire [Lv. 1500]" then -- Pirate Millionaire [Lv. 1500]
				Ms = "Pirate Millionaire [Lv. 1500]"
				NameQuest = "PiratePortQuest"
				QuestLv = 1
				NameMon = "Pirate Millionaire"
				CFrameQ = CFrame.new(-290.074677, 42.9034653, 5581.58984, 0.965929627, -0, -0.258804798, 0, 1, -0, 0.258804798, 0, 0.965929627)
				CFrameMon = CFrame.new(81.164993286133, 43.755737304688, 5724.7021484375)
				TelePBoss(CFrameQ)
			elseif Lv >= 1525 and Lv <= 1574 or SelectMonster == "Pistol Billionaire [Lv. 1525]" then -- Pistol Billionaire [Lv. 1525]
				Ms = "Pistol Billionaire [Lv. 1525]"
				NameQuest = "PiratePortQuest"
				QuestLv = 2
				NameMon = "Pistol Billionaire"
				CFrameQ = CFrame.new(-290.074677, 42.9034653, 5581.58984, 0.965929627, -0, -0.258804798, 0, 1, -0, 0.258804798, 0, 0.965929627)
				CFrameMon = CFrame.new(81.164993286133, 43.755737304688, 5724.7021484375)
				TelePBoss(CFrameQ)
				SelectMonster = "Pirate Millionaire [Lv. 1500]"
			elseif Lv >= 1575 and Lv <= 1599 or SelectMonster == "Dragon Crew Warrior [Lv. 1575]" then -- Dragon Crew Warrior [Lv. 1575]
				Ms = "Dragon Crew Warrior [Lv. 1575]"
				NameQuest = "AmazonQuest"
				QuestLv = 1
				NameMon = "Dragon Crew Warrior"
				CFrameQ = CFrame.new(5832.83594, 51.6806107, -1101.51563, 0.898790359, -0, -0.438378751, 0, 1, -0, 0.438378751, 0, 0.898790359)
				CFrameMon = CFrame.new(6241.9951171875, 51.522083282471, -1243.9771728516)
				TelePBoss(CFrameQ)
			elseif Lv >= 1600 and Lv <= 1624 or SelectMonster == "Dragon Crew Archer [Lv. 1600]" then -- Dragon Crew Archer [Lv. 1600]
				Ms = "Dragon Crew Archer [Lv. 1600]"
				NameQuest = "AmazonQuest"
				QuestLv = 2
				NameMon = "Dragon Crew Archer"
				CFrameQ = CFrame.new(5832.83594, 51.6806107, -1101.51563, 0.898790359, -0, -0.438378751, 0, 1, -0, 0.438378751, 0, 0.898790359)
				CFrameMon = CFrame.new(6488.9155273438, 383.38375854492, -110.66246032715)
				TelePBoss(CFrameQ)
				SelectMonster = "Dragon Crew Warrior [Lv. 1575]"
			elseif Lv >= 1625 and Lv <= 1649 or SelectMonster == "Female Islander [Lv. 1625]" then -- Female Islander [Lv. 1625]
				Ms = "Female Islander [Lv. 1625]"
				NameQuest = "AmazonQuest2"
				QuestLv = 1
				NameMon = "Female Islander"
				CFrameQ = CFrame.new(5448.86133, 601.516174, 751.130676, 0, 0, 1, 0, 1, -0, -1, 0, 0)
				CFrameMon = CFrame.new(4770.4990234375, 758.95520019531, 1069.8680419922)
				TelePBoss(CFrameQ)
			elseif Lv >= 1650 and Lv <= 1699 or SelectMonster == "Giant Islander [Lv. 1650]" then -- Giant Islander [Lv. 1650]
				Ms = "Giant Islander [Lv. 1650]"
				NameQuest = "AmazonQuest2"
				QuestLv = 2
				NameMon = "Giant Islander"
				CFrameQ = CFrame.new(5448.86133, 601.516174, 751.130676, 0, 0, 1, 0, 1, -0, -1, 0, 0)
				CFrameMon = CFrame.new(4530.3540039063, 656.75695800781, -131.60952758789)
				TelePBoss(CFrameQ)
				SelectMonster = "Female Islander [Lv. 1625]"
			elseif Lv >= 1700 and Lv <= 1724 or SelectMonster == "Marine Commodore [Lv. 1700]" then -- Marine Commodore [Lv. 1700]
				Ms = "Marine Commodore [Lv. 1700]"
				NameQuest = "MarineTreeIsland"
				QuestLv = 1
				NameMon = "Marine Commodore"
				CFrameQ = CFrame.new(2180.54126, 27.8156815, -6741.5498, -0.965929747, 0, 0.258804798, 0, 1, 0, -0.258804798, 0, -0.965929747)
				CFrameMon = CFrame.new(2490.0844726563, 190.4232635498, -7160.0502929688)
				TelePBoss(CFrameQ)
			elseif Lv >= 1725 and Lv <= 1774 or SelectMonster == "Marine Rear Admiral [Lv. 1725]" then -- Marine Rear Admiral [Lv. 1725]
				Ms = "Marine Rear Admiral [Lv. 1725]"
				NameQuest = "MarineTreeIsland"
				QuestLv = 2
				NameMon = "Marine Rear Admiral"
				CFrameQ = CFrame.new(2180.54126, 27.8156815, -6741.5498, -0.965929747, 0, 0.258804798, 0, 1, 0, -0.258804798, 0, -0.965929747)
				CFrameMon = CFrame.new(3951.3903808594, 229.11549377441, -6912.81640625)
				TelePBoss(CFrameQ)
				SelectMonster = "Marine Commodore [Lv. 1700]"
			elseif Lv >= 1775 and Lv <= 1799 or SelectMonster == "Fishman Raider [Lv. 1775]" then -- Fishman Raider [Lv. 1775]
				Ms = "Fishman Raider [Lv. 1775]"
				NameQuest = "DeepForestIsland3"
				QuestLv = 1
				NameMon = "Fishman Raider"
				CFrameQ = CFrame.new(-10581.6563, 330.872955, -8761.18652, -0.882952213, 0, 0.469463557, 0, 1, 0, -0.469463557, 0, -0.882952213)
				CFrameMon = CFrame.new(-10322.400390625, 390.94473266602, -8580.0908203125)
				TelePBoss(CFrameQ)
			elseif Lv >= 1800 and Lv <= 1824 or SelectMonster == "Fishman Captain [Lv. 1800]" then -- Fishman Captain [Lv. 1800]
				Ms = "Fishman Captain [Lv. 1800]"
				NameQuest = "DeepForestIsland3"
				QuestLv = 2
				NameMon = "Fishman Captain"
				CFrameQ = CFrame.new(-10581.6563, 330.872955, -8761.18652, -0.882952213, 0, 0.469463557, 0, 1, 0, -0.469463557, 0, -0.882952213)
				CFrameMon = CFrame.new(-11194.541992188, 442.02795410156, -8608.806640625)
				TelePBoss(CFrameQ)
				SelectMonster = "Fishman Raider [Lv. 1775]"
			elseif Lv >= 1825 and Lv <= 1849 or SelectMonster == "Forest Pirate [Lv. 1825]" then -- Forest Pirate [Lv. 1825]
				Ms = "Forest Pirate [Lv. 1825]"
				NameQuest = "DeepForestIsland"
				QuestLv = 1
				NameMon = "Forest Pirate"
				CFrameQ = CFrame.new(-13234.04, 331.488495, -7625.40137, 0.707134247, -0, -0.707079291, 0, 1, -0, 0.707079291, 0, 0.707134247)
				CFrameMon = CFrame.new(-13225.809570313, 428.19387817383, -7753.1245117188)
				TelePBoss(CFrameQ)
			elseif Lv >= 1850 and Lv <= 1899 or SelectMonster == "Mythological Pirate [Lv. 1850]" then -- Mythological Pirate [Lv. 1850]
				Ms = "Mythological Pirate [Lv. 1850]"
				NameQuest = "DeepForestIsland"
				QuestLv = 2
				NameMon = "Mythological Pirate"
				CFrameQ = CFrame.new(-13234.04, 331.488495, -7625.40137, 0.707134247, -0, -0.707079291, 0, 1, -0, 0.707079291, 0, 0.707134247)
				CFrameMon = CFrame.new(-13869.172851563, 564.95251464844, -7084.4135742188)
				TelePBoss(CFrameQ)
				SelectMonster = "Forest Pirate [Lv. 1825]"
			elseif Lv >= 1900 and Lv <= 1924 or SelectMonster == "Jungle Pirate [Lv. 1900]" then -- Jungle Pirate [Lv. 1900]
				Ms = "Jungle Pirate [Lv. 1900]"
				NameQuest = "DeepForestIsland2"
				QuestLv = 1
				NameMon = "Jungle Pirate"
				CFrameQ = CFrame.new(-12680.3818, 389.971039, -9902.01953, -0.0871315002, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, -0.0871315002)
				CFrameMon = CFrame.new(-11982.221679688, 376.32522583008, -10451.415039063)
				TelePBoss(CFrameQ)
			elseif Lv >= 1925 and Lv <= 1974 or SelectMonster == "Musketeer Pirate [Lv. 1925]" then -- Musketeer Pirate [Lv. 1925]
				Ms = "Musketeer Pirate [Lv. 1925]"
				NameQuest = "DeepForestIsland2"
				QuestLv = 2
				NameMon = "Musketeer Pirate"
				CFrameQ = CFrame.new(-12680.3818, 389.971039, -9902.01953, -0.0871315002, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, -0.0871315002)
				CFrameMon = CFrame.new(-13282.3046875, 496.23684692383, -9565.150390625)
				TelePBoss(CFrameQ)
				SelectMonster = "Jungle Pirate [Lv. 1900]"
			elseif Lv >= 1975 and Lv <= 1999 or SelectMonster == "Reborn Skeleton [Lv. 1975]" then
				Ms = "Reborn Skeleton [Lv. 1975]"
				NameQuest = "HauntedQuest1"
				QuestLv = 1
				NameMon = "Reborn Skeleton"
				CFrameQ = CFrame.new(-9480.8271484375, 142.13066101074, 5566.0712890625)
				CFrameMon = CFrame.new(-8817.880859375, 191.16761779785, 6298.6557617188)
				TelePBoss(CFrameQ)
			elseif Lv >= 2000 and Lv <= 2024 or SelectMonster == "Living Zombie [Lv. 2000]" then
				Ms = "Living Zombie [Lv. 2000]"
				NameQuest = "HauntedQuest1"
				QuestLv = 2
				NameMon = "Living Zombie"
				CFrameQ = CFrame.new(-9480.8271484375, 142.13066101074, 5566.0712890625)
				CFrameMon = CFrame.new(-10125.234375, 183.94705200195, 6242.013671875)
				TelePBoss(CFrameQ)
				SelectMonster = "Reborn Skeleton [Lv. 1975]"
			elseif Lv >= 2025 and Lv <= 2049  or  SelectMonster == "Demonic Soul [Lv. 2025]" then
				Ms = "Demonic Soul [Lv. 2025]"
				NameQuest = "HauntedQuest2"
				QuestLv = 1
				NameMon = "Demonic"
				CFrameQ = CFrame.new(-9516.9931640625, 178.00651550293, 6078.4653320313)
				CFrameMon = CFrame.new(-9712.03125, 204.69589233398, 6193.322265625)
				TelePBoss(CFrameQ)
				SelectMonster = "Living Zombie [Lv. 2000]"
			elseif Lv >= 2050 and Lv <= 2074 or SelectMonster == "Posessed Mummy [Lv. 2050]" then
				Ms = "Posessed Mummy [Lv. 2050]"
				NameQuest = "HauntedQuest2"
				QuestLv = 2
				NameMon = "Posessed Mummy"
				CFrameQ = CFrame.new(-9516.9931640625, 178.00651550293, 6078.4653320313)
				CFrameMon = CFrame.new(-9545.7763671875, 69.619895935059, 6339.5615234375)    
				TelePBoss(CFrameQ)
				SelectMonster = "Demonic Soul [Lv. 2025]"
			elseif Lv >= 2075 and Lv <= 2099 or SelectMonster == "Peanut Scout [Lv. 2075]" then
				Ms = "Peanut Scout [Lv. 2075]"
				NameQuest = "NutsIslandQuest"
				QuestLv = 1
				NameMon = "Peanut Scout"
				CFrameQ = CFrame.new(-2104.17163, 38.1299706, -10194.418, 0.758814394, -1.38604395e-09, 0.651306927, 2.85280208e-08, 1, -3.1108879e-08, -0.651306927, 4.21863646e-08, 0.758814394)
				CFrameMon = CFrame.new(-2098.07544, 192.611862, -10248.8867, 0.983392298, -9.57031787e-08, 0.181492642, 8.7276355e-08, 1, 5.44169616e-08, -0.181492642, -3.76732068e-08, 0.983392298)
				TelePBoss(CFrameQ)
			elseif Lv >= 2100 and Lv <= 2124 or SelectMonster == "Peanut President [Lv. 2100]" then
				Ms = "Peanut President [Lv. 2100]"
				NameQuest = "NutsIslandQuest"
				QuestLv = 2
				NameMon = "Peanut President"
				CFrameQ = CFrame.new(-2104.17163, 38.1299706, -10194.418, 0.758814394, -1.38604395e-09, 0.651306927, 2.85280208e-08, 1, -3.1108879e-08, -0.651306927, 4.21863646e-08, 0.758814394)
				CFrameMon = CFrame.new(-1876.95959, 192.610947, -10542.2939, 0.0553516336, -2.83836812e-08, 0.998466909, -6.89634405e-10, 1, 2.84654931e-08, -0.998466909, -2.26418861e-09, 0.0553516336)
				SelectMonster = "Peanut Scout [Lv. 2075]"
				TelePBoss(CFrameQ)
			elseif Lv >= 2125 and Lv <= 2149 or SelectMonster == "Ice Cream Chef [Lv. 2125]" then
				Ms = "Ice Cream Chef [Lv. 2125]"
				NameQuest = "IceCreamIslandQuest"
				QuestLv = 1
				NameMon = "Ice Cream Chef"
				CFrameQ = CFrame.new(-820.404358, 65.8453293, -10965.5654, 0.822534859, 5.24448502e-08, -0.568714678, -2.08336317e-08, 1, 6.20846663e-08, 0.568714678, -3.92184099e-08, 0.822534859)
				CFrameMon = CFrame.new(-821.614075, 208.39537, -10990.7617, -0.870096624, 3.18909272e-08, 0.492881238, -1.8357893e-08, 1, -9.71107568e-08, -0.492881238, -9.35439957e-08, -0.870096624)
				TelePBoss(CFrameQ)
			elseif Lv >= 2150 and Lv <= 2199 or SelectMonster == "Ice Cream Commander [Lv. 2150]" then 
				Ms = "Ice Cream Commander [Lv. 2150]"
				NameQuest = "IceCreamIslandQuest"
				QuestLv = 2
				NameMon = "Ice Cream Commander"
				CFrameQ = CFrame.new(-819.376526, 67.4634171, -10967.2832)
				CFrameMon = CFrame.new(-610.11669921875, 208.26904296875, -11253.686523438)
				TelePBoss(CFrameQ)
				SelectMonster = "Ice Cream Chef [Lv. 2125]"
			elseif Lv >= 2200 and Lv <= 2224 or SelectMonster == "Cookie Crafter [Lv. 2200]" then 
				Ms = "Cookie Crafter [Lv. 2200]"
				NameQuest = "CakeQuest1"
				QuestLv = 1
				NameMon = "Cookie Crafter"
				CFrameQ = CFrame.new(-2020.6068115234375, 37.82400894165039, -12027.80859375)
				CFrameMon = CFrame.new(-2286.684326171875, 146.5656280517578, -12226.8818359375)
				TelePBoss(CFrameQ)
			elseif Lv >= 2225 and Lv <= 2249 or SelectMonster == "Cake Guard [Lv. 2225]" then 
				Ms = "Cake Guard [Lv. 2225]"
				NameQuest = "CakeQuest1"
				QuestLv = 2
				NameMon = "Cake Guard"
				CFrameQ = CFrame.new(-2020.6068115234375, 37.82400894165039, -12027.80859375)
				CFrameMon = CFrame.new(-1817.9747314453125, 209.5632781982422, -12288.9228515625)
				SelectMonster = "Cookie Crafter [Lv. 2200]"
				TelePBoss(CFrameQ)
			elseif Lv >= 2250 and Lv <= 2274 or SelectMonster == "Baking Staff [Lv. 2250]" then 
				Ms = "Baking Staff [Lv. 2250]"
				NameQuest = "CakeQuest2"
				QuestLv = 1
				NameMon = "Baking Staff"
				CFrameQ = CFrame.new(-1928.31763, 37.7296638, -12840.626)
				CFrameMon = CFrame.new(-1818.347900390625, 93.41275787353516, -12887.66015625)
				SelectMonster = "Cake Guard [Lv. 2225]"
				TelePBoss(CFrameQ)
			elseif Lv >= 2275 and Lv <= 2299 or SelectMonster == "Head Baker [Lv. 2275]" then 
				Ms = "Head Baker [Lv. 2275]"
				NameQuest = "CakeQuest2"
				QuestLv = 2
				NameMon = "Head Baker"
				CFrameQ = CFrame.new(-1928.31763, 37.7296638, -12840.626)
				CFrameMon = CFrame.new(-2302.75806, 105.851219, -12928.1738, -0.436930418, 3.63066199e-08, -0.899495304, -6.58884005e-08, 1, 7.23686568e-08, 0.899495304, 9.0886374e-08, -0.436930418)
				SelectMonster = "Baking Staff [Lv. 2250]"
				TelePBoss(CFrameQ)
			elseif Lv >= 2300 and Lv <= 2324 or SelectMonster == "Cocoa Warrior [Lv. 2300]" then 
				Ms = "Cocoa Warrior [Lv. 2300]"
				NameQuest = "ChocQuest1"
				QuestLv = 1
				NameMon = "Cocoa Warrior"
				CFrameQ = CFrame.new(231.607498, 24.7600384, -12198.8262, 0.998603284, -6.89139341e-08, -0.0528342389, 7.20464115e-08, 1, 5.73841312e-08, 0.0528342389, -6.1110498e-08, 0.998603284)
				CFrameMon = CFrame.new(44.8907547, 53.4631424, -12308.167, -0.695348501, -4.32111094e-08, 0.718672693, -1.05426594e-07, 1, -4.18787494e-08, -0.718672693, -1.0488754e-07, -0.695348501)
				TelePBoss(CFrameQ)
			elseif Lv >= 2325 and Lv <= 2349 or SelectMonster == "Chocolate Bar Battler [Lv. 2325]" then 
				Ms = "Chocolate Bar Battler [Lv. 2325]"
				NameQuest = "ChocQuest1"
				QuestLv = 2
				NameMon = "Chocolate Bar Battler"
				CFrameQ = CFrame.new(231.607498, 24.7600384, -12198.8262, 0.998603284, -6.89139341e-08, -0.0528342389, 7.20464115e-08, 1, 5.73841312e-08, 0.0528342389, -6.1110498e-08, 0.998603284)
				CFrameMon = CFrame.new(717.393555, 70.0507431, -12599.917, 0.64754194, -3.87490608e-08, 0.762029827, -3.6116095e-08, 1, 8.15397811e-08, -0.762029827, -8.03219677e-08, 0.64754194)
				SelectMonster = "Cocoa Warrior [Lv. 2300]"
				TelePBoss(CFrameQ)
			elseif Lv >= 2350 and Lv <= 2374 or SelectMonster == "Sweet Thief [Lv. 2350]" then 
				Ms = "Sweet Thief [Lv. 2350]"
				NameQuest = "ChocQuest2"
				QuestLv = 1
				NameMon = "Sweet Thief"
				CFrameQ = CFrame.new(150.015152, 24.8196201, -12775.3916, -0.513929904, -9.5491286e-09, -0.857832193, 1.2668723e-08, 1, -1.87215683e-08, 0.857832193, -2.04892121e-08, -0.513929904)
				CFrameMon = CFrame.new(2.84610295, 82.2038116, -12553.6885, 0.720501184, 1.15794183e-08, -0.693453729, 1.00857711e-09, 1, 1.77460997e-08, 0.693453729, -1.34854874e-08, 0.720501184)
				SelectMonster = "Chocolate Bar Battler [Lv. 2325]"
				TelePBoss(CFrameQ)
			elseif Lv >= 2375 and Lv <= 2399 or SelectMonster == "Candy Rebel [Lv. 2375]" then 
				Ms = "Candy Rebel [Lv. 2375]"
				NameQuest = "ChocQuest2"
				QuestLv = 2
				NameMon = "Candy Rebel"
				CFrameQ = CFrame.new(150.015152, 24.8196201, -12775.3916, -0.513929904, -9.5491286e-09, -0.857832193, 1.2668723e-08, 1, -1.87215683e-08, 0.857832193, -2.04892121e-08, -0.513929904)
				CFrameMon = CFrame.new(127.958076, 77.2476959, -12883.584, 0.769614816, -6.44218734e-10, 0.638508439, 1.49726986e-08, 1, -1.70381345e-08, -0.638508439, 2.26729959e-08, 0.769614816)
				SelectMonster = "Sweet Thief [Lv. 2350]"
				TelePBoss(CFrameQ)
			elseif Lv >= 2400 and Lv <= 2424 or SelectMonster == "Candy Pirate [Lv. 2400]" then 
				Ms = "Candy Pirate [Lv. 2400]"
				NameQuest = "CandyQuest1"
				QuestLv = 1
				NameMon = "Candy Pirate"
				CFrameQ = CFrame.new(-1147.95142, 16.1072559, -14445.3105, -0.0240679532, 4.06167295e-08, 0.999710321, 7.46657349e-08, 1, -3.8830926e-08, -0.999710321, 7.3709522e-08, -0.0240679532)
				CFrameMon = CFrame.new(-1423.03235, 113.437248, -14594.1602, 0.0492029786, 2.03225614e-08, -0.998788774, -2.60848516e-08, 1, 1.90621972e-08, 0.998788774, 2.51153409e-08, 0.0492029786)
				TelePBoss(CFrameQ)
			elseif Lv >= 2425 or SelectMonster == "Snow Demon [Lv. 2425]" then 
				Ms = "Snow Demon [Lv. 2425]"
				NameQuest = "CandyQuest1"
				QuestLv = 2
				NameMon = "Snow Demon"
				CFrameQ = CFrame.new(-1147.95142, 16.1072559, -14445.3105, -0.0240679532, 4.06167295e-08, 0.999710321, 7.46657349e-08, 1, -3.8830926e-08, -0.999710321, 7.3709522e-08, -0.0240679532)
				CFrameMon = CFrame.new(-883.241455, 40.9553833, -14538.4951, -0.28144443, -1.18274158e-07, 0.959577501, 1.83865634e-08, 1, 1.28649276e-07, -0.959577501, 5.38509575e-08, -0.28144443)
				SelectMonster = "Candy Pirate [Lv. 2400]"
				TelePBoss(CFrameQ)
			end
		end
	end

	---Tween

	function TPs(P1)
		local Distance = (P1.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
		if Distance < 250 then
			Speed = 10000
		elseif Distance < 500 then
			Speed = 500
		elseif Distance < 1000 then
			Speed = 250
		elseif Distance >= 1000 then
			Speed = 250
		end
		game:GetService("TweenService"):Create(
			game.Players.LocalPlayer.Character.HumanoidRootPart,
		TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear),
		{CFrame = P1}
		):Play()
		if _G.Stop_Tween then
		game:GetService("TweenService"):Create(
		game.Players.LocalPlayer.Character.HumanoidRootPart,
		TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear),
			{CFrame = P1}
		):Cancel()
		end
	end

	function TP(P1)
		local Distance = (P1.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
		if Distance < 250 then
			Speed = 10000
		elseif Distance < 500 then
			Speed = 500
		elseif Distance < 1000 then
			Speed = 350
		elseif Distance >= 1000 then
			Speed = 350
		end
		game:GetService("TweenService"):Create(
			game.Players.LocalPlayer.Character.HumanoidRootPart,
		TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear),
		{CFrame = P1}
		):Play()
		if _G.Stop_Tween then
		game:GetService("TweenService"):Create(
		game.Players.LocalPlayer.Character.HumanoidRootPart,
		TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear),
			{CFrame = P1}
		):Cancel()
		end
	end

	function EquipWeaponAll()
		for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
			if v.ToolTip == "Melee" then
				if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
					EquipWeapon(v.Name)
				end
			end
		end
		wait(2)
		for i1 ,v1 in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
			if v1.ToolTip == "Sword" then
				if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v1.Name)) then
					EquipWeapon(v1.Name)
				end
			end
		end
		wait(2)
		for i2 ,v2 in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
			if v2.ToolTip == "Blox Fruit" then
				if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v2.Name)) then
					EquipWeapon(v2.Name)
				end
			end
		end
		wait(2)
	end

	function fpsboost()
		pcall(function()
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
					--v.CanCollide = false
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
		for i, v in pairs(game:GetService("Workspace").Camera:GetDescendants()) do
			if v.Name == ("Water;") then
				v.Transparency = 1
				v.Material = "Plastic"
			end
		end
		end)
		pcall(function()
			if not game:IsLoaded() then repeat wait() until game:IsLoaded() end
			if hookfunction and setreadonly then
			local mt = getrawmetatable(game)
			local old = mt.__newindex
			setreadonly(mt, false)
			local sda
			sda = hookfunction(old, function(t, k, v)
				if k == "Material" then
					if v ~= Enum.Material.Neon and v ~= Enum.Material.Plastic and v ~= Enum.Material.ForceField then v = Enum.Material.Plastic end
				elseif k == "TopSurface" then v = "Smooth"
				elseif k == "Reflectance" or k == "WaterWaveSize" or k == "WaterWaveSpeed" or k == "WaterReflectance" then v = 0
				elseif k == "WaterTransparency" then v = 1
				elseif k == "GlobalShadows" then v = false end
				return sda(t, k, v)
			end)
			setreadonly(mt, true)
			end
			local g = game
			local w = g.Workspace
			local l = g:GetService"Lighting"
			local t = w:WaitForChild"Terrain"
			t.WaterWaveSize = 0
			t.WaterWaveSpeed = 0
			t.WaterReflectance = 0
			t.WaterTransparency = 1
			l.GlobalShadows = false
		end)
	end
	

	getgenv().TP = function(p)
		spawn(function()
			pcall(function()
				if game:GetService("Players").LocalPlayer:DistanceFromCharacter(p.Position) <= 250 then 
					game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = p
				elseif not game.Players.LocalPlayer.Character:FindFirstChild("Root")then 
					local K = Instance.new("Part",game.Players.LocalPlayer.Character)
					K.Size = Vector3.new(1,0.5,1)
					K.Name = "Root"
					K.Anchored = true
					K.Transparency = 1
					K.CanCollide = false
					K.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,20,0)
				end
				local U = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-p.Position).Magnitude
				local z = game:service("TweenService")
				local B = TweenInfo.new((p.Position-game.Players.LocalPlayer.Character.Root.Position).Magnitude/300,Enum.EasingStyle.Linear)
				local S,g = pcall(function()
				local q = z:Create(game.Players.LocalPlayer.Character.Root,B,{CFrame = p})
				q:Play()
			end)
			if not S then 
				return g
			end
			game.Players.LocalPlayer.Character.Root.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
				if S and game.Players.LocalPlayer.Character:FindFirstChild("Root") then 
					pcall(function()
						if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-p.Position).Magnitude >= 20 then 
							spawn(function()
								pcall(function()
									if (game.Players.LocalPlayer.Character.Root.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 150 then 
										game.Players.LocalPlayer.Character.Root.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
									else 
										game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=game.Players.LocalPlayer.Character.Root.CFrame
									end
								end)
							end)
						elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-p.Position).Magnitude >= 10 and(game.Players.LocalPlayer.Character.HumanoidRootPart.Position-p.Position).Magnitude < 20 then 
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = p
						elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-p.Position).Magnitude < 10 then 
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = p
						end
					end)
				end
			end)
		end)
	end

	---EquipWeapon

	function EquipWeapon(ToolSe)
		if game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe) then
			local tool = game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe)
			wait(.4)
			game.Players.LocalPlayer.Character.Humanoid:EquipTool(tool)
		end
	end

	---HopServer


	function HopServer()
		if not _G.TP_Ser then
			_G.TP_Ser = true
			game.StarterGui:SetCore("SendNotification", {
				Title = "Hop Low Server ", 
				Text = "กำลังหาเซิฟ",
				Icon = "http://www.roblox.com/asset/?id=9606070311",
				Duration = 25
			})
			local PlaceID = game.PlaceId
			local AllIDs = {}
			local foundAnything = ""
			local actualHour = os.date("!*t").hour
			local Deleted = false
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
					game.StarterGui:SetCore("SendNotification", {
						Title = "Hop Low Server ", 
						Text = "Players : " ..tonumber(v.playing),
						Icon = "http://www.roblox.com/asset/?id=9606070311",
						Duration = 1.5
					})
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
								_G.Setting_table.Hop_Server = true 
								Update_Setting(getgenv()['MyName'])
								_G.TP_Ser = true
								-- writefile("NotSameServers.json", game:GetService('HttpService'):JSONEncode(AllIDs))
								wait()
								game:GetService("TeleportService"):TeleportToPlaceInstance(PlaceID, ID, game.Players.LocalPlayer)
							end)
							wait(.1)
						end
					end
				end
			end
			function Bring()
				while wait(.2) do
					pcall(function()
						TPReturner()
						if foundAnything ~= "" then
							TPReturner()
						end
					end)
				end
			end
			Bring()
		end
	end

	function Get_Fruit_Backpack()
		for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
			if v:IsA("Tool") then
				if string.find(v.Name,"Fruit") then
					_G.Have_Fruit = true
					return
				end
			end
		end
	end
	function Get_Fruit_Character()
		for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
			if v:IsA("Tool") then
				if string.find(v.Name,"Fruit") then
					_G.Have_Fruit = true
					return
				end
			end
		end
	end

	---Fps Boost

	function fpsboost()
		pcall(function()
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
					--v.CanCollide = false
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
		for i, v in pairs(game:GetService("Workspace").Camera:GetDescendants()) do
			if v.Name == ("Water;") then
				v.Transparency = 1
				v.Material = "Plastic"
			end
		end
		end)
		pcall(function()
			if not game:IsLoaded() then repeat wait() until game:IsLoaded() end
			if hookfunction and setreadonly then
			local mt = getrawmetatable(game)
			local old = mt.__newindex
			setreadonly(mt, false)
			local sda
			sda = hookfunction(old, function(t, k, v)
				if k == "Material" then
					if v ~= Enum.Material.Neon and v ~= Enum.Material.Plastic and v ~= Enum.Material.ForceField then v = Enum.Material.Plastic end
				elseif k == "TopSurface" then v = "Smooth"
				elseif k == "Reflectance" or k == "WaterWaveSize" or k == "WaterWaveSpeed" or k == "WaterReflectance" then v = 0
				elseif k == "WaterTransparency" then v = 1
				elseif k == "GlobalShadows" then v = false end
				return sda(t, k, v)
			end)
			setreadonly(mt, true)
			end
			local g = game
			local w = g.Workspace
			local l = g:GetService"Lighting"
			local t = w:WaitForChild"Terrain"
			t.WaterWaveSize = 0
			t.WaterWaveSpeed = 0
			t.WaterReflectance = 0
			t.WaterTransparency = 1
			l.GlobalShadows = false
		end)
	end

	----[Body Gryro]

	spawn(function()
		while wait(.1) do
			pcall(function()
				if Auto_Sea_Best then
					PIO = false
					if not game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyVelocity") then 
						local L_1 = Instance.new("BodyVelocity")
						L_1.Name = "BodyGyrozz"
						L_1.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart 
						L_1.MaxForce=Vector3.new(1000000000,1000000000,1000000000)
						L_1.Velocity=Vector3.new(0,0,0) 
					end
				elseif PIO == false then
					for i,v in pairs(game.Players.LocalPlayer.Character.HumanoidRootPart:GetChildren()) do
						if v.Name == "BodyGyrozz" then
							v:Destroy()
							PIO = true
						end
					end
				end
			end)
		end
	end)

	task.spawn(function()
		game:GetService("RunService").Stepped:Connect(function()
			pcall(function()
				--[World 1]
				if Prince2 or _G.Settings.Mastery["Farm Mastery SwordList"] or pre or Auto_Raw or Auto_Farm_Fruit or Auto_Farm_Monster or Auto_Quest_Tushita_2 or _G.Setting_table.AutoFarm_Meterial or _G.Setting_table.AutoFarmAllBoss or _G.Setting_table.AutoFarmAllBoss or _G.Setting_table.AutoFarmBoss or _G.Farm_Boss or Auto_Farm_Boss or Farm_Candy or Farm_Mas_Sword or _G.Settings.Mastery["Farm Mastery SwordList"] or _G.Setting_table.AutoFarm or _G.Setting_table.AutoFarm_Meterial or _G.Start_Tween_Island or AutoFarmKen_Rejoin or _G.Setting_table.AutoFarm_Meterial or AutoMobAura or _G.AutoFarm_Ken or AutoFarmObservation or Auto_radiao or Auto_Scrapmetal or Auto_Lather or Auto_minitusk or Auto_magma or Auto_mystcdrop or Auto_vampire or Auto_Dragon or _G.Clip or Auto_Farm_Bounty or Auto_Twin_Hooks or Auto_Canvander or Auto_Buddy_Sword or Auto_Hallow_Scryte or Auto_Spikey_Trident or Auto_Dark_Dagger or Auto_Serpent_Bow or Auto_Acidum_Rifle or Auto_Swan_Glass or Auto_Pale_Scarf or Auto_Valkyrie_Helmet or Saber_Farm or Pole_Farm or Rengoku_A or Auto_Dragon_Trident or Triple_A or Auto_Yama or Auto_Tushita or Auto_Dark_Coat or _G.Setting_table.Human_Evo or _G.Setting_table.Mink_Evo or _G.Setting_table.Death_Step or _G.Setting_table.Sharkman_Karate or _G.Setting_table.Electric_Claw or _G.Setting_table.Dragon_Talon or _G.Setting_table.Superhuman or Auto_Three_World or Bartlio_Farm or Auto_New_A or Auto_Elite_Hunter or Auto_Phoenix_Awaken or Auto_Raid or _G.Setting_table.Farm_Ken_Hop or _G.Setting_table.Auto_Farm_Boss_Hop or _G.Setting_table.Auto_Farm_Boss_All_Hop or Open_Color_Haki or Auto_Holy_Torch or Grab_Chest or Auto_Farm_Monster or Farm_Ken or Auto_Farm_Bone or Farm_Ken_V2 or Auto_Farm_Melee or _G.Settings.Mastery["Farm Mastery SwordList"] or Auto_Farm or Auto_Farm_Gun or Auto_Farm_Boss_All or Auto_Farm_Boss or Auto_Farm_Fruit then
					if syn then
						setfflag("HumanoidParallelRemoveNoPhysics", "False")
						setfflag("HumanoidParallelRemoveNoPhysicsNoSimulate2", "False")
						game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
						if game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Sit == true then
							game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Sit = false
						end
					else
						if not Auto_Sea_Best then
							if game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
								if not game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyVelocity1") then
									if game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Sit == true then
										game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Sit = false
									end
									local BodyVelocity = Instance.new("BodyVelocity")
									BodyVelocity.Name = "BodyVelocity1"
									BodyVelocity.Parent =  game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
									BodyVelocity.MaxForce = Vector3.new(10000, 10000, 10000)
									BodyVelocity.Velocity = Vector3.new(0, 0, 0)
								end
							end
							for _, v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
								if v:IsA("BasePart") then
									v.CanCollide = false    
								end
							end
						end
					end
				else
					if game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyVelocity1") then
						game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyVelocity1"):Destroy();
					end
				end
			end)
		end)
	end)





	function InMyNetWork(object)
		if isnetworkowner then
			return isnetworkowner(object)
		else
			if (object.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 200 then 
				return true
			end
			return false
		end
	end


	function TP4(P1)
		if not _G.Stop_Tween then
			local Distance = (P1.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
			Speed = 100
			if Distance < 250 then
				Speed = 5000
			elseif Distance < 500 then
				Speed = 650
			elseif Distance < 1000 then
				Speed = 350
			elseif Distance >= 1000 then
				Speed = 250
			end
			Tween = game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart,TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear),{CFrame = P1})
			if _G.Stop_Tween or Auto_Raid then
				Tween:Cancel()
			elseif game.Players.LocalPlayer.Character.Humanoid.Health > 0 then
				Tween:Play()
			end
		end
	end

	function toTargetP(CFgo)
		if game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Health <= 0 or not game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid") then tween:Cancel() repeat wait() until game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid") and game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").Health > 0 wait(7) return end
		if (game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart.Position - CFgo.Position).Magnitude <= 150 then
			pcall(function()
				tween:Cancel()
	
				game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart.CFrame = CFgo
	
				return
			end)
		end
		local tween_s = game:service"TweenService"
		local info = TweenInfo.new((game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart.Position - CFgo.Position).Magnitude/325, Enum.EasingStyle.Linear)
		tween = tween_s:Create(game.Players.LocalPlayer.Character["HumanoidRootPart"], info, {CFrame = CFgo})
		tween:Play()
	
		local tweenfunc = {}
	
		function tweenfunc:Stop()
			tween:Cancel()
		end
	
		return tweenfunc
	end


	--function

	function GetFightingStyle(Style)
		ReturnText = ""
		for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
			if v:IsA("Tool") then
				if v.ToolTip == Style then
					ReturnText = v.Name
				end
			end
		end
		for i ,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
			if v:IsA("Tool") then
				if v.ToolTip == Style then
					ReturnText = v.Name
				end
			end
		end
		if ReturnText ~= "" then
			return ReturnText
		else
			return "Not Have"
		end
	end

	function EquipWeaponSword()
		pcall(function()
			for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
				if v.ToolTip == "Sword" and v:IsA('Tool') then
					local ToolHumanoid = game.Players.LocalPlayer.Backpack:FindFirstChild(v.Name) 
					game.Players.LocalPlayer.Character.Humanoid:EquipTool(ToolHumanoid) 
				end
			end
		end)
	end

	function Com(com,...)
		local Remote = game:GetService('ReplicatedStorage').Remotes:FindFirstChild("Comm"..com)
		if Remote:IsA("RemoteEvent") then
			Remote:FireServer(...)
		elseif Remote:IsA("RemoteFunction") then
			Remote:InvokeServer(...)
		end
	end

	function CheckMasteryWeapon(NameWe,MasNum)
		if game.Players.LocalPlayer.Backpack:FindFirstChild(NameWe) then
			if tonumber(game.Players.LocalPlayer.Backpack:FindFirstChild(NameWe).Level.Value) < MasNum then
				return "true DownTo"
			elseif tonumber(game.Players.LocalPlayer.Backpack:FindFirstChild(NameWe).Level.Value) >= MasNum then
				return "true UpTo"
			end
		end
		if game.Players.LocalPlayer.Character:FindFirstChild(NameWe) then
			if tonumber(game.Players.LocalPlayer.Character:FindFirstChild(NameWe).Level.Value) < MasNum then
				return "true DownTo"
			elseif tonumber(game.Players.LocalPlayer.Character:FindFirstChild(NameWe).Level.Value) >= MasNum then
				return "true UpTo"
			end
		end
		return "else"
	end

	---Fast Attack

	local CombatFramework = require(game:GetService("Players").LocalPlayer.PlayerScripts:WaitForChild("CombatFramework"))
	local CombatFrameworkR = getupvalues(CombatFramework)[2]
	local RigController = require(game:GetService("Players")["LocalPlayer"].PlayerScripts.CombatFramework.RigController)
	local RigControllerR = getupvalues(RigController)[2]
	local realbhit = require(game.ReplicatedStorage.CombatFramework.RigLib)
	local cooldownfastattack = tick()

	function CurrentWeapon()
		local ac = CombatFrameworkR.activeController
		local ret = ac.blades[1]
		if not ret then return game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Name end
		pcall(function()
			while ret.Parent~=game.Players.LocalPlayer.Character do ret=ret.Parent end
		end)
		if not ret then return game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Name end
		return ret
	end
	
	function getAllBladeHitsPlayers(Sizes)
		local Hits = {}
		local Client = game.Players.LocalPlayer
		local Characters = game:GetService("Workspace").Characters:GetChildren()
		for i=1,#Characters do local v = Characters[i]
			local Human = v:FindFirstChildOfClass("Humanoid")
			if v.Name ~= game.Players.LocalPlayer.Name and Human and Human.RootPart and Human.Health > 0 and Client:DistanceFromCharacter(Human.RootPart.Position) < Sizes+5 then
				table.insert(Hits,Human.RootPart)
			end
		end
		return Hits
	end
	
	function getAllBladeHits(Sizes)
		local Hits = {}
		local Client = game.Players.LocalPlayer
		local Enemies = game:GetService("Workspace").Enemies:GetChildren()
		for i=1,#Enemies do local v = Enemies[i]
			local Human = v:FindFirstChildOfClass("Humanoid")
			if Human and Human.RootPart and Human.Health > 0 and Client:DistanceFromCharacter(Human.RootPart.Position) < Sizes+5 then
				table.insert(Hits,Human.RootPart)
			end
		end
		return Hits
	end
	
	function AttackFunction()
		local ac = CombatFrameworkR.activeController
		if ac and ac.equipped then
			for indexincrement = 1, 1 do
				local bladehit = getAllBladeHits(60)
				if #bladehit > 0 then
					local AcAttack8 = debug.getupvalue(ac.attack, 5)
					local AcAttack9 = debug.getupvalue(ac.attack, 6)
					local AcAttack7 = debug.getupvalue(ac.attack, 4)
					local AcAttack10 = debug.getupvalue(ac.attack, 7)
					local NumberAc12 = (AcAttack8 * 798405 + AcAttack7 * 727595) % AcAttack9
					local NumberAc13 = AcAttack7 * 798405
					(function()
						NumberAc12 = (NumberAc12 * AcAttack9 + NumberAc13) % 1099511627776
						AcAttack8 = math.floor(NumberAc12 / AcAttack9)
						AcAttack7 = NumberAc12 - AcAttack8 * AcAttack9
					end)()
					AcAttack10 = AcAttack10 + 1
					debug.setupvalue(ac.attack, 5, AcAttack8)
					debug.setupvalue(ac.attack, 6, AcAttack9)
					debug.setupvalue(ac.attack, 4, AcAttack7)
					debug.setupvalue(ac.attack, 7, AcAttack10)
					for k, v in pairs(ac.animator.anims.basic) do
						v:Play(0.01,0.01,0.01)
					end                 
					if game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") and ac.blades and ac.blades[1] then 
						game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("weaponChange",tostring(CurrentWeapon()))
						game.ReplicatedStorage.Remotes.Validator:FireServer(math.floor(NumberAc12 / 1099511627776 * 16777215), AcAttack10)
						game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("hit", bladehit, 2, "") 
					end
				end
			end
		end
	end


	--Hard fast

	local plr = game.Players.LocalPlayer
	local CbFw = debug.getupvalues(require(plr.PlayerScripts.CombatFramework))
	local CbFw2 = CbFw[2]

	function GetCurrentBlade() 
		local p13 = CbFw2.activeController
		local ret = p13.blades[1]
		if not ret then return end
		while ret.Parent~=game.Players.LocalPlayer.Character do ret=ret.Parent end
		return ret
	end

	function AttackNoCD()
        if not Auto_Farm_Bounty and not Auto_Farm_Fruit or Mix_Farm then
            if not Auto_Raid then
                local AC = CbFw2.activeController
                for i = 1, 1 do 
                    local bladehit = require(game.ReplicatedStorage.CombatFramework.RigLib).getBladeHits(
                        plr.Character,
                        {plr.Character.HumanoidRootPart},
                        60
                    )
                    local cac = {}
                    local hash = {}
                    for k, v in pairs(bladehit) do
                        if v.Parent:FindFirstChild("HumanoidRootPart") and not hash[v.Parent] then
                            table.insert(cac, v.Parent.HumanoidRootPart)
                            hash[v.Parent] = true
                        end
                    end
                    bladehit = cac
                    if #bladehit > 0 then
                        local u8 = debug.getupvalue(AC.attack, 5)
                        local u9 = debug.getupvalue(AC.attack, 6)
                        local u7 = debug.getupvalue(AC.attack, 4)
                        local u10 = debug.getupvalue(AC.attack, 7)
                        local u12 = (u8 * 798405 + u7 * 727595) % u9
                        local u13 = u7 * 798405
                        (function()
                            u12 = (u12 * u9 + u13) % 1099511627776
                            u8 = math.floor(u12 / u9)
                            u7 = u12 - u8 * u9
                        end)()
                        u10 = u10 + 1
                        debug.setupvalue(AC.attack, 5, u8)
                        debug.setupvalue(AC.attack, 6, u9)
                        debug.setupvalue(AC.attack, 4, u7)
                        debug.setupvalue(AC.attack, 7, u10)
                        pcall(function()
                            if plr.Character:FindFirstChildOfClass("Tool") and AC.blades and AC.blades[1] then
                                AC.animator.anims.basic[1]:Play(0.01,0.01,0.01)
                                game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("weaponChange",tostring(GetCurrentBlade()))
                                game.ReplicatedStorage.Remotes.Validator:FireServer(math.floor(u12 / 1099511627776 * 16777215), u10)
                                game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("hit", bladehit, i, "")
                            end
                        end)
                    end
                end
            end
        end
	end



	--[[task.spawn(function()
		while task.wait() do
			pcall(function()
				if Auto_Farm_Bounty or Auto_Farm_Fruit and not Mix_Farm then
					--[[local Module = require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework)
					local CombatFramework = debug.getupvalues(Module)[2]
					local CameraShakerR = require(game.ReplicatedStorage.Util.CameraShaker)
					CameraShakerR:Stop()
					CombatFramework.activeController.attacking = false
					CombatFramework.activeController.timeToNextAttack = 0
					CombatFramework.activeController.increment = 3
					CombatFramework.activeController.hitboxMagnitude = 150
					CombatFramework.activeController.blocking = false
					CombatFramework.activeController.timeToNextBlock = 0
					CombatFramework.activeController.focusStart = 0
					CombatFramework.activeController.humanoid.AutoRotate = true
					local CombatFramework = require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework)
					local Camera = require(game.ReplicatedStorage.Util.CameraShaker)
					Camera:Stop()
					getupvalues(CombatFramework)[2].activeController.hitboxMagnitude = 80
					getupvalues(CombatFramework)[2]['activeController']:attack()  
				end
			end)
		end
	end)]]

	local YaY = require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework)
	local CameraShakerR = require(game.ReplicatedStorage.Util.CameraShaker)
	spawn(function()
		while task.wait() do
			if Auto_Farm_Bounty or Auto_Farm_Fruit and not Mix_Farm then
				pcall(function()
					for i,CombatFrameworkR in pairs(debug.getupvalues(YaY)) do
						if i == 2 then
							CameraShakerR:Stop()
							CombatFrameworkR.activeController.attacking = false
							CombatFrameworkR.activeController.timeToNextAttack = 0
							CombatFrameworkR.activeController.increment = 4
							CombatFrameworkR.activeController.increment = 2
							CombatFrameworkR.activeController.hitboxMagnitude = 80
							CombatFrameworkR.activeController.blocking = false
							CombatFrameworkR.activeController.timeToNextBlock = 0
							CombatFrameworkR.activeController.focusStart = 0
							CombatFrameworkR.activeController.humanoid.AutoRotate = true
						end
					end
				end)
			else
				for i,CombatFrameworkR in pairs(debug.getupvalues(YaY)) do
					if i == 2 then
						pcall(function()
							CameraShakerR:Stop()
							CombatFrameworkR.activeController.attacking = false
							CombatFrameworkR.activeController.hitboxMagnitude = 80
							CombatFrameworkR.activeController.blocking = false
							CombatFrameworkR.activeController.focusStart = 0
							CombatFrameworkR.activeController.humanoid.AutoRotate = true
						end)
					end
				end
			end
		end
	end)


	--[[local Module = require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework)
	local CombatFramework = debug.getupvalues(Module)[2]
	local CameraShakerR = require(game.ReplicatedStorage.Util.CameraShaker)
	spawn(function()
		while true do
			if Auto_Farm_Bounty or Auto_Farm_Fruit and not Mix_Farm then
				pcall(function()
					CameraShakerR:Stop()
					CombatFramework.activeController.attacking = false
					CombatFramework.activeController.timeToNextAttack = 0
					CombatFramework.activeController.increment = 3
					CombatFramework.activeController.hitboxMagnitude = 150
					CombatFramework.activeController.blocking = false
					CombatFramework.activeController.timeToNextBlock = 0
					CombatFramework.activeController.focusStart = 0
					CombatFramework.activeController.humanoid.AutoRotate = true
				end)
			end
			task.wait()
		end
	end)]]

	--[[local CameraShaker = require(game.ReplicatedStorage.Util.CameraShaker)
	for i,v in pairs(getreg()) do
		if typeof(v) == "function" and getfenv(v).script == game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework then
			for x,w in pairs(debug.getupvalues(v)) do
				if typeof(w) == "table" then
					spawn(function()
						game:GetService("RunService").RenderStepped:Connect(function()
							if Auto_Farm_Bounty or Auto_Farm_Fruit and not Mix_Farm then
								pcall(function()
									if game.Players.LocalPlayer.Character:FindFirstChild("Combat") or game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") or game.Players.LocalPlayer.Character:FindFirstChild("Electro") or game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate") or game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw") or game.Players.LocalPlayer.Character:FindFirstChild("Superhuman") or game.Players.LocalPlayer.Character:FindFirstChild("Sharkman Karate") then
										w.activeController.increment = 3
									else
										w.activeController.increment = 4
									end             
									CameraShaker:Stop()
									w.activeController.timeToNextAttack = -(math.huge^math.huge^math.huge)
									w.activeController.attacking = false
									w.activeController.timeToNextBlock = 0
									w.activeController.blocking = false                            
									w.activeController.hitboxMagnitude = 50
									w.activeController.humanoid.AutoRotate = true
									w.activeController.focusStart = 0
								end)
							end
						end)
					end)
				end
			end
		end
	end]]


do
	local ui = game:GetService("CoreGui").RobloxGui.Modules.Profile:FindFirstChild("SulFurz")
	if ui then 
		ui:Destroy()
	end
end
local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local LocalPlayer = game:GetService("Players").LocalPlayer
local Mouse = LocalPlayer:GetMouse()

getgenv().UiSettings = {
    Key = Enum.KeyCode.RightControl,
}

local function Tween(instance, properties,style,wa)
	if style == nil or "" then
		return Back
	end
	tween:Create(instance,TweenInfo.new(wa,Enum.EasingStyle[style]),{properties}):Play()
end

local ActualTypes = {
	RoundFrame = "ImageLabel",
	Shadow = "ImageLabel",
	Circle = "ImageLabel",
	CircleButton = "ImageButton",
	Frame = "Frame",
	Label = "TextLabel",
	Button = "TextButton",
	SmoothButton = "ImageButton",
	Box = "TextBox",
	ScrollingFrame = "ScrollingFrame",
	Menu = "ImageButton",
	NavBar = "ImageButton"
}

local Properties = {
	RoundFrame = {
		BackgroundTransparency = 1,
		Image = "http://www.roblox.com/asset/?id=5554237731",
		ScaleType = Enum.ScaleType.Slice,
		SliceCenter = Rect.new(3,3,297,297)
	},
	SmoothButton = {
		AutoButtonColor = false,
		BackgroundTransparency = 1,
		Image = "http://www.roblox.com/asset/?id=5554237731",
		ScaleType = Enum.ScaleType.Slice,
		SliceCenter = Rect.new(3,3,297,297)
	},
	Shadow = {
		Name = "Shadow",
		BackgroundTransparency = 1,
		Image = "http://www.roblox.com/asset/?id=5554236805",
		ScaleType = Enum.ScaleType.Slice,
		SliceCenter = Rect.new(23,23,277,277),
		Size = UDim2.fromScale(1,1) + UDim2.fromOffset(30,30),
		Position = UDim2.fromOffset(-15,-15)
	},
	Circle = {
		BackgroundTransparency = 1,
		Image = "http://www.roblox.com/asset/?id=5554831670"
	},
	CircleButton = {
		BackgroundTransparency = 1,
		AutoButtonColor = false,
		Image = "http://www.roblox.com/asset/?id=5554831670"
	},
	Frame = {
		BackgroundTransparency = 1,
		BorderSizePixel = 0,
		Size = UDim2.fromScale(1,1)
	},
	Label = {
		BackgroundTransparency = 1,
		Position = UDim2.fromOffset(5,0),
		Size = UDim2.fromScale(1,1) - UDim2.fromOffset(5,0),
		TextSize = 14,
		TextXAlignment = Enum.TextXAlignment.Left
	},
	Button = {
		BackgroundTransparency = 1,
		Position = UDim2.fromOffset(5,0),
		Size = UDim2.fromScale(1,1) - UDim2.fromOffset(5,0),
		TextSize = 14,
		TextXAlignment = Enum.TextXAlignment.Left
	},
	Box = {
		BackgroundTransparency = 1,
		Position = UDim2.fromOffset(5,0),
		Size = UDim2.fromScale(1,1) - UDim2.fromOffset(5,0),
		TextSize = 14,
		TextXAlignment = Enum.TextXAlignment.Left
	},
	ScrollingFrame = {
		BackgroundTransparency = 1,
		ScrollBarThickness = 0,
		CanvasSize = UDim2.fromScale(0,0),
		Size = UDim2.fromScale(1,1)
	},
	Menu = {
		Name = "More",
		AutoButtonColor = false,
		BackgroundTransparency = 1,
		Image = "http://www.roblox.com/asset/?id=5555108481",
		Size = UDim2.fromOffset(20,20),
		Position = UDim2.fromScale(1,0.5) - UDim2.fromOffset(25,10)
	},
	NavBar = {
		Name = "SheetToggle",
		Image = "http://www.roblox.com/asset/?id=5576439039",
		BackgroundTransparency = 1,
		Size = UDim2.fromOffset(20,20),
		Position = UDim2.fromOffset(5,5),
		AutoButtonColor = false
	}
}

local Types = {
	"RoundFrame",
	"Shadow",
	"Circle",
	"CircleButton",
	"Frame",
	"Label",
	"Button",
	"SmoothButton",
	"Box",
	"ScrollingFrame",
	"Menu",
	"NavBar"
}

function FindType(String)
	for _, Type in next, Types do
		if Type:sub(1, #String):lower() == String:lower() then
			return Type
		end
	end
	return false
end

local Objects = {}

function Objects.new(Type)
	local TargetType = FindType(Type)
	if TargetType then
		local NewImage = Instance.new(ActualTypes[TargetType])
		if Properties[TargetType] then
			for Property, Value in next, Properties[TargetType] do
				NewImage[Property] = Value
			end
		end
		return NewImage
	else
		return Instance.new(Type)
	end
end

local function GetXY(GuiObject)
	local Max, May = GuiObject.AbsoluteSize.X, GuiObject.AbsoluteSize.Y
	local Px, Py = math.clamp(Mouse.X - GuiObject.AbsolutePosition.X, 0, Max), math.clamp(Mouse.Y - GuiObject.AbsolutePosition.Y, 0, May)
	return Px/Max, Py/May
end

local function CircleAnim(GuiObject, EndColour, StartColour)
	local PX, PY = GetXY(GuiObject)
	local Circle = Objects.new("Circle")
	Circle.Size = UDim2.fromScale(0,0)
	Circle.Position = UDim2.fromScale(PX,PY)
	Circle.ImageColor3 = StartColour or GuiObject.ImageColor3
	Circle.ZIndex = 200
	Circle.Parent = GuiObject
	local Size = GuiObject.AbsoluteSize.X
	TweenService:Create(Circle, TweenInfo.new(0.4), {Position = UDim2.fromScale(PX,PY) - UDim2.fromOffset(Size/2,Size/2), ImageTransparency = 1, ImageColor3 = EndColour, Size = UDim2.fromOffset(Size,Size)}):Play()
	spawn(function()
		wait(0.4)
		Circle:Destroy()
	end)
end


local function Tween(instance, properties,style,wa)
    if style == nil or "" then
        return Back
    end
    tween:Create(instance,TweenInfo.new(wa,Enum.EasingStyle[style]),{properties}):Play()
end

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





local SulFurz = Instance.new("ScreenGui")

SulFurz.Name = "SulFurz"
SulFurz.Parent = game:GetService("CoreGui").RobloxGui.Modules.Profile
SulFurz.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

local Ui = {}

function Ui:Window(text) 
    local Main = Instance.new("Frame")
    local Top = Instance.new("Frame")
    local UICorner_Top = Instance.new("UICorner")
    local Logo = Instance.new("ImageLabel")
    local NameHub = Instance.new("TextLabel")
    local ScrollingFrameTab = Instance.new("ScrollingFrame")
    local UIListLayoutTab = Instance.new("UIListLayout")
    local ImageSetting = Instance.new("ImageLabel")
    local UICorner_Setting = Instance.new("UICorner")
    local ButtonSetttings = Instance.new("TextButton")
    local UICorner_Main = Instance.new("UICorner")
    local SettingFrame = Instance.new("Frame")
    local ScrollingFrameSetting = Instance.new("ScrollingFrame")
    local UIListLayoutSetting = Instance.new("UIListLayout")
    local KeyBindUi = Instance.new("TextLabel")
    local Container_Page = Instance.new("Frame")
    local PageFolder = Instance.new("Folder")
    local UIPageLayout = Instance.new("UIPageLayout")
    local toggonsetting = false
    local FocusUi = false

    Main.Name = "Main"
    Main.Parent = SulFurz
    Main.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
    Main.Position = UDim2.new(0.5, 0, 0.5, 0)
    Main.ClipsDescendants = true
    Main.Size = UDim2.new(0, 0, 0, 0)
    Main.AnchorPoint = Vector2.new(0.5,0.5)

	local UiToggle_UiStroke1 = Instance.new("UIStroke")

    UiToggle_UiStroke1.Color = Color3.fromRGB(25,100,200)
    UiToggle_UiStroke1.Thickness = 1
    UiToggle_UiStroke1.Name = "UiToggle_UiStroke1"
    UiToggle_UiStroke1.Parent = Main
    
    TweenService:Create(Main,TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),{Size = UDim2.new(0, 600, 0, 700)}):Play()

    Top.Name = "Top"
    Top.Parent = Main
    Top.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
    Top.Size = UDim2.new(0, 600, 0, 40)

    UICorner_Top.CornerRadius = UDim.new(0, 4)
    UICorner_Top.Name = "UICorner_Top"
    UICorner_Top.Parent = Top

    Logo.Name = "Logo"
    Logo.Parent = Top
    Logo.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Logo.BackgroundTransparency = 1.000
    Logo.Position = UDim2.new(0.00999999978, 0, 0.075000003, 0)
    Logo.Size = UDim2.new(0, 34, 0, 34)
    Logo.Image = "http://www.roblox.com/asset/?id=11939784291"

    NameHub.Name = "NameHub"
    NameHub.Parent = Top
    NameHub.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    NameHub.BackgroundTransparency = 1.000
    NameHub.Position = UDim2.new(0.088333331, 0, 0, 0)
    NameHub.Size = UDim2.new(0, 83, 0, 37)
    NameHub.Font = Enum.Font.GothamBold
    NameHub.Text = text
    NameHub.TextColor3 = Color3.fromRGB(236, 236, 236)
    NameHub.TextSize = 16.000
    NameHub.TextXAlignment = Enum.TextXAlignment.Left

    ScrollingFrameTab.Parent = Top
    ScrollingFrameTab.Active = true
    ScrollingFrameTab.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    ScrollingFrameTab.BackgroundTransparency = 1.000
    ScrollingFrameTab.Position = UDim2.new(0.256584, 0, 0.25, 0) --UDim2.new(0.27700001, 0, 0.25, 0)
    ScrollingFrameTab.Size = UDim2.new(0, 345, 0, 50)
    ScrollingFrameTab.CanvasSize = UDim2.new(0, 0, 0, 0)
    ScrollingFrameTab.ScrollBarThickness = 0

    
    UIListLayoutTab.Parent = ScrollingFrameTab
    UIListLayoutTab.FillDirection = Enum.FillDirection.Horizontal
    UIListLayoutTab.SortOrder = Enum.SortOrder.LayoutOrder
    UIListLayoutTab.Padding = UDim.new(0, 5)




    ImageSetting.Name = "ImageSetting"
    ImageSetting.Parent = Top
    ImageSetting.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    ImageSetting.Position = UDim2.new(0.938333333, 0, 0.200000003, 0)
    ImageSetting.Size = UDim2.new(0, 20, 0, 20)
    ImageSetting.Image = "http://www.roblox.com/asset/?id=11365495533"
    ImageSetting.ImageColor3 = Color3.fromRGB(25, 25, 25)

    UICorner_Setting.CornerRadius = UDim.new(0, 4)
    UICorner_Setting.Name = "UICorner_Setting"
    UICorner_Setting.Parent = ImageSetting

    ButtonSetttings.Name = "ButtonSetttings"
    ButtonSetttings.Parent = ImageSetting
    ButtonSetttings.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    ButtonSetttings.BackgroundTransparency = 1.000
    ButtonSetttings.Size = UDim2.new(0, 20, 0, 20)
    ButtonSetttings.Font = Enum.Font.SourceSans
    ButtonSetttings.Text = ""
    ButtonSetttings.TextColor3 = Color3.fromRGB(0, 0, 0)
    ButtonSetttings.TextSize = 14.000

    UICorner_Main.CornerRadius = UDim.new(0, 4)
    UICorner_Main.Name = "UICorner_Main"
    UICorner_Main.Parent = Main

    local BackSettingFrame = Instance.new("Frame")

    BackSettingFrame.Name = "BackSettingFrame"
    BackSettingFrame.Parent = Main
    BackSettingFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    BackSettingFrame.BackgroundTransparency = 0.45
    BackSettingFrame.BorderSizePixel = 0
    BackSettingFrame.ClipsDescendants = true
    BackSettingFrame.Position = UDim2.new(0, 0, 0.0571428575, 0)
    BackSettingFrame.Size = UDim2.new(0, 0, 0, 660)
    BackSettingFrame.ZIndex = 2

    SettingFrame.Name = "SettingFrame"
    SettingFrame.Parent = Main
    SettingFrame.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
    SettingFrame.BackgroundTransparency = 0
    SettingFrame.BorderSizePixel = 0
    SettingFrame.ClipsDescendants = true
    SettingFrame.Position = UDim2.new(0, 0, 0.0571428575, 0)
    SettingFrame.Size = UDim2.new(0, 0, 0, 100)
    SettingFrame.ZIndex = 3

    local SettingFrameE = Instance.new("Frame")

    SettingFrameE.Name = "SettingFrameE"
    SettingFrameE.Parent = SettingFrame
    SettingFrameE.BackgroundColor3 = Color3.fromRGB(255, 25, 25)
    SettingFrameE.BackgroundTransparency = 1
    SettingFrameE.BorderSizePixel = 0
    SettingFrameE.ClipsDescendants = true
    SettingFrameE.Position = UDim2.new(0, 0, 0, 0)
    SettingFrameE.Size = UDim2.new(0, 255, 0, 614)

    ScrollingFrameSetting.Name = "ScrollingFrameSetting"
    ScrollingFrameSetting.Parent = SettingFrameE
    ScrollingFrameSetting.Active = true
    ScrollingFrameSetting.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    ScrollingFrameSetting.BackgroundTransparency = 1.000
    ScrollingFrameSetting.BorderSizePixel = 0
    ScrollingFrameSetting.Size = UDim2.new(0, 0, 0, 150)
    ScrollingFrameSetting.CanvasSize = UDim2.new(0, 0, 0, 0)
    ScrollingFrameSetting.ScrollBarThickness = 4
    ScrollingFrameSetting.ClipsDescendants = true

    UIListLayoutSetting.Name = "UIListLayoutSetting"
    UIListLayoutSetting.Parent = ScrollingFrameSetting
    UIListLayoutSetting.SortOrder = Enum.SortOrder.LayoutOrder
    UIListLayoutSetting.Padding = UDim.new(0, 10)



    KeyBindUi.Name = "KeyBindUi"
    KeyBindUi.Parent = SettingFrame
    KeyBindUi.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    KeyBindUi.BackgroundTransparency = 1.000
    KeyBindUi.Position = UDim2.new(-0.00392156886, 0, 0.943939388, 0)
    KeyBindUi.Size = UDim2.new(0, 255, 0, 27)
    KeyBindUi.Font = Enum.Font.GothamBold
    KeyBindUi.Text = "[ Right Control ]"
    KeyBindUi.TextColor3 = Color3.fromRGB(222, 222, 222)
    KeyBindUi.TextSize = 14.000
    KeyBindUi.ZIndex = 4

    Container_Page.Name = "Container_Page"
    Container_Page.Parent = Main
    Container_Page.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Container_Page.BackgroundTransparency = 1.000
    Container_Page.ClipsDescendants = true
    Container_Page.Position = UDim2.new(0.0266666673, 0, 0.0842857137, 0)
    Container_Page.Size = UDim2.new(0, 567, 0, 621)

    PageFolder.Name = "PageFolder"
    PageFolder.Parent = Container_Page

    UIPageLayout.Parent = PageFolder
    UIPageLayout.SortOrder = Enum.SortOrder.LayoutOrder
    UIPageLayout.EasingDirection = Enum.EasingDirection.InOut
    UIPageLayout.EasingStyle = Enum.EasingStyle.Quad
    UIPageLayout.Padding = UDim.new(0.5, 0)
    UIPageLayout.TweenTime = 0.500

    local ButtonKeybind = Instance.new("TextButton")

    ButtonKeybind.Name = "ButtonKeybind"
    ButtonKeybind.Parent = SettingFrame
    ButtonKeybind.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    ButtonKeybind.Position = UDim2.new(-0.00392156886, 0, 0.943939388, 0)
    ButtonKeybind.BackgroundTransparency = 1.000
    ButtonKeybind.Size = UDim2.new(0, 255, 0, 27)
    ButtonKeybind.Font = Enum.Font.SourceSans
    ButtonKeybind.Text = ""
    ButtonKeybind.TextColor3 = Color3.fromRGB(0, 0, 0)
    ButtonKeybind.TextSize = 14.000

    
    ButtonKeybind.MouseButton1Click:Connect(function()
        KeyBindUi.Text = "[ Select Key ]"
        local inputwait = UserInputService.InputBegan:wait()
        if inputwait.KeyCode.Name ~= "Unknown" then
            getgenv().UiSettings.Key = inputwait.KeyCode
            KeyBindUi.Text = "[ " .. getgenv().UiSettings.Key.Name .." ] "

            Key = inputwait.KeyCode.Name
        end
    end)
    local uitoggled = false
    UserInputService.InputBegan:Connect(function(io, p)
        if io.KeyCode == getgenv().UiSettings.Key then
            if uitoggled == false then
                uitoggled = true
                TweenService:Create(
                    Main,
                    TweenInfo.new(.5, Enum.EasingStyle.Quart, Enum.EasingDirection.In),
                    {Size = UDim2.new(0, 0, 0, 0)}
                ):Play()
            else
                TweenService:Create(
                    Main,
                    TweenInfo.new(.5, Enum.EasingStyle.Quart, Enum.EasingDirection.Out),
                    {Size = UDim2.new(0, 600, 0, 700)}
                ):Play()
                repeat wait() until Main.Size == UDim2.new(0, 600, 0, 700)
                uitoggled = false
            end
        end
    end)

    MakeDraggable(Top,Main)
    game:GetService("RunService").Stepped:Connect(function()
        pcall(function()
            ScrollingFrameTab.CanvasSize =  UDim2.new(0,UIListLayoutTab.AbsoluteContentSize.X +10,0,0)
            ScrollingFrameSetting.CanvasSize =  UDim2.new(0, 0, 0,UIListLayoutSetting.AbsoluteContentSize.Y + 10)
        end)
    end)

    ButtonSetttings.MouseButton1Down:Connect(function()
        if toggonsetting == false then
            toggonsetting = true
            TweenService:Create(
                SettingFrame,
                TweenInfo.new(.2, Enum.EasingStyle.Back, Enum.EasingDirection.Out),
                {Size = UDim2.new(0, 255, 0, 660)}
            ):Play()
            TweenService:Create(
                ScrollingFrameSetting,
                TweenInfo.new(.2, Enum.EasingStyle.Back, Enum.EasingDirection.Out),
                {Size = UDim2.new(0, 255, 0, 660)}
            ):Play()
            TweenService:Create(
                BackSettingFrame,
                TweenInfo.new(.1, Enum.EasingStyle.Quart, Enum.EasingDirection.Out),
                {Size = UDim2.new(0, 600, 0, 660)}
            ):Play()
            TweenService:Create(
                ImageSetting,
                TweenInfo.new(.1, Enum.EasingStyle.Quart, Enum.EasingDirection.In),
                {BackgroundColor3 = Color3.fromRGB(0, 166, 255)}
            ):Play()

        elseif toggonsetting == true then
            toggonsetting = false
            TweenService:Create(
                SettingFrame,
                TweenInfo.new(.2, Enum.EasingStyle.Quart, Enum.EasingDirection.In),
                {Size = UDim2.new(0, 0, 0, 660)}
            ):Play()
            TweenService:Create(
                ScrollingFrameSetting,
                TweenInfo.new(.2, Enum.EasingStyle.Quart, Enum.EasingDirection.In),
                {Size = UDim2.new(0, 0, 0, 660)}
            ):Play()
            TweenService:Create(
                BackSettingFrame,
                TweenInfo.new(0.05, Enum.EasingStyle.Quart, Enum.EasingDirection.In),
                {Size = UDim2.new(0, 0, 0, 660)}
            ):Play()
            TweenService:Create(
                ImageSetting,
                TweenInfo.new(.1, Enum.EasingStyle.Quart, Enum.EasingDirection.In),
                {BackgroundColor3 = Color3.fromRGB(255, 255, 255)}
            ):Play()
        end
    end)

	local NotiFrame = Instance.new("Frame")
	NotiFrame.Name = "NotiFrame"
	NotiFrame.Parent = SulFurz
	NotiFrame.AnchorPoint = Vector2.new(0.5, 0.5)
	NotiFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	NotiFrame.BackgroundTransparency = 1.000
	NotiFrame.Position = UDim2.new(1.4, 0, 0.0613496937, 0)
	NotiFrame.Size = UDim2.new(0, 5300, 0, 100)

	local Notilistlayout = Instance.new("UIListLayout")

	Notilistlayout.Name = "Notilistlayout"
	Notilistlayout.Parent = NotiFrame
	Notilistlayout.FillDirection = Enum.FillDirection.Horizontal
	Notilistlayout.SortOrder = Enum.SortOrder.LayoutOrder
	Notilistlayout.Padding = UDim.new(0, 5)

	function Notification(text,text2,delays,logo)
		if logo == nil then
			logo = 8346185306
		end
		if delays == nil then
			delays = 1
		end
		local TitleFrame = Instance.new("Frame")

		TitleFrame.Name = "TitleFrame"
		TitleFrame.Parent = NotiFrame
		TitleFrame.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
		TitleFrame.Size = UDim2.new(0, 0, 0, 0)

		TitleFrame:TweenSizeAndPosition(UDim2.new(0, 250-10, 0, 70),  UDim2.new(0.5, 0, 0.5,0), "Out", "Back", 0.3, true)

		local ConnerTitile = Instance.new("UICorner")

		ConnerTitile.CornerRadius = UDim.new(0, 4)
		ConnerTitile.Name = "ConnerTitile"
		ConnerTitile.Parent = TitleFrame

		local imagenoti = Instance.new("ImageLabel")

		imagenoti.Name = "imagenoti"
		imagenoti.Parent = TitleFrame
		imagenoti.AnchorPoint = Vector2.new(0.5, 0.5)
		imagenoti.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		imagenoti.Position = UDim2.new(0.135999978, 0, 0.5, 0)
		imagenoti.Size = UDim2.new(0, 50, 0, 50)
		imagenoti.BackgroundTransparency = 1
		imagenoti.Image = "http://www.roblox.com/asset/?id="..tostring(logo)

		local txdlid = Instance.new("TextLabel")
		local LableFrame = Instance.new("Frame")

		txdlid.Name = "txdlid"
		txdlid.Parent = TitleFrame
		txdlid.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		txdlid.BackgroundTransparency = 1.000
		txdlid.Position = UDim2.new(0.275999993, 0, 0.25, 0)
		txdlid.Size = UDim2.new(0, 175, 0, 24)
		txdlid.Font = Enum.Font.GothamSemibold
		txdlid.TextColor3 = Color3.fromRGB(255,255,255)
		txdlid.TextSize = 11.000
		txdlid.Text = text
		txdlid.TextXAlignment = Enum.TextXAlignment.Left

		LableFrame.Name = "LableFrame"
		LableFrame.Parent = TitleFrame
		LableFrame.AnchorPoint = Vector2.new(0.5, 0.5)
		LableFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		LableFrame.BackgroundTransparency = 1.000
		LableFrame.Position = UDim2.new(0.625999987, 0, 0.620000005, 0)
		LableFrame.Size = UDim2.new(0, 175, 0, 25)

		local TextNoti = Instance.new("TextLabel")

		TextNoti.Name = "TextNoti"
		TextNoti.Parent = LableFrame
		TextNoti.Active = true
		TextNoti.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		TextNoti.BackgroundTransparency = 1.000
		TextNoti.Position = UDim2.new(-0.009, 0, 0.55, 0)
		TextNoti.Size = UDim2.new(0, 0, 0, 0)
		TextNoti.Font = Enum.Font.Gotham
		TextNoti.Text = text2
		TextNoti.TextColor3 = Color3.fromRGB(255,0,0)
		TextNoti.TextSize = 11.000
		TextNoti.TextXAlignment = Enum.TextXAlignment.Left

		repeat wait() until TitleFrame.Size == UDim2.new(0, 250-10, 0, 70)

		local Time = Instance.new("Frame")
		local UICorner = Instance.new("UICorner")
		local UIPadding = Instance.new("UIPadding")

		Time.Name = "Time"
		Time.Parent = TitleFrame
		Time.Active = true
		Time.BackgroundColor3 = Color3.fromRGB(80, 245, 245)
		Time.BorderSizePixel = 0
		Time.Position = UDim2.new(0.0320000015, 0, 0.870000005, 0)
		Time.Size = UDim2.new(0, 236, 0, 3)

		UICorner.Parent = Time
		UICorner.CornerRadius = UDim.new(0, 4)
		UICorner.Name = ""

		UIPadding.Parent = NotiFrame
		UIPadding.PaddingLeft = UDim.new(0, 15)
		UIPadding.PaddingTop = UDim.new(0, 15)

		TweenService:Create(
			Time,
			TweenInfo.new(tonumber(delays), Enum.EasingStyle.Linear, Enum.EasingDirection.InOut),
			{Size = UDim2.new(0, 0, 0, 3)} -- UDim2.new(0, 128, 0, 25)
		):Play()
		delay(tonumber(delays),function()
			TweenService:Create(
				imagenoti,
				TweenInfo.new(0.2, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut),
				{ImageTransparency = 1} -- UDim2.new(0, 128, 0, 25)
			):Play()
			TweenService:Create(
				TextNoti,
				TweenInfo.new(0.2, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut),
				{TextTransparency = 1} -- UDim2.new(0, 128, 0, 25)
			):Play()
			TweenService:Create(
				txdlid,
				TweenInfo.new(0.2, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut),
				{TextTransparency = 1} -- UDim2.new(0, 128, 0, 25)
			):Play()
			wait(0.3)
			TweenService:Create(
				TitleFrame,
				TweenInfo.new(0.4, Enum.EasingStyle.Quart, Enum.EasingDirection.InOut),
				{Size = UDim2.new(0, 0, 0, 70)} -- UDim2.new(0, 128, 0, 25)
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
				TweenService:Create(Main,TweenInfo.new(0.4,Enum.EasingStyle.Back,Enum.EasingDirection.In),{Size = UDim2.new(0, 0, 0, 0)}):Play()
				uitoggled = true
			else
				Main:TweenSize(UDim2.new(0, 623, 0, 504), Enum.EasingDirection.Out, Enum.EasingStyle.Back, .4, true)
				uitoggled = false
			end
		end
	end)

    function SettingsLabel(text)
        local LabelFrameSetting = Instance.new("Frame")
        local LabelSetting = Instance.new("TextLabel")
        local ReturnLabelSet = {}

        LabelFrameSetting.Name = "LabelFrameSetting"
        LabelFrameSetting.Parent = ScrollingFrameSetting
        LabelFrameSetting.BackgroundColor3 = Color3.fromRGB(122, 122, 122)
        LabelFrameSetting.BackgroundTransparency = 1.000
        LabelFrameSetting.Size = UDim2.new(0, 255, 0, 38)
        
        LabelSetting.Name = "LabelSetting"
        LabelSetting.Parent = LabelFrameSetting
        LabelSetting.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        LabelSetting.BackgroundTransparency = 1.000
        LabelSetting.Position = UDim2.new(0.0235294141, 0, 0, 0)
        LabelSetting.Size = UDim2.new(0, 245, 0, 38)
        LabelSetting.Font = Enum.Font.GothamBold
        LabelSetting.Text = text
        LabelSetting.TextColor3 = Color3.fromRGB(255, 255, 255)
        LabelSetting.TextSize = 14.000
        LabelSetting.TextXAlignment = Enum.TextXAlignment.Left

        function ReturnLabelSet:SetUpdate(newtext)
            LabelSetting.Text = newtext
        end
        
        return ReturnLabelSet
    end
    function SettingsToggle(text,default,callback)
        local ToggleFrameSetting = Instance.new("Frame")
        local TgleFrameSetting = Instance.new("Frame")
        local UICornerTgleSetting = Instance.new("UICorner")
        local Tgle = Instance.new("ImageLabel")
        local TgleSetting = Instance.new("TextLabel")
        local ToggleSetting = Instance.new("TextButton")
        local ToggleSet_UIStroke = Instance.new("UIStroke")
        local ToggleSet = false
        local lockerset = true
        local checkfirsttimeset = true 

        
        if default == nil then default = false end

        ToggleFrameSetting.Name = "ToggleFrameSetting"
        ToggleFrameSetting.Parent = ScrollingFrameSetting
        ToggleFrameSetting.BackgroundColor3 = Color3.fromRGB(122, 122, 122)
        ToggleFrameSetting.BackgroundTransparency = 1.000
        ToggleFrameSetting.Size = UDim2.new(0, 255, 0, 26)

        TgleFrameSetting.Name = "TgleFrameSetting"
        TgleFrameSetting.Parent = ToggleFrameSetting
        TgleFrameSetting.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        TgleFrameSetting.BackgroundTransparency = 1.000
        TgleFrameSetting.BorderSizePixel = 0
        TgleFrameSetting.ClipsDescendants = true
        TgleFrameSetting.Position = UDim2.new(0.0239999816, 0, 0, 0)
        TgleFrameSetting.Size = UDim2.new(0, 26, 0, 26)

        UICornerTgleSetting.CornerRadius = UDim.new(0, 3)
        UICornerTgleSetting.Name = "UICornerTgleSetting"
        UICornerTgleSetting.Parent = TgleFrameSetting

        ToggleSet_UIStroke.Thickness = 1
        ToggleSet_UIStroke.Name = ""
        ToggleSet_UIStroke.Parent = TgleFrameSetting
        ToggleSet_UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
        ToggleSet_UIStroke.LineJoinMode = Enum.LineJoinMode.Round
        ToggleSet_UIStroke.Color = Color3.fromRGB(0, 135, 255)
        ToggleSet_UIStroke.Transparency = 0

        Tgle.Name = "Tgle"
        Tgle.Parent = TgleFrameSetting
        Tgle.AnchorPoint = Vector2.new(0.5, 0.5)
        Tgle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Tgle.BackgroundTransparency = 1.000
        Tgle.Position = UDim2.new(0.512559988, 0, 0.514999986, 0)
        Tgle.Size = UDim2.new(0, 0, 0, 0)
        Tgle.Image = "rbxassetid://6031068421"
        Tgle.ImageColor3 = Color3.fromRGB(0, 135, 255)

        TgleSetting.Name = "TgleSetting"
        TgleSetting.Parent = ToggleFrameSetting
        TgleSetting.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        TgleSetting.BackgroundTransparency = 1.000
        TgleSetting.Position = UDim2.new(0.164705887, 0, 0, 0)
        TgleSetting.Size = UDim2.new(0, 197, 0, 26)
        TgleSetting.Font = Enum.Font.GothamBold
        TgleSetting.Text = text
        TgleSetting.TextColor3 = Color3.fromRGB(255, 255, 255)
        TgleSetting.TextSize = 14.000
        TgleSetting.TextXAlignment = Enum.TextXAlignment.Left

        ToggleSetting.Name = "ToggleSetting"
        ToggleSetting.Parent = ToggleFrameSetting
        ToggleSetting.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        ToggleSetting.BackgroundTransparency = 1.000
        ToggleSetting.Size = UDim2.new(0, 255, 0, 26)
        ToggleSetting.Font = Enum.Font.SourceSans
        ToggleSetting.Text = ""
        ToggleSetting.TextColor3 = Color3.fromRGB(0, 0, 0)
        ToggleSetting.TextSize = 14.000


        ToggleSetting.MouseButton1Click:Connect(function()
            if ToggleSet == false and lockerset == true then
                ToggleSet = true
                TweenService:Create(
                    Tgle,
                    TweenInfo.new(0.2, Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                    {Size = UDim2.new(0, 0, 0, 0)}
                ):Play()
                callback(false)
            elseif ToggleSet == true and lockerset == true then
                ToggleSet = false
                TweenService:Create(
                    Tgle,
                    TweenInfo.new(0.2, Enum.EasingStyle.Back,Enum.EasingDirection.Out),
                    {Size = UDim2.new(0, 29, 0, 28)}
                ):Play()
                callback(true)
            end 
        end)

        if default == true then
            ToggleSet = false
            TweenService:Create(
                Tgle,
                TweenInfo.new(0.2, Enum.EasingStyle.Back,Enum.EasingDirection.Out),
                {Size = UDim2.new(0, 29, 0, 28)}
            ):Play()
            callback(true)
        end

        local LockerFrame = Instance.new("Frame")
        local LockIcon = Instance.new("ImageLabel")
        local togglesetfunc = {}


        LockerFrame.Name = "LockerFrame"
        LockerFrame.Parent = ToggleFrameSetting
        LockerFrame.Active = true
        LockerFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
        LockerFrame.BackgroundTransparency = 0.200
        LockerFrame.BorderSizePixel = 0
        LockerFrame.ClipsDescendants = true
        LockerFrame.Position = UDim2.new(0, 0, -0.053222228, 0)
        LockerFrame.Size = UDim2.new(0, 255, 0, 35)
        LockerFrame.BackgroundTransparency = 1

        LockIcon.Name = "LockIcon"
        LockIcon.Parent = LockerFrame
        LockIcon.AnchorPoint = Vector2.new(0.5, 0.5)
        LockIcon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        LockIcon.BackgroundTransparency = 1.000
        LockIcon.Position = UDim2.new(0.5, 0, 0.5, 0)
        LockIcon.Size = UDim2.new(0, 0, 0, 0)
        LockIcon.Image = "http://www.roblox.com/asset/?id=3926305904"
        LockIcon.ImageRectOffset = Vector2.new(404, 364)
        LockIcon.ImageRectSize = Vector2.new(36, 36)
        LockIcon.ImageColor3 = Color3.fromRGB(255,25,25)

                        
        function togglesetfunc:StatsTrue()
            if (ToggleSet == true and lockerset == true) or checkfirsttimeset == true then
                checkfirsttimeset = false
                ToggleSet = false
                TweenService:Create(
                    Tgle,
                    TweenInfo.new(0.2, Enum.EasingStyle.Back,Enum.EasingDirection.Out),
                    {Size = UDim2.new(0, 29, 0, 28)}
                ):Play()
                callback(true)
            end
        end
        
        function togglesetfunc:StatsFalse()
            if ToggleSet == false and lockerset == true then
                ToggleSet = true
                TweenService:Create(
                    Tgle,
                    TweenInfo.new(0.2, Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                    {Size = UDim2.new(0, 0, 0, 0)}
                ):Play()
                callback(false)
            end
        end

        function togglesetfunc:Lock()
            lockerset = false
            TweenService:Create(
                LockerFrame,
                TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out,0.1),
                {BackgroundTransparency = 0.45}
            ):Play()
            wait()
            TweenService:Create(
                LockIcon,
                TweenInfo.new(.2, Enum.EasingStyle.Back, Enum.EasingDirection.Out,0.1),
                {Size = UDim2.new(0, 25, 0, 25)}
            ):Play()
        end
        function togglesetfunc:Unlock()
            lockerset = true
            TweenService:Create(
                LockerFrame,
                TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out,0.1),
                {BackgroundTransparency = 1}
            ):Play()
            wait()
            TweenService:Create(
                LockIcon,
                TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out,0.1),
                {Size = UDim2.new(0, 0, 0, 0)}
            ):Play()
        end
        return togglesetfunc
    end

    function SettingsButton(text,callback)
        local ButtonFrameSetting = Instance.new("Frame")
        local BtnFrameSetting = Instance.new("Frame")
        local UICornerBtnSetting = Instance.new("UICorner")
        local BtnSetting = Instance.new("TextLabel")
        local ButtonSetting = Instance.new("TextButton")

        ButtonFrameSetting.Name = "ButtonFrameSetting"
        ButtonFrameSetting.Parent = ScrollingFrameSetting
        ButtonFrameSetting.BackgroundColor3 = Color3.fromRGB(122, 122, 122)
        ButtonFrameSetting.BackgroundTransparency = 1.000
        ButtonFrameSetting.Size = UDim2.new(0, 255, 0, 26)
        

        BtnFrameSetting.Name = "BtnFrameSetting"
        BtnFrameSetting.Parent = ButtonFrameSetting
        BtnFrameSetting.BackgroundColor3 = Color3.fromRGB(0, 155, 255)
        BtnFrameSetting.BorderSizePixel = 0
        BtnFrameSetting.Position = UDim2.new(0.0240000002, 0, 0, 0)
        BtnFrameSetting.Size = UDim2.new(0, 239, 0, 26)
        BtnFrameSetting.ClipsDescendants = true

        UICornerBtnSetting.CornerRadius = UDim.new(0, 3)
        UICornerBtnSetting.Name = "UICornerBtnSetting"
        UICornerBtnSetting.Parent = BtnFrameSetting

        BtnSetting.Name = "BtnSetting"
        BtnSetting.Parent = BtnFrameSetting
        BtnSetting.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        BtnSetting.BackgroundTransparency = 1.000
        BtnSetting.Size = UDim2.new(0, 239, 0, 26)
        BtnSetting.Font = Enum.Font.GothamBold
        BtnSetting.Text = text
        BtnSetting.TextColor3 = Color3.fromRGB(255, 255, 255)
        BtnSetting.TextSize = 14.000


        ButtonSetting.Name = "ButtonSetting"
        ButtonSetting.Parent = ButtonFrameSetting
        ButtonSetting.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        ButtonSetting.BackgroundTransparency = 1.000
        ButtonSetting.Size = UDim2.new(0, 255, 0, 26)
        ButtonSetting.Font = Enum.Font.SourceSans
        ButtonSetting.Text = ""
        ButtonSetting.TextColor3 = Color3.fromRGB(0, 0, 0)
        ButtonSetting.TextSize = 14.000

        ButtonSetting.MouseButton1Click:Connect(function()
            if toggonsetting == true then
                CircleAnim(BtnFrameSetting, Color3.fromRGB(255,255,255), Color3.fromRGB(255,255,255))
                BtnSetting.TextSize = 0
                TweenService:Create(
                    BtnSetting,
                    TweenInfo.new(0.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                    {TextSize = 14}
                ):Play()
                callback()   
            end
        end)
    end

	function SettingsDropdown(text,option,callback)
		local isdropping = false
		local Dropdown = Instance.new("Frame")
		local UICorner = Instance.new("UICorner")
		local DropTitle = Instance.new("TextLabel")
		local DropScroll = Instance.new("ScrollingFrame")
		local UIListLayout = Instance.new("UIListLayout")
		local UIPadding = Instance.new("UIPadding")
		local DropButton = Instance.new("TextButton")
		local DropImage = Instance.new("ImageLabel")
		
		Dropdown.Name = "Dropdown"
		Dropdown.Parent = ScrollingFrameSetting
		Dropdown.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
		Dropdown.ClipsDescendants = true
		Dropdown.Size = UDim2.new(0, 470, 0, 31)
		
		UICorner.CornerRadius = UDim.new(0, 5)
		UICorner.Parent = Dropdown
		
		DropTitle.Name = "DropTitle"
		DropTitle.Parent = Dropdown
		DropTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		DropTitle.BackgroundTransparency = 1.000
		DropTitle.Size = UDim2.new(0, 200, 0, 31)
		DropTitle.Font = Enum.Font.GothamSemibold
		DropTitle.Text = text.. " : "
		DropTitle.TextColor3 = Color3.fromRGB(225, 225, 225)
		DropTitle.TextSize = 15.000
		
		DropScroll.Name = "DropScroll"
		DropScroll.Parent = DropTitle
		DropScroll.Active = true
		DropScroll.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		DropScroll.BackgroundTransparency = 1.000
		DropScroll.BorderSizePixel = 0
		DropScroll.Position = UDim2.new(0, 0, 0, 31)
		DropScroll.Size = UDim2.new(0, 470, 0, 100)
		DropScroll.CanvasSize = UDim2.new(0, 0, 0, 2)
		DropScroll.ScrollBarThickness = 3
		
		UIListLayout.Parent = DropScroll
		UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
		UIListLayout.Padding = UDim.new(0, 5)
		
		UIPadding.Parent = DropScroll
		UIPadding.PaddingLeft = UDim.new(0, 5)
		UIPadding.PaddingTop = UDim.new(0, 5)
		
		DropImage.Name = "DropImage"
		DropImage.Parent = Dropdown
		DropImage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		DropImage.BackgroundTransparency = 1.000
		DropImage.Position = UDim2.new(0, 235, 0, 6)
		DropImage.Rotation = -90
		DropImage.Size = UDim2.new(0, 20, 0, 20)
		DropImage.Image = "rbxassetid://6031090990"
		
		DropButton.Name = "DropButton"
		DropButton.Parent = Dropdown
		DropButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		DropButton.BackgroundTransparency = 1.000
		DropButton.Size = UDim2.new(0, 470, 0, 31)
		DropButton.Font = Enum.Font.SourceSans
		DropButton.Text = ""
		DropButton.TextColor3 = Color3.fromRGB(0, 0, 0)
		DropButton.TextSize = 14.000

		for i,v in next,option do
			local Item = Instance.new("TextButton")

			Item.Name = "Item"
			Item.Parent = DropScroll
			Item.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Item.BackgroundTransparency = 1.000
			Item.Size = UDim2.new(0, 250, 0, 26)
			Item.Font = Enum.Font.GothamSemibold
			Item.Text = tostring(v)
			Item.TextColor3 = Color3.fromRGB(225, 225, 225)
			Item.TextSize = 13.000
			Item.TextTransparency = 0.500
			Item.ClipsDescendants = true


			Item.MouseEnter:Connect(function()
				TweenService:Create(
					Item,
					TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
					{TextTransparency = 0}
				):Play()
			end)

			Item.MouseLeave:Connect(function()
				TweenService:Create(
					Item,
					TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
					{TextTransparency = 0.5}
				):Play()
			end)

			Item.MouseButton1Click:Connect(function()
				CircleAnim(Item, Color3.fromRGB(255,255,255), Color3.fromRGB(255,255,255))
				isdropping = false
				Dropdown:TweenSize(UDim2.new(0,470,0,31),"Out","Quad",0.3,true)
				TweenService:Create(
					DropImage,
					TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
					{Rotation = -90}
				):Play()
				DropScroll.CanvasSize = UDim2.new(0,0,0,UIListLayout.AbsoluteContentSize.Y + 10)
				callback(Item.Text)
				DropTitle.Text = text.." : "..Item.Text
			end)
		end

		DropScroll.CanvasSize = UDim2.new(0,0,0,UIListLayout.AbsoluteContentSize.Y + 10)

		DropButton.MouseButton1Click:Connect(function()
			if isdropping == false then
				isdropping = true
				Dropdown:TweenSize(UDim2.new(0,470,0,131),"Out","Quad",0.3,true)
				TweenService:Create(
					DropImage,
					TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
					{Rotation = 180}
				):Play()
				DropScroll.CanvasSize = UDim2.new(0,0,0,UIListLayout.AbsoluteContentSize.Y + 10)
			else
				isdropping = false
				Dropdown:TweenSize(UDim2.new(0,470,0,31),"Out","Quad",0.3,true)
				TweenService:Create(
					DropImage,
					TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
					{Rotation = -90}
				):Play()
				DropScroll.CanvasSize = UDim2.new(0,0,0,UIListLayout.AbsoluteContentSize.Y + 10)
			end
		end)

		local dropfunc = {}
		function dropfunc:Add(t)
			local Item = Instance.new("TextButton")
			Item.Name = "Item"
			Item.Parent = DropScroll
			Item.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Item.BackgroundTransparency = 1.000
			Item.Size = UDim2.new(0, 470, 0, 26)
			Item.Font = Enum.Font.GothamSemibold
			Item.Text = tostring(t)
			Item.TextColor3 = Color3.fromRGB(225, 225, 225)
			Item.TextSize = 13.000
			Item.TextTransparency = 0.500
			Item.ClipsDescendants = true

			Item.MouseEnter:Connect(function()
				TweenService:Create(
					Item,
					TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
					{TextTransparency = 0}
				):Play()
			end)

			Item.MouseLeave:Connect(function()
				TweenService:Create(
					Item,
					TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
					{TextTransparency = 0.5}
				):Play()
			end)

			Item.MouseButton1Click:Connect(function()
				isdropping = false
				CircleAnim(Item, Color3.fromRGB(255,255,255), Color3.fromRGB(255,255,255))
				Dropdown:TweenSize(UDim2.new(0,470,0,31),"Out","Quad",0.3,true)
				TweenService:Create(
					DropImage,
					TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
					{Rotation = -90}
				):Play()
				DropScroll.CanvasSize = UDim2.new(0,0,0,UIListLayout.AbsoluteContentSize.Y + 10)
				callback(Item.Text)
				DropTitle.Text = text.." : "..Item.Text
			end)
		end
		
		function dropfunc:Clear()
			DropTitle.Text = tostring(text).." : "
			isdropping = false
			Dropdown:TweenSize(UDim2.new(0,470,0,31),"Out","Quad",0.3,true)
			TweenService:Create(
				DropImage,
				TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
				{Rotation = -90}
			):Play()
			for i,v in next, DropScroll:GetChildren() do
				if v:IsA("TextButton") then
					v:Destroy()
				end
			end
		end
		return dropfunc
	end

	function SettingsDropdowns(text,old,option,callback)
		local isdropping = false
		local Dropdown = Instance.new("Frame")
		local UICorner = Instance.new("UICorner")
		local DropTitle = Instance.new("TextLabel")
		local DropScroll = Instance.new("ScrollingFrame")
		local UIListLayout = Instance.new("UIListLayout")
		local UIPadding = Instance.new("UIPadding")
		local DropButton = Instance.new("TextButton")
		local DropImage = Instance.new("ImageLabel")
		
		Dropdown.Name = "Dropdown"
		Dropdown.Parent = ScrollingFrameSetting
		Dropdown.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
		Dropdown.ClipsDescendants = true
		Dropdown.Size = UDim2.new(0, 600, 0, 31)
		
		UICorner.CornerRadius = UDim.new(0, 5)
		UICorner.Parent = Dropdown
		
		if type(old) == "string" then
			DropTitle.Name = "DropTitle"
			DropTitle.Parent = Dropdown
			DropTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			DropTitle.BackgroundTransparency = 1.000
			DropTitle.Size = UDim2.new(0, 190, 0, 31)
			DropTitle.Font = Enum.Font.GothamSemibold
			DropTitle.Text = text.. " : "..old
			DropTitle.TextColor3 = Color3.fromRGB(225, 225, 225)
			DropTitle.TextSize = 15.000
		else
			DropTitle.Name = "DropTitle"
			DropTitle.Parent = Dropdown
			DropTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			DropTitle.BackgroundTransparency = 1.000
			DropTitle.Size = UDim2.new(0, 190, 0, 31)
			DropTitle.Font = Enum.Font.GothamSemibold
			DropTitle.Text = text.. " : "
			DropTitle.TextColor3 = Color3.fromRGB(225, 225, 225)
			DropTitle.TextSize = 15.000
		end
		
		DropScroll.Name = "DropScroll"
		DropScroll.Parent = DropTitle
		DropScroll.Active = true
		DropScroll.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		DropScroll.BackgroundTransparency = 1.000
		DropScroll.BorderSizePixel = 0
		DropScroll.Position = UDim2.new(0, 0, 0, 31)
		DropScroll.Size = UDim2.new(0, 250, 0, 100)
		DropScroll.CanvasSize = UDim2.new(0, 0, 0, 2)
		DropScroll.ScrollBarThickness = 3
		
		UIListLayout.Parent = DropScroll
		UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
		UIListLayout.Padding = UDim.new(0, 5)
		
		UIPadding.Parent = DropScroll
		UIPadding.PaddingLeft = UDim.new(0, 5)
		UIPadding.PaddingTop = UDim.new(0, 5)
		
		DropImage.Name = "DropImage"
		DropImage.Parent = Dropdown
		DropImage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		DropImage.BackgroundTransparency = 1.000
		DropImage.Position = UDim2.new(0, 235, 0, 6)
		DropImage.Rotation = -90
		DropImage.Size = UDim2.new(0, 20, 0, 20)
		DropImage.Image = "rbxassetid://6031090990"
		
		DropButton.Name = "DropButton"
		DropButton.Parent = Dropdown
		DropButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		DropButton.BackgroundTransparency = 1.000
		DropButton.Size = UDim2.new(0, 190, 0, 31)
		DropButton.Font = Enum.Font.SourceSans
		DropButton.Text = ""
		DropButton.TextColor3 = Color3.fromRGB(0, 0, 0)
		DropButton.TextSize = 14.000

		for i,v in next,option do
			local Item = Instance.new("TextButton")

			Item.Name = "Item"
			Item.Parent = DropScroll
			Item.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Item.BackgroundTransparency = 1.000
			Item.Size = UDim2.new(0, 230, 0, 26)
			Item.Font = Enum.Font.GothamSemibold
			Item.Text = tostring(v)
			Item.TextColor3 = Color3.fromRGB(225, 225, 225)
			Item.TextSize = 13.000
			Item.TextTransparency = 0.500
			Item.ClipsDescendants = true


			Item.MouseEnter:Connect(function()
				TweenService:Create(
					Item,
					TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
					{TextTransparency = 0}
				):Play()
			end)

			Item.MouseLeave:Connect(function()
				TweenService:Create(
					Item,
					TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
					{TextTransparency = 0.5}
				):Play()
			end)

			Item.MouseButton1Click:Connect(function()
				CircleAnim(Item, Color3.fromRGB(255,255,255), Color3.fromRGB(255,255,255))
				isdropping = false
				Dropdown:TweenSize(UDim2.new(0,470,0,31),"Out","Quad",0.3,true)
				TweenService:Create(
					DropImage,
					TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
					{Rotation = -90}
				):Play()
				DropScroll.CanvasSize = UDim2.new(0,0,0,UIListLayout.AbsoluteContentSize.Y + 10)
				callback(Item.Text)
				DropTitle.Text = text.." : "..Item.Text
			end)
		end

		DropScroll.CanvasSize = UDim2.new(0,0,0,UIListLayout.AbsoluteContentSize.Y + 10)

		DropButton.MouseButton1Click:Connect(function()
			if isdropping == false then
				isdropping = true
				Dropdown:TweenSize(UDim2.new(0,470,0,131),"Out","Quad",0.3,true)
				TweenService:Create(
					DropImage,
					TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
					{Rotation = 180}
				):Play()
				DropScroll.CanvasSize = UDim2.new(0,0,0,UIListLayout.AbsoluteContentSize.Y + 10)
			else
				isdropping = false
				Dropdown:TweenSize(UDim2.new(0,470,0,31),"Out","Quad",0.3,true)
				TweenService:Create(
					DropImage,
					TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
					{Rotation = -90}
				):Play()
				DropScroll.CanvasSize = UDim2.new(0,0,0,UIListLayout.AbsoluteContentSize.Y + 10)
			end
		end)

		local dropfuncs = {}
		function dropfuncs:Add(t)
			local Item = Instance.new("TextButton")
			Item.Name = "Item"
			Item.Parent = DropScroll
			Item.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Item.BackgroundTransparency = 1.000
			Item.Size = UDim2.new(0, 470, 0, 26)
			Item.Font = Enum.Font.GothamSemibold
			Item.Text = tostring(t)
			Item.TextColor3 = Color3.fromRGB(225, 225, 225)
			Item.TextSize = 13.000
			Item.TextTransparency = 0.500
			Item.ClipsDescendants = true

			Item.MouseEnter:Connect(function()
				TweenService:Create(
					Item,
					TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
					{TextTransparency = 0}
				):Play()
			end)

			Item.MouseLeave:Connect(function()
				TweenService:Create(
					Item,
					TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
					{TextTransparency = 0.5}
				):Play()
			end)

			Item.MouseButton1Click:Connect(function()
				isdropping = false
				CircleAnim(Item, Color3.fromRGB(255,255,255), Color3.fromRGB(255,255,255))
				Dropdown:TweenSize(UDim2.new(0,470,0,31),"Out","Quad",0.3,true)
				TweenService:Create(
					DropImage,
					TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
					{Rotation = -90}
				):Play()
				DropScroll.CanvasSize = UDim2.new(0,0,0,UIListLayout.AbsoluteContentSize.Y + 10)
				callback(Item.Text)
				DropTitle.Text = text.." : "..Item.Text
			end)
		end
		
		function dropfuncs:Clear()
			DropTitle.Text = tostring(text).." : "
			isdropping = false
			Dropdown:TweenSize(UDim2.new(0,470,0,31),"Out","Quad",0.3,true)
			TweenService:Create(
				DropImage,
				TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
				{Rotation = -90}
			):Play()
			for i,v in next, DropScroll:GetChildren() do
				if v:IsA("TextButton") then
					v:Destroy()
				end
			end
		end
		return dropfunc
	end

    local Tab = {}
    function Tab:CraftTab(text)
        local name = tostring(text) or tostring(math.random(1,5000))
        local TabFrame = Instance.new("Frame")
        local TabUICorner = Instance.new("UICorner")
        local LabelTab = Instance.new("TextLabel")
        local TextTab = Instance.new("TextButton")
        local PageMain = Instance.new("Frame")
        local PageMainUICorner = Instance.new("UICorner")
        local G3 = false

        TabFrame.Name = "TabFrame"
        TabFrame.Parent = ScrollingFrameTab
        TabFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
        TabFrame.ClipsDescendants = true
        TabFrame.Size = UDim2.new(0, 100, 0, 24)
    
        TabUICorner.CornerRadius = UDim.new(0, 4)
        TabUICorner.Name = "TabUICorner"
        TabUICorner.Parent = TabFrame
    
        LabelTab.Name = "LabelTab"
        LabelTab.Parent = TabFrame
        LabelTab.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        LabelTab.BackgroundTransparency = 1.000
        LabelTab.Size = UDim2.new(0, 100, 0, 24)
        LabelTab.Font = Enum.Font.GothamBold
        LabelTab.Text = text
        LabelTab.TextColor3 = Color3.fromRGB(255, 255, 255)
        LabelTab.TextSize = 13.000
    
        TextTab.Name = text.."Server"
        TextTab.Parent = TabFrame
        TextTab.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        TextTab.BackgroundTransparency = 1.000
        TextTab.Size = UDim2.new(0, 100, 0, 24)
        TextTab.Font = Enum.Font.SourceSans
        TextTab.Text = ""
        TextTab.TextColor3 = Color3.fromRGB(0, 0, 0)
        TextTab.TextSize = 14.000

        local PageMain = Instance.new("Frame")
        local PageMainUICorner = Instance.new("UICorner")
        local Scrolling_PageMain = Instance.new("ScrollingFrame")
        local UIListLayout_2 = Instance.new("UIListLayout")
        local Pageleft = Instance.new("Frame")
        local UIListLayout_Pageleft = Instance.new("UIListLayout")
        local UIPadding = Instance.new("UIPadding")
        local Pageright = Instance.new("Frame")
        local UIListLayout_Pageright = Instance.new("UIListLayout")
        local UIPaddingSetting = Instance.new("UIPadding")

        PageMain.Name = "PageMain"
        PageMain.Parent = PageFolder
        PageMain.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
        PageMain.ClipsDescendants = true
        PageMain.Position = UDim2.new(0.00529100513, 0, 0.00161030598, 0)
        PageMain.Size = UDim2.new(0, 567, 0, 621)
        
        PageMainUICorner.CornerRadius = UDim.new(0, 4)
        PageMainUICorner.Name = "PageMainUICorner"
        PageMainUICorner.Parent = PageMain
        
        Scrolling_PageMain.Name = "Scrolling_PageMain"
        Scrolling_PageMain.Parent = PageMain
        Scrolling_PageMain.Active = true
        Scrolling_PageMain.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Scrolling_PageMain.BackgroundTransparency = 1.000
        Scrolling_PageMain.BorderSizePixel = 0
        Scrolling_PageMain.Size = UDim2.new(0, 567, 0, 621)
        Scrolling_PageMain.CanvasSize = UDim2.new(0, 0, 0, 0)
        Scrolling_PageMain.ScrollBarThickness = 4
        
        UIListLayout_2.Parent = Scrolling_PageMain
        UIListLayout_2.FillDirection = Enum.FillDirection.Horizontal
        UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
        UIListLayout_2.Padding = UDim.new(0, 5)
        
        Pageleft.Name = "Pageleft"
        Pageleft.Parent = Scrolling_PageMain
        Pageleft.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
        Pageleft.BackgroundTransparency = 1
        Pageleft.BorderSizePixel = 0
        Pageleft.ClipsDescendants = true
        Pageleft.Size = UDim2.new(0, 274, 0, 604)
        
        UIListLayout_Pageleft.Name = "UIListLayout_Pageleft"
        UIListLayout_Pageleft.Parent = Pageleft
        UIListLayout_Pageleft.SortOrder = Enum.SortOrder.LayoutOrder
        UIListLayout_Pageleft.Padding = UDim.new(0, 10)

        UIPadding.Parent = Scrolling_PageMain
        UIPadding.PaddingLeft = UDim.new(0, 7)
        UIPadding.PaddingTop = UDim.new(0, 8)

        Pageright.Name = "Pageright"
        Pageright.Parent = Scrolling_PageMain
        Pageright.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
        Pageright.BackgroundTransparency = 1
        Pageright.BorderSizePixel = 0
        Pageright.ClipsDescendants = true
        Pageright.Size = UDim2.new(0, 274, 0, 604)

        UIListLayout_Pageright.Name = "UIListLayout_Pageleft"
        UIListLayout_Pageright.Parent = Pageright
        UIListLayout_Pageright.SortOrder = Enum.SortOrder.LayoutOrder
        UIListLayout_Pageright.Padding = UDim.new(0, 10)

        UIPaddingSetting.Name = "UIPaddingSetting"
        UIPaddingSetting.Parent = ScrollingFrameSetting
        UIPaddingSetting.PaddingTop = UDim.new(0, 10)


        game:GetService("RunService").Stepped:Connect(function()
            Pageleft.Size = UDim2.new(0, 274, 0, UIListLayout_Pageleft.AbsoluteContentSize.Y + 5)
        end)
        game:GetService("RunService").Stepped:Connect(function()
            Pageright.Size = UDim2.new(0, 274, 0, UIListLayout_Pageright.AbsoluteContentSize.Y + 5)
        end)

        game:GetService("RunService").Stepped:Connect(function()
            if UIListLayout_Pageleft.AbsoluteContentSize.Y > UIListLayout_Pageright.AbsoluteContentSize.Y then
                Scrolling_PageMain.CanvasSize = UDim2.new(0, 0, 0, UIListLayout_Pageleft.AbsoluteContentSize.Y + 10)
            end
        end)
        game:GetService("RunService").Stepped:Connect(function()
            if UIListLayout_Pageright.AbsoluteContentSize.Y > UIListLayout_Pageleft.AbsoluteContentSize.Y then
                Scrolling_PageMain.CanvasSize = UDim2.new(0, 0, 0, UIListLayout_Pageright.AbsoluteContentSize.Y + 10)
            end
        end)
        TextTab.MouseButton1Click:Connect(function()
            CircleAnim(TabFrame, Color3.fromRGB(255,255,255), Color3.fromRGB(255,255,255))
            LabelTab.TextSize = 0
            TweenService:Create(
                LabelTab,
                TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                {TextSize = 13}
            ):Play()
            for i,v in next, PageFolder:GetChildren() do 
                if PageMain.Name == "PageMain" then
                    UIPageLayout:JumpTo(PageMain)
                end
            end
        end)

		if FocusUi == false then
            UIPageLayout:JumpToIndex(1)
			FocusUi = true
		end


        local Page = {}
        function Page:CraftPage(text,Type)
            local Page = Instance.new("Frame")
            local UICorner_Page = Instance.new("UICorner")
            local PageFrame = Instance.new("Frame")
            local TextPage = Instance.new("TextLabel")
            local UIListLayout_Page = Instance.new("UIListLayout")
            local function GetType(value)
                if value == 1 then
                    return Pageleft
                elseif value == 2 then
                    return Pageright
                else
                    return Pageleft
                end
            end   

            Page.Name = "Page"
            Page.Parent = GetType(Type)
            Page.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
            Page.Size = UDim2.new(0, 274, 0, 604)
            Page.Visible = true
            Page.ClipsDescendants = true

            UICorner_Page.CornerRadius = UDim.new(0, 4)
            UICorner_Page.Name = "UICorner_Page"
            UICorner_Page.Parent = Page

            PageFrame.Name = "PageFrame"
            PageFrame.Parent = Page
            PageFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            PageFrame.BackgroundTransparency = 1.000
            PageFrame.Size = UDim2.new(0, 274, 0, 24)

            TextPage.Name = "TextPage"
            TextPage.Parent = PageFrame
            TextPage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            TextPage.BackgroundTransparency = 1.000
            TextPage.BorderSizePixel = 0
            TextPage.Position = UDim2.new(0.0401459858, 0, 0.0978244171, 0)
            TextPage.Size = UDim2.new(0, 251, 0, 19)
            TextPage.Font = Enum.Font.GothamBold
            TextPage.Text = text
            TextPage.TextColor3 = Color3.fromRGB(255, 255, 255)
            TextPage.TextSize = 13.000
            TextPage.TextXAlignment = Enum.TextXAlignment.Left

            UIListLayout_Page.Name = "UIListLayout_Page"
            UIListLayout_Page.Parent = Page
            UIListLayout_Page.SortOrder = Enum.SortOrder.LayoutOrder
            UIListLayout_Page.Padding = UDim.new(0, 5)

            game:GetService("RunService").Stepped:Connect(function()
                Page.Size =  UDim2.new(0, 274, 0,UIListLayout_Page.AbsoluteContentSize.Y + 15)
            end)
            local Item = {}
            function Item:Button(text,callback)

                local Btn = Instance.new("Frame")
                local Button = Instance.new("Frame")
                local TextButton = Instance.new("TextLabel")
                local UICorner_Button = Instance.new("UICorner")
                local Buttonn = Instance.new("TextButton")
                
                Btn.Name = "Btn"
                Btn.Parent = Page
                Btn.BackgroundColor3 = Color3.fromRGB(255, 0, 255)
                Btn.BackgroundTransparency = 1
                Btn.BorderColor3 = Color3.fromRGB(27, 42, 53)
                Btn.Position = UDim2.new(0, 0, 0.0562913902, 0)
                Btn.Size = UDim2.new(0, 274, 0, 28)

                Button.Name = "Button"
                Button.Parent = Btn
                Button.AnchorPoint = Vector2.new(0.5, 0.5)
                Button.BackgroundColor3 = Color3.fromRGB(0, 155, 255)
                Button.BorderSizePixel = 0
                Button.ClipsDescendants = true
                Button.Position = UDim2.new(0.5, 0, 0.5, 0)
                Button.Size = UDim2.new(0, 262, 0, 24)

                TextButton.Name = "TextButton"
                TextButton.Parent = Button
                TextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                TextButton.BackgroundTransparency = 1.000
                TextButton.Size = UDim2.new(0, 262, 0, 24)
                TextButton.Font = Enum.Font.GothamBold
                TextButton.Text = text
                TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
                TextButton.TextSize = 14.000

                UICorner_Button.CornerRadius = UDim.new(0, 4)
                UICorner_Button.Name = "UICorner_Button"
                UICorner_Button.Parent = Button


                Buttonn.Name = "Button"
                Buttonn.Parent = Btn
                Buttonn.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                Buttonn.BackgroundTransparency = 1.000
                Buttonn.Size = UDim2.new(0, 274, 0, 28)
                Buttonn.Font = Enum.Font.SourceSans
                Buttonn.Text = ""
                Buttonn.TextColor3 = Color3.fromRGB(0, 0, 0)
                Buttonn.TextSize = 14.000

                Buttonn.MouseButton1Click:Connect(function()
                    if toggonsetting == false then
                        CircleAnim(Button, Color3.fromRGB(255,255,255), Color3.fromRGB(255,255,255))
                        TextButton.TextSize = 0
                        TweenService:Create(
                            TextButton,
                            TweenInfo.new(0.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                            {TextSize = 14}
                        ):Play()
                        callback()   
                        TweenService:Create(
                            Button,
                            TweenInfo.new(0.2, Enum.EasingStyle.Back, Enum.EasingDirection.Out),
                            {Size = UDim2.new(0, 270, 0, 20)}
                        ):Play()
                        wait(0.1)
                        TweenService:Create(
                            Button,
                            TweenInfo.new(0.2, Enum.EasingStyle.Back, Enum.EasingDirection.Out),
                            {Size = UDim2.new(0, 262, 0, 24)}
                        ):Play()
                    end  
                end)
            end

			

			function Item:Textbox(text,text2,callback)
				local TextFrame = Instance.new("Frame")

				TextFrame.Name = "TextFrame"
				TextFrame.Parent = Page
				TextFrame.Active = true
				TextFrame.AnchorPoint = Vector2.new(0.5, 0.5)
				TextFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				TextFrame.BackgroundTransparency = 1.000
				TextFrame.Position = UDim2.new(0.55, 0, 0.5, 0)
				TextFrame.Size = UDim2.new(0, 401, 0, 41)

				local LabelNameSliderxd = Instance.new("TextLabel")

				LabelNameSliderxd.Name = "LabelNameSliderxd"
				LabelNameSliderxd.Parent = TextFrame
				LabelNameSliderxd.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
				LabelNameSliderxd.Position = UDim2.new(0.0401459858, 0, -0.25, 0)
				LabelNameSliderxd.BackgroundTransparency = 1
				LabelNameSliderxd.BorderSizePixel = 0
				LabelNameSliderxd.Size = UDim2.new(0, 225, 0, 25)
				LabelNameSliderxd.Font = Enum.Font.GothamSemibold
				LabelNameSliderxd.TextColor3 = Color3.fromRGB(255,255,255)
				LabelNameSliderxd.TextSize = 12.000
				LabelNameSliderxd.TextTransparency = 0
				LabelNameSliderxd.Text = text
				LabelNameSliderxd.TextXAlignment = Enum.TextXAlignment.Left

				local ConerTextBox = Instance.new("UICorner")

				ConerTextBox.CornerRadius = UDim.new(0, 4)
				ConerTextBox.Name = "ConerTextBox"
				ConerTextBox.Parent = TextFrame

				local FrameBox = Instance.new("Frame")

				FrameBox.Name = "FrameBox"
				FrameBox.Parent = TextFrame
				FrameBox.AnchorPoint = Vector2.new(0.5, 0.5)
				FrameBox.BackgroundColor3 = Color3.fromRGB(20,20,20)
				FrameBox.BackgroundTransparency = 1
				FrameBox.BorderSizePixel = 1
				FrameBox.ClipsDescendants = true
				FrameBox.Position = UDim2.new(0.3, 0, 0.5, 0)
				FrameBox.Size = UDim2.new(0, 225, 0, 25)

				local FrameBoxStroke = Instance.new("UIStroke")

				FrameBoxStroke.Thickness = 1
				FrameBoxStroke.Name = ""
				FrameBoxStroke.Parent = FrameBox
				FrameBoxStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
				FrameBoxStroke.LineJoinMode = Enum.LineJoinMode.Round
				FrameBoxStroke.Color = Color3.fromRGB(85, 170, 255)
				FrameBoxStroke.Transparency = 0.6

				local ConerTextBox2 = Instance.new("UICorner")

				--Properties:
				ConerTextBox2.CornerRadius = UDim.new(0, 5)
				ConerTextBox2.Name = "ConerTextBox2"
				ConerTextBox2.Parent = FrameBox

				local TextFrame2 = Instance.new("TextBox")

				TextFrame2.Name = "TextFrame2"
				TextFrame2.Parent = FrameBox
				TextFrame2.AnchorPoint = Vector2.new(0.5, 0.5)
				TextFrame2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				TextFrame2.BackgroundTransparency = 1.000
				TextFrame2.BorderSizePixel = 0
				TextFrame2.ClipsDescendants = true
				TextFrame2.Position = UDim2.new(0.5, 0, 0.5,0)
				TextFrame2.Size = UDim2.new(0, 215, 0, 35)
				TextFrame2.Font = Enum.Font.GothamSemibold
				TextFrame2.PlaceholderText = tostring(text2)
				TextFrame2.PlaceholderColor3 = Color3.fromRGB(155, 155, 155)
				TextFrame2.TextColor3 = Color3.fromRGB(155, 155, 155)
				TextFrame2.TextSize = 12
				TextFrame2.TextXAlignment = Enum.TextXAlignment.Left

				TextFrame.MouseEnter:Connect(function()
					TweenService:Create(
						FrameBoxStroke,
						TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{Transparency = 0} -- UDim2.new(0, 128, 0, 25)
					):Play()
					TweenService:Create(
						TextFrame2,
						TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{PlaceholderColor3 = Color3.fromRGB(85, 170, 255)} -- UDim2.new(0, 128, 0, 25)
					):Play()
					TweenService:Create(
						TextFrame2,
						TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{TextColor3 = Color3.fromRGB(85, 170, 255)} -- UDim2.new(0, 128, 0, 25)
					):Play()
				end)

				TextFrame.MouseLeave:Connect(function()
					TweenService:Create(
						FrameBoxStroke,
						TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{Transparency = 0.6} -- UDim2.new(0, 128, 0, 25)
					):Play()
					TweenService:Create(
						TextFrame2,
						TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{PlaceholderColor3 = Color3.fromRGB(155, 155, 155)} -- UDim2.new(0, 128, 0, 25)
					):Play()
					TweenService:Create(
						TextFrame2,
						TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{TextColor3 = Color3.fromRGB(155, 155, 155)} -- UDim2.new(0, 128, 0, 25)
					):Play()
				end)

				TextFrame2.FocusLost:Connect(function()
					if #TextFrame2.Text > 0 then
						pcall(callback,TextFrame2.Text)
					end
				end)
			end

            function Item:Slider(text,floor,min,max,de,callback)
                local SliderFrame = Instance.new("Frame")
                local LabelNameSlider = Instance.new("TextLabel")
                local ShowValueFrame = Instance.new("Frame")
                local CustomValue = Instance.new("TextBox")
                local ShowValueFrameUICorner = Instance.new("UICorner")
                local ValueFrame = Instance.new("Frame")
                local ValueFrameUICorner = Instance.new("UICorner")
                local PartValue = Instance.new("Frame")
                local PartValueUICorner = Instance.new("UICorner")
                local MainValue = Instance.new("Frame")
                local MainValueUICorner = Instance.new("UICorner")
                local sliderfunc = {}

                SliderFrame.Name = "SliderFrame"
                SliderFrame.Parent = Page
                SliderFrame.BackgroundColor3 = Color3.fromRGB(53, 53, 53)
                SliderFrame.Position = UDim2.new(0.109489053, 0, 0.708609283, 0)
                SliderFrame.Size = UDim2.new(0, 274, 0, 54)
                SliderFrame.BackgroundTransparency = 1.000

                LabelNameSlider.Name = "LabelNameSlider"
                LabelNameSlider.Parent = SliderFrame
                LabelNameSlider.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                LabelNameSlider.BackgroundTransparency = 1.000
                LabelNameSlider.Position = UDim2.new(0.0729926974, 0, 0.0396823473, 0)
                LabelNameSlider.Size = UDim2.new(0, 182, 0, 25)
                LabelNameSlider.Font = Enum.Font.GothamBold
                LabelNameSlider.Text = tostring(text)
                LabelNameSlider.TextColor3 = Color3.fromRGB(255, 255, 255)
                LabelNameSlider.TextSize = 14.000
                LabelNameSlider.TextXAlignment = Enum.TextXAlignment.Left

                ShowValueFrame.Name = "ShowValueFrame"
                ShowValueFrame.Parent = SliderFrame
                ShowValueFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
                ShowValueFrame.Position = UDim2.new(0.733576655, 0, 0.0656082779, 0)
                ShowValueFrame.Size = UDim2.new(0, 58, 0, 21)

                CustomValue.Name = "CustomValue"
                CustomValue.Parent = ShowValueFrame
                CustomValue.AnchorPoint = Vector2.new(0.5, 0.5)
                CustomValue.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                CustomValue.BackgroundTransparency = 1.000
                CustomValue.Position = UDim2.new(0.5, 0, 0.5, 0)
                CustomValue.Size = UDim2.new(0, 55, 0, 21)
                CustomValue.Font = Enum.Font.GothamBold
                CustomValue.Text = "50"
                CustomValue.TextColor3 = Color3.fromRGB(255, 255, 255)
                CustomValue.TextSize = 11.000

                ShowValueFrameUICorner.CornerRadius = UDim.new(0, 4)
                ShowValueFrameUICorner.Name = "ShowValueFrameUICorner"
                ShowValueFrameUICorner.Parent = ShowValueFrame

                ValueFrame.Name = "ValueFrame"
                ValueFrame.Parent = SliderFrame
                ValueFrame.AnchorPoint = Vector2.new(0.5, 0.5)
                ValueFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
                ValueFrame.Position = UDim2.new(0.5, 0, 0.777777791, 0)
                ValueFrame.Size = UDim2.new(0, 245, 0, 5)

                ValueFrameUICorner.CornerRadius = UDim.new(0, 30)
                ValueFrameUICorner.Name = "ValueFrameUICorner"
                ValueFrameUICorner.Parent = ValueFrame

                PartValue.Name = "PartValue"
                PartValue.Parent = ValueFrame
                PartValue.AnchorPoint = Vector2.new(0.5, 0.5)
                PartValue.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
                PartValue.BackgroundTransparency = 1.000
                PartValue.Position = UDim2.new(0.5, 0, 0.777777791, 0)
                PartValue.Size = UDim2.new(0, 245, 0, 5)

                PartValueUICorner.CornerRadius = UDim.new(0, 30)
                PartValueUICorner.Name = "PartValueUICorner"
                PartValueUICorner.Parent = PartValue

                MainValue.Name = "MainValue"
                MainValue.Parent = PartValue
                MainValue.BackgroundColor3 = Color3.fromRGB(0, 155, 255)
                MainValue.Size = UDim2.new((de or 0) / max, 0, 0, 5)
                MainValue.BorderSizePixel = 0

                MainValueUICorner.CornerRadius = UDim.new(0, 30)
                MainValueUICorner.Name = "MainValueUICorner"
                MainValueUICorner.Parent = MainValue


                local ConneValue = Instance.new("Frame")
                ConneValue.Name = "ConneValue"
                ConneValue.Parent = PartValue
                ConneValue.AnchorPoint = Vector2.new(0.5, 0.5)
                ConneValue.BackgroundColor3 = Color3.fromRGB(0,135,255)
                ConneValue.Position = UDim2.new((de or 0)/max, 0.5, 0.5,0, 0)
                ConneValue.Size = UDim2.new(0, 13, 0, 13)
                ConneValue.BorderSizePixel = 0
    
                local UICorner = Instance.new("UICorner")
                UICorner.CornerRadius = UDim.new(0, 10)
                UICorner.Parent = ConneValue


                if floor == true then
                    CustomValue.Text =  tostring(de and string.format((de / max) * (max - min) + min) or 0)
                else
                    CustomValue.Text =  tostring(de and math.floor((de / max) * (max - min) + min) or 0)
                end

                local function move(input)
                    local pos =
                        UDim2.new(
                            math.clamp((input.Position.X - ValueFrame.AbsolutePosition.X) / ValueFrame.AbsoluteSize.X, 0, 1),
                            0,
                            0.5,
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
                        local value = string.format("%.0f",((pos.X.Scale * max) / max) * (max - min) + min)
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
                    end)
                ConneValue.InputEnded:Connect(
                    function(input)
                        if input.UserInputType == Enum.UserInputType.MouseButton1 then
                            dragging = false
                        end
                    end)
                SliderFrame.InputBegan:Connect(
                    function(input)
                        if input.UserInputType == Enum.UserInputType.MouseButton1 then
                            dragging = true
                        end
                    end)
                SliderFrame.InputEnded:Connect(
                    function(input)
                        if input.UserInputType == Enum.UserInputType.MouseButton1 then
                            dragging = false
                        end
                    end)
                ValueFrame.InputBegan:Connect(
                    function(input)
                        if input.UserInputType == Enum.UserInputType.MouseButton1 then
                            dragging = true
                        end
                    end)
                ValueFrame.InputEnded:Connect(
                    function(input)
                        if input.UserInputType == Enum.UserInputType.MouseButton1 then
                            dragging = false
                        end
                    end)
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
                            CustomValue.Text = tostring(CustomValue.Text and string.format("%.0f",(CustomValue.Text / max) * (max - min) + min) )
                        else
                            CustomValue.Text = tostring(CustomValue.Text and math.floor( (CustomValue.Text / max) * (max - min) + min) )
                        end
                        pcall(callback, CustomValue.Text)
                    end)
                    
                    function sliderfunc:Update(value)
                        MainValue:TweenSize(UDim2.new((value or 0) / max, 0, 0, 5), "Out", "Sine", 0.2, true)
                        ConneValue:TweenPosition(UDim2.new((value or 0)/max, 0.5, 0.5,0, 0) , "Out", "Sine", 0.2, true)
                        CustomValue.Text = value
                        pcall(function()
                            callback(value)
                        end)
                    end
                    return sliderfunc
            end
            function Item:Dropdown(text,item,default,callback)
                local Drop_Frame = Instance.new("Frame")
                local DropDownFrame = Instance.new("Frame")
                local UICorner_Drop = Instance.new("UICorner")
                local Label_Drop = Instance.new("TextLabel")
                local Arrow = Instance.new("ImageLabel")
                local Down_Frame = Instance.new("Frame")
                local Down = Instance.new("Frame")
                local UICorner_Down = Instance.new("UICorner")
                local ScrollingDownFrame = Instance.new("ScrollingFrame")
                local UIListLayout_Dwon = Instance.new("UIListLayout")
                local UIPadding_Down = Instance.new("UIPadding")
                local ButtonDrop = Instance.new("TextButton")
                local DropToggle = false

                if default == nil then default = "nil" end

                Drop_Frame.Name = "Drop_Frame"
                Drop_Frame.Parent = Page
                Drop_Frame.AnchorPoint = Vector2.new(0.5, 0.5)
                Drop_Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                Drop_Frame.BackgroundTransparency = 1.000
                Drop_Frame.ClipsDescendants = true
                Drop_Frame.Position = UDim2.new(0, 0, 0.392454112, 0)
                Drop_Frame.Size = UDim2.new(0, 274, 0, 27)

                DropDownFrame.Name = "DropDownFrame"
                DropDownFrame.Parent = Drop_Frame
                DropDownFrame.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
                DropDownFrame.BorderSizePixel = 0
                DropDownFrame.ClipsDescendants = true
                DropDownFrame.Position = UDim2.new(0.0255474448, 0, 0, 0)
                DropDownFrame.Size = UDim2.new(0, 258, 0, 27)

                UICorner_Drop.CornerRadius = UDim.new(0, 4)
                UICorner_Drop.Name = "UICorner_Drop"
                UICorner_Drop.Parent = DropDownFrame

                Label_Drop.Name = "Label_Drop"
                Label_Drop.Parent = DropDownFrame
                Label_Drop.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                Label_Drop.BackgroundTransparency = 1.000
                Label_Drop.Position = UDim2.new(0.0348837227, 0, 0, 0)
                Label_Drop.Size = UDim2.new(0, 202, 0, 26)
                Label_Drop.Font = Enum.Font.GothamBold
                Label_Drop.Text = text.." : "..default
                Label_Drop.TextColor3 = Color3.fromRGB(255, 255, 255)
                Label_Drop.TextSize = 14.000
                Label_Drop.TextXAlignment = Enum.TextXAlignment.Left

                Arrow.Name = "Arrow"
                Arrow.Parent = DropDownFrame
                Arrow.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                Arrow.BackgroundTransparency = 1.000
                Arrow.Position = UDim2.new(0.871363997, 0, 0.0370371342, 0)
                Arrow.Rotation = 180.000
                Arrow.Size = UDim2.new(0, 24, 0, 24)
                Arrow.Image = "rbxassetid://6031094670"
                
                Down_Frame.Name = "Down_Frame"
                Down_Frame.Parent = Page
                Down_Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                Down_Frame.BackgroundTransparency = 1.000
                Down_Frame.Position = UDim2.new(0, 0, 0.445364237, 0)
                Down_Frame.Size = UDim2.new(0, 274, 0, 0)
                Down_Frame.ClipsDescendants = true

                Down.Name = "Down"
                Down.Parent = Down_Frame
                Down.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
                Down.BorderSizePixel = 0
                Down.Position = UDim2.new(0.0255474448, 0, 0.0190476142, 0)
                Down.Size = UDim2.new(0, 258, 0, 100)

                UICorner_Down.CornerRadius = UDim.new(0, 4)
                UICorner_Down.Name = "UICorner_Down"
                UICorner_Down.Parent = Down

                ScrollingDownFrame.Name = "ScrollingDownFrame"
                ScrollingDownFrame.Parent = Down
                ScrollingDownFrame.Active = true
                ScrollingDownFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                ScrollingDownFrame.BackgroundTransparency = 1.000
                ScrollingDownFrame.BorderSizePixel = 0
                ScrollingDownFrame.Size = UDim2.new(0, 258, 0, 100)
                ScrollingDownFrame.CanvasSize = UDim2.new(0, 0, 0, 0)
                ScrollingDownFrame.ScrollBarThickness = 4

                UIListLayout_Dwon.Name = "UIListLayout_Dwon"
                UIListLayout_Dwon.Parent = ScrollingDownFrame
                UIListLayout_Dwon.SortOrder = Enum.SortOrder.LayoutOrder
                UIListLayout_Dwon.Padding = UDim.new(0, 7)

                UIPadding_Down.Name = "UIPadding_Down"
                UIPadding_Down.Parent = ScrollingDownFrame
                UIPadding_Down.PaddingTop = UDim.new(0, 10)

                ButtonDrop.Name = "ButtonItem"
                ButtonDrop.Parent = Drop_Frame
                ButtonDrop.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                ButtonDrop.BackgroundTransparency = 1.000
                ButtonDrop.Font = Enum.Font.SourceSans
                ButtonDrop.Text = ""
                ButtonDrop.TextColor3 = Color3.fromRGB(0, 0, 0)
                ButtonDrop.TextSize = 14.000
                ButtonDrop.Size = UDim2.new(0, 274, 0, 27)

                if default ~= "nil" then
                    callback(default)
                end

                ButtonDrop.MouseButton1Click:Connect(function()
                    if toggonsetting == false then
                        if DropToggle == false then
                            DropToggle = true
                            CircleAnim(DropDownFrame, Color3.fromRGB(255,255,255), Color3.fromRGB(255,255,255))
                            TweenService:Create(
                                Down_Frame,
                                TweenInfo.new(0.2, Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                                {Size = UDim2.new(0, 274, 0, 105)}
                            ):Play()
                            TweenService:Create(
                                Arrow,
                                TweenInfo.new(0.2,Enum.EasingStyle.Back,Enum.EasingDirection.Out),
                                {Rotation = 270}
                            ):Play()
                        elseif DropToggle == true then
                            DropToggle = false
                            CircleAnim(DropDownFrame, Color3.fromRGB(255,255,255), Color3.fromRGB(255,255,255))
                            TweenService:Create(
                                Down_Frame,
                                TweenInfo.new(0.2, Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                                {Size = UDim2.new(0, 274, 0, 0)}
                            ):Play()
                            TweenService:Create(
                                Arrow,
                                TweenInfo.new(0.2,Enum.EasingStyle.Back,Enum.EasingDirection.Out),
                                {Rotation = 180}
                            ):Play()
                        end
                    end
                end
                )


                for i,v in pairs(item) do
                    local ItemFrame = Instance.new("Frame")
                    local Item = Instance.new("Frame")
                    local UICorner_Item = Instance.new("UICorner")
                    local ItemLabel = Instance.new("TextLabel")
                    local ButtonItem = Instance.new("TextButton")

                                        
                    ItemFrame.Name = "ItemFrame"
                    ItemFrame.Parent = ScrollingDownFrame
                    ItemFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                    ItemFrame.BackgroundTransparency = 1.000
                    ItemFrame.Size = UDim2.new(0, 258, 0, 24)

                    Item.Name = "Item"
                    Item.Parent = ItemFrame
                    Item.BackgroundColor3 = Color3.fromRGB(0, 155, 255)
                    Item.BorderSizePixel = 0
                    Item.Position = UDim2.new(0.0503875986, 0, 0, 0)
                    Item.Size = UDim2.new(0, 234, 0, 24)
                    Item.ClipsDescendants = true

                    UICorner_Item.CornerRadius = UDim.new(0, 4)
                    UICorner_Item.Name = "UICorner_Item"
                    UICorner_Item.Parent = Item

                    ItemLabel.Name = "ItemLabel"
                    ItemLabel.Parent = Item
                    ItemLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                    ItemLabel.BackgroundTransparency = 1.000
                    ItemLabel.Size = UDim2.new(0, 233, 0, 24)
                    ItemLabel.Font = Enum.Font.GothamBold
                    ItemLabel.Text = tostring(v)
                    ItemLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
                    ItemLabel.TextSize = 14.000

                    ButtonItem.Name = "ButtonItem"
                    ButtonItem.Parent = ItemFrame
                    ButtonItem.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                    ButtonItem.BackgroundTransparency = 1
                    ButtonItem.Size = UDim2.new(0, 256, 0, 24)
                    ButtonItem.Font = Enum.Font.SourceSans
                    ButtonItem.Text = ""
                    ButtonItem.TextColor3 = Color3.fromRGB(0, 0, 0)
                    ButtonItem.TextSize = 14.000


                    ButtonItem.MouseButton1Down:Connect(function()
                        if toggonsetting == false then
                            ItemLabel.TextSize = 0
                            TweenService:Create(
                                ItemLabel,
                                TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out,0.1),
                                {TextSize = 12}
                            ):Play()
                            Label_Drop.Text = tostring(text.." : "..v)
                            CircleAnim(Item,Color3.fromRGB(255,255,255),Color3.fromRGB(255,255,255))
                            callback(v)
                            DropToggle = false
                            TweenService:Create(
                                Down_Frame,
                                TweenInfo.new(0.2, Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                                {Size = UDim2.new(0, 274, 0, 0)}
                            ):Play()
                            TweenService:Create(
                                Arrow,
                                TweenInfo.new(0.2,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                                {Rotation = 180}
                            ):Play()
                        end         
                    end)
                end
                ScrollingDownFrame.CanvasSize = UDim2.new(0,0,0,UIListLayout_Dwon.AbsoluteContentSize.Y + 10)

                local dropfunc = {}
                
                function dropfunc:Add(nameitem)
                    local ItemFrame = Instance.new("Frame")
                    local Item = Instance.new("Frame")
                    local UICorner_Item = Instance.new("UICorner")
                    local ItemLabel = Instance.new("TextLabel")
                    local ButtonItem = Instance.new("TextButton")

                                        
                    ItemFrame.Name = "ItemFrame"
                    ItemFrame.Parent = ScrollingDownFrame
                    ItemFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                    ItemFrame.BackgroundTransparency = 1.000
                    ItemFrame.Size = UDim2.new(0, 258, 0, 24)

                    Item.Name = "Item"
                    Item.Parent = ItemFrame
                    Item.BackgroundColor3 = Color3.fromRGB(0, 155, 255)
                    Item.BorderSizePixel = 0
                    Item.Position = UDim2.new(0.0503875986, 0, 0, 0)
                    Item.Size = UDim2.new(0, 234, 0, 24)
                    Item.ClipsDescendants = true

                    UICorner_Item.CornerRadius = UDim.new(0, 4)
                    UICorner_Item.Name = "UICorner_Item"
                    UICorner_Item.Parent = Item

                    ItemLabel.Name = "ItemLabel"
                    ItemLabel.Parent = Item
                    ItemLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                    ItemLabel.BackgroundTransparency = 1.000
                    ItemLabel.Size = UDim2.new(0, 233, 0, 24)
                    ItemLabel.Font = Enum.Font.GothamBold
                    ItemLabel.Text = tostring(nameitem)
                    ItemLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
                    ItemLabel.TextSize = 14.000

                    ButtonItem.Name = "ButtonItem"
                    ButtonItem.Parent = ItemFrame
                    ButtonItem.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                    ButtonItem.BackgroundTransparency = 1
                    ButtonItem.Size = UDim2.new(0, 256, 0, 24)
                    ButtonItem.Font = Enum.Font.SourceSans
                    ButtonItem.Text = ""
                    ButtonItem.TextColor3 = Color3.fromRGB(0, 0, 0)
                    ButtonItem.TextSize = 14.000


                    ButtonItem.MouseButton1Down:Connect(function()
                        if toggonsetting == false then
                            ItemLabel.TextSize = 0
                            TweenService:Create(
                                ItemLabel,
                                TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out,0.1),
                                {TextSize = 12}
                            ):Play()
                            Label_Drop.Text = tostring(text.." : "..nameitem)
                            CircleAnim(Item,Color3.fromRGB(255,255,255),Color3.fromRGB(255,255,255))
                            callback(nameitem)
                            DropToggle = false
                            TweenService:Create(
                                Down_Frame,
                                TweenInfo.new(0.2, Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                                {Size = UDim2.new(0, 274, 0, 0)}
                            ):Play()
                            TweenService:Create(
                                Arrow,
                                TweenInfo.new(0.2,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                                {Rotation = 180}
                            ):Play()
                        end         
                    end)
                    ScrollingDownFrame.CanvasSize = UDim2.new(0,0,0,UIListLayout_Dwon.AbsoluteContentSize.Y + 10)
                end

                function dropfunc:Clear()

                    DropToggle = false
                    Label_Drop.Text = tostring(text).." : "
                    TweenService:Create(
                        Down_Frame,
                        TweenInfo.new(0.2, Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                        {Size = UDim2.new(0, 274, 0, 0)}
                    ):Play()
                    TweenService:Create(
                        Arrow,
                        TweenInfo.new(0.2,Enum.EasingStyle.Back,Enum.EasingDirection.Out),
                        {Rotation = 180}
                    ):Play()
                    for i, v in next, ScrollingDownFrame:GetChildren() do
                        if v:IsA("Frame") then
                            v:Destroy()
                        end
                    end
                    ScrollingDownFrame.CanvasSize = UDim2.new(0,0,0,UIListLayout_Dwon.AbsoluteContentSize.Y + 10)
                end
                return dropfunc
            end

			function Item:MultiDropdown(Name, list, default, callback)
                local Dropfunc = {}

                local MainDropDown = Instance.new("Frame")
                local UICorner_7 = Instance.new("UICorner")
                local MainDropDown_2 = Instance.new("Frame")
                local UICorner_8 = Instance.new("UICorner")
                local v = Instance.new("TextButton")
                local Text_2 = Instance.new("TextLabel")
                local ImageButton = Instance.new("ImageButton")
                local Scroll_Items = Instance.new("ScrollingFrame")
                local UIListLayout_3 = Instance.new("UIListLayout")
                local UIPadding_3 = Instance.new("UIPadding")

                MainDropDown.Name = "MainDropDown"
                MainDropDown.Parent = Page
                MainDropDown.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
                MainDropDown.BackgroundTransparency = 0.700
                MainDropDown.BorderSizePixel = 0
                MainDropDown.ClipsDescendants = true
                MainDropDown.Size = UDim2.new(0.975000024, 0, 0, 30)
                MainDropDown.ZIndex = 16

                UICorner_7.CornerRadius = UDim.new(0, 4)
                UICorner_7.Parent = MainDropDown

                MainDropDown_2.Name = "MainDropDown"
                MainDropDown_2.Parent = MainDropDown
                MainDropDown_2.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
                MainDropDown_2.BackgroundTransparency = 0.700
                MainDropDown_2.BorderSizePixel = 0
                MainDropDown_2.ClipsDescendants = true
                MainDropDown_2.Size = UDim2.new(1, 0, 0, 30)
                MainDropDown_2.ZIndex = 16

                UICorner_8.CornerRadius = UDim.new(0, 4)
                UICorner_8.Parent = MainDropDown_2

                v.Name = "v"
                v.Parent = MainDropDown_2
                v.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                v.BackgroundTransparency = 1.000
                v.BorderSizePixel = 0
                v.Size = UDim2.new(1, 0, 1, 0)
                v.ZIndex = 16
                v.AutoButtonColor = false
                v.Font = Enum.Font.GothamBold
                v.Text = ""
                v.TextColor3 = Color3.fromRGB(255, 255, 255)
                v.TextSize = 12.000
                function getpro()
                    if default then
                        for i, v in next, default do
                            if table.find(list, v) then
                                callback(default)
                                return Name .. " : " .. table.concat(default, ", ")
                            else
                                return Name
                            end
                        end
                    else
                        return Name
                    end
                end
                
                Text_2.Name = "Text"
                Text_2.Parent = MainDropDown_2
                Text_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                Text_2.BackgroundTransparency = 1.000
                Text_2.Position = UDim2.new(0, 10, 0, 10)
                Text_2.Size = UDim2.new(0, 62, 0, 12)
                Text_2.ZIndex = 16
                Text_2.Font = Enum.Font.GothamBold
                Text_2.Text = getpro()
                Text_2.TextColor3 = Color3.fromRGB(255, 255, 255)
                Text_2.TextSize = 12.000
                Text_2.TextXAlignment = Enum.TextXAlignment.Left

                ImageButton.Parent = MainDropDown_2
                ImageButton.AnchorPoint = Vector2.new(0, 0.5)
                ImageButton.BackgroundTransparency = 1.000
                ImageButton.Position = UDim2.new(1, -25, 0.5, 0)
                ImageButton.Size = UDim2.new(0, 12, 0, 12)
                ImageButton.ZIndex = 16
                ImageButton.Image = "http://www.roblox.com/asset/?id=6282522798"
                local DropTable = {}
                Scroll_Items.Name = "Scroll_Items"
                Scroll_Items.Parent = MainDropDown
                Scroll_Items.Active = true
                Scroll_Items.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                Scroll_Items.BackgroundTransparency = 1.000
                Scroll_Items.BorderSizePixel = 0
                Scroll_Items.Position = UDim2.new(0, 0, 0, 35)
                Scroll_Items.Size = UDim2.new(1, 0, 1, -35)
                Scroll_Items.ZIndex = 16
                Scroll_Items.CanvasSize = UDim2.new(0, 0, 0, 265)
                Scroll_Items.ScrollBarThickness = 0

                UIListLayout_3.Parent = Scroll_Items
                UIListLayout_3.SortOrder = Enum.SortOrder.LayoutOrder
                UIListLayout_3.Padding = UDim.new(0, 5)
                UIListLayout_2:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(
                    function()
                        Scroll_Items.CanvasSize = UDim2.new(1, 0, 0, UIListLayout_2.AbsoluteContentSize.Y+40)
                    end
                )
                UIPadding_3.Parent = Scroll_Items
                UIPadding_3.PaddingLeft = UDim.new(0, 10)
                UIPadding_3.PaddingTop = UDim.new(0, 5)

                function Dropfunc:TogglePanel(state)
                    TweenService:Create(
                        MainDropDown,
                        TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                        {Size = state and UDim2.new(0.975000024, 0, 0, 200) or UDim2.new(0.975000024, 0, 0, 30)}
                    ):Play()
                    TweenService:Create(
                        ImageButton,
                        TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                        {Rotation = state and 180 or 0}
                    ):Play()
                end
                local Tof = false
                ImageButton.MouseButton1Click:Connect(
                    function()
                        Tof = not Tof
                        Dropfunc:TogglePanel(Tof)
                    end
                )
                v.MouseButton1Click:Connect(
                    function()
                        Tof = not Tof
                        Dropfunc:TogglePanel(Tof)
                    end
                )
                function Dropfunc:Add(Text)
                    local _5 = Instance.new("TextButton")
                    local UICorner_9 = Instance.new("UICorner")
                    _5.Name = Text
                    _5.Parent = Scroll_Items
                    _5.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
                    _5.BorderSizePixel = 0
                    _5.ClipsDescendants = true
                    _5.Size = UDim2.new(1, -10, 0, 20)
                    _5.ZIndex = 17
                    _5.AutoButtonColor = false
                    _5.Font = Enum.Font.GothamBold
                    _5.Text = Text
                    _5.TextColor3 = Color3.fromRGB(255, 255, 255)
                    _5.TextSize = 12.000

                    UICorner_9.CornerRadius = UDim.new(0, 4)
                    UICorner_9.Parent = _5
                    _5.MouseButton1Click:Connect(
                        function()
                            if not table.find(DropTable, Text) then
                                table.insert(DropTable, Text)
                                callback(DropTable, Text)
                                Text_2.Text = Name .. " : " .. table.concat(DropTable, ", ")
                                TweenService:Create(
                                    _5,
                                    TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                                    {TextColor3 = Color3.fromRGB(255, 0, 0)}
                                ):Play()
                            else
                                TweenService:Create(
                                    _5,
                                    TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                                    {TextColor3 = Color3.fromRGB(255,255,255)}
                                ):Play()
                                for i2, v2 in pairs(DropTable) do
                                    if v2 == Text then
                                        table.remove(DropTable, i2)
                                        Text_2.Text = Name .. " : " .. table.concat(DropTable, ", ")
                                    end
                                end
                                callback(DropTable, Text)
                            end
                        end
                    )
				end
					function Dropfunc:Clear()
						for i, v in next, Scroll_Items:GetChildren() do
							if v:IsA("TextButton")  then 
								v:Destroy()
							end
						end 
					end
    
                for i, v in next, list do
                    Dropfunc:Add(v)
                end
                return Dropfunc
            end

            function Item:Toggles(text,default,callback)
                local ToggleSFrame = Instance.new("Frame")
                local LabelToggleS = Instance.new("TextLabel")
                local ToggleS = Instance.new("Frame")
                local UICorner_ToggleS = Instance.new("UICorner")
                local ToggleSInner = Instance.new("Frame")
                local UICorner_ToggleSInner = Instance.new("UICorner")
                local ToggleSBtn = Instance.new("TextButton")
                local togglechecks = false
                local lockers = true
                local ReToggle = {}
                local checkfirsttime = true
                if default == nil then default = false end
    
                ToggleSFrame.Name = "ToggleSFrame"
                ToggleSFrame.Parent = Page
                ToggleSFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                ToggleSFrame.BackgroundTransparency = 1.000
                ToggleSFrame.Position = UDim2.new(0, 0, 0.102649003, 0)
                ToggleSFrame.Size = UDim2.new(0, 274, 0, 30)

                LabelToggleS.Name = "LabelToggleS"
                LabelToggleS.Parent = ToggleSFrame
                LabelToggleS.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                LabelToggleS.BackgroundTransparency = 1.000
                LabelToggleS.Position = UDim2.new(0.0620437972, 0, 0, 0)
                LabelToggleS.Size = UDim2.new(0, 177, 0, 30)
                LabelToggleS.Font = Enum.Font.GothamBold
                LabelToggleS.Text = text
                LabelToggleS.TextColor3 = Color3.fromRGB(255, 255, 255)
                LabelToggleS.TextSize = 14.000
                LabelToggleS.TextXAlignment = Enum.TextXAlignment.Left

                ToggleS.Name = "ToggleS"
                ToggleS.Parent = ToggleSFrame
                ToggleS.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
                ToggleS.BorderSizePixel = 0
                ToggleS.Position = UDim2.new(0.733576655, 0, 0.166666672, 0)
                ToggleS.Size = UDim2.new(0, 43, 0, 19)  

                UICorner_ToggleS.CornerRadius = UDim.new(0, 30)
                UICorner_ToggleS.Name = "UICorner_ToggleS"
                UICorner_ToggleS.Parent = ToggleS

                ToggleSInner.Name = "ToggleSInner"
                ToggleSInner.Parent = ToggleS
                ToggleSInner.AnchorPoint = Vector2.new(0.5, 0.5)
                ToggleSInner.BackgroundColor3 = Color3.fromRGB(0, 115, 255)
                ToggleSInner.Position = UDim2.new(0, 10, 0.5, 0)
                ToggleSInner.Size = UDim2.new(0, 17, 0, 17)

                UICorner_ToggleSInner.CornerRadius = UDim.new(0, 30)
                UICorner_ToggleSInner.Name = "UICorner_ToggleSInner"
                UICorner_ToggleSInner.Parent = ToggleSInner

                ToggleSBtn.Name = "ToggleSBtn"
                ToggleSBtn.Parent = ToggleSFrame
                ToggleSBtn.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                ToggleSBtn.BackgroundTransparency = 1.000
                ToggleSBtn.Size = UDim2.new(0, 274, 0, 30)
                ToggleSBtn.Font = Enum.Font.SourceSans
                ToggleSBtn.Text = ""
                ToggleSBtn.TextColor3 = Color3.fromRGB(0, 0, 0)
                ToggleSBtn.TextSize = 14.000


                ToggleSBtn.MouseButton1Click:Connect(function()
                    if toggonsetting == false then
                        if togglechecks == false and lockers == true  then
                            togglechecks = true
                            TweenService:Create(
                                ToggleSInner,
                                TweenInfo.new(0.2, Enum.EasingStyle.Back,Enum.EasingDirection.Out),
                                {Position = UDim2.new(0, 10, 0.5, 0)}
                            ):Play()
                            callback(false)
                        elseif togglechecks == true and lockers == true then
                            togglechecks = false
                            TweenService:Create(
                                ToggleSInner,
                                TweenInfo.new(0.2, Enum.EasingStyle.Back,Enum.EasingDirection.Out),
                                {Position = UDim2.new(0.76, 0, 0.5, 0)}
                            ):Play()
                            callback(true)
                        end
                    end
                end
                )

                if default == true then
                    togglechecks = false
                    TweenService:Create(
                        ToggleSInner,
                        TweenInfo.new(0.2, Enum.EasingStyle.Back,Enum.EasingDirection.Out),
                        {Position = UDim2.new(0.76, 0, 0.5, 0)}
                    ):Play()
                    callback(true)
                end

                local LockerFrame = Instance.new("Frame")
                local LockIcon = Instance.new("ImageLabel")


                LockerFrame.Name = "LockerFrame"
                LockerFrame.Parent = ToggleSFrame
                LockerFrame.Active = true
                LockerFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
                LockerFrame.BackgroundTransparency = 0.200
                LockerFrame.BorderSizePixel = 0
                LockerFrame.ClipsDescendants = true
                LockerFrame.Position = UDim2.new(-0.0022222228, 0, 0, 0)
                LockerFrame.Size = UDim2.new(0, 274, 0, 30)
                LockerFrame.BackgroundTransparency = 1

                LockIcon.Name = "LockIcon"
                LockIcon.Parent = LockerFrame
                LockIcon.AnchorPoint = Vector2.new(0.5, 0.5)
                LockIcon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                LockIcon.BackgroundTransparency = 1.000
                LockIcon.Position = UDim2.new(0.5, 0, 0.5, 0)
                LockIcon.Size = UDim2.new(0, 0, 0, 0)
                LockIcon.Image = "http://www.roblox.com/asset/?id=3926305904"
                LockIcon.ImageRectOffset = Vector2.new(404, 364)
                LockIcon.ImageRectSize = Vector2.new(36, 36)
                LockIcon.ImageColor3 = Color3.fromRGB(255,25,25)

                                
                function ReToggle:StatsTrue()
                    if (togglechecks == true and lockers == true) or checkfirsttime == true then
                        togglechecks = false
                        checkfirsttime = false
                        TweenService:Create(
                            ToggleSInner,
                            TweenInfo.new(0.2, Enum.EasingStyle.Back,Enum.EasingDirection.Out),
                            {Position = UDim2.new(0.76, 0, 0.5, 0)}
                        ):Play()
                        callback(true)
                    end
                end
                
                function ReToggle:StatsFalse()
                    if togglechecks == false and lockers == true then
                        togglechecks = true
                        TweenService:Create(
                            ToggleSInner,
                            TweenInfo.new(0.2, Enum.EasingStyle.Back,Enum.EasingDirection.Out),
                            {Position = UDim2.new(0, 10, 0.5, 0)}
                        ):Play()
                        callback(false)
                    end
                end

                function ReToggle:Lock()
                    lockers = false
                    TweenService:Create(
                        LockerFrame,
                        TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out,0.1),
                        {BackgroundTransparency = 0.45}
                    ):Play()
                    wait()
                    TweenService:Create(
                        LockIcon,
                        TweenInfo.new(.2, Enum.EasingStyle.Back, Enum.EasingDirection.Out,0.1),
                        {Size = UDim2.new(0, 25, 0, 25)}
                    ):Play()
                end
                function ReToggle:Unlock()
                    lockers = true
                    TweenService:Create(
                        LockerFrame,
                        TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out,0.1),
                        {BackgroundTransparency = 1}
                    ):Play()
                    wait()
                    TweenService:Create(
                        LockIcon,
                        TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out,0.1),
                        {Size = UDim2.new(0, 0, 0, 0)}
                    ):Play()
                end
                return ReToggle
            end

            function Item:Seperator(text)
                local SepFrame = Instance.new("Frame")
                local LabelSep = Instance.new("TextLabel")
                local Liner1 = Instance.new("Frame")
                local LIner2 = Instance.new("Frame")

                SepFrame.Name = "SepFrame"
                SepFrame.Parent = Page
                SepFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                SepFrame.BackgroundTransparency = 1.000
                SepFrame.Position = UDim2.new(0, 0, 0.102649003, 0)
                SepFrame.Size = UDim2.new(0, 274, 0, 30)

                LabelSep.Name = "LabelSep"
                LabelSep.Parent = SepFrame
                LabelSep.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                LabelSep.BackgroundTransparency = 1.000
                LabelSep.Position = UDim2.new(0.0328467153, 0, 0, 0)
                LabelSep.Size = UDim2.new(0, 255, 0, 30)
                LabelSep.Font = Enum.Font.GothamBold
                LabelSep.Text = text
                LabelSep.TextColor3 = Color3.fromRGB(255, 255, 255)
                LabelSep.TextSize = 14.000

                Liner1.Name = "Liner1"
                Liner1.Parent = SepFrame
                Liner1.BackgroundColor3 = Color3.fromRGB(0, 155, 255)
                Liner1.Position = UDim2.new(0.0620437972, 0, 0.5, 0)
                Liner1.Size = UDim2.new(0, 64, 0, 1)

                LIner2.Name = "LIner2"
                LIner2.Parent = SepFrame
                LIner2.BackgroundColor3 = Color3.fromRGB(0, 155, 255)
                LIner2.Position = UDim2.new(0.708029211, 0, 0.5, 0)
                LIner2.Size = UDim2.new(0, 64, 0, 1)
            end
            function Item:Line(text)
                local LineFrame = Instance.new("Frame")
                local Liner = Instance.new("Frame")

                LineFrame.Name = "LineFrame"
                LineFrame.Parent = Page
                LineFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                LineFrame.BackgroundTransparency = 1.000
                LineFrame.Position = UDim2.new(0, 0, 0.102649003, 0)
                LineFrame.Size = UDim2.new(0, 274, 0, 30)

                Liner.Name = "Liner"
                Liner.Parent = LineFrame
                Liner.BackgroundColor3 = Color3.fromRGB(0, 155, 255)
                Liner.Position = UDim2.new(0.0620437972, 0, 0.5, 0)
                Liner.Size = UDim2.new(0, 241, 0, 1)
            end
            function Item:Label(text)
                local LabelFrame = Instance.new("Frame")
                local LabelTitle = Instance.new("TextLabel")
                local funclabel = {}

                LabelFrame.Name = "LabelFrame"
                LabelFrame.Parent = Page
                LabelFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                LabelFrame.BackgroundTransparency = 1.000
                LabelFrame.Position = UDim2.new(0, 0, 0.102649003, 0)
                LabelFrame.Size = UDim2.new(0, 274, 0, 30)

                LabelTitle.Name = "LabelTitle"
                LabelTitle.Parent = LabelFrame
                LabelTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                LabelTitle.BackgroundTransparency = 1.000
                LabelTitle.Position = UDim2.new(0.0328467153, 0, 0, 0)
                LabelTitle.Size = UDim2.new(0, 255, 0, 30)
                LabelTitle.Font = Enum.Font.GothamBold
                LabelTitle.Text = text
                LabelTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
                LabelTitle.TextSize = 14.000

                function funclabel:Update(newtext)
                    LabelTitle.Text = newtext
                end
                return funclabel
            end
			function Item:LabelList(name)
					local NameDropdown = Instance.new("Frame")
					local UICorner = Instance.new("UICorner")
					local TitleToggle = Instance.new("TextButton")
					local Dropdown = Instance.new("ScrollingFrame")
					local UICorner_2 = Instance.new("UICorner")
					local DropdownContentLayout = Instance.new("UIListLayout")
					local add = Instance.new("ImageButton")

					local DropdownToggled = true

					NameDropdown.Name = (name.."LabelList")
					NameDropdown.Parent = Page
					NameDropdown.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
					NameDropdown.Position = UDim2.new(0.020833334, 0, 0, 0)
					NameDropdown.Size = UDim2.new(0, 200, 0, 30)
					NameDropdown.ZIndex = 5

					UICorner.Parent = NameDropdown

					TitleToggle.Name = "TitleToggle"
					TitleToggle.Parent = NameDropdown
					TitleToggle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					TitleToggle.BackgroundTransparency = 1.000
					TitleToggle.BorderSizePixel = 0
					TitleToggle.Position = UDim2.new(0, 13, 0, 0)
					TitleToggle.Size = UDim2.new(0, 200, 0, 30)
					TitleToggle.ZIndex = 7
					TitleToggle.Font = Enum.Font.SourceSansBold
					TitleToggle.Text = (name)
					TitleToggle.TextColor3 = Color3.fromRGB(185, 185, 185)
					TitleToggle.TextSize = 15.000
					TitleToggle.TextXAlignment = Enum.TextXAlignment.Left

					local Find = Instance.new("TextBox")

					Find.Name = "Find"
					Find.Parent = NameDropdown
					Find.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					Find.BackgroundTransparency = 1.000
					Find.Position = UDim2.new(0, 13, 0, 0)
					Find.Size = UDim2.new(0, 135, 0, 30)
					Find.ZIndex = 10
					Find.Font = Enum.Font.SourceSansBold
					Find.PlaceholderColor3 = Color3.fromRGB(255,255,255)
					Find.PlaceholderText = "Search : ..."
					Find.Text = ""
					Find.TextColor3 = Color3.fromRGB(185, 185, 185)
					Find.TextSize = 15.000
					Find.TextXAlignment = Enum.TextXAlignment.Left
					Find.Visible = false

					Dropdown.Name = "Dropdown"
					Dropdown.Parent = NameDropdown
					Dropdown.Active = true
					Dropdown.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
					Dropdown.BorderSizePixel = 0
					Dropdown.Position = UDim2.new(0, 15, 0, 30)
					Dropdown.Size = UDim2.new(0, 250, 0, 0)
					Dropdown.ZIndex = 15
					Dropdown.CanvasSize = UDim2.new(0, 0, 0, 0)
					Dropdown.ScrollBarThickness = 5

					UICorner_2.Parent = Dropdown

					DropdownContentLayout.Name = "DropdownContentLayout"
					DropdownContentLayout.Parent = Dropdown
					DropdownContentLayout.SortOrder = Enum.SortOrder.LayoutOrder

					local function ResetAllDropdownItems()
						for i, v in pairs(Dropdown:GetChildren()) do
							if v:IsA("TextButton") then
								TweenService:Create(v, TweenInfo.new(0.25, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {TextColor3 = Color3.fromRGB(255, 255, 255)}):Play()
							end
						end
					end

					local function ClearAllDropdownItems()
						for i, v in pairs(Dropdown:GetChildren()) do
							if v:IsA("TextButton") then
								v:Destroy()
							end
						end
						TweenService:Create(NameDropdown, TweenInfo.new(0.5, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {Size = UDim2.new(0, 475, 0, DropdownContentLayout.AbsoluteContentSize.Y + 45)}):Play()
						TweenService:Create(Dropdown, TweenInfo.new(0.5, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {Size = UDim2.new(0, 450, 0, DropdownContentLayout.AbsoluteContentSize.Y + 5)}):Play()
					end

					TweenService:Create(TitleToggle, TweenInfo.new(0.5, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {TextColor3 = Color3.fromRGB(185, 185, 185)}):Play()
					TweenService:Create(NameDropdown, TweenInfo.new(0.5, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {Size = UDim2.new(0, 475, 0, DropdownContentLayout.AbsoluteContentSize.Y + 30)}):Play()
					TweenService:Create(Dropdown, TweenInfo.new(0.5, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {CanvasSize = UDim2.new(0, 0, 0, DropdownContentLayout.AbsoluteContentSize.Y)}):Play()
					TweenService:Create(Dropdown, TweenInfo.new(0.5, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {Size = UDim2.new(0, 450, 0, DropdownContentLayout.AbsoluteContentSize.Y)}):Play()
					TweenService:Create(add, TweenInfo.new(0.5, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {Rotation = 360}):Play()

					local funcdrop = {}

					function funcdrop:Add(text)
						local NameButton = Instance.new("TextButton")

						NameButton.Name = (text .. "DropdownButton")
						NameButton.Parent = Dropdown
						NameButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
						NameButton.BackgroundTransparency = 1.000
						NameButton.BorderSizePixel = 0
						NameButton.Size = UDim2.new(0, 250, 0, 25)
						NameButton.ZIndex = 15
						NameButton.AutoButtonColor = false
						NameButton.RichText = true
						NameButton.Font = Enum.Font.SourceSansBold
						NameButton.Text = text
						NameButton.TextColor3 = Color3.fromRGB(255, 255, 255)
						NameButton.TextSize = 15.000

						TweenService:Create(TitleToggle, TweenInfo.new(0.5, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {TextColor3 = Color3.fromRGB(185, 185, 185)}):Play()
						TweenService:Create(NameDropdown, TweenInfo.new(0.5, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {Size = UDim2.new(0, 475, 0, DropdownContentLayout.AbsoluteContentSize.Y + 45)}):Play()
						TweenService:Create(Dropdown, TweenInfo.new(0.5, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {Size = UDim2.new(0, 450, 0, DropdownContentLayout.AbsoluteContentSize.Y + 5)}):Play()
						TweenService:Create(add, TweenInfo.new(0.5, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {Rotation = 360}):Play()
					end
					function funcdrop:Clear()
						ClearAllDropdownItems()
					end
					return funcdrop
				end

            function Item:Toggle(text,default,callback)
                local ToggleFrame = Instance.new("Frame")
                local LabelToggle = Instance.new("TextLabel")
                local Toggle = Instance.new("ImageLabel")
                local ToggleInner = Instance.new("ImageLabel")
                local UICorner_Toggle = Instance.new("UICorner")
                local ToggleBtn = Instance.new("TextButton")
                local togglecheck = false
                local Toggle_UIStroke = Instance.new("UIStroke")
                local locker = true
                local checkfirsttime = true 

                if default == nil then default = false end

                
                ToggleFrame.Name = "ToggleFrame"
                ToggleFrame.Parent = Page
                ToggleFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                ToggleFrame.BackgroundTransparency = 1.000
                ToggleFrame.Position = UDim2.new(0, 0, 0.102649003, 0)
                ToggleFrame.Size = UDim2.new(0, 274, 0, 30)

                LabelToggle.Name = "LabelToggle"
                LabelToggle.Parent = ToggleFrame
                LabelToggle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                LabelToggle.BackgroundTransparency = 1.000
                LabelToggle.Position = UDim2.new(0.156934306, 0, 0, 0)
                LabelToggle.Size = UDim2.new(0, 219, 0, 30)
                LabelToggle.Font = Enum.Font.GothamBold
                LabelToggle.Text = text
                LabelToggle.TextColor3 = Color3.fromRGB(255, 255, 255)
                LabelToggle.TextSize = 14.000
                LabelToggle.TextXAlignment = Enum.TextXAlignment.Left

                Toggle.Name = "Toggle"
                Toggle.Parent = ToggleFrame
                Toggle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                Toggle.BackgroundTransparency = 1.000
                Toggle.Position = UDim2.new(0.0401460081, 0, 0.0666666031, 0)
                Toggle.Size = UDim2.new(0, 25, 0, 25)
                Toggle.Image = "rbxasset://textures/ui/GuiImagePlaceholder.png"
                Toggle.ImageColor3 = Color3.fromRGB(171, 171, 171)
                Toggle.ImageTransparency = 1.000

                Toggle_UIStroke.Thickness = 1
                Toggle_UIStroke.Name = ""
                Toggle_UIStroke.Parent = Toggle
                Toggle_UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
                Toggle_UIStroke.LineJoinMode = Enum.LineJoinMode.Round
                Toggle_UIStroke.Color = Color3.fromRGB(0, 115, 255)
                Toggle_UIStroke.Transparency = 0

                ToggleInner.Name = "ToggleInner"
                ToggleInner.Parent = Toggle
                ToggleInner.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                ToggleInner.BackgroundTransparency = 1.000
                ToggleInner.Position = UDim2.new(0.5095, 0, 0.514999986, 0)
                ToggleInner.Size = UDim2.new(0, 0, 0, 0)
                ToggleInner.Image = "rbxassetid://6031068421"
                ToggleInner.ImageColor3 = Color3.fromRGB(0, 115, 255)
                ToggleInner.AnchorPoint = Vector2.new(0.5, 0.5)

                UICorner_Toggle.CornerRadius = UDim.new(0, 4)
                UICorner_Toggle.Name = "UICorner_Toggle"
                UICorner_Toggle.Parent = Toggle

                ToggleBtn.Name = "ToggleBtn"
                ToggleBtn.Parent = ToggleFrame
                ToggleBtn.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                ToggleBtn.BackgroundTransparency = 1.000
                ToggleBtn.Size = UDim2.new(0, 274, 0, 30)
                ToggleBtn.Font = Enum.Font.SourceSans
                ToggleBtn.Text = ""
                ToggleBtn.TextColor3 = Color3.fromRGB(0, 0, 0)
                ToggleBtn.TextSize = 14.000

                ToggleBtn.MouseButton1Click:Connect(function()
                    if toggonsetting == false then
                        if togglecheck == false and locker == true then
                            togglecheck = true
                            TweenService:Create(
                                ToggleInner,
                                TweenInfo.new(0.2, Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                                {Size = UDim2.new(0, 0, 0, 0)}
                            ):Play()
                            callback(false)
                        elseif togglecheck == true and locker == true then
                            togglecheck = false
                            TweenService:Create(
                                ToggleInner,
                                TweenInfo.new(0.2, Enum.EasingStyle.Back,Enum.EasingDirection.Out),
                                {Size = UDim2.new(0, 27, 0, 26)}
                            ):Play()
                            callback(true)
                        end
                    end
                end)

                if default == true then
                    togglecheck = false
                    TweenService:Create(
                        ToggleInner,
                        TweenInfo.new(0.2, Enum.EasingStyle.Back,Enum.EasingDirection.Out),
                        {Size = UDim2.new(0, 27, 0, 26)}
                    ):Play()
                    callback(true)
                end


                local LockerFrame = Instance.new("Frame")
                local LockIcon = Instance.new("ImageLabel")
                local LockRetrun = {}


                LockerFrame.Name = "LockerFrame"
                LockerFrame.Parent = ToggleFrame
                LockerFrame.Active = true
                LockerFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
                LockerFrame.BackgroundTransparency = 0.200
                LockerFrame.BorderSizePixel = 0
                LockerFrame.ClipsDescendants = true
                LockerFrame.Position = UDim2.new(-0.0022222228, 0, 0, 0)
                LockerFrame.Size = UDim2.new(0, 274, 0, 30)
                LockerFrame.BackgroundTransparency = 1

                LockIcon.Name = "LockIcon"
                LockIcon.Parent = LockerFrame
                LockIcon.AnchorPoint = Vector2.new(0.5, 0.5)
                LockIcon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                LockIcon.BackgroundTransparency = 1.000
                LockIcon.Position = UDim2.new(0.5, 0, 0.5, 0)
                LockIcon.Size = UDim2.new(0, 0, 0, 0)
                LockIcon.Image = "http://www.roblox.com/asset/?id=3926305904"
                LockIcon.ImageRectOffset = Vector2.new(404, 364)
                LockIcon.ImageRectSize = Vector2.new(36, 36)
                LockIcon.ImageColor3 = Color3.fromRGB(255,25,25)

                                
                function LockRetrun:StatsTrue()
                    if (togglecheck == true and locker == true) or checkfirsttime == true then
                        checkfirsttime = false
                        togglecheck = false
                        TweenService:Create(
                            ToggleInner,
                            TweenInfo.new(0.2, Enum.EasingStyle.Back,Enum.EasingDirection.Out),
                            {Size = UDim2.new(0, 27, 0, 26)}
                        ):Play()
                        callback(true)
                    end
                end
                
                function LockRetrun:StatsFalse()
                    if togglecheck == false and locker == true then
                        togglecheck = true
                        TweenService:Create(
                            ToggleInner,
                            TweenInfo.new(0.2, Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                            {Size = UDim2.new(0, 0, 0, 0)}
                        ):Play()
                        callback(false)
                    end
                end

                function LockRetrun:Lock()
                    locker = false
                    TweenService:Create(
                        LockerFrame,
                        TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out,0.1),
                        {BackgroundTransparency = 0.45}
                    ):Play()
                    wait()
                    TweenService:Create(
                        LockIcon,
                        TweenInfo.new(.2, Enum.EasingStyle.Back, Enum.EasingDirection.Out,0.1),
                        {Size = UDim2.new(0, 25, 0, 25)}
                    ):Play()
                end
                function LockRetrun:Unlock()
                    locker = true
                    TweenService:Create(
                        LockerFrame,
                        TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out,0.1),
                        {BackgroundTransparency = 1}
                    ):Play()
                    wait()
                    TweenService:Create(
                        LockIcon,
                        TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out,0.1),
                        {Size = UDim2.new(0, 0, 0, 0)}
                    ):Play()
                end
                return LockRetrun
            end
            return Item
        end
        return Page
    end
    return Tab
end

local Win = Ui:Window('SERA HUB')
local tab1 = Win:CraftTab('Main')


local Main = tab1:CraftPage('Main',1)

Main:Toggle("Auto Farm",_G.Setting_table.AutoFarm,function(vu)
	Auto_Farm = vu
	Auto_Fast_Farm = vu
	_G.Setting_table.AutoFarm = vu
	Update_Setting(getgenv()['MyName'])
end)

Main:Toggle("Auto 600 Mas Melee",_G.Setting_table.MasMelee,function(vu)
	MasMelee = vu
	_G.Setting_table.MasMelee = vu
	Update_Setting(getgenv()['MyName'])
end)

spawn(function()
	while wait() do
		pcall(function()
			if MasMelee then
				if game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 600 or game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value >= 600 then
					wait(1)
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectro")
				elseif game.Players.LocalPlayer.Character:FindFirstChild("Electro") and game.Players.LocalPlayer.Character:FindFirstChild("Electro").Level.Value >= 600 or game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") and game.Players.LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value >= 600 then
					wait(1)
					local args = {
						[1] = "BuyFishmanKarate"
					}
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
				elseif game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate") and game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate").Level.Value >= 600 or game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") and game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate").Level.Value >= 600 then
					wait(1)
					local args = {
						[1] = "BlackbeardReward",
						[2] = "DragonClaw",
						[3] = "2"
					}
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
				elseif game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw") and game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw").Level.Value >= 600 or game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw").Level.Value >= 600 then
					wait(1)
					local args = {
						[1] = "BuySuperhuman"
					}
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
				elseif game.Players.LocalPlayer.Character:FindFirstChild("Superhuman") and game.Players.LocalPlayer.Character:FindFirstChild("Superhuman").Level.Value >= 600 or game.Players.LocalPlayer.Backpack:FindFirstChild("Superhuman") and game.Players.LocalPlayer.Backpack:FindFirstChild("Superhuman").Level.Value >= 600 then
					wait(1)
					local string_1 = "BuyElectricClaw";
					local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
					Target:InvokeServer(string_1);
				elseif game.Players.LocalPlayer.Character:FindFirstChild("Electric Claw") and game.Players.LocalPlayer.Character:FindFirstChild("Electric Claw").Level.Value >= 600 or game.Players.LocalPlayer.Backpack:FindFirstChild("Electric Claw") and game.Players.LocalPlayer.Backpack:FindFirstChild("Electric Claw").Level.Value >= 600 then
					wait(1)
					local args = {
						[1] = "BuySharkmanKarate"
					}
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
				elseif game.Players.LocalPlayer.Character:FindFirstChild("Sharkman Karate") and game.Players.LocalPlayer.Character:FindFirstChild("Sharkman Karate").Level.Value >= 600 or game.Players.LocalPlayer.Backpack:FindFirstChild("Sharkman Karate") and game.Players.LocalPlayer.Backpack:FindFirstChild("Sharkman Karate").Level.Value >= 600 then
					wait(1)
					local args = {
						[1] = "BuyDeathStep"
					}
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
				elseif game.Players.LocalPlayer.Character:FindFirstChild("Death Step") and game.Players.LocalPlayer.Character:FindFirstChild("Death Step").Level.Value >= 600 or game.Players.LocalPlayer.Backpack:FindFirstChild("Death Step") and game.Players.LocalPlayer.Backpack:FindFirstChild("Death Step").Level.Value >= 600 then
					wait(1)
					local args = {
						[1] = "BuyDragonTalon"
					}
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
				elseif game.Players.LocalPlayer.Character:FindFirstChild("Dragon Talon") and game.Players.LocalPlayer.Character:FindFirstChild("Dragon Talon").Level.Value >= 600 or game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Talon") and game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Talon").Level.Value >= 600 then
					wait(1)
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodhuman")
				end
			end
		end)
	end
end)

Main:Line()

local time = Main:Label("")

function UpdateTime()
	local GameTime = math.floor(workspace.DistributedGameTime+0.5)
	local Hour = math.floor(GameTime/(60^2))%24
	local Minute = math.floor(GameTime/(60^1))%60
	local Second = math.floor(GameTime/(60^0))%60
	time:Update(Hour.." Hour (h) "..Minute.." Minute (m) "..Second.." Second (s) ")
end
spawn(function()
	while true do
		UpdateTime()
		wait()
	end
end)

Main:Line()

local Faa = Main:Label("")
local db = Main:Label("")
local mr = Main:Label("")


spawn(function()
	while wait(.1) do
		pcall(function()
			if Auto_Farm then
				if not DbQ then
					if not Mix_Farm then
						if game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == false then
							if _G.Farm_Boss then
								_G.SelectBoss = nil
								_G.Farm_Boss = nil
								SelectMonster = nil
								_G.Farm_Mon = nil
								wait(1)
							end
							if _G.SelectBoss ~= nil and game.Workspace.Enemies:FindFirstChild(_G.SelectBoss) or _G.SelectBoss ~= nil and game.ReplicatedStorage:FindFirstChild(_G.SelectBoss) then
								CheckQuestBoss()
								repeat wait()
									TelePBoss(CFrameQBoss)
									TP(CFrameQBoss)
								until (CFrameQBoss.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 10
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", NameQuestBoss, QuestLvBoss)
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
								_G.Farm_Boss = true
							elseif SelectMonster ~= nil then
								CheckLevel2()
								repeat wait()
									TelePBoss(npcpos)
									TP(npcpos)
								until (npcpos.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 10
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", namequest, questlv)
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
								SelectMonster = nil
								_G.Farm_Mon = nil
							else
								StatrMagnet = nil
								CheckLevel2()
								repeat wait()
									TelePBoss(npcpos)
									TP(npcpos)
								until (npcpos.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 10
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", namequest, questlv)
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
							end
						elseif game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == true then
							if _G.Farm_Boss then
								if game.Workspace.Enemies:FindFirstChild(_G.SelectBoss) then
									for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
										if v.Name == _G.SelectBoss and v.Humanoid.Health > 0 then
											v.Humanoid:ChangeState(11)
											v.Humanoid.JumpPower = 0
											v.Humanoid.WalkSpeed = 0
											v.HumanoidRootPart.CanCollide = false
											OldPos = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
											v.HumanoidRootPart.Size = Vector3.new(5,5,5)
											StatrMagnet = nil
											repeat wait()
												TelePBoss(CFrameQBoss)
												EquipWeapon(_G.Setting_table.Weapon)
												TP(v.HumanoidRootPart.CFrame*CFrame.new(0,30,50))
												FastAttack = true
											until game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == false or not string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameBoss) or not v.Parent or v.Humanoid.Health <= 0 or not Auto_Farm or Mix_Farm
											FastAttack = false
											if not string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameBoss) then
												game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
											end
										end
									end
								else
									TP(CFrameBoss*CFrame.new(0,30,0))
									TelePBoss(CFrameBoss)
								end
							else
								if game.Workspace.Enemies:FindFirstChild(namemon) then
									for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
										if v.Name == namemon and v.Humanoid.Health > 0 then
											_G.PosMon = v.HumanoidRootPart.CFrame
											StatrMagnet = true
											CheckMon = false
											OldPos = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
											v.Humanoid:ChangeState(11)
											v.Humanoid.JumpPower = 0
											v.Humanoid.WalkSpeed = 0
											v.HumanoidRootPart.CanCollide = false
											v.HumanoidRootPart.Size = Vector3.new(5,5,5)
											repeat wait()
												TelePBoss(npcpos)
												EquipWeapon(_G.Setting_table.Weapon)
												TP(v.HumanoidRootPart.CFrame*CFrame.new(0,30,10))
												FastAttack = true
											until game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == false or not v.Parent or v.Humanoid.Health <= 0 or not Auto_Farm or Mix_Farm
											FastAttack = false
										end
									end
								else
									--CheckLevel2()
									repeat task.wait()
										for i,v in pairs(game.Workspace._WorldOrigin.EnemySpawns:GetChildren()) do
											if v.Name == namemon then
												TP(v.CFrame * CFrame.new(0,30,0))
											end
										end
									until game.Workspace.Enemies:FindFirstChild(namemon) or not Auto_Farm or Mix_Farm
								end
							end
						end
					end
				elseif DbQ then
					if Auto_Farm then
						if game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == false then
							if _G.Farm_Boss then
								_G.SelectBoss = nil
								_G.Farm_Boss = nil
								SelectMonster = nil
								_G.Farm_Mon = nil
								wait(1)
							end
							if _G.SelectBoss ~= nil and game.Workspace.Enemies:FindFirstChild(_G.SelectBoss) or _G.SelectBoss ~= nil and game.ReplicatedStorage:FindFirstChild(_G.SelectBoss) then
								CheckQuestBoss()
								repeat wait()
									TelePBoss(CFrameQBoss)
									TP(CFrameQBoss)
								until (CFrameQBoss.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 10
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", NameQuestBoss, QuestLvBoss)
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
								_G.Farm_Boss = true
							elseif SelectMonster ~= nil then
								CheckLevel3()
								repeat wait()
									TelePBoss(CFrameQ)
									TP(CFrameQ)
								until (CFrameQ.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 10
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", NameQuest, QuestLv)
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
								SelectMonster = nil
								_G.Farm_Mon = nil
							else
								StatrMagnet = nil
								CheckLevel3()
								repeat wait()
									TelePBoss(CFrameQ)
									TP(CFrameQ)
								until (CFrameQ.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 10
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", NameQuest, QuestLv)
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
							end
						elseif game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == true then
							if _G.Farm_Boss then
								if game.Workspace.Enemies:FindFirstChild(_G.SelectBoss) then
									for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
										if v.Name == _G.SelectBoss and v.Humanoid.Health > 0 then
											v.Humanoid:ChangeState(11)
											v.Humanoid.JumpPower = 0
											v.Humanoid.WalkSpeed = 0
											v.HumanoidRootPart.CanCollide = false
											OldPos = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
											v.HumanoidRootPart.Size = Vector3.new(5,5,5)
											StatrMagnet = nil
											repeat wait()
												TelePBoss(CFrameQBoss)
												EquipWeapon(_G.Setting_table.Weapon)
												TP(v.HumanoidRootPart.CFrame*CFrame.new(0,30,50))
												FastAttack = true
											until game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == false or not string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameBoss) or not v.Parent or v.Humanoid.Health <= 0 or not Auto_Farm or Mix_Farm
											FastAttack = false
											if not string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameBoss) then
												game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
											end
										end
									end
								else
									TP(CFrameBoss*CFrame.new(0,30,0))
									TelePBoss(CFrameBoss)
								end
							else
								if game.Workspace.Enemies:FindFirstChild(Ms) then
									for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
										if v.Name == Ms and v.Humanoid.Health > 0 then
											_G.PosMon = v.HumanoidRootPart.CFrame
											StatrMagnet = true
											CheckMon = false
											OldPos = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
											v.Humanoid:ChangeState(11)
											v.Humanoid.JumpPower = 0
											v.Humanoid.WalkSpeed = 0
											v.HumanoidRootPart.CanCollide = false
											v.HumanoidRootPart.Size = Vector3.new(5,5,5)
											repeat wait()
												TelePBoss(CFrameQ)
												EquipWeapon(_G.Setting_table.Weapon)
												TP(v.HumanoidRootPart.CFrame*CFrame.new(0,30,10))
												FastAttack = true
											until game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == false or not string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) or not v.Parent or v.Humanoid.Health <= 0 or not Auto_Farm or Mix_Farm
											FastAttack = false
											if not string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) then
												game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
											end
										end
									end
								else
									if not string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) then
										game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
									end
									if (CFrameQ.Position -game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 200 then
										if CFrameMon ~= nil then
											TP(CFrameMon * CFrame.new(0, 0, 0))
										else
											if OldPos ~= nil then
												TP(OldPos.Position)
											end
										end
									else
										StartMagnet = true
										TP(CFrameMon)
									end
									--CheckMon = true
								end
							end
						end
					end
				end
			else
				wait()
			end
		end)
	end
end)

spawn(function()
	while wait() do
		pcall(function()
			if CheckMon then
				for i,v in pairs(game:GetService("Workspace")["_WorldOrigin"].EnemySpawns:GetChildren()) do
					if v.Name == Ms then
						TP(v.CFrame * CFrame.new(0,30,0))
					end
				end
			end
		end)
	end
end)

task.spawn(function()
	while task.wait() do
		pcall(function()
			if StatrMagnet then
				if DbQ then
					if Auto_Farm then
						if game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == true then
							for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
								if v.Name == Ms and (v.HumanoidRootPart.Position-_G.PosMon.Position).Magnitude <= 350 then
									v.Humanoid:ChangeState(11)
									v.Humanoid.JumpPower = 0
									v.Humanoid.WalkSpeed = 0
									v.HumanoidRootPart.CanCollide = false
									v.HumanoidRootPart.Size = Vector3.new(5,5,5)
									v.HumanoidRootPart.CFrame = _G.PosMon
									v.Humanoid:ChangeState(11)
									v.Humanoid:ChangeState(14)
									sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius",  math.huge)
									Attack = true
								end
							end
						end
					else
						for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if (v.HumanoidRootPart.Position-_G.PosMon.Position).Magnitude <= 350 then
								v.Humanoid:ChangeState(11)
							    v.Humanoid.JumpPower = 0
								v.Humanoid.WalkSpeed = 0
								v.HumanoidRootPart.CanCollide = false
								v.HumanoidRootPart.Size = Vector3.new(5,5,5)
								v.HumanoidRootPart.CFrame = _G.PosMon
								v.Humanoid:ChangeState(11)
								v.Humanoid:ChangeState(14)
								sethiddenproperty(game.Players.LocalPlayer, "MaximumSimulationRadius",  math.huge)
								sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius",  9e20)
							end
						end
					end
				else
					if Auto_Farm then
						if game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == true then
							for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
								if v.Name == namemon and (v.HumanoidRootPart.Position-_G.PosMon.Position).Magnitude <= 350 then
									v.Humanoid:ChangeState(11)
									v.Humanoid.JumpPower = 0
									v.Humanoid.WalkSpeed = 0
									v.HumanoidRootPart.CanCollide = false
									v.HumanoidRootPart.Size = Vector3.new(5,5,5)
									v.HumanoidRootPart.CFrame = _G.PosMon
									v.Humanoid:ChangeState(11)
									v.Humanoid:ChangeState(14)
									sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius",  math.huge)
									Attack = true
								end
							end
						end
					else
						for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if (v.HumanoidRootPart.Position-_G.PosMon.Position).Magnitude <= 350 then
								v.Humanoid:ChangeState(11)
								v.Humanoid.JumpPower = 0
								v.Humanoid.WalkSpeed = 0
								v.HumanoidRootPart.CanCollide = false
								v.HumanoidRootPart.Size = Vector3.new(5,5,5)
								v.HumanoidRootPart.CFrame = _G.PosMon
								v.Humanoid:ChangeState(11)
								v.Humanoid:ChangeState(14)
								sethiddenproperty(game.Players.LocalPlayer, "MaximumSimulationRadius",  math.huge)
								sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius",  9e20)
							end
						end
					end
				end
			end
		end)
	end
end)


if New_World then

	local Mains = tab1:CraftPage('Observation',1)

	Mains:Seperator("Observation")


	local ObservationLevel = Mains:Label("")

	Mains:Toggle("Auto Farm Ken",_G.Setting_table.AutoFarmKen,function(vu)
		AutoFarmObservation = vu
	    _G.Setting_table.AutoFarmKen = vu
		Update_Setting(getgenv()['MyName'])
		TP(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
		if AutoFarmObservation then
			game:GetService("VirtualUser"):CaptureController()
			game:GetService("VirtualUser"):SetKeyDown('0x65')
			wait(2)
			game:GetService("VirtualUser"):SetKeyUp('0x65')
		end
	end)


	Mains:Toggle("Rejoin !!",_G.Setting_table.Rejoink,function(vu)
        RejoinKen = vu
		_G.Setting_table.Rejoink = vu
		Update_Setting(getgenv()['MyName'])
	end)

	function Text(value)
		game.StarterGui:SetCore("SendNotification", {
			Title = "Switch Notification", 
			Text = tostring(value),
			Icon = "http://www.roblox.com/asset/?id=9606070311",
			Duration = 10
		})
	end
	
	spawn(function()
		while game:GetService("RunService").Heartbeat:wait() do
			local OPP = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("KenTalk","Status")
			local Lpp = string.match(tostring(OPP), "%d+")
			ObservationLevel:Update("Ken Haki Level : "..tostring(Lpp))
		end
	end)
	
	spawn(function()
		while wait(3) do
			if AutoFarmObservation then
				local OPP = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("KenTalk","Status")
				local Lpp = string.match(tostring(OPP), "%d+")
				Text("Observation Haki Level : "..tostring(Lpp))
			end	
		end
	end)

	spawn(function()
		while wait() do
			pcall(function()
				if AutoFarmObservation then
					if New_World then
						if game.Workspace.Enemies:FindFirstChild("Water Fighter [Lv. 1450]") then
							if game.Players.LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then
								repeat wait()
									TP(game.Workspace.Enemies:FindFirstChild("Water Fighter [Lv. 1450]").HumanoidRootPart.CFrame * CFrame.new(0,0,0))
								until AutoFarmObservation == false or not game.Players.LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")
								if AutoFarmObservation and not game.Players.LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then
									TP(game.Workspace.Enemies:FindFirstChild("Water Fighter [Lv. 1450]").HumanoidRootPart.CFrame * CFrame.new(0,30,0))
								elseif AutoFarmObservation and RejoinKen and not game.Players.LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then
									TP(game.Workspace.Enemies:FindFirstChild("Water Fighter [Lv. 1450]").HumanoidRootPart.CFrame * CFrame.new(0,30,0))
									game:GetService("TeleportService"):Teleport(game.PlaceId)
								end
							end
						elseif not game.Workspace.Enemies:FindFirstChild("Water Fighter [Lv. 1450]") then
							TP(game:GetService("Workspace")["_WorldOrigin"].EnemySpawns["Water Fighter [Lv. 1450]"].CFrame * CFrame.new(0,30,0))
						end
					end
				end
			end)
		end
	end)


	spawn(function()
		game:GetService("RunService").Stepped:Connect(function()
			if SafeMode or PlayerHunt or KillPlayer or AutoRainbow or AutoCitiSulfurz or AutoFarmBoss or FarmAllBoss or Elite or AutoThird or AutoBartilo or AutoRengoku or Auto_Bone or AutoEcto or AutoFarmObservation or Auto_Farm or FarmMasteryGun or FarmMasteryFruit or _G.Auto_indra_Hop or _G.Auto_Dark_Dagger_Hop or _G.AutoDonSwan_Hop or _G.Pole_Hop or _G.AutoDoughtBoss or Core or noclip or AutoEvoRace or TPChest or NextIsland or RaidSuperhuman or _G.AutoRaid or SelectFarm or Clip or HolyTorch or AutoFarmSelectMonster or AutoLowRaid then
				for _, v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
					if v:IsA("BasePart") then
						v.CanCollide = false
					end
				end
			end
		end)
	end)


	if _G.AutoFarm_Ken and not game.Players.LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then
		wait()
		game:GetService('VirtualUser'):CaptureController()
		game:GetService('VirtualUser'):SetKeyDown('0x65')
		wait(2)
		game:GetService('VirtualUser'):SetKeyUp('0x65')
	end

	spawn(function()
		while wait() do wait(Sec)
			pcall(function()
				if AutoFarmObservation and not game.Players.LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then
					game:GetService('VirtualUser'):CaptureController()
					game:GetService('VirtualUser'):SetKeyDown('0x65')
					wait(2)
					game:GetService('VirtualUser'):SetKeyUp('0x65')
				end
			end)
		end
	end)
	
	spawn(function()
		while wait() do
			if AutoObservation then
				if not game.Players.LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then
					wait(1)
					game:GetService('VirtualUser'):CaptureController()
					game:GetService('VirtualUser'):SetKeyDown('0x65')
					wait(2)
					game:GetService('VirtualUser'):SetKeyUp('0x65')
				end
			end 
		end
	end)

	Mains:Seperator("Sea Best")


	Mains:Toggle("Auto Sea Best Fully",_G.Setting_table.Auto_SeaBest,function(vu)
		Auto_Sea_Best = vu
		_G.Setting_table.Auto_SeaBest = vu
		Update_Setting(getgenv()['MyName'])
	end)

	task.spawn(function()
		while task.wait() do
			pcall(function()
				if Auto_Sea_Best then
					if game.Workspace.SeaBeasts:FindFirstChild("RootPart") then
						for i,v in pairs(game:GetService("Workspace").SeaBeasts:GetChildren()) do
							game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Sit = false
							repeat wait()
								EquipWeaponAll()
								PositionSkillMasteryDevilFruit = v.HumanoidRootPart.Position
								UseSkillMasteryDevilFruit = true
								TP(v.HumanoidRootPart.CFrame * CFrame.new(0,30,0))
								if v.Humanoid.Health > 0 then
									game:service('VirtualInputManager'):SendKeyEvent(true, "Z", false, game)
									wait(.1)
									game:service('VirtualInputManager'):SendKeyEvent(false, "Z", false, game)
								end
								if v.Humanoid.Health > 0 then
									game:service('VirtualInputManager'):SendKeyEvent(true, "X", false, game)
									wait(.1)
									game:service('VirtualInputManager'):SendKeyEvent(false, "X", false, game)
								end
								if v.Humanoid.Health > 0 then
									game:service('VirtualInputManager'):SendKeyEvent(true, "C", false, game)
									wait(.1)
									game:service('VirtualInputManager'):SendKeyEvent(false, "C", false, game)
								end
								if v.Humanoid.Health > 0 then
									game:service('VirtualInputManager'):SendKeyEvent(true, "V", false, game)
									wait(.1)
									game:service('VirtualInputManager'):SendKeyEvent(false, "V", false, game)
								end
								if v.Humanoid.Health > 0 then
									game:service('VirtualInputManager'):SendKeyEvent(true, "F", false, game)
									wait(.1)
									game:service('VirtualInputManager'):SendKeyEvent(false, "F", false, game)
								end
							until not Auto_Sea_Best or not v.Parent
							UseSkillMasteryDevilFruit = false
						end
					else
						local args = {
							[1] = "BuyBoat",
							[2] = "Enforcer"
						}
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
						if (CFrame.new(-70.02976989746094, 8.563765525817871, 5773.98681640625).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude >= 10 then
							TP(CFrame.new(-70.02976989746094, 8.563765525817871, 5773.98681640625))
						elseif (CFrame.new(-70.02976989746094, 8.563765525817871, 5773.98681640625).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 2 then
							wait(0.5)
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Boats.Enforcer.MeshPart.CFrame * CFrame.new(0,1,0)
						end
						repeat task.wait()
							game:service('VirtualInputManager'):SendKeyEvent(true, "W", false, game)
							wait(0.35)
							game:service('VirtualInputManager'):SendKeyEvent(false, "W", false, game)
							wait(1.5)
							game:service('VirtualInputManager'):SendKeyEvent(true, "S", false, game)
							wait(0.35)
							game:service('VirtualInputManager'):SendKeyEvent(false, "S", false, game)
							wait(1.5)
						until not Auto_Sea_Best or game.Workspace.SeaBeasts:FindFirstChild("RootPart")
					end
				else
					TP(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
				end
			end)
		end
	end)

	spawn(function()
		pcall(function()
			if Auto_Sea_Best then
				if game.Players.LocalPlayer.Character.Humanoid.Health <= 0 or not game.Players.LocalPlayer then
					if game.Workspace.Boats:FindFirstChild("Enforcer") then
						game.Workspace.Boats.Enforcer:Destroy()
					end
				end
			end
		end)
	end)
end

if Three_World then
	local Hal = tab1:CraftPage('Halloween',1)
	Bone = Hal:Label("")
	spawn(function()
		pcall(function()
			while wait() do
				Bone:Update("    // Total Bone : "..tostring(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bones","Check").." \\\\"))
			end
		end)
	end)

	Hal:Toggle("Auto Farm Bone",_G.Setting_table.Farm_Bone,function(vu)
		Auto_Farm_Bone = vu
		_G.Setting_table.Farm_Bone = vu
		Update_Setting(getgenv()['MyName'])
	end)


	Hal:Toggle("Auto Random Bone",_G.Setting_table.Farm_Random_S,function(vu)
		Farm_Random_S = vu
		_G.Setting_table.Farm_Random_S = vu
		Update_Setting(getgenv()['MyName'])
		spawn(function()
			while wait(.1) do
				pcall(function()
					if Farm_Random_S then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bones","Check")
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bones","Buy",1,1)
					end
				end)
			end
		end)
	end)


	spawn(function()
		game:GetService("RunService").Heartbeat:Connect(function()
			pcall(function()
				for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
					if (Auto_Farm_Bone or _G.Settings.Mastery["Farm Mastery SwordList"]) and StatrMagnetBoneMon and (v.Name == "Reborn Skeleton [Lv. 1975]" or v.Name == "Living Zombie [Lv. 2000]" or v.Name == "Demonic Soul [Lv. 2025]" or v.Name == "Posessed Mummy [Lv. 2050]") and (v.HumanoidRootPart.Position - PosMonBone.Position).magnitude <= 350 then
						v.HumanoidRootPart.CFrame = PosMonBone
						v.HumanoidRootPart.CanCollide = false
						v.HumanoidRootPart.Size = Vector3.new(50,50,50)
						if v.Humanoid:FindFirstChild("Animator") then
							v.Humanoid.Animator:Destroy()
						end
						sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius",  math.huge)
					end
				end
			end)
		end)
	end)

	spawn(function()
		while wait() do
			if Auto_Farm_Bone then
				pcall(function()
					if game:GetService("Workspace").Enemies:FindFirstChild("Reborn Skeleton [Lv. 1975]") or game:GetService("Workspace").Enemies:FindFirstChild("Living Zombie [Lv. 2000]") or game:GetService("Workspace").Enemies:FindFirstChild("Domenic Soul [Lv. 2025]") or game:GetService("Workspace").Enemies:FindFirstChild("Posessed Mummy [Lv. 2050]") then
						for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if v.Name == "Reborn Skeleton [Lv. 1975]" or v.Name == "Living Zombie [Lv. 2000]" or v.Name == "Demonic Soul [Lv. 2025]" or v.Name == "Posessed Mummy [Lv. 2050]" then
								if v.Humanoid.Health > 0 then
									FastAttack = true
									repeat wait()
										EquipWeapon(_G.Setting_table.Weapon)
										StatrMagnetBoneMon = true
										v.HumanoidRootPart.CanCollide = false
										v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
										PosMonBone = v.HumanoidRootPart.CFrame
										TPs(v.HumanoidRootPart.CFrame * CFrame.new(0,30,0))
									until Auto_Farm_Bone == false or not v.Parent or v.Humanoid.Health <= 0
									FastAttack = false
								end
							end
						end
					else
						StatrMagnetBoneMon = false
						if (CFrame.new(-9515.3720703125, 164.00624084473, 5786.0610351562).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 1500 then
							TP(CFrame.new(-9515.3720703125, 164.00624084473, 5786.0610351562))
						else
							TelePBoss(CFrame.new(-9515.3720703125, 164.00624084473, 5786.0610351562))
						end
					end
				end)
			end
		end
	end)

	if Xmas == true then
		local xm = tab1:CraftPage('X MAS Event',1)

		xm:Toggle("X MAS",_G.Setting_table.Farm_Candy,function(vu)
			Farm_Candy = vu
			_G.Setting_table.Farm_Candy = vu
			Update_Setting(getgenv()['MyName'])
		end)

		local candy = xm:Label("")

		task.spawn(function()
			while task.wait() do
				pcall(function()
					for i,v in pairs(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventory")) do
						if type(v) == "table" then
							if v.Type == "Material" then
								if v.Name == "Candy" then
									candy:Update("Candy Have | "..v.Count)
								end
							end
						end
					end
				end)
			end
		end)



		task.spawn(function()
			while task.wait() do
				pcall(function()
					if Farm_Candy then
						if game:GetService("Workspace").Enemies:FindFirstChild("Candy Pirate [Lv. 2400]") or game:GetService("Workspace").Enemies:FindFirstChild("Snow Demon [Lv. 2425]") then
							for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
								if (v.Name == "Candy Pirate [Lv. 2400]" or v.Name == "Snow Demon [Lv. 2425]") and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
									FastAttack = true
									repeat task.wait()
										EquipWeapon(_G.Setting_table.Weapon)
										_G.PosMon = v.HumanoidRootPart.CFrame
										StatrMagnet = true
										TP(v.HumanoidRootPart.CFrame * CFrame.new(0,30,1))
									until not Farm_Candy or not v.Parent or v.Humanoid.Health <= 0
									FastAttack = false
									StatrMagnet = false
								end
							end
						else
							FastAttack = false
							StatrMagnet = false
							if (CFrame.new(-1078.87, 90.9136, -14476.5).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 1500 then
								TP(CFrame.new(-1078.87, 90.9136, -14476.5))
							else
								TelePBoss(CFrame.new(-1078.87, 90.9136, -14476.5))
							end
						end
					end
				end)
			end
		end)
	end

	local ck = tab1:CraftPage('Cake Prince',1)

	local Kill_Cake_Monster_ST = ck:Label("")

	spawn(function()
	    while wait() do
			pcall(function()
				if not game.Workspace.Enemies:FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]") or not game.ReplicatedStorage:FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]") then
					local OP = game.ReplicatedStorage.Remotes.CommF_:InvokeServer("CakePrinceSpawner")
					local Lp = tonumber(string.match(tostring(OP), "%d+"))
					Kill_Cake_Monster_ST:Update(" // Kill Cake Monster : "..tostring(Lp).."/500 \\\\")
				else
				    Kill_Cake_Monster_ST:Update(" // Kill Cake Monster : Spawned !!! \\\\")
				end
			end)
		end
	end)


	ck:Toggle("Auto Cake Prince",_G.Setting_table.Auto_Spikey_Trident,function(vu)
		Auto_Spikey_Trident = vu
		_G.Setting_table.Auto_Spikey_Trident = vu
		Update_Setting(getgenv()['MyName'])
	end)

	local Elite_Hunter_Status = ck:Label("")

	task.spawn(function()
		while task.wait() do
			pcall(function()
				if game:GetService("ReplicatedStorage"):FindFirstChild("Diablo [Lv. 1750]") or game:GetService("Workspace").Enemies:FindFirstChild("Diablo [Lv. 1750]") then
					Elite_Hunter_Status:Update("Status : Spawned\nName : Diablo ✅")   
				elseif game:GetService("ReplicatedStorage"):FindFirstChild("Deandre [Lv. 1750]") or game:GetService("Workspace").Enemies:FindFirstChild("Deandre [Lv. 1750]") then 
					Elite_Hunter_Status:Update("Status : Spawned\nName : Deandre ✅")   
				elseif game:GetService("ReplicatedStorage"):FindFirstChild("Urban [Lv. 1750]") or game:GetService("Workspace").Enemies:FindFirstChild("Urban [Lv. 1750]") then
					Elite_Hunter_Status:Update("Status : Spawned\nName : Urban ✅") 
				else
					Elite_Hunter_Status:Update("Status : Not Spawn ❌")    
				end
			end)
		end
	end)

	ck:Toggle("Auto Cake Prince V2",_G.Setting_table.Prince2,function(vu)
		Prince2 = vu
		_G.Setting_table.Prince2 = vu
		Update_Setting(getgenv()['MyName'])
	end)

	ck:Toggle("Hop Cake Prince V2",_G.Setting_table.Hop,function(vu)
		Hop = vu
		_G.Setting_table.Hop = vu
		Update_Setting(getgenv()['MyName'])
	end)

	task.spawn(function()
		while wait() do
			pcall(function()
				if Prince2 then
					if not game:GetService("Workspace").Map.CakeLoaf:FindFirstChild("RedDoor") then
						if game.Players.LocalPlayer.Character:FindFirstChild("Red Key") or game.Players.LocalPlayer.Backpack:FindFirstChild("Red Key") then
							local args = {
								[1] = "CakeScientist",
								[2] = "Check"
							}
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))    
							local args = {
								[1] = "RaidsNpc",
								[2] = "Check"
							}
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))                        
						end
					elseif game:GetService("Workspace").Map.CakeLoaf:FindFirstChild("RedDoor") then
						if game.Players.LocalPlayer.Character:FindFirstChild("Red Key") or game.Players.LocalPlayer.Backpack:FindFirstChild("Red Key") then
							RedDorTween = toTargetP(CFrame.new(-2681.97998, 64.3921585, -12853.7363, 0.149007782, -1.87902192e-08, 0.98883605, 3.60619588e-08, 1, 1.35681812e-08, -0.98883605, 3.36376011e-08, 0.149007782))
							if (CFrame.new(-2681.97998, 64.3921585, -12853.7363, 0.149007782, -1.87902192e-08, 0.98883605, 3.60619588e-08, 1, 1.35681812e-08, -0.98883605, 3.36376011e-08, 0.149007782).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 5 then
								if RedDorTween then RedDorTween:Stop() end
								game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2681.97998, 64.3921585, -12853.7363, 0.149007782, -1.87902192e-08, 0.98883605, 3.60619588e-08, 1, 1.35681812e-08, -0.98883605, 3.36376011e-08, 0.149007782)
								wait(0.5)
								EquipWeapon("Red Key")
								wait(0.5)
							end
						elseif game.Workspace:FindFirstChild("Enemies"):FindFirstChild("Dough King [Lv. 2300] [Raid Boss]") or game:GetService("ReplicatedStorage"):FindFirstChild("Dough King [Lv. 2300] [Raid Boss]") then
							if game:GetService("Workspace").Enemies:FindFirstChild("Dough King [Lv. 2300] [Raid Boss]") then
								for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
									if Prince2 and v.Name == "Dough King [Lv. 2300] [Raid Boss]" and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
										repeat wait()
											if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 300 then
												Farmtween = toTarget(v.HumanoidRootPart.CFrame)
											elseif (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
												if Farmtween then
													Farmtween:Stop()
												end
												EquipWeapon(_G.Setting_table.Weapon)
												v.HumanoidRootPart.Size = Vector3.new(55,55,55)
												FastAttack = true
												game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0)
											end
										until not Prince2 or not v.Parent or v.Humanoid.Health <= 0 or game:GetService("ReplicatedStorage"):FindFirstChild("Dough King [Lv. 2300] [Raid Boss]")
										FastAttack = false
									end
								end
							else
								if game:GetService("Workspace").Map.CakeLoaf.BigMirror.Other.Transparency == 0 then
									FastAttack = false
									Questtween = toTargetP(CFrame.new(-2151.82153, 149.315704, -12404.9053))
									if (CFrame.new(-2151.82153, 149.315704, -12404.9053).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
										if Questtween then Questtween:Stop() end
										game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2151.82153, 149.315704, -12404.9053)
										wait(1)
									end
								end 
							end
						elseif game.Players.LocalPlayer.Character:FindFirstChild("Sweet Chalice") or game.Players.LocalPlayer.Backpack:FindFirstChild("Sweet Chalice") then
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner", true)
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")
							if game:GetService("Workspace").Enemies:FindFirstChild("Cookie Crafter [Lv. 2200]") or game:GetService("Workspace").Enemies:FindFirstChild("Cake Guard [Lv. 2225]") or game:GetService("Workspace").Enemies:FindFirstChild("Baking Staff [Lv. 2250]") or game:GetService("Workspace").Enemies:FindFirstChild("Head Baker [Lv. 2275]") then
								for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
									if Prince2 and (v.Name == "Cookie Crafter [Lv. 2200]" or v.Name == "Cake Guard [Lv. 2225]" or v.Name == "Baking Staff [Lv. 2250]" or v.Name == "Head Baker [Lv. 2275]") and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
										repeat wait()
											if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 300 then
												Farmtween = toTarget(v.HumanoidRootPart.CFrame)
											elseif (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
												if Farmtween then Farmtween:Stop() end
												FastAttack = true
												PosFarmCakePrince = v.HumanoidRootPart.CFrame
												EquipWeapon(_G.Setting_table.Weapon)
												game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0)
												MagnetFarmCakePrince = true
												game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner", true)
												game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")
											end
										until not Prince2 or not v.Parent or v.Humanoid.Health <= 0
										FastAttack = false
										MagnetFarmCakePrince = false
									end
								end
							else
								MagnetFarmCakePrince = false
								FastAttack = false
								Questtween = TP(CFrame.new(-2077, 252, -12373))
								if (CFrame.new(-2077, 252, -12373).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
									if Questtween then Questtween:Stop() end
									game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2077, 252, -12373)
								end
							end
						elseif (game.Players.LocalPlayer.Backpack:FindFirstChild("God's Chalice") or game.Players.LocalPlayer.Character:FindFirstChild("God's Chalice")) and GetMaterial("Conjured Cocoa") >= 10 then
							game.ReplicatedStorage.Remotes.CommF_:InvokeServer("SweetChaliceNpc")
							wait(0.2)
						elseif not game.Players.LocalPlayer.Backpack:FindFirstChild("God's Chalice") and not game.Players.LocalPlayer.Character:FindFirstChild("God's Chalice") and (game.Workspace.Enemies:FindFirstChild("Deandre [Lv. 1750]") or game.Workspace.Enemies:FindFirstChild("Urban [Lv. 1750]") or game.Workspace.Enemies:FindFirstChild("Diablo [Lv. 1750]") or game.ReplicatedStorage:FindFirstChild("Deandre [Lv. 1750]") or game.ReplicatedStorage:FindFirstChild("Urban [Lv. 1750]") or game.ReplicatedStorage:FindFirstChild("Diablo [Lv. 1750]")) then
							if game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == true then
								if string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Diablo") or string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Urban") or string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Deandre") then
									for i,v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
										if string.find(v.Name,"Diablo") then
											TelePBoss(v.HumanoidRootPart.CFrame)
											DoughTween = TP(v.HumanoidRootPart.CFrame)
											if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150 then
												if DoughTween then
													DoughTween:Stop()
												end
												game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
											end
										elseif string.find(v.Name,"Urban") then
											TelePBoss(v.HumanoidRootPart.CFrame)
											DoughTween = TP(v.HumanoidRootPart.CFrame)
											if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150 then
												if DoughTween then
													DoughTween:Stop()
												end
												game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
											end
										elseif string.find(v.Name,"Deandre") then
											TelePBoss(v.HumanoidRootPart.CFrame)
											DoughTween = TP(v.HumanoidRootPart.CFrame)
											if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150 then
												if DoughTween then
													DoughTween:Stop()
												end
												game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
											end
										end	
									end
									for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
										if Prince2 and string.find(v.Name,"Diablo") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
											repeat wait()
												if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 1500 then
													TelePBoss(v.HumanoidRootPart.CFrame)
												elseif (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 1500 then
													EquipWeapon(_G.Setting_table.Weapon)
													FastAttack = true
													TP(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
												end 
											until not Prince2 or not v.Parent or v.Humanoid.Health <= 0
											FastAttack = false
										end
										if Prince2 and string.find(v.Name,"Urban") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
											repeat wait()
												if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 1500 then
													TelePBoss(v.HumanoidRootPart.CFrame)
												elseif (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 1500 then
													EquipWeapon(_G.Setting_table.Weapon)
													FastAttack = true
													TP(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
												end 
											until not Prince2 or not v.Parent or v.Humanoid.Health <= 0
											FastAttack = false
										end
										if Prince2 and string.find(v.Name,"Deandre") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
											repeat wait()
												if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 1500 then
													TelePBoss(v.HumanoidRootPart.CFrame)
												elseif (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 1500 then
													EquipWeapon(_G.Setting_table.Weapon)
													FastAttack = true
													TP(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
												end 
											until not Prince2 or not v.Parent or v.Humanoid.Health <= 0
											FastAttack = false
										end
									end
								elseif not string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Diablo") or string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Urban") or string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Deandre") then
									local string_1 = "EliteHunter";
									local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
									Target:InvokeServer(string_1);
								elseif Hop then
									function HopServer()
										if not _G.TP_Ser then
											_G.TP_Ser = true
											game.StarterGui:SetCore("SendNotification", {
												Title = "Hop Low Server ", 
												Text = "กำลังหาเซิฟ",
												Icon = "http://www.roblox.com/asset/?id=9606070311",
												Duration = 25
											})
											local PlaceID = game.PlaceId
											local AllIDs = {}
											local foundAnything = ""
											local actualHour = os.date("!*t").hour
											local Deleted = false
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
													game.StarterGui:SetCore("SendNotification", {
														Title = "Hop Low Server ", 
														Text = "Players : " ..tonumber(v.playing),
														Icon = "http://www.roblox.com/asset/?id=9606070311",
														Duration = 1.5
													})
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
																_G.Setting_table.Hop_Server = true 
																Update_Setting(getgenv()['MyName'])
																_G.TP_Ser = true
																-- writefile("NotSameServers.json", game:GetService('HttpService'):JSONEncode(AllIDs))
																wait()
																game:GetService("TeleportService"):TeleportToPlaceInstance(PlaceID, ID, game.Players.LocalPlayer)
															end)
															wait(.1)
														end
													end
												end
											end
											function Bring()
												while wait(.2) do
													pcall(function()
														TPReturner()
														if foundAnything ~= "" then
															TPReturner()
														end
													end)
												end
											end
											Bring()
										end
									end
									print("Hop")
									wait(3)
									HopServer()
								end
							elseif not string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Diablo") or string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Urban") or string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Deandre") then
								local string_1 = "EliteHunter";
								local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
								Target:InvokeServer(string_1);
							elseif Hop then
								function HopServer()
									if not _G.TP_Ser then
										_G.TP_Ser = true
										game.StarterGui:SetCore("SendNotification", {
											Title = "Hop Low Server ", 
											Text = "กำลังหาเซิฟ",
											Icon = "http://www.roblox.com/asset/?id=9606070311",
											Duration = 25
										})
										local PlaceID = game.PlaceId
										local AllIDs = {}
										local foundAnything = ""
										local actualHour = os.date("!*t").hour
										local Deleted = false
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
												game.StarterGui:SetCore("SendNotification", {
													Title = "Hop Low Server ", 
													Text = "Players : " ..tonumber(v.playing),
													Icon = "http://www.roblox.com/asset/?id=9606070311",
													Duration = 1.5
												})
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
															_G.Setting_table.Hop_Server = true 
															Update_Setting(getgenv()['MyName'])
															_G.TP_Ser = true
															-- writefile("NotSameServers.json", game:GetService('HttpService'):JSONEncode(AllIDs))
															wait()
															game:GetService("TeleportService"):TeleportToPlaceInstance(PlaceID, ID, game.Players.LocalPlayer)
														end)
														wait(.1)
													end
												end
											end
										end
										function Bring()
											while wait(.2) do
												pcall(function()
													TPReturner()
													if foundAnything ~= "" then
														TPReturner()
													end
												end)
											end
										end
										Bring()
									end
								end
								print("Hop")
								wait(3)
								HopServer()
							end
						else
							if game:GetService("Workspace").Enemies:FindFirstChild("Candy Rebel [Lv. 2375]") or game:GetService("Workspace").Enemies:FindFirstChild("Sweet Thief [Lv. 2350]") or game:GetService("Workspace").Enemies:FindFirstChild("Chocolate Bar Battler [Lv. 2325]") or game:GetService("Workspace").Enemies:FindFirstChild("Cocoa Warrior [Lv. 2300]") then
								for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
									if Prince2 and (v.Name == "Candy Rebel [Lv. 2375]" or v.Name == "Sweet Thief [Lv. 2350]" or v.Name == "Chocolate Bar Battler [Lv. 2325]" or v.Name == "Cocoa Warrior [Lv. 2300]") and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
										repeat wait()
											if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 150 then
												Farmtween = TP(v.HumanoidRootPart.CFrame)
												FastAttack = false
											elseif (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150 then
												if Farmtween then Farmtween:Stop() end
												FastAttack = true
												PosFarmCoco = v.HumanoidRootPart.CFrame
												EquipWeapon(_G.Setting_table.Weapon)
												game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0)
												MagnetFarmCoco = true
											end
										until not Prince2 or not v.Parent or v.Humanoid.Health <= 0
										FastAttack = false
										MagnetFarmCoco = false
									end
								end
							else
								MagnetFarmCoco = false
								FastAttack = false
								Questtween = TP(CFrame.new(620.6344604492188, 78.93644714355469, -12581.369140625))
								if (CFrame.new(620.6344604492188, 78.93644714355469, -12581.369140625).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150 then
									if Questtween then
										Questtween:Stop()
									end
									game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(620.6344604492188, 78.93644714355469, -12581.369140625)
								end
							end
						end
					else
						print("Error Whyyy")
					end
				end
			end)
		end
	end)

	spawn(function()
		while wait() do
			pcall(function()
				if StatrMagnet then
					for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
						if not string.find(v.Name,"Boss") and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 500 then
							if InMyNetWork(v.HumanoidRootPart) then
								v.HumanoidRootPart.CFrame = PosMon
								v.Humanoid.JumpPower = 0
								v.Humanoid.WalkSpeed = 0
								v.HumanoidRootPart.Size = Vector3.new(60,60,60)
								v.HumanoidRootPart.Transparency = 1
								v.HumanoidRootPart.CanCollide = false
								v.Head.CanCollide = false
								if v.Humanoid:FindFirstChild("Animator") then
									v.Humanoid.Animator:Destroy()
								end
								v.Humanoid:ChangeState(11)
								v.Humanoid:ChangeState(14)
							end
						end
					end
				end
			end)
		end
	end)


	spawn(function()
		while wait() do
			pcall(function()
				if string.len(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")) == 88 then
					KillMob = (tonumber(string.sub(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"),39,41)) - 500)
				elseif string.len(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")) == 87 then
					KillMob = (tonumber(string.sub(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"),40,41)) - 500)
				elseif string.len(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")) == 86 then
					KillMob = (tonumber(string.sub(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"),41,41)) - 500)
				end
			end)
		end
	end)

	
	task.spawn(function()
		while task.wait() do
			pcall(function()
				if _G.Setting_table.Bring_Mob then
					for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if (Auto_Spikey_Trident or _G.Settings.Mastery["Farm Mastery SwordList"] or _G.Setting_table.SWOW) and MagnetDought then
							if (v.Name == "Cookie Crafter [Lv. 2200]" or v.Name == "Cake Guard [Lv. 2225]" or v.Name == "Baking Staff [Lv. 2250]" or v.Name == "Head Baker [Lv. 2275]") and (v.HumanoidRootPart.Position - PosMonDoughtOpenDoor.Position).Magnitude <= 250 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
								v.HumanoidRootPart.Size = Vector3.new(50,50,50)
								v.Humanoid:ChangeState(14)
								v.HumanoidRootPart.CanCollide = false
								v.Head.CanCollide = false
								v.HumanoidRootPart.CFrame = PosMonDoughtOpenDoor
								if v.Humanoid:FindFirstChild("Animator") then
									v.Humanoid.Animator:Destroy()
								end
								sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
							end
						end
					end
				end
			end)
		end
	end)

	spawn(function()
		while wait(.1) do
			pcall(function()
				if Auto_Spikey_Trident then
					if not Mix_Farm or Auto_Spikey_Trident_Farm then
						if game.Workspace.Enemies:FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]") or game.ReplicatedStorage:FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]") then
							Auto_Spikey_Trident_Farm = true
							Mix_Farm = true
							
							if game.Workspace.Enemies:FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]") then
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
								for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
									if v.Name == "Cake Prince [Lv. 2300] [Raid Boss]" and v.Humanoid.Health > 0 then
										if v.Humanoid:FindFirstChild("Animator") then
											v.Humanoid.Animator:Destroy()
										end
										DbFast = false
										print("DbFast = fase")
										repeat wait()
											EquipWeapon(_G.Setting_table.Weapon)
											FastAttack = true
											if RandomPosition then
												if AttackRandomType1 == 1 then
													game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 60, 1)
												elseif AttackRandomType1 == 2 then
													game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 1, 60)
												elseif AttackRandomType1 == 3 then
													game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(1, 1, -60)
												elseif AttackRandomType1 == 4 then
													game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(60, 1, 0)
												elseif AttackRandomType1 == 5 then
													game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(-60, 1, 0)
												elseif AttackRandomType1 == 6 then
													game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, -60, 1)
												else
													game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 60, 1)
												end
											else
												TP(v.HumanoidRootPart.CFrame * CFrame.new(30, 30, 30))
											end
										until v.Humanoid.Health <= 0 or not v.Parent or not Auto_Spikey_Trident
										DbFast = true
										print("DbFast = true")
										FastAttack = false
									end
								end
							else
								if game:GetService("Workspace").Map.CakeLoaf.BigMirror.Other.Transparency == 0 and (CFrame.new(-1990.672607421875, 4532.99951171875, -14973.6748046875).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude >= 2000 then
									Questtween = TP(CFrame.new(-2151.82153, 149.315704, -12404.9053))
									if (CFrame.new(-2151.82153, 149.315704, -12404.9053).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
										if Questtween then Questtween:Stop() end
										game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2151.82153, 149.315704, -12404.9053)
										wait(.1)
									end
								end 
							end
						else
							local CFrameMon = CFrame.new(-2133.9267578125, 148.9164581298828, -12341.775390625)
							if game:GetService("Workspace").Enemies:FindFirstChild("Cookie Crafter [Lv. 2200]") or game:GetService("Workspace").Enemies:FindFirstChild("Cake Guard [Lv. 2225]") or game:GetService("Workspace").Enemies:FindFirstChild("Baking Staff [Lv. 2250]") or game:GetService("Workspace").Enemies:FindFirstChild("Head Baker [Lv. 2275]") then
								for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
									if (v.Name == "Cookie Crafter [Lv. 2200]" or v.Name == "Cake Guard [Lv. 2225]" or v.Name == "Baking Staff [Lv. 2250]" or v.Name == "Head Baker [Lv. 2275]") and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
										FastAttack = true
										repeat wait()
											EquipWeapon(_G.Setting_table.Weapon)
											MagnetDought = true
											PosMonDoughtOpenDoor = v.HumanoidRootPart.CFrame
											TP(v.HumanoidRootPart.CFrame * CFrame.new(0,40,0))
										until not Auto_Spikey_Trident or not v.Parent or v.Humanoid.Health <= 0
										FastAttack = false
										MagnetDought = false
									end
								end
							else
								if (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude < 1500 then
									TP(CFrameMon)
								else
									TelePBoss(CFrameMon)
								end
							end
						end
					end
				else
					wait(.1)
					TP(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
				end
			end)
		end
	end)

	local ms = tab1:CraftPage('Mastery',1)

	ms:Toggle("Auto Farm Fruit",_G.Setting_table.Farm_Fruit,function(vu)
		Auto_Farm_Fruit = vu
		_G.Setting_table.Farm_Fruit = vu
		Update_Setting(getgenv()['MyName'])
	end)


	if _G.Setting_table.MinHealth == nil then
		_G.Setting_table.MinHealth = 20
	end

	ms:Slider("Health %","",1,100,_G.Setting_table.MinHealth,function(vu)
		MinHealth = vu
		_G.Setting_table.MinHealth = vu
		Update_Setting(getgenv()['MyName'])
	end)

	ms:Slider("Distan Mastery","",1,60,_G.Setting_table.Distan_Mastery,function(vu)
		_G.Setting_table.Distan_Mastery = vu
		Update_Setting(getgenv()['MyName'])
	end)

	spawn(function()
		while wait(.5) do
			pcall(function()
				if Auto_Farm_Fruit then
					if not Mix_Farm then
						CheckLevel()
						if game.Workspace.Enemies:FindFirstChild(Ms) then
							for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
								if not string.find(v.Name,"Boss") and v.Humanoid.Health > 0 and (v.HumanoidRootPart.Position-CFrameMon.Position).Magnitude <= 1000 then
									_G.PosMon = v.HumanoidRootPart.CFrame
									StatrMagnet = true
									repeat wait()
										local health = v.Humanoid.Health
										local maxhealth = v.Humanoid.MaxHealth
										local percent = (health / maxhealth) * 100
										if percent <= MinHealth then
											EquipWeapon(game.Players.LocalPlayer.Data.DevilFruit.Value)
											TP(v.HumanoidRootPart.CFrame * CFrame.new(0,tonumber(_G.Setting_table.Distan_Mastery), 1))
											PositionSkillMasteryDevilFruit = v.HumanoidRootPart.Position
											UseSkillMasteryDevilFruit = true
											if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon-Dragon") then
												if SkillZ  and v.Humanoid.Health > 0 then
													game:service('VirtualInputManager'):SendKeyEvent(true, "Z", false, game)
													wait(.1)
													game:service('VirtualInputManager'):SendKeyEvent(false, "Z", false, game)
												end
												if SkillX  and v.Humanoid.Health > 0 then
													game:service('VirtualInputManager'):SendKeyEvent(true, "X", false, game)
													wait(.1)
													game:service('VirtualInputManager'):SendKeyEvent(false, "X", false, game)
												end   
											elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Human-Human: Buddha") then
												if SkillZ  and v.Humanoid.Health > 0 and game.Players.LocalPlayer.Character.HumanoidRootPart.Size == Vector3.new(7.6, 7.676, 3.686) then
												else
													game:service('VirtualInputManager'):SendKeyEvent(true, "Z", false, game)
													wait(.1)
													game:service('VirtualInputManager'):SendKeyEvent(false, "Z", false, game)
												end
												if SkillX  and v.Humanoid.Health > 0 then
													game:service('VirtualInputManager'):SendKeyEvent(true, "X", false, game)
													wait(.1)
													game:service('VirtualInputManager'):SendKeyEvent(false, "X", false, game)
												end
												if SkillC  and v.Humanoid.Health > 0 then
													game:service('VirtualInputManager'):SendKeyEvent(true, "C", false, game)
													wait(.1)
													game:service('VirtualInputManager'):SendKeyEvent(false, "C", false, game)
												end  
											elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value) then
												game:GetService("Players").LocalPlayer.Character:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value).MousePos.Value = v.HumanoidRootPart.Position
												if SkillZ  and v.Humanoid.Health > 0 then
													game:service('VirtualInputManager'):SendKeyEvent(true, "Z", false, game)
													wait(.1)
													game:service('VirtualInputManager'):SendKeyEvent(false, "Z", false, game)
												end
												if SkillX  and v.Humanoid.Health > 0 then
													game:service('VirtualInputManager'):SendKeyEvent(true, "X", false, game)
													wait(.1)
													game:service('VirtualInputManager'):SendKeyEvent(false, "X", false, game)
												end
												if SkillC  and v.Humanoid.Health > 0 then
													game:service('VirtualInputManager'):SendKeyEvent(true, "C", false, game)
													wait(.1)
													game:service('VirtualInputManager'):SendKeyEvent(false, "C", false, game)
												end
												if SkillV  and v.Humanoid.Health > 0 then
													game:service('VirtualInputManager'):SendKeyEvent(true, "V", false, game)
													wait(.1)
													game:service('VirtualInputManager'):SendKeyEvent(false, "V", false, game)
												end
												if SkillF  and v.Humanoid.Health > 0 then
													game:service('VirtualInputManager'):SendKeyEvent(true, "F", false, game)
													wait(.1)
													game:service('VirtualInputManager'):SendKeyEvent(false, "F", false, game)
												end
											end
										elseif percent > MinHealth and v.Humanoid.Health > 0 then
											if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Human-Human: Buddha") then
												if game.Players.LocalPlayer.Character.HumanoidRootPart.Size.Y >= 6 then
													game:service('VirtualInputManager'):SendKeyEvent(true, "Z", false, game)
													wait(.1)
													game:service('VirtualInputManager'):SendKeyEvent(false, "Z", false, game)
												end
											end
											if DbFast == true then
												DbFast = false
											end
											UseSkillMasteryDevilFruit = false
											EquipWeapon(_G.Setting_table.Weapon)
											TP(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 1))
											local health = v.Humanoid.Health
											local maxhealth = v.Humanoid.MaxHealth
											local percent = (health / maxhealth) * 100
											if percent > MinHealth and v.Humanoid.Health > 0 then
												game:GetService'VirtualUser':Button1Down(Vector2.new(1280,600))
											else
												EquipWeapon(game.Players.LocalPlayer.Data.DevilFruit.Value)
												wait(1)
											end
										end
									until v.Humanoid.Health <= 0 or not v.Parent or Mix_Farm or not Auto_Farm_Fruit
									StatrMagnet = false
								end
							end
						else
							for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
								if not string.find(v.Name,"Boss") and v.Humanoid.Health > 0 and (v.HumanoidRootPart.Position-CFrameMon.Position).Magnitude <= 1000 then
									_G.PosMon = v.HumanoidRootPart.CFrame
									StatrMagnet = true
									repeat wait(.2)
										local MinHealth = 17
										local health = v.Humanoid.Health
										local maxhealth = v.Humanoid.MaxHealth
										local percent = (health / maxhealth) * 100
										if percent <= MinHealth then
											EquipWeapon(game.Players.LocalPlayer.Data.DevilFruit.Value)
											TP(v.HumanoidRootPart.CFrame * CFrame.new(0, tonumber(_G.Setting_table.Distan_Mastery), 1))
											PositionSkillMasteryDevilFruit = v.HumanoidRootPart.Position
											UseSkillMasteryDevilFruit = true
											if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon-Dragon") then
												if SkillZ  and v.Humanoid.Health > 0 then
													game:service('VirtualInputManager'):SendKeyEvent(true, "Z", false, game)
													wait(.1)
													game:service('VirtualInputManager'):SendKeyEvent(false, "Z", false, game)
												end
												if SkillX  and v.Humanoid.Health > 0 then
													game:service('VirtualInputManager'):SendKeyEvent(true, "X", false, game)
													wait(.1)
													game:service('VirtualInputManager'):SendKeyEvent(false, "X", false, game)
												end   
											elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Human-Human: Buddha") then
												if SkillZ  and v.Humanoid.Health > 0 and game.Players.LocalPlayer.Character.HumanoidRootPart.Size == Vector3.new(7.6, 7.676, 3.686) then
												else
													game:service('VirtualInputManager'):SendKeyEvent(true, "Z", false, game)
													wait(.1)
													game:service('VirtualInputManager'):SendKeyEvent(false, "Z", false, game)
												end
												if SkillX  and v.Humanoid.Health > 0 then
													game:service('VirtualInputManager'):SendKeyEvent(true, "X", false, game)
													wait(.1)
													game:service('VirtualInputManager'):SendKeyEvent(false, "X", false, game)
												end
												if SkillC  and v.Humanoid.Health > 0 then
													game:service('VirtualInputManager'):SendKeyEvent(true, "C", false, game)
													wait(.1)
													game:service('VirtualInputManager'):SendKeyEvent(false, "C", false, game)
												end  
											elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value) then
												game:GetService("Players").LocalPlayer.Character:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value).MousePos.Value = v.HumanoidRootPart.Position
												if SkillZ  and v.Humanoid.Health > 0 then
													game:service('VirtualInputManager'):SendKeyEvent(true, "Z", false, game)
													wait(.1)
													game:service('VirtualInputManager'):SendKeyEvent(false, "Z", false, game)
												end
												if SkillX  and v.Humanoid.Health > 0 then
													game:service('VirtualInputManager'):SendKeyEvent(true, "X", false, game)
													wait(.1)
													game:service('VirtualInputManager'):SendKeyEvent(false, "X", false, game)
												end
												if SkillC  and v.Humanoid.Health > 0 then
													game:service('VirtualInputManager'):SendKeyEvent(true, "C", false, game)
													wait(.1)
													game:service('VirtualInputManager'):SendKeyEvent(false, "C", false, game)
												end
												if SkillV  and v.Humanoid.Health > 0 then
													game:service('VirtualInputManager'):SendKeyEvent(true, "V", false, game)
													wait(.1)
													game:service('VirtualInputManager'):SendKeyEvent(false, "V", false, game)
												end
												if SkillF and v.Humanoid.Health > 0 then
													game:service('VirtualInputManager'):SendKeyEvent(true, "F", false, game)
													wait(.1)
													game:service('VirtualInputManager'):SendKeyEvent(false, "F", false, game)
												end
											end
										elseif percent > MinHealth and v.Humanoid.Health > 0 then
											if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Human-Human: Buddha") then
												if SkillZ  and v.Humanoid.Health > 0 and game.Players.LocalPlayer.Character.HumanoidRootPart.Size == Vector3.new(7.6, 7.676, 3.686) then
													game:service('VirtualInputManager'):SendKeyEvent(true, "Z", false, game)
													wait(.1)
													game:service('VirtualInputManager'):SendKeyEvent(false, "Z", false, game)
												end
											end
											if DbFast == true then
												DbFast = false
											end
											UseSkillMasteryDevilFruit = false
											EquipWeapon(_G.Setting_table.Weapon)
											TP(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 1))
											local health = v.Humanoid.Health
											local maxhealth = v.Humanoid.MaxHealth
											local percent = (health / maxhealth) * 100
											if percent > MinHealth and v.Humanoid.Health > 0 then
												game:GetService'VirtualUser':Button1Down(Vector2.new(1280,600))
											else
												EquipWeapon(game.Players.LocalPlayer.Data.DevilFruit.Value)
												wait(1)
											end
										end
									until v.Humanoid.Health <= 0 or not v.Parent or Mix_Farm or not Auto_Farm_Fruit
									StatrMagnet = false
								end
							end
						end
					end
				end
			end)
		end
	end)

	spawn(function()
		local gg = getrawmetatable(game)
		local old = gg.__namecall
		setreadonly(gg,false)
		gg.__namecall = newcclosure(function(...)
			local method = getnamecallmethod()
			local args = {...}
			if tostring(method) == "FireServer" then
				if tostring(args[1]) == "RemoteEvent" then
					if tostring(args[2]) ~= "true" and tostring(args[2]) ~= "false" then
						if UseSkillMasteryDevilFruit then
							args[2] = PositionSkillMasteryDevilFruit
							return old(unpack(args))
						elseif Skillaimbot then
							args[2] = AimBotSkillPosition
							return old(unpack(args))
						end
					end
				end
			end
			return old(...)
		end)
	end)

	ms:Label("Auto Farm Mas Sword")

	local AllSwordInInventroy = {};	
	pcall(function()
		for i, v in pairs(game:GetService("ReplicatedStorage").Remotes['CommF_']:InvokeServer("getInventoryWeapons")) do
			if (type(v) ~= "table") then
			elseif (v.Type == "Sword") then
				table.insert(AllSwordInInventroy, v.Name);
			end
		end
	end)

	
	_G.Settings.Mastery["Select Multi Swordd"] = AllSwordInInventroy
	ms:MultiDropdown("Select Sword",AllSwordInInventroy,_G.Settings.Mastery["Select Multi Swordd"],function(vu)
		_G.Settings.Mastery["Select Multi Swordd"] = vu
		SaveSettings()
	end)

	ms:Button("Select All Sword",function()
		_G.Settings.Mastery["Select Multi Swordd"] = AllSwordInInventroy
	end)




	local function CheckQuestMasteryFarm()
		if Old_World then
			Name = "Galley Captain [Lv. 650]";
			CFrameMon = CFrame.new(5649, 39, 4936);
		end
		if New_World then
			Name = "Water Fighter [Lv. 1450]";
			CFrameMon = CFrame.new(-3385, 239, -10542);
		end
		if Three_World then
			Name = "Reborn Skeleton [Lv. 1975]";
			CFrameMon = CFrame.new(-9506.14648, 172.130661, 6101.79053);
		end
	end

	function AutoFarmMasterySwordList()
		pcall(function()
			if game:GetService("Workspace").Enemies:FindFirstChild(Name) or (Three_World and (game:GetService("Workspace").Enemies:FindFirstChild("Reborn Skeleton [Lv. 1975]") or game:GetService("Workspace").Enemies:FindFirstChild("Living Zombie [Lv. 2000]") or game:GetService("Workspace").Enemies:FindFirstChild("Demonic Soul [Lv. 2025]") or game:GetService("Workspace").Enemies:FindFirstChild("Posessed Mummy [Lv. 2050]"))) then
				for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
					if _G.Settings.Mastery["Farm Mastery SwordList"] and ((Three_World and (v.Name == "Reborn Skeleton [Lv. 1975]" or v.Name == "Living Zombie [Lv. 2000]" or v.Name == "Demonic Soul [Lv. 2025]" or v.Name == "Posessed Mummy [Lv. 2050]")) or v.Name == Name) and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
						repeat wait()
							if game.Players.LocalPlayer.PlayerGui.Main.InCombat.Visible == true then
								game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid"):ChangeState(15)
							end
							FastAttack = true
							EquipWeaponSword()
							StatrMagnet = true
							_G.PosMon = v.HumanoidRootPart.CFrame
							TP(v.HumanoidRootPart.CFrame * CFrame.new(0,30,30))
						until not game:GetService("Workspace").Enemies:FindFirstChild(Name) and ((Three_World and not (v.Name == "Reborn Skeleton [Lv. 1975]" or v.Name == "Living Zombie [Lv. 2000]" or v.Name == "Demonic Soul [Lv. 2025]" or v.Name == "Posessed Mummy [Lv. 2050]")) or v.Name == Name) or not _G.Settings.Mastery["Farm Mastery SwordList"] or v.Humanoid.Health <= 0 or not v.Parent
						StatrMagnet = false
						FastAttack = false
					end
				end
			else
				StatrMagnet = false
				Modstween = TP(CFrameMon)
				if (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude < 1500 then
					TP(CFrameMon)
				else
					TelePBoss(CFrameMon)
				end
				if (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150 then
					if Modstween then Modstween:Stop() end
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
				end
			end
		end)
	end
	
	local function inmyself(name)
		return game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(name) or game:GetService("Players").LocalPlayer.Character:FindFirstChild(name);
	end
	
	SwordListFarmComplete = {};

	ms:Toggle("Auto Farm Mas Sword",_G.Settings.Mastery["Farm Mastery SwordList"],function(vu)
		_G.Settings.Mastery["Farm Mastery SwordList"] = vu
		SaveSettings()
		spawn(function()
			while wait() do
				pcall(function()
					if _G.Settings.Mastery["Farm Mastery SwordList"] and #_G.Settings.Mastery["Select Multi Swordd"] ~= 0 then
						for i,v in pairs(_G.Settings.Mastery["Select Multi Swordd"]) do
							if _G.Settings.Mastery["Farm Mastery SwordList"] == false and table.find(SwordListFarmComplete,v) then
								break;
							end
							if not game.Players.LocalPlayer.Backpack:FindFirstChild(v) and not game.Players.LocalPlayer.Character:FindFirstChild(v) and game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):GetState() ~= Enum.HumanoidStateType.Dead and game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Health ~= 0 then
								while _G.Settings.Mastery["Farm Mastery SwordList"] do wait()
									if game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Health == 0 then 
										repeat wait() 

										until game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Health > 0; wait(0.2) 
									end
									if game.Players.LocalPlayer.Backpack:FindFirstChild(v) or game.Players.LocalPlayer.Character:FindFirstChild(v) or _G.Settings.Mastery["Farm Mastery SwordList"] == false or table.find(SwordListFarmComplete,v) then 
										break;
									end
									wait(0.5)
									Com("F_","StoreItem",tostring(GetFightingStyle("Sword")),inmyself(GetFightingStyle("Sword")))
									wait(0.5)
									Com("F_","LoadItem",tostring(v))
									wait(0.5)
									if game.Players.LocalPlayer.Backpack:FindFirstChild(v) or game.Players.LocalPlayer.Character:FindFirstChild(v) then
										SelectWeaponInSwordList = v
										break;
									end
									if CheckMasteryWeapon(v,600) == "true" or CheckMasteryWeapon(v,600) == "true UpTo" then
										print("DONE "..v)     
										table.insert(SwordListFarmComplete,v)
										break;
									end
								end
							end
							wait(0.2)
							if game.Players.LocalPlayer.Backpack:FindFirstChild(v) or game.Players.LocalPlayer.Character:FindFirstChild(v) then
								while _G.Settings.Mastery["Farm Mastery SwordList"] do wait()
									if table.find(SwordListFarmComplete,v) and #_G.Settings.Mastery["Select Multi Swordd"] ~= 0 and #SwordListFarmComplete ~= 0 then
										break
									end
									if _G.Settings.Mastery["Farm Mastery SwordList"] == false then
										break;
									end
									if game.Players.LocalPlayer.Backpack:FindFirstChild(v) or game.Players.LocalPlayer.Character:FindFirstChild(v) then
										SelectWeaponInSwordList = v
									end
									CheckQuestMasteryFarm()
									AutoFarmMasterySwordList()
									if CheckMasteryWeapon(v,600) == "true" or CheckMasteryWeapon(v,600) == "true UpTo" then
										print("DONE "..v)
										table.insert(SwordListFarmComplete,v)
										break;
									end
								end
							end
						end
					else 
						TP(game.Players.LocalPlayer.Character.HumanoidRootPart.Position)
					end
				end)
			end
		end)
	end)

	ms:Slider("Lock Mastery","",1,600,_G.Setting_table.Lock,function(vu)
		_G.Setting_table.Lock = vu
		Update_Setting(getgenv()['MyName'])
	end)


				
	
				
	

	ms:Label("// Setting \\\\")

	ms:Toggle("Skill Z",_G.Setting_table.Skill_Z,function(vu)
		SkillZ = vu
		_G.Setting_table.Skill_Z = vu
		Update_Setting(getgenv()['MyName'])
	end)
	ms:Toggle("Skill X",_G.Setting_table.Skill_X,function(vu)
		SkillX = vu
		_G.Setting_table.Skill_X = vu
		Update_Setting(getgenv()['MyName'])
	end)
	ms:Toggle("Skill C",_G.Setting_table.Skill_C,function(vu)
		SkillC = vu
		_G.Setting_table.Skill_C = vu
		Update_Setting(getgenv()['MyName'])
	end)
	ms:Toggle("Skill V",_G.Setting_table.Skill_V,function(vu)
		SkillV = vu
		_G.Setting_table.Skill_V = vu
		Update_Setting(getgenv()['MyName'])
	end)

	ms:Toggle("Skill F",_G.Setting_table.Skill_F,function(vu)
		SkillF = vu
		_G.Setting_table.Skill_F = vu
		Update_Setting(getgenv()['MyName'])
	end)
	
end


local mb = tab1:CraftPage('Mob Aura',1)

local ddiss = mb:Label("")

task.spawn(function()
	while task.wait() do
		pcall(function()
			ddiss:Update("Distance | ".._G.Setting_table.DistanceMobAura)
		end)
	end
end)

mb:Toggle("Mob Aura",_G.Setting_table.Mob_Aura,function(vu)
	AutoMobAura = vu 
	_G.Setting_table.Mob_Aura = vu
	Update_Setting(getgenv()['MyName'])
end)

mb:Slider("Distan Aura","Distan : %s%%",1,5000,_G.Setting_table.DistanceMobAura,function(vu)
	DistanceMobAura = vu
	_G.Setting_table.DistanceMobAura = vu
	Update_Setting(getgenv()['MyName'])
end)

task.spawn(function()
	while wait() do
		if AutoMobAura then
			for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
				if AutoMobAura and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and (v.HumanoidRootPart.Position-game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= DistanceMobAura then
					FastAttack = true
					repeat task.wait()
						EquipWeapon(_G.Setting_table.Weapon)
						PosMonAura = v.HumanoidRootPart.CFrame
						TP(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
						MagnetMobAura = true
					until not AutoMobAura or not v.Parent or v.Humanoid.Health <= 0
					FastAttack = false
					MagnetMobAura = false
				end
			end
		end
	end
end)


spawn(function()
	while true do game:GetService("RunService").RenderStepped:Wait()
		if game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") and game.Players.LocalPlayer.Character.Humanoid.Health > 0 then
			if MagnetMobAura and AutoMobAura then
				for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
					if MagnetMobAura and AutoMobAura and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and (v.HumanoidRootPart.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 400 then
						v.HumanoidRootPart.Size = Vector3.new(50,50,50)
						v.Humanoid:ChangeState(14)
						v.HumanoidRootPart.CanCollide = false
						v.Head.CanCollide = false
						v.HumanoidRootPart.CFrame = PosMonAura
						if v.Humanoid:FindFirstChild("Animator") then
							v.Humanoid.Animator:Destroy()
						end
						sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
					end
				end
			end
		end
	end
end)


local fb = tab1:CraftPage('Boss',2)

fb:Toggle("Auto Farm Boss",_G.Setting_table.AutoFarmBoss,function(vu)
	_G.Setting_table.AutoFarmBoss = vu
	Update_Setting(getgenv()['MyName'])
end)


fb:Toggle("Auto Farm All Boss",_G.Setting_table.AutoFarmAllBoss,function(vu)
	_G.Setting_table.AutoFarmAllBoss = vu
	Update_Setting(getgenv()['MyName'])
end)

task.spawn(function()
	while wait() do
		if _G.Setting_table.AutoFarmAllBoss then
			GetBossName()
		end
	end
end)

fb:Toggle("Auto Quest Boss",_G.Setting_table.AutoQuestBoss,function(vu)
	_G.Setting_table.AutoQuestBoss = vu
	Update_Setting(getgenv()['MyName'])
end)

task.spawn(function()
	while wait() do
		if _G.Setting_table.AutoFarmAllBoss then
			pcall(function()
				CheckBossQuest()
				if MsBoss == "Soul Reaper [Lv. 2100] [Raid Boss]" or MsBoss == "Longma [Lv. 2000] [Boss]" or MsBoss == "Don Swan [Lv. 1000] [Boss]" or MsBoss == "Cursed Captain [Lv. 1325] [Raid Boss]" or MsBoss == "Order [Lv. 1250] [Raid Boss]" or MsBoss == "rip_indra True Form [Lv. 5000] [Raid Boss]" then
					if game:GetService("ReplicatedStorage"):FindFirstChild(MsBoss) or game:GetService("Workspace").Enemies:FindFirstChild(MsBoss) then
						if game:GetService("Workspace").Enemies:FindFirstChild(MsBoss) then
							for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
								if v.Name == MsBoss then
									repeat wait()
										EquipWeapon(_G.Setting_table.Weapon)
										_G.GetBoss = true
										StatrMagnet = true
										FastAttack = true
										TP(v.HumanoidRootPart.CFrame * CFrame.new(1,30,0))
										_G.PosMon = v.HumanoidRootPart.CFrame
										v.HumanoidRootPart.Size = Vector3.new(60,60,60)
										v.Humanoid.JumpPower = 0
										v.Humanoid.WalkSpeed = 0
										v.HumanoidRootPart.CanCollide = false
										v.Humanoid:ChangeState(11)
									until _G.Setting_table.AutoFarmAllBoss == false or not v.Parent or v.Humanoid.Health <= 0
									_G.GetBoss = false
									FastAttack = false
									StatrMagnet = false
								end
							end
						else
							_G.GetBoss = true
							if ((CFrameBoss).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 1500 then
								TP(CFrameBoss)
							else
								TelePBoss(CFrameBoss)
							end
						end
					else
						_G.GetBoss = false
					end
				else
					if _G.Setting_table.AutoQuestBoss then
						CheckBossQuest()
						if not string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameBoss) then
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
						end
						if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
							_G.GetBoss = true
							repeat wait()
								if ((CFrameQuestBoss).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 1500 then
									TP(CFrameQuestBoss)
								else
									TelePBoss(CFrameQuestBoss)
								end
							until (CFrameQuestBoss.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 or not _G.Setting_table.AutoFarmBoss
							if (CFrameQuestBoss.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 4 then
								wait(1.1)
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", NameQuestBoss, LevelQuestBoss)
							end
						elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
							if game:GetService("ReplicatedStorage"):FindFirstChild(MsBoss) or game:GetService("Workspace").Enemies:FindFirstChild(MsBoss) then
								if game:GetService("Workspace").Enemies:FindFirstChild(MsBoss) then
									for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
										if v.Name == MsBoss then
											repeat wait()
												_G.GetBoss = true
												if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameBoss) then
													EquipWeapon(_G.Setting_table.Weapon)
													StatrMagnet = true
													FastAttack = true
													TP(v.HumanoidRootPart.CFrame * CFrame.new(1,30,0))
													_G.PosMon = v.HumanoidRootPart.CFrame
													v.HumanoidRootPart.Size = Vector3.new(60,60,60)
													v.Humanoid.JumpPower = 0
													v.Humanoid.WalkSpeed = 0
													v.HumanoidRootPart.CanCollide = false
													v.Humanoid:ChangeState(11)								
												else
													game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
												end
											until _G.Setting_table.AutoFarmAllBoss == false or not v.Parent or v.Humanoid.Health <= 0
											_G.GetBoss = false
											FastAttack = false
											StatrMagnet = false
										end
									end
								else
									_G.GetBoss = true
									if ((CFrameBoss).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 1500 then
										TP(CFrameBoss)
									else
										TelePBoss(CFrameBoss)
									end
								end
							else
								_G.GetBoss = false
							end
						end
					else
						if game:GetService("ReplicatedStorage"):FindFirstChild(MsBoss) or game:GetService("Workspace").Enemies:FindFirstChild(MsBoss) then
							if game:GetService("Workspace").Enemies:FindFirstChild(MsBoss) then
								for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
									if v.Name == MsBoss then
										repeat wait()
											EquipWeapon(_G.Setting_table.Weapon)
											_G.GetBoss = true
											StatrMagnet = true
											FastAttack = true
											TP(v.HumanoidRootPart.CFrame * CFrame.new(1,30,0))
											_G.PosMon = v.HumanoidRootPart.CFrame
											v.HumanoidRootPart.Size = Vector3.new(60,60,60)
											v.Humanoid.JumpPower = 0
											v.Humanoid.WalkSpeed = 0
											v.HumanoidRootPart.CanCollide = false
											v.Humanoid:ChangeState(11)								
										until _G.Setting_table.AutoFarmAllBoss == false or not v.Parent or v.Humanoid.Health <= 0
										_G.GetBoss = false
										FastAttack = false
										StatrMagnet = false
									end
								end
							else
								_G.GetBoss = true
								if ((CFrameBoss).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 1500 then
									TP(CFrameBoss)
								else
									TelePBoss(CFrameBoss)
								end
							end
						else
							_G.GetBoss = false
						end
					end
				end
			end)
		end
	end
end)

task.spawn(function()
	while wait() do
		if _G.Setting_table.AutoFarmBoss then
			pcall(function()
				CheckBossQuest()
				if MsBoss == "Soul Reaper [Lv. 2100] [Raid Boss]" or MsBoss == "Longma [Lv. 2000] [Boss]" or MsBoss == "Don Swan [Lv. 1000] [Boss]" or MsBoss == "Cursed Captain [Lv. 1325] [Raid Boss]" or MsBoss == "Order [Lv. 1250] [Raid Boss]" or MsBoss == "rip_indra True Form [Lv. 5000] [Raid Boss]" then
					if game:GetService("Workspace").Enemies:FindFirstChild(MsBoss) then
						for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if v.Name == MsBoss then
								repeat wait()
									EquipWeapon(_G.Setting_table.Weapon)
									StatrMagnet = true
									FastAttack = true
									TP(v.HumanoidRootPart.CFrame * CFrame.new(1,30,0))
									_G.PosMon = v.HumanoidRootPart.CFrame
									v.HumanoidRootPart.Size = Vector3.new(60,60,60)
									v.Humanoid.JumpPower = 0
									v.Humanoid.WalkSpeed = 0
									v.HumanoidRootPart.CanCollide = false
									v.Humanoid:ChangeState(11)
								until _G.Setting_table.AutoFarmBoss == false or not v.Parent or v.Humanoid.Health <= 0
								FastAttack = false
								StatrMagnet = false
							end
						end
					else
						if ((CFrameBoss).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 1500 then
							TP(CFrameBoss)
						else
							TelePBoss(CFrameBoss)
						end
					end
				else
					if _G.Setting_table.AutoQuestBoss then
						CheckBossQuest()
						if not string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameBoss) then
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
						end
						if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
							repeat wait()
								if ((CFrameQuestBoss).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 1500 then
									TP(CFrameQuestBoss)
								else
									TelePBoss(CFrameQuestBoss)
								end
							until (CFrameQuestBoss.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 or not _G.Setting_table.AutoFarmBoss
							if (CFrameQuestBoss.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 4 then
								wait(1.1)
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", NameQuestBoss, LevelQuestBoss)
							end
						elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
							if game:GetService("Workspace").Enemies:FindFirstChild(MsBoss) then
								for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
									if v.Name == MsBoss then
										repeat wait()
											if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameBoss) then
												EquipWeapon(_G.Setting_table.Weapon)
												StatrMagnet = true
												FastAttack = true
												TP(v.HumanoidRootPart.CFrame * CFrame.new(1,30,0))
												_G.PosMon = v.HumanoidRootPart.CFrame
												v.HumanoidRootPart.Size = Vector3.new(60,60,60)
												v.Humanoid.JumpPower = 0
												v.Humanoid.WalkSpeed = 0
												v.HumanoidRootPart.CanCollide = false
												v.Humanoid:ChangeState(11)								
											else
												game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
											end
										until _G.Setting_table.AutoFarmBoss == false or not v.Parent or v.Humanoid.Health <= 0
										FastAttack = false
										StatrMagnet = false
									end
								end
							else
								if ((CFrameBoss).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 1500 then
									TP(CFrameBoss)
								else
									TelePBoss(CFrameBoss)
								end
							end
						end
					else
						if game:GetService("Workspace").Enemies:FindFirstChild(MsBoss) then
							for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
								if v.Name == MsBoss then
									repeat wait()
										EquipWeapon(_G.Setting_table.Weapon)
										StatrMagnet = true
										FastAttack = true
										TP(v.HumanoidRootPart.CFrame * CFrame.new(1,30,0))
										_G.PosMon = v.HumanoidRootPart.CFrame
										v.HumanoidRootPart.Size = Vector3.new(60,60,60)
										v.Humanoid.JumpPower = 0
										v.Humanoid.WalkSpeed = 0
										v.HumanoidRootPart.CanCollide = false
										v.Humanoid:ChangeState(11)								
									until _G.Setting_table.AutoFarmBoss == false or not v.Parent or v.Humanoid.Health <= 0
									FastAttack = false
									StatrMagnet = false
								end
							end
						else
							if ((CFrameBoss).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 1500 then
								TP(CFrameBoss)
							else
								TelePBoss(CFrameBoss)
							end
						end
					end
				end
			end)
		end
	end
end)

Boss = {}
for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
	if string.find(v.Name,"Boss") then
		table.insert(Boss,v.Name)
	end
end
for i,v in pairs(game.ReplicatedStorage:GetChildren()) do
	if string.find(v.Name,"Boss") then
		table.insert(Boss,v.Name)
	end
end

local Select_B = fb:Dropdown("Select Boss",Boss,_G.Setting_table.Selectb,function(a)
	_G.Setting_table.Selectb = a
	Update_Setting(getgenv()['MyName'])
end)


fb:Button("Refresh Boss",function(vu)
	Select_B:Clear()
	for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
		if string.find(v.Name,"Boss") then
			Select_B:Add(v.Name)
		end
	end
	for i,v in pairs(game.ReplicatedStorage:GetChildren()) do
		if string.find(v.Name,"Boss") then
			Select_B:Add(v.Name)
		end
	end
end)

local Camera = require(game.ReplicatedStorage.Util.CameraShaker)
Camera:Stop()

local st = tab1:CraftPage('Setting',2)

Waspon = {
	"nill",
	"Melee",
	"Sword",
	"Fruit"
}

st:Dropdown("Select Weapon",Waspon,_G.Setting_table.SelectWeapon,function(vu)
	_G.Setting_table.SelectWeapon = vu
	Update_Setting(getgenv()['MyName'])
end)


task.spawn(function()
	while wait() do
		pcall(function()
			if _G.Setting_table.SelectWeapon == "Melee" then
				for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
					if v.ToolTip == "Melee" then
						if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
							_G.Setting_table.Weapon = v.Name
						end
					end
				end
			elseif _G.Setting_table.SelectWeapon == "Sword" then
				for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
					if v.ToolTip == "Sword" then
						if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
							_G.Setting_table.Weapon = v.Name
						end
					end
				end
			elseif _G.Setting_table.SelectWeapon == "Fruit" then
				for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
					if v.ToolTip == "Blox Fruit" then
						if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
							_G.Setting_table.Weapon = v.Name
						end
					end
				end
			else
				for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
					if v.ToolTip == "Melee" then
						if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
							_G.Setting_table.Weapon = v.Name
						end
					end
				end
			end
		end)
	end
end)

st:Label("// Auto Stats \\\\\ ")

st:Toggle("Melee",_G.Setting_table.Melee_A,function(vu)
	Melee_A = vu
	_G.Setting_table.Melee_A = vu
	Update_Setting(getgenv()['MyName'])
end)
st:Toggle("Defense",_G.Setting_table.Defense_A,function(vu)
	Defense_A = vu
	_G.Setting_table.Defense_A = vu
	Update_Setting(getgenv()['MyName'])
end)
st:Toggle("Sword",_G.Setting_table.Sword_A,function(vu)
	Sword_A = vu
	_G.Setting_table.Sword_A = vu
	Update_Setting(getgenv()['MyName'])
end)
st:Toggle("Fruit",_G.Setting_table.Fruit_A,function(vu)
	Fruit_A = vu
	_G.Setting_table.Fruit_A = vu
	Update_Setting(getgenv()['MyName'])
end)
st:Toggle("Gun",_G.Setting_table.Gun_A,function(vu)
	Gun_A = vu
	_G.Setting_table.Gun_A = vu
	Update_Setting(getgenv()['MyName'])
end)
st:Slider("Point","",1,100,3,function(vu)
	Points = vu
end)

spawn(function()
    while wait() do
        if Melee_A then
            if game:GetService("Players").LocalPlayer.Data.Points.Value > 0 then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint", "Melee", Points)
            end
        end
    end
end)

spawn(function()
    while wait() do
        if Defense_A then
            if game:GetService("Players").LocalPlayer.Data.Points.Value > 0 then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint", "Defense", Points)
            end
        end
    end
end)

spawn(function()
    while wait() do
        if Sword_A then
            if game:GetService("Players").LocalPlayer.Data.Points.Value > 0 then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint", "Sword", Points)
            end
        end
    end
end)

spawn(function()
    while wait() do
        if Gun_A then
            if game:GetService("Players").LocalPlayer.Data.Points.Value > 0 then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint", "Gun", Points)
            end
        end
    end
end)

spawn(function()
    while wait() do
        if Fruit_A then
            if game:GetService("Players").LocalPlayer.Data.Points.Value > 0 then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint", "Demon Fruit", Points)
            end
        end
    end
end)

local ms = tab1:CraftPage('Misc',2)

ms:Toggle("Auto Raid Pirate",_G.Setting_table.Auto_Quest_Tushita_2,function(vu)
	Auto_Quest_Tushita_2 = vu
	_G.Setting_table.Auto_Quest_Tushita_2 = vu
	Update_Setting(getgenv()['MyName'])
end)

spawn(function()
	while wait() do
		if Auto_Quest_Tushita_2 then
			pcall(function()
				local CFrameBoss = CFrame.new(-5496.17432, 313.768921, -2841.53027, 0.924894512, 7.37058015e-09, 0.380223751, 3.5881019e-08, 1, -1.06665446e-07, -0.380223751, 1.12297109e-07, 0.924894512)
				if (CFrame.new(-5539.3115234375, 313.800537109375, -2972.372314453125).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 500 then
					for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if Auto_Quest_Tushita_2 and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
							if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 2000 then
								repeat wait()
									FastAttack = true
									v.HumanoidRootPart.CanCollide = false
									v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
									TP(v.HumanoidRootPart.CFrame * CFrame.new(0,50,0))
								until v.Humanoid.Health <= 0 or not v.Parent or Auto_Quest_Tushita_2 == false
								FastAttack = false
							end
						end
					end
				else
					if ((CFrameBoss).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 1500 then
						TP(CFrameBoss)
					else
						TelePBoss(CFrameBoss)
					end
				end
			end)
		end
	end
end)

ms:Label("Farm Select Monster")

ms:Toggle("Auto Farm Select Monster",_G.Setting_table.Auto_Farm_Monster,function(vu)
	Auto_Farm_Monster = vu
	_G.Setting_table.Auto_Farm_Monster = vu
	Update_Setting(getgenv()['MyName'])
end)


spawn(function()
	while wait(.5) do
		pcall(function()
			if Auto_Farm_Monster then
				if not Mix_Farm then
					if game.Workspace.Enemies:FindFirstChild(_G.Setting_table.Mon) or game.ReplicatedStorage:FindFirstChild(_G.Setting_table.Mon) then
						if game.Workspace.Enemies:FindFirstChild(_G.Setting_table.Mon) then
							for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
								if v.Name == _G.Setting_table.Mon and v.Humanoid.Health > 0 then
									_G.PosMon = v.HumanoidRootPart.CFrame
									StatrMagnet = true
									repeat wait()
										EquipWeapon(_G.Setting_table.Weapon)
										TP(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
										FastAttack = true
									until v.Humanoid.Health <= 0 or not v.Parent or Mix_Farm or not Auto_Farm_Monster
									FastAttack = true
									StatrMagnet = false
								end
							end
						elseif game.ReplicatedStorage:FindFirstChild(_G.Setting_table.Mon) then
							if ((game.ReplicatedStorage:FindFirstChild(_G.Setting_table.Mon).HumanoidRootPart.CFrame).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 1500 then
								TP(game.ReplicatedStorage:FindFirstChild(_G.Setting_table.Mon).HumanoidRootPart.CFrame)
							else
								TelePBoss(game.ReplicatedStorage:FindFirstChild(_G.Setting_table.Mon).HumanoidRootPart.CFrame)
							end
						end
					end
				end
			else
				wait(.5)
			end
		end)
	end
end)

if Old_World then
	tableMon = {"Bandit [Lv. 5]","Monkey [Lv. 14]","Gorilla [Lv. 20]","Pirate [Lv. 35]","Brute [Lv. 45]","Desert Bandit [Lv. 60]","Desert Officer [Lv. 70]","Snow Bandit [Lv. 90]","Snowman [Lv. 100]","Chief Petty Officer [Lv. 120]","Sky Bandit [Lv. 150]","Dark Master [Lv. 175]","Toga Warrior [Lv. 225]","Gladiator [Lv. 275]","Military Soldier [Lv. 300]","Military Spy [Lv. 330]","Fishman Warrior [Lv. 375]","Fishman Commando [Lv. 400]","God's Guard [Lv. 450]","Shanda [Lv. 475]","Royal Squad [Lv. 525]","Royal Soldier [Lv. 550]","Galley Pirate [Lv. 625]","Galley Captain [Lv. 650]"}
elseif New_World then
	tableMon = {"Raider [Lv. 700]","Mercenary [Lv. 725]","Swan Pirate [Lv. 775]","Factory Staff [Lv. 800]","Marine Lieutenant [Lv. 875]","Marine Captain [Lv. 900]","Zombie [Lv. 950]","Vampire [Lv. 975]","Snow Trooper [Lv. 1000]","Winter Warrior [Lv. 1050]","Lab Subordinate [Lv. 1100]","Horned Warrior [Lv. 1125]","Magma Ninja [Lv. 1175]","Lava Pirate [Lv. 1200]","Ship Deckhand [Lv. 1250]","Ship Engineer [Lv. 1275]","Ship Steward [Lv. 1300]","Ship Officer [Lv. 1325]","Arctic Warrior [Lv. 1350]","Snow Lurker [Lv. 1375]","Sea Soldier [Lv. 1425]","Water Fighter [Lv. 1450]"}
elseif Three_World then
	tableMon = {"Pirate Millionaire [Lv. 1500]","Dragon Crew Warrior [Lv. 1575]","Dragon Crew Archer [Lv. 1600]","Female Islander [Lv. 1625]","Giant Islander [Lv. 1650]","Marine Commodore [Lv. 1700]","Marine Rear Admiral [Lv. 1725]","Fishman Raider [Lv. 1775]","Fishman Captain [Lv. 1800]","Forest Pirate [Lv. 1825]","Mythological Pirate [Lv. 1850]","Jungle Pirate [Lv. 1900]","Musketeer Pirate [Lv. 1925]","Reborn Skeleton [Lv. 1975]","Living Zombie [Lv. 2000]","Demonic Soul [Lv. 2025]","Posessed Mummy [Lv. 2050]","Peanut Scout [Lv. 2075]","Peanut President [Lv. 2100]","Ice Cream Chef [Lv. 2125]","Ice Cream Commander [Lv. 2150]","Cookie Crafter [Lv. 2200]","Cake Guard [Lv. 2225]","Baking Staff [Lv. 2250]","Head Baker [Lv. 2275]","Cocoa Warrior [Lv. 2300]","Chocolate Bar Battler [Lv. 2325]","Sweet Thief [Lv. 2350]","Candy Rebel [Lv. 2375]","Candy Pirate [Lv. 2400]","Snow Demon [Lv. 2425]"}
end




ms:Dropdown("Select Monster",tableMon,_G.Setting_table.Mon,function(vu)
	_G.Setting_table.Mon = vu
	Update_Setting(getgenv()['MyName'])
end)

local mt = tab1:CraftPage('Meterial',2)

local AllMaterial
if Old_World then
	AllMaterial = {
		"Magma Ore",
		"Leather",
		"Scrap Metal",
		"Angel Wings",
		"Fish Tail"
	}
elseif New_World then
	AllMaterial = {
		"Magma Ore",
		"Scrap Metal",
		"Radioactive Material",
		"Vampire Fang",
		"Mystic Droplet",
		"Ectoplasm",
	}
elseif Three_World then
	AllMaterial = {
		"Mini Tusk",
		"Fish Tail",
		"Scrap Metal",
		"Dragon Scale",
		"Conjured Cocoa",
		"Demonic Wisp",
		"Gunpowder",
		"Bone",
		"Candy",
	}
end

table.sort(AllMaterial)

local function CheckMaterial(v1)
	if Old_World then 
		if (v1=="Magma Ore") then 
			MaterialMob={"Military Soldier [Lv. 300]","Military Spy [Lv. 325]"};
			CFrameMon=CFrame.new( -5815,84,8820);
		elseif ((v1=="Leather") or (v1=="Scrap Metal")) then 
			MaterialMob={"Brute [Lv. 45]"};
			CFrameMon=CFrame.new( -1145,15,4350);
		elseif (v1=="Angel Wings") then 
			MaterialMob={"God's Guard [Lv. 450]"};
			CFrameMon=CFrame.new( -4698,845, -1912);
		elseif (v1=="Fish Tail") then 
			MaterialMob={"Fishman Warrior [Lv. 375]","Fishman Commando [Lv. 400]"};
			CFrameMon=CFrame.new(61123,19,1569);
		end 
	end 
	if New_World then 
		if (v1=="Magma Ore") then 
			MaterialMob={"Magma Ninja [Lv. 1175]"};
			CFrameMon=CFrame.new( -5428,78, -5959);
		elseif (v1=="Scrap Metal") then
			MaterialMob={"Mercenary [Lv. 725]"};
			CFrameMon=CFrame.new(-861.802246, 135.417175, 1407.55859, 0.0834906623, -8.44255155e-08, 0.996508539, -3.10748689e-08, 1, 8.73248638e-08, -0.996508539, -3.82571841e-08, 0.0834906623);
		elseif (v1=="Radioactive Material") then 
			MaterialMob={"Factory Staff [Lv. 800]"};
			CFrameMon=CFrame.new(295,73, -56);
		elseif (v1=="Vampire Fang") then 
			MaterialMob={"Vampire [Lv. 975]"};
			CFrameMon=CFrame.new( -6033,7, -1317);
		elseif (v1=="Mystic Droplet") then 
			MaterialMob={"Water Fighter [Lv. 1450]","Sea Soldier [Lv. 1425]"};
			CFrameMon=CFrame.new( -3385,239, -10542);
		elseif (v1=="Ectoplasm") then 
			MaterialMob={"Ship Deckhand [Lv. 1250]","Ship Engineer [Lv. 1275]","Ship Officer [Lv. 1325]"};
			CFrameMon=CFrame.new(918.3493041992188, 125.98393249511719, 33113.53515625);
		end 
	end 
	if Three_World then 
		if (v1=="Mini Tusk") then 
			MaterialMob={"Mythological Pirate [Lv. 1850]"};
			CFrameMon=CFrame.new( -13545,470, -6917);
		elseif (v1=="Fish Tail") then 
			MaterialMob={"Fishman Raider [Lv. 1775]","Fishman Captain [Lv. 1800]"};
			CFrameMon=CFrame.new( -10993,332, -8940);
		elseif (v1=="Scrap Metal") then 
			MaterialMob={"Jungle Pirate [Lv. 1900]"};
			CFrameMon=CFrame.new( -12107,332, -10549);
		elseif (v1=="Dragon Scale") then 
			MaterialMob={"Dragon Crew Archer [Lv. 1600]","Dragon Crew Warrior [Lv. 1575]"};
			CFrameMon=CFrame.new(6594,383,139);
		elseif (v1=="Conjured Cocoa") then 
			MaterialMob={"Cocoa Warrior [Lv. 2300]","Chocolate Bar Battler [Lv. 2325]","Sweet Thief [Lv. 2350]","Candy Rebel [Lv. 2375]"};
			CFrameMon=CFrame.new(620.6344604492188,78.93644714355469, -12581.369140625);
		elseif (v1=="Demonic Wisp") then MaterialMob={"Demonic Soul [Lv. 2025]"};
			CFrameMon=CFrame.new( -9507,172,6158);
		elseif (v1=="Gunpowder") then MaterialMob={"Pistol Billionaire [Lv. 1525]"};
			CFrameMon=CFrame.new( -469,74,5904);
		elseif (v1=="Bone") then 
			MaterialMob={"Reborn Skeleton [Lv. 1975]","Living Zombie [Lv. 2000]","Demonic Soul [Lv. 2025]","Posessed Mummy [Lv. 2050]"};
			CFrameMon=CFrame.new(-9515.3720703125, 164.00624084473, 5786.0610351562);
		elseif (v1=="Candy") then 
			MaterialMob={"Candy Pirate [Lv. 2400]","Snow Demon [Lv. 2425]"};
			CFrameMon=CFrame.new(-1078.87, 90.9136, -14476.5);
		end 
	end 
end



local function CustomFindFirstChild(tablename)
	for i,v in pairs(tablename) do
		if game:GetService("Workspace").Enemies:FindFirstChild(v) then
			return true
		end
	end
	return false
end


function GetMaterial(matname)
	for i,v in pairs(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventory")) do
		if type(v) == "table" then
			if v.Type == "Material" then
				if v.Name == matname then
					return v.Count
				end
			end
		end
	end
	return 0
end

mt:Dropdown("Select Meterial",AllMaterial,_G.Setting_table.Select_Meterial,function(vu)
	_G.Setting_table.Select_Meterial = vu
	Update_Setting(getgenv()['MyName'])
end)

mt:Toggle("Auto Farm Meterial",_G.Setting_table.AutoFarm_Meterial,function(vu)
	_G.Setting_table.AutoFarm_Meterial = vu
	Update_Setting(getgenv()['MyName'])
end)	

spawn(function()
	while wait() do 
		if _G.Setting_table.AutoFarm_Meterial then    
			pcall(function()
				if (_G.Setting_table.SelectMeterial~="") then 
					CheckMaterial(_G.Setting_table.SelectMeterial);
					if CustomFindFirstChild(MaterialMob) then
						for v0,v1 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do 
							if (_G.Setting_table.AutoFarm_Meterial and table.find(MaterialMob,v1.Name) and v1:FindFirstChild("HumanoidRootPart") and v1:FindFirstChild("Humanoid") and (v1.Humanoid.Health > 0)) then
								repeat wait()
									FastAttack = true
									EquipWeapon(_G.Setting_table.Weapon)
									TP(v1.HumanoidRootPart.CFrame * CFrame.new(0, 30, 1))
									_G.PosMon = v1.HumanoidRootPart.CFrame
									Startmg = true
								until not CustomFindFirstChild(MaterialMob) or not _G.Setting_table.AutoFarm_Meterial or (v1.Humanoid.Health<=0) or not v1.Parent FastAttack=false;
								FastAttack = false
								Startmg = false
							end 
						end
					else 
						Startmg = false
						if (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 1500 then
							TP(CFrameMon)
						else
							TelePBoss(CFrameMon)
						end
					end 
				end
			end)
		end
	end
end)

spawn(function()
	while task.wait() do
		pcall(function()
			if Startmg then
				for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
					if (v.HumanoidRootPart.Position-_G.PosMon.Position).Magnitude <= 300 then
						if v.Humanoid:FindFirstChild("Animator") then
							v.Humanoid.Animator:Destroy()
						end
						v.Humanoid:ChangeState(11)
						v.Humanoid.JumpPower = 0
						v.Humanoid.WalkSpeed = 0
						v.HumanoidRootPart.CanCollide = false
						v.HumanoidRootPart.Size = Vector3.new(5,5,5)
						v.HumanoidRootPart.CFrame = _G.PosMon
						sethiddenproperty(game.Players.LocalPlayer, "MaximumSimulationRadius",  math.huge)
						sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius",  9e20)
					end
				end
			end
		end)
	end
end)

SettingsToggle("Active Bring Mob",_G.Setting_table.Bring_Mob,function(vu)
	_G.Setting_table.Bring_Mob = vu
	Update_Setting(getgenv()['MyName'])
    spawn(function()
	    while wait(.5) do
			pcall(function()
				if _G.Setting_table.Auto_Buso then
					StatrMagnet = true
				else
					StatrMagnet = false
				end
			end)
		end
	end)
end)

SettingsToggle("Duble Fast Attack (x2 Speed)",_G.Setting_table.DbFast,function(vu)
	DbFast = vu
	_G.Setting_table.DbFast = vu
	Update_Setting(getgenv()['MyName'])
end)

SettingsToggle("Duble Quest (x2 Level)",_G.Setting_table.DbQ,function(vu)
	DbQ = vu
	_G.Setting_table.DbQ = vu
	Update_Setting(getgenv()['MyName'])
end)

SettingsToggle("Active Bosu",_G.Setting_table.Auto_Buso,function(vu)
	_G.Setting_table.Auto_Buso = vu
	Update_Setting(getgenv()['MyName'])
	spawn(function()
		while wait(.5) do
			pcall(function()
				if _G.Setting_table.Auto_Buso then
					if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
					else
						wait(.1)
					end
				end
			end)
		end
	end)
end)

SettingsToggle("Active Ken",_G.Setting_table.AutoKen,function(vu)
	_G.Setting_table.AutoKen = vu
	Update_Setting(getgenv()['MyName'])
	spawn(function()
		while true do wait()
			if _G.Setting_table.AutoKen then 
				pcall(function()
					game:GetService("ReplicatedStorage").Remotes.CommE:FireServer("Ken",true)
				end)
			end
	    end
	end)
end)

local fast = {
	"Normal",
	"ExTra"
}

SettingsDropdowns("Select Fast Mode",_G.Setting_table.FastMode,fast,function(vu)
	_G.Setting_table.FastMode = vu
	Update_Setting(getgenv()['MyName'])
end)

local SFast = {
	"Normal",
	"Fast",
	"Extra"
}

SettingsDropdowns("Select Fast Delay",_G.Setting_table.FastModeD,SFast,function(vu)
	_G.Setting_table.FastModeD = vu
	Update_Setting(getgenv()['MyName'])
end)

SettingsToggle("White Screen | GPU 0%",_G.Setting_table.WhiteScreen,function(vu)
	_G.Setting_table.WhiteScreen = vu
	Update_Setting(getgenv()['MyName'])
	if _G.Setting_table.WhiteScreen then
		game:GetService("RunService"):Set3dRenderingEnabled(false)
	else
		game:GetService("RunService"):Set3dRenderingEnabled(true)
	end
end)

SettingsToggle("Disbel Notifications",_G.Setting_table.Notifications,function(vu)
	_G.Setting_table.Notifications = vu
	Update_Setting(getgenv()['MyName'])
	if _G.Setting_table.Notifications then
		game.Players.LocalPlayer.PlayerGui.Notifications.Enabled = false
	else
		game.Players.LocalPlayer.PlayerGui.Notifications.Enabled = true
	end	
end)

SettingsToggle("Disabled Damage",_G.Setting_table.DisabledDamage,function(vu)
	_G.Setting_table.DisabledDamage = vu
	Update_Setting(getgenv()['MyName'])
	task.spawn(function()
		while wait() do
			pcall(function()
				if _G.Setting_table.DisabledDamage then
					game:GetService("ReplicatedStorage").Assets.GUI.DamageCounter.Enabled = false
				else
					game:GetService("ReplicatedStorage").Assets.GUI.DamageCounter.Enabled = true
				end
			end)
		end
	end)
end)



SettingsButton('Fps Boost', function()
	fpsboost()
end)

SettingsButton('Dark Dex', function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/Babyhamsta/RBLX_Scripts/main/Universal/BypassedDarkDexV3.lua", true))()
end)


SettingsButton('Notification', function()
	Notification("Notification","555",1)
end)

SettingsButton('Rejoin', function()
	game:GetService("TeleportService"):Teleport(game.PlaceId, game:GetService("Players").localPlayer)
end)

local tab2 = Win:CraftTab('Shop')

local Shop_Tab = tab2:CraftPage('Fruit')

local Remote_GetFruits = game.ReplicatedStorage:FindFirstChild("Remotes").CommF_:InvokeServer("GetFruits");

Table_DevilFruitSniper = {}
ShopDevilSell = {}

for i,v in next,Remote_GetFruits do
	table.insert(Table_DevilFruitSniper,v.Name)
	if v.OnSale then 
		table.insert(ShopDevilSell,v.Name)
	end
end


Shop_Tab:Dropdown("Select Fruit",Table_DevilFruitSniper,"Kilo-Kilo",function(vu)
	_G.Select_Devil_Fruit = vu
	_G.Setting_table.Select_Devil_Fruit = vu
	Update_Setting(getgenv()['MyName'])
end)

Shop_Tab:Toggle("Auto Buy Fruit Select",_G.Setting_table.Auto_Buy_Devil_Fruit,function(vu)
	_G.Auto_Buy_Devil_Fruit = value    
	_G.Setting_table.Auto_Buy_Devil_Fruit = value
	Update_Setting(getgenv()['MyName'])
end)

spawn(function()
	while wait() do
		if _G.Auto_Buy_Devil_Fruit then
			pcall(function()
				local string_1 = "PurchaseRawFruit";
				local string_2 = _G.Select_Devil_Fruit;
				local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
				Target:InvokeServer(string_1, string_2);
			end)
		end                              
	end
end)

Shop_Tab:Button("Open Fruit Shop",function()
	game:GetService("Players").LocalPlayer.PlayerGui.Main.FruitShop.Visible = true
end)

local rf = tab2:CraftPage('Random Fruit',1)

rf:Toggle("Auto Random Fruit",_G.Setting_table.Auto_Random_Fruit,function(vu)
	_G.Auto_Random_Fruit = vu    
	_G.Setting_table.Auto_Random_Fruit = vu
	Update_Setting(getgenv()['MyName'])
end)

spawn(function()
	while wait() do
		if _G.Auto_Random_Fruit then	
			local args = {
				[1] = "Cousin",
				[2] = "Buy"
			}
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
		end
	end
end)

rf:Toggle("Auto Store Fruit",_G.Setting_table.Auto_Store_Fruit,function(vu)
	_G.Setting_table.Auto_Store_Fruit = vu
	Update_Setting(getgenv()['MyName'])
end)

spawn(function()
    while wait() do
        if _G.Setting_table.Auto_Store_Fruit then
            for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                if string.find(v.Name,"Fruit") and not UseThireWorld then
                    local FruitName = RemoveSpaces(v.Name)
                    if v.Name == "Bird: Falcon Fruit" then
                        NameFruit = "Bird-Bird: Falcon"
                    elseif v.Name == "Bird: Phoenix Fruit" then
                        NameFruit = "Bird-Bird: Phoenix"
                    elseif v.Name == "Human: Buddha Fruit" then
                        NameFruit = "Human-Human: Buddha"
                    else
                        NameFruit = FruitName.."-"..FruitName
                    end
    
                    local string_1 = "getInventoryFruits";
                    local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
                    for i1,v1 in pairs(Target:InvokeServer(string_1)) do
                        if v1.Name == NameFruit then
                            HaveFruitInStore = true
                        end
                    end
                    if not HaveFruitInStore and not AutoRaids then
                        local string_1 = "StoreFruit";
                        local string_2 = NameFruit;
                        local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
                        Target:InvokeServer(string_1, string_2);
                    end
                    HaveFruitInStore = false
                end
            end
        end
    end
end)

local ml = tab2:CraftPage('Fighting Style',2)

ml:Button("Buy Black Leg",function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyBlackLeg")
end)

ml:Button("Buy Electro",function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectro")
end)

ml:Button("Buy Fishman Karate",function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyFishmanKarate")
end)

ml:Button("Buy Dragon Claw",function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","1")
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","2")
end)

ml:Button("Buy Superhuman",function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySuperhuman")
end)

ml:Button("Buy Death Step",function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep")
end)

ml:Button("Buy Sharkman Karate",function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate",true)
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate")
end)

ml:Button("Buy Electric Claw",function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw")
end)

ml:Button("Buy Dragon Talon",function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon")
end)

ml:Button("Buy God Human",function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodhuman")
end)

local sws = tab2:CraftPage('Fighting Style',2)

sws:Button("Cutlass",function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Cutlass")
end)

sws:Button("Katana",function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Katana")
end)

sws:Button("Iron Mace",function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Iron Mace")
end)

sws:Button("Duel Katana",function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Duel Katana")
end)

sws:Button("Triple Katana", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Triple Katana")
end)

sws:Button("Pipe",function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Pipe")
end)

sws:Button("Dual Headed Blade",function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Dual-Headed Blade")
end)

sws:Button("Bisento",function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Bisento")
end)

sws:Button("Soul Cane",function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Soul Cane")
end)

local stt = tab2:CraftPage('My Sefe',2)

stt:Button("Stat Refund",function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Refund","1")
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Refund","2")
end)

stt:Button("Buy Surprise",function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bones","Buy",1,1)
end)





local tab3 = Win:CraftTab('Raid/Esp')
local raid = tab3:CraftPage('Raid',1)

raid:Toggle("Auto Raid Hop",_G.Setting_table.Auto_Raid_Hop,function(vu)
	Auto_Raid = vu
	_G.Setting_table.Auto_Raid_Hop = vu
	Update_Setting(getgenv()['MyName'])
end)

raid:Toggle("Auto Raid Normal",_G.Setting_table.Auto_Raid,function(vu)
	Auto_Raid = vu
	_G.Setting_table.Auto_Raid = vu
	Update_Setting(getgenv()['MyName'])
end)

raid:Toggle("Auto Aweak",_G.Setting_table.Auto_Awaken,function(vu)
	_G.Setting_table.Auto_Awaken = vu
	Update_Setting(getgenv()['MyName'])
end)

Map = {
	"Dark",
	"Sand",
	"Magma",
	"Rumble",
	"Flame",
	"Ice",
	"Light",
	"Quake",
	"Human: Buddha",
	"Flame",
	"Bird: Phoenix",
	"Dough"
}

raid:Dropdown("Select Map",Map,_G.Setting_table.Select_Map,function(vu)
	_G.Setting_table.Select_Map = vu
	Update_Setting(getgenv()['MyName'])
end)

raid:Seperator("Misc")

raid:Toggle("Bring Fruit",_G.Setting_table.BringFruit,function(vu)
	BringFruit = vu
	_G.Setting_table.BringFruit = vu
	Update_Setting(getgenv()['MyName'])
	spawn(function()
		while wait(.2) do
			pcall(function()
				if BringFruit or BringFruit_P then
					for i,v6 in pairs(game:GetService("Workspace"):GetChildren()) do
						if v6:IsA ("Tool") and (v6.Handle.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 13000 then
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v6.Handle.CFrame
							v6.Handle.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
						end
					end
				end				
			end)
		end
	end)
end)

raid:Toggle("Get Fruit Inventory",_G.Setting_table.Get_Fruit,function(vu)
	_G.Setting_table.Get_Fruit = vu
	Update_Setting(getgenv()['MyName'])
end)

spawn(function()
	while wait(.5) do
		pcall(function()
			if _G.Setting_table.Get_Fruit then
				if Inventory_Fruit then
					Inventory_Fruit = nil
				end
				fruit = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventoryFruits")
				for i,v in pairs(fruit) do
					if v["Price"] < 10000000 then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LoadFruit",v["Name"])
					end
				end
			else
				wait(2)
			end
		end)
	end
end)


if _G.Setting_table.Auto_Raid_Hop then
	Auto_Raid = true
end

if type(_G.Setting_table.Select_Map) ~= 'string' then
	_G.Setting_table.Select_Map = "Flame"
end

function Buy_Chip()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("RaidsNpc", "Select", _G.Setting_table.Select_Map)
end
spawn(function()
	while wait(.5) do
		pcall(function()
			if Auto_Raid then
				if game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Timer.Visible == true then
					for i,v in pairs(game.Workspace.Enemies:GetDescendants()) do
						if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
							repeat wait(.1)
								sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
								v.Humanoid.Health = 0
								v.HumanoidRootPart.CanCollide = false
								v.HumanoidRootPart.Size = Vector3.new(50,50,50)
								v.HumanoidRootPart.Transparency = 0.5
							until not Auto_Raid or not v.Parent or v.Humanoid.Health <= 0
						end
					end
				end
			else
				wait(3)
			end
		end)
	end
end)
spawn(function()
	while wait(.5) do
		pcall(function()
			if Auto_Raid then
				if game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5") then
					for i,v in pairs(game:GetService("Workspace")["_WorldOrigin"].Locations:GetChildren()) do
						if v.Name == "Island 5" and (v.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 2300 then
							getgenv().TP(v.CFrame*CFrame.new(0,70,0))
						end
					end
				elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4") then
					for i,v in pairs(game:GetService("Workspace")["_WorldOrigin"].Locations:GetChildren()) do
						if v.Name == "Island 4" and (v.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 2000 then
							getgenv().TP(v.CFrame*CFrame.new(0,70,0))
						--wait(2)
						end
					end
				elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3") then
					for i,v in pairs(game:GetService("Workspace")["_WorldOrigin"].Locations:GetChildren()) do
						if v.Name == "Island 3" and (v.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 2100 then
							getgenv().TP(v.CFrame*CFrame.new(0,70,0))
							--wait(2)
						end
					end
				elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2") then
					for i,v in pairs(game:GetService("Workspace")["_WorldOrigin"].Locations:GetChildren()) do
						if v.Name == "Island 2" and (v.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 2000 then
							getgenv().TP(v.CFrame*CFrame.new(0,10,0))
							--wait(2)
						end
					end
				elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") then
					for i,v in pairs(game:GetService("Workspace")["_WorldOrigin"].Locations:GetChildren()) do
						if v.Name == "Island 1" and (v.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 2000 then
							getgenv().TP(v.CFrame*CFrame.new(0,70,0))
							--wait(2)
						end
					end
				else
					wait(1)
				end
			else
				wait(2)
			end
		end)
	end
end)

spawn(function()
	while wait(2) do
		pcall(function()
			if Auto_Raid_Farm then
				if game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Timer.Visible == false then
					_G.Stop_Tween = true
				elseif game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Timer.Visible == true then
					_G.Stop_Tween = false
				end
			end
		end)
	end
end)

function Raid_FG()
	for i,v6 in pairs(game:GetService("Workspace"):GetChildren()) do
		if v6:IsA ("Tool") and (v6.Handle.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 13000 then
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v6.Handle.CFrame
			v6.Handle.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
		end
	end
	wait(1)
	Inventory_Fruit = nil
	Get_Fruit_Inventory()
	Get_Fruit_Backpack()
	Get_Fruit_Character()
	if _G.Have_Fruit then
		Mix_Farm = true
		Raid_FG_Ex = true
		Auto_Raid = true
	elseif _G.Setting_table.Melee_Hop then
		HopServer()
		wait(50)
	elseif _G.Setting_table.Phoenix_Hop then
		HopServer()
		wait(50)
	elseif _G.Setting_table.Race_Hop then
		HopServer()
		wait(50)
	elseif _G.Setting_table.Auto_Pole_V2_Hop then
		HopServer()
		wait(50)
	elseif Raid_FG_Ex then
		Mix_Farm = nil
		Raid_FG_Ex = nil
		Auto_Raid = nil
	elseif not _G.Have_Fruit then
		Library:Notify("ไม่มีผลปีศาจเหลือ\nไม่สามารถลงดันได้")
	end
end

spawn(function()
	while wait(.5) do
		pcall(function()
			if Auto_Raid then
				if game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Timer.Visible == false then
					if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Special Microchip") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Special Microchip") then
						Auto_Raid_Farm = true
						Mix_Farm = true
						if New_World then
							fireclickdetector(game:GetService("Workspace").Map.CircleIsland.RaidSummon2.Button.Main.ClickDetector)
							repeat wait(1)
							until game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Timer.Visible == true
						elseif Three_World then
							fireclickdetector(game:GetService("Workspace").Map["Boat Castle"].RaidSummon2.Button.Main.ClickDetector)
							repeat wait(1)
							until game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Timer.Visible == true
						end
					else
						if _G.Setting_table.Auto_Raid_Hop or _G.Setting_table.Melee_Hop or Auto_Phoenix_Awaken then
							_G.Have_Fruit = nil
							Raid_FG()
						end
						Buy_Chip()
						wait(1)
						if _G.Setting_table.Auto_Raid_Hop and not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Special Microchip") and not game:GetService("Players").LocalPlayer.Character:FindFirstChild("Special Microchip") then
							HopServer()
						elseif Auto_Raid_Farm and not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Special Microchip") and not game:GetService("Players").LocalPlayer.Character:FindFirstChild("Special Microchip") then
							Mix_Farm = nil
							_G.Stop_Tween = nil
							Auto_Raid_Farm = nil
							Library:Notify("ไม่มีผลปีศาจเหลือแล้ว")
						end
					end
				elseif game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Timer.Visible == true then
					repeat wait(1)
					until game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Timer.Visible == false
					if _G.Setting_table.Auto_Awaken then
						wait(2)
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Awakener","Check")
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Awakener","Awaken")
					end
				end
			end
		end)
	end
end)

if New_World then
	local Law = tab3:CraftPage('Law',1)

	Law:Toggle("Auto Law Boss",_G.Setting_table.Raw,function(vu)
		Auto_Raw = vu
		_G.Setting_table.Raw = vu
		Update_Setting(getgenv()['MyName'])
	end)

	spawn(function()
		pcall(function()
			while wait() do
				if Auto_Raw then
					if not game:GetService("Players").LocalPlayer.Character:FindFirstChild("Microchip") and not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Microchip") and not game:GetService("Workspace").Enemies:FindFirstChild("Order [Lv. 1250] [Raid Boss]") and not game:GetService("ReplicatedStorage"):FindFirstChild("Order [Lv. 1250] [Raid Boss]") then
						wait(3)
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Microchip","1")
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Microchip","2")
					end
				end
			end
		end)
	end)
	
	spawn(function()
		pcall(function()
			while wait(.1) do
				if Auto_Raw then
					if not game:GetService("Workspace").Enemies:FindFirstChild("Order [Lv. 1250] [Raid Boss]") and not game:GetService("ReplicatedStorage"):FindFirstChild("Order [Lv. 1250] [Raid Boss]") then
						if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Microchip") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Microchip") then
							fireclickdetector(game:GetService("Workspace").Map.CircleIsland.RaidSummon.Button.Main.ClickDetector)
						end
					end
					if game:GetService("ReplicatedStorage"):FindFirstChild("Order [Lv. 1250] [Raid Boss]") or game:GetService("Workspace").Enemies:FindFirstChild("Order [Lv. 1250] [Raid Boss]") then
						if game:GetService("Workspace").Enemies:FindFirstChild("Order [Lv. 1250] [Raid Boss]") then
							for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
								if v.Name == "Order [Lv. 1250] [Raid Boss]" then
									repeat game:GetService("RunService").Heartbeat:wait()
										EquipWeapon(_G.Setting_table.Weapon)
										TP(v.HumanoidRootPart.CFrame * CFrame.new(0,50,25))
										v.HumanoidRootPart.CanCollide = false
										v.HumanoidRootPart.Size = Vector3.new(120, 120, 120)
										game:GetService'VirtualUser':CaptureController()
										game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
										FastAttack = true
									until not v.Parent or v.Humanoid.Health <= 0 or Auto_Raw == false
									FastAttack = false
								end
							end
						elseif game:GetService("ReplicatedStorage"):FindFirstChild("Order [Lv. 1250] [Raid Boss]") then
							FastAttack = false
							TP(CFrame.new(-6217.2021484375, 28.047645568848, -5053.1357421875))
						end
					end
				end
			end
		end)
	end)
end

local Esp = tab3:CraftPage('Esp',2)
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
						name.Font = Enum.Font.GothamSemibold
						name.FontSize = "Size14"
						name.TextWrapped = true
						name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Character.Head.Position).Magnitude/3) ..' M')
						name.Size = UDim2.new(1,0,1,0)
						name.TextYAlignment = 'Top'
						name.BackgroundTransparency = 1
						name.TextStrokeTransparency = 0.5
						if v.Team == game.Players.LocalPlayer.Team then
							name.TextColor3 = Color3.new(0,255,0)
						else
							name.TextColor3 = Color3.new(255,0,0)
						end
					else
						v.Character.Head['NameEsp'..Number].TextLabel.Text = (v.Name ..' | '.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Character.Head.Position).Magnitude/3) ..' M\nHealth : ' .. round(v.Character.Humanoid.Health*100/v.Character.Humanoid.MaxHealth) .. '%')
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
							name.Font = Enum.Font.GothamSemibold
							name.FontSize = "Size14"
							name.TextWrapped = true
							name.Size = UDim2.new(1,0,1,0)
							name.TextYAlignment = 'Top'
							name.BackgroundTransparency = 1
							name.TextStrokeTransparency = 0.5
							if v.Name == "Chest1" then
								name.TextColor3 = Color3.fromRGB(109, 109, 109)
								name.Text = ("Chest 1" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
							end
							if v.Name == "Chest2" then
								name.TextColor3 = Color3.fromRGB(173, 158, 21)
								name.Text = ("Chest 2" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
							end
							if v.Name == "Chest3" then
								name.TextColor3 = Color3.fromRGB(85, 255, 255)
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
						name.Font = Enum.Font.GothamSemibold
						name.FontSize = "Size14"
						name.TextWrapped = true
						name.Size = UDim2.new(1,0,1,0)
						name.TextYAlignment = 'Top'
						name.BackgroundTransparency = 1
						name.TextStrokeTransparency = 0.5
						name.TextColor3 = Color3.fromRGB(255, 0, 0)
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
						name.Font = Enum.Font.GothamSemibold
						name.FontSize = "Size14"
						name.TextWrapped = true
						name.Size = UDim2.new(1,0,1,0)
						name.TextYAlignment = 'Top'
						name.BackgroundTransparency = 1
						name.TextStrokeTransparency = 0.5
						name.TextColor3 = Color3.fromRGB(255, 0, 0)
						if v.Name == "Flower1" then 
							name.Text = ("Blue Flower" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
							name.TextColor3 = Color3.fromRGB(0, 0, 255)
						end
						if v.Name == "Flower2" then
							name.Text = ("Red Flower" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
							name.TextColor3 = Color3.fromRGB(255, 0, 0)
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
function UpdateRealFruitChams() 
	for i,v in pairs(game.Workspace.AppleSpawner:GetChildren()) do
		if v:IsA("Tool") then
			if RealFruitESP then 
				if not v.Handle:FindFirstChild('NameEsp'..Number) then
					local bill = Instance.new('BillboardGui',v.Handle)
					bill.Name = 'NameEsp'..Number
					bill.ExtentsOffset = Vector3.new(0, 1, 0)
					bill.Size = UDim2.new(1,200,1,30)
					bill.Adornee = v.Handle
					bill.AlwaysOnTop = true
					local name = Instance.new('TextLabel',bill)
					name.Font = Enum.Font.GothamSemibold
					name.FontSize = "Size14"
					name.TextWrapped = true
					name.Size = UDim2.new(1,0,1,0)
					name.TextYAlignment = 'Top'
					name.BackgroundTransparency = 1
					name.TextStrokeTransparency = 0.5
					name.TextColor3 = Color3.fromRGB(255, 0, 0)
					name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' M')
				else
					v.Handle['NameEsp'..Number].TextLabel.Text = (v.Name ..' '.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' M')
				end
			else
				if v.Handle:FindFirstChild('NameEsp'..Number) then
					v.Handle:FindFirstChild('NameEsp'..Number):Destroy()
				end
			end 
		end
	end
	for i,v in pairs(game.Workspace.PineappleSpawner:GetChildren()) do
		if v:IsA("Tool") then
			if RealFruitESP then 
				if not v.Handle:FindFirstChild('NameEsp'..Number) then
					local bill = Instance.new('BillboardGui',v.Handle)
					bill.Name = 'NameEsp'..Number
					bill.ExtentsOffset = Vector3.new(0, 1, 0)
					bill.Size = UDim2.new(1,200,1,30)
					bill.Adornee = v.Handle
					bill.AlwaysOnTop = true
					local name = Instance.new('TextLabel',bill)
					name.Font = Enum.Font.GothamSemibold
					name.FontSize = "Size14"
					name.TextWrapped = true
					name.Size = UDim2.new(1,0,1,0)
					name.TextYAlignment = 'Top'
					name.BackgroundTransparency = 1
					name.TextStrokeTransparency = 0.5
					name.TextColor3 = Color3.fromRGB(255, 174, 0)
					name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' M')
				else
					v.Handle['NameEsp'..Number].TextLabel.Text = (v.Name ..' '.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' M')
				end
			else
				if v.Handle:FindFirstChild('NameEsp'..Number) then
					v.Handle:FindFirstChild('NameEsp'..Number):Destroy()
				end
			end 
		end
	end
	for i,v in pairs(game.Workspace.BananaSpawner:GetChildren()) do
		if v:IsA("Tool") then
			if RealFruitESP then 
				if not v.Handle:FindFirstChild('NameEsp'..Number) then
					local bill = Instance.new('BillboardGui',v.Handle)
					bill.Name = 'NameEsp'..Number
					bill.ExtentsOffset = Vector3.new(0, 1, 0)
					bill.Size = UDim2.new(1,200,1,30)
					bill.Adornee = v.Handle
					bill.AlwaysOnTop = true
					local name = Instance.new('TextLabel',bill)
					name.Font = Enum.Font.GothamSemibold
					name.FontSize = "Size14"
					name.TextWrapped = true
					name.Size = UDim2.new(1,0,1,0)
					name.TextYAlignment = 'Top'
					name.BackgroundTransparency = 1
					name.TextStrokeTransparency = 0.5
					name.TextColor3 = Color3.fromRGB(251, 255, 0)
					name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' M')
				else
					v.Handle['NameEsp'..Number].TextLabel.Text = (v.Name ..' '.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' M')
				end
			else
				if v.Handle:FindFirstChild('NameEsp'..Number) then
					v.Handle:FindFirstChild('NameEsp'..Number):Destroy()
				end
			end 
		end
	end
end
Esp:Toggle("Esp Players",_G.Setting_table.ESPPlayer,function(vu)
	ESPPlayer = vu
	_G.Setting_table.ESPPlayer = vu
	UpdatePlayerChams()
end)

Esp:Toggle("Esp Chests",_G.Setting_table.ChestESP,function(vu)
	ChestESP = vu
	_G.Setting_table.ChestESP = vu
	UpdateChestChams()
end)

Esp:Toggle("ESP Devil Fruit",_G.Setting_table.DevilFruitESP,function(vu)
	DevilFruitESP = vu
	_G.Setting_table.DevilFruitESP = vu
	UpdateDevilChams() 
end)

Esp:Toggle("ESP Fruit Spawn",_G.Setting_table.RealFruitESP,function(vu)
	RealFruitESP = vu
	_G.Setting_table.RealFruitESP = vu
	UpdateRealFruitChams()
end)

spawn(function()
	while wait() do
		if DevilFruitESP then
			UpdateDevilChams() 
		end
		if ChestESP then
			UpdateChestChams() 
		end
		if ESPPlayer then
			UpdatePlayerChams()
		end
		if RealFruitESP then
			UpdateRealFruitChams()
		end
		if New_World then
			if FlowerESP then
				UpdateFlowerChams() 
			end
		end
	end
end)




local tab4 = Win:CraftTab('Teleport')
local tp = tab4:CraftPage('Is Land',1)

if Old_World then
	Island = {
		"nil",
		"WindMill",
		"Marine",
		"Middle Town",
		"Jungle",
		"Pirate Village",
		"Desert",
		"Snow Island",
		"MarineFord",
		"Colosseum",
		"Sky Island 1",
		"Sky Island 2",
		"Sky Island 3",
		"Prison",
		"Magma Village",
		"Under Water Island",
		"Fountain City",
		"Shank Room",
		"Mob Island"
		}
elseif New_World then  
	Island = {
		"nil",
		"The Cafe",
		"Frist Spot",
		"Dark Area",
		"Flamingo Mansion",
		"Flamingo Room",
		"Green Zone",
		"Factory",
		"Colossuim",
		"Zombie Island",
		"Two Snow Mountain",
		"Punk Hazard",
		"Cursed Ship",
		"Ice Castle",
		"Forgotten Island",
		"Ussop Island",
		"Mini Sky Island"
		}
else
	Island = {
		"nil",
		"Mansion",
		"Port Town",
		"Great Tree",
		"Castle On The Sea",
		"MiniSky", 
		"Hydra Island",
		"Floating Turtle",
		"Haunted Castle",
		"Ice Cream Island",
		"Peanut Island",
		"Cake Island",
		"Coco Island",
		"Candy Island"
		}	
end


tp:Dropdown("Select Island",Island,_G.Setting_table.Select_Island,function(vu)
	_G.Select_Island = vu
	_G.Setting_table.Select_Island = vu
end)

function TPIS()
	repeat wait()
		if _G.Select_Island == "WindMill" then
			TelePBoss(CFrame.new(979.79895019531, 16.516613006592, 1429.0466308594))
		elseif _G.Select_Island == "Marine" then
			TelePBoss(CFrame.new(-2566.4296875, 6.8556680679321, 2045.2561035156))
		elseif _G.Select_Island == "Middle Town" then
			TelePBoss(CFrame.new(-690.33081054688, 15.09425163269, 1582.2380371094))
		elseif _G.Select_Island == "Jungle" then
			TelePBoss(CFrame.new(-1612.7957763672, 36.852081298828, 149.12843322754))
		elseif _G.Select_Island == "Pirate Village" then
			TelePBoss(CFrame.new(-1181.3093261719, 4.7514905929565, 3803.5456542969))
		elseif _G.Select_Island == "Desert" then
			TelePBoss(CFrame.new(944.15789794922, 20.919729232788, 4373.3002929688))
		elseif _G.Select_Island == "Snow Island" then
			TelePBoss(CFrame.new(1347.8067626953, 104.66806030273, -1319.7370605469))
		elseif _G.Select_Island == "MarineFord" then
			TelePBoss(CFrame.new(-4914.8212890625, 50.963626861572, 4281.0278320313))
		elseif _G.Select_Island == "Colosseum" then
			TelePBoss( CFrame.new(-1427.6203613281, 7.2881078720093, -2792.7722167969))
		elseif _G.Select_Island == "Sky Island 1" then
			TelePBoss(CFrame.new(-4869.1025390625, 733.46051025391, -2667.0180664063))
		elseif _G.Select_Island == "Sky Island 2" then  
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-4607.82275, 872.54248, -1667.55688))
		elseif _G.Select_Island == "Sky Island 3" then
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047))
		elseif _G.Select_Island == "Prison" then
			TelePBoss( CFrame.new(4875.330078125, 5.6519818305969, 734.85021972656))
		elseif _G.Select_Island == "Magma Village" then
			TelePBoss(CFrame.new(-5247.7163085938, 12.883934020996, 8504.96875))
		elseif _G.Select_Island == "Under Water Island" then
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
		elseif _G.Select_Island == "Fountain City" then
			TelePBoss(CFrame.new(5127.1284179688, 59.501365661621, 4105.4458007813))
		elseif _G.Select_Island == "Shank Room" then
			TelePBoss(CFrame.new(-1442.16553, 29.8788261, -28.3547478))
		elseif _G.Select_Island == "Mob Island" then
			TelePBoss(CFrame.new(-2850.20068, 7.39224768, 5354.99268))
		elseif _G.Select_Island == "The Cafe" then
			TelePBoss(CFrame.new(-380.47927856445, 77.220390319824, 255.82550048828))
		elseif _G.Select_Island == "Frist Spot" then
			TelePBoss(CFrame.new(-11.311455726624, 29.276733398438, 2771.5224609375))
		elseif _G.Select_Island == "Dark Area" then
			TelePBoss(CFrame.new(3780.0302734375, 22.652164459229, -3498.5859375))
		elseif _G.Select_Island == "Flamingo Mansion" then
			TelePBoss(CFrame.new(-483.73370361328, 332.0383605957, 595.32708740234))
		elseif _G.Select_Island == "Flamingo Room" then
			TelePBoss(CFrame.new(2284.4140625, 15.152037620544, 875.72534179688))
		elseif _G.Select_Island == "Green Zone" then
			TelePBoss( CFrame.new(-2448.5300292969, 73.016105651855, -3210.6306152344))
		elseif _G.Select_Island == "Factory" then
			TelePBoss(CFrame.new(424.12698364258, 211.16171264648, -427.54049682617))
		elseif _G.Select_Island == "Colossuim" then
			TelePBoss( CFrame.new(-1503.6224365234, 219.7956237793, 1369.3101806641))
		elseif _G.Select_Island == "Zombie Island" then
			TelePBoss(CFrame.new(-5622.033203125, 492.19604492188, -781.78552246094))
		elseif _G.Select_Island == "Two Snow Mountain" then
			TelePBoss(CFrame.new(753.14288330078, 408.23559570313, -5274.6147460938))
		elseif _G.Select_Island == "Punk Hazard" then
			TelePBoss(CFrame.new(-6127.654296875, 15.951762199402, -5040.2861328125))
		elseif _G.Select_Island == "Cursed Ship" then
			TelePBoss(CFrame.new(923.40197753906, 125.05712890625, 32885.875))
		elseif _G.Select_Island == "Ice Castle" then
			TelePBoss(CFrame.new(6148.4116210938, 294.38687133789, -6741.1166992188))
		elseif _G.Select_Island == "Forgotten Island" then
			TelePBoss(CFrame.new(-3032.7641601563, 317.89672851563, -10075.373046875))
		elseif _G.Select_Island == "Ussop Island" then
			TelePBoss(CFrame.new(4816.8618164063, 8.4599885940552, 2863.8195800781))
		elseif _G.Select_Island == "Mini Sky Island" then
			TelePBoss(CFrame.new(-288.74060058594, 49326.31640625, -35248.59375))
		elseif _G.Select_Island == "Great Tree" then
			TelePBoss(CFrame.new(2681.2736816406, 1682.8092041016, -7190.9853515625))
		elseif _G.Select_Island == "Castle On The Sea" then
			TelePBoss(CFrame.new(-5074.45556640625, 314.5155334472656, -2991.054443359375))
		elseif _G.Select_Island == "MiniSky" then
			TelePBoss(CFrame.new(-260.65557861328, 49325.8046875, -35253.5703125))
		elseif _G.Select_Island == "Port Town" then
			TelePBoss(CFrame.new(-290.7376708984375, 6.729952812194824, 5343.5537109375))
		elseif _G.Select_Island == "Hydra Island" then
			TelePBoss(CFrame.new(5228.8842773438, 604.23400878906, 345.0400390625))
		elseif _G.Select_Island == "Floating Turtle" then
			TelePBoss(CFrame.new(-13274.528320313, 531.82073974609, -7579.22265625))
		elseif _G.Select_Island == "Mansion" then
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-12471.169921875, 374.94024658203, -7551.677734375))
		elseif _G.Select_Island == "Haunted Castle" then
			TelePBoss(CFrame.new(-9515.3720703125, 164.00624084473, 5786.0610351562))
		elseif _G.Select_Island == "Ice Cream Island" then
			TelePBoss(CFrame.new(-902.56817626953, 79.93204498291, -10988.84765625))
		elseif _G.Select_Island == "Peanut Island" then
			TelePBoss(CFrame.new(-2062.7475585938, 50.473892211914, -10232.568359375))
		elseif _G.Select_Island == "Cake Island" then
			TelePBoss(CFrame.new(-1884.7747802734375, 19.327526092529297, -11666.8974609375))
		elseif _G.Select_Island == "Coco Island" then
			TelePBoss(CFrame.new(67.0007935, 24.760025, -12050.1963, -0.665517807, -1.17702537e-09, 0.746381998, 3.25347194e-09, 1, 4.47796022e-09, -0.746381998, 5.40849499e-09, -0.665517807))
		elseif _G.Select_Island == "Candy Island" then
			TelePBoss(CFrame.new(-1047.63477, 6.48305178, -13994.9961, -0.991097987, 0, -0.133134499, 0, 1, 0, 0.133134499, 0, -0.991097987))
		end
	until not _G.Start_Tween_Island
end

tp:Button("Teleport Island",function()
	TPIS()
end)


local wl = tab4:CraftPage('World',2)

wl:Button("Travel Main",function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelMain")
end)


wl:Button("Travel Dressrosa",function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
end)

wl:Button("Travel Zou",function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
end)







coroutine.wrap(function()
	while task.wait(.1) do
		local ac = CombatFrameworkR.activeController
		if ac and ac.equipped then
			if FastAttack and _G.Setting_table.FastMode == "Normal" then
				AttackFunction()
				if _G.Setting_table.FastModeD == "Normal" then
					if tick() - cooldownfastattack > 1 then wait(1) cooldownfastattack = tick() end
				elseif _G.Setting_table.FastModeD == "Fast" then
					if tick() - cooldownfastattack > 2.5 then wait(1) cooldownfastattack = tick() end
				elseif _G.Setting_table.FastModeD == "Extra" then
					if tick() - cooldownfastattack > 3.5 then wait() cooldownfastattack = tick() end
				end
			elseif FastAttack and _G.Setting_table.FastMode == "ExTra" then
				AttackNoCD()
				if _G.Setting_table.FastModeD == "Normal" then
					if tick() - cooldownfastattack > 1 then wait(1) cooldownfastattack = tick() end
				elseif _G.Setting_table.FastModeD == "Fast" then
					if tick() - cooldownfastattack > 2.5 then wait(1) cooldownfastattack = tick() end
				elseif _G.Setting_table.FastModeD == "Extra" then
					if tick() - cooldownfastattack > 3.5 then wait() cooldownfastattack = tick() end
				end
			end
		end
	end
end)()

coroutine.wrap(function()
	while task.wait(.1) do
		if DbFast and _G.Setting_table.DbFast then
			local ac = CombatFrameworkR.activeController
			if ac and ac.equipped then
				if FastAttack and _G.Setting_table.FastMode == "Normal" then
					AttackFunction()
					if _G.Setting_table.FastModeD == "Normal" then
						if tick() - cooldownfastattack > 1 then wait(1) cooldownfastattack = tick() end
					elseif _G.Setting_table.FastModeD == "Fast" then
						if tick() - cooldownfastattack > 2.5 then wait(1) cooldownfastattack = tick() end
					elseif _G.Setting_table.FastModeD == "Extra" then
						if tick() - cooldownfastattack > 3.5 then wait() cooldownfastattack = tick() end
					end
				elseif FastAttack and _G.Setting_table.FastMode == "ExTra" then
					AttackNoCD()
					if _G.Setting_table.FastModeD == "Normal" then
						if tick() - cooldownfastattack > 1 then wait(1) cooldownfastattack = tick() end
					elseif _G.Setting_table.FastModeD == "Fast" then
						if tick() - cooldownfastattack > 2.5 then wait(1) cooldownfastattack = tick() end
					elseif _G.Setting_table.FastModeD == "Extra" then
						if tick() - cooldownfastattack > 3.5 then wait() cooldownfastattack = tick() end
					end
				end
			end
		end
	end
end)()

task.spawn(function()
	while task.wait() do
		pcall(function()
			if _G.Setting_table.FastModeD == "Normal" then
				Faa:Update("ATTACK | 1 Wait | 1")
			elseif _G.Setting_table.FastModeD == "Fast" then
				Faa:Update("ATTACK | 2.5 Wait | 1")
			elseif _G.Setting_table.FastModeD == "Extra" then
				Faa:Update("ATTACK | INF Wait | 0")
			end
		end)
	end
end)

task.spawn(function()
	while task.wait() do
		pcall(function()
			if DbFast then
				db:Update("Duble Fast | Enable ")
			else
				db:Update("Duble Fast | Disable ")
			end
		end)
	end
end) 

task.spawn(function()
	while task.wait() do
		pcall(function()
			if game.Workspace._WorldOrigin.Locations:FindFirstChild("Mirage Island") then
				mr:Update("Mirage Island : Spawn ✅")
			else
				mr:Update("Mirage Island : Not Spawn ❌")
			end
		end)
	end
end) 

local tab9 = Win:CraftTab('Misc')
local WEB = tab9:CraftPage('Web Hook',1)

local WebHookLog = {}

local AllRequest = http_request or request or HttpPost or syn.request
function WebHookLog:WebHookKaiTanSend(WebHookUrl)

	function GetFightingStyle(Style)
		ReturnText = ""
		for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
			if v:IsA("Tool") then
				if v.ToolTip == Style then
					ReturnText = v.Name
				end
			end
		end
		for i ,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
			if v:IsA("Tool") then
				if v.ToolTip == Style then
					ReturnText = v.Name
				end
			end
		end
		if ReturnText ~= "" then
			return ReturnText
		else
			return "Not Have"
		end
	end

	function GetAwaken()
		ReturnText = ""
		Awakened_Z = ":x:"
		Awakened_X = ":x:"
		Awakened_C = ":x:"
		Awakened_V = ":x:"
		Awakened_F = ":x:"
		for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
			if v:IsA("Tool") then
				if v.ToolTip == "Blox Fruit" then
					if v:FindFirstChild("AwakenedMoves") then
						if v.AwakenedMoves:FindFirstChild("Z") then
							Awakened_Z = ":white_check_mark:"
						end
						if v.AwakenedMoves:FindFirstChild("X") then
							Awakened_X = ":white_check_mark:"
						end
						if v.AwakenedMoves:FindFirstChild("C") then
							Awakened_C = ":white_check_mark:"
						end
						if v.AwakenedMoves:FindFirstChild("V") then
							Awakened_V = ":white_check_mark:"
						end
						if v.AwakenedMoves:FindFirstChild("F") then
							Awakened_F = ":white_check_mark:"
						end
						ReturnText = ":regional_indicator_z:"..Awakened_Z..
							"\n"..":regional_indicator_x:"..Awakened_X..
							"\n"..":regional_indicator_c:"..Awakened_C..
							"\n"..":regional_indicator_v:"..Awakened_V..
							"\n"..":regional_indicator_f:"..Awakened_F
					else
						ReturnText = "This Fruit Can't Awakened"
					end
				end
			end
		end
		for i ,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
			if v:IsA("Tool") then
				if v.ToolTip == "Blox Fruit" then
					if v:FindFirstChild("AwakenedMoves") then
						if v.AwakenedMoves:FindFirstChild("Z") then
							Awakened_Z = ":white_check_mark:"
						end
						if v.AwakenedMoves:FindFirstChild("X") then
							Awakened_X = ":white_check_mark:"
						end
						if v.AwakenedMoves:FindFirstChild("C") then
							Awakened_C = ":white_check_mark:"
						end
						if v.AwakenedMoves:FindFirstChild("V") then
							Awakened_V = ":white_check_mark:"
						end
						if v.AwakenedMoves:FindFirstChild("F") then
							Awakened_F = ":white_check_mark:"
						end
						ReturnText = ":regional_indicator_z:"..Awakened_Z..
							"\n"..":regional_indicator_x:"..Awakened_X..
							"\n"..":regional_indicator_c:"..Awakened_C..
							"\n"..":regional_indicator_v:"..Awakened_V..
							"\n"..":regional_indicator_f:"..Awakened_F
					else
						ReturnText = "This Fruit Can't Awakened"
					end
				end
			end
		end
		if ReturnText ~= "" then
			return ReturnText
		else
			return "Not Have"
		end
	end

	function GetWeapon(Rare)
		if Rare == "Common" then
			RareNumber = 0
		elseif Rare == "Uncommon" then
			RareNumber = 1
		elseif Rare == "Rare" then
			RareNumber = 2
		elseif Rare == "Legendary" then
			RareNumber = 3
		elseif Rare == "Mythical" then
			RareNumber = 4
		else
			return "Worng InPut"
		end
		local ReturnText = ""
		for i,v in pairs(game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer("getInventoryWeapons")) do
			if type(v) == "table" then
				if v.Rarity then
					if tonumber(v.Rarity) == RareNumber then
						ReturnText = ReturnText .. v.Name .. "\n"
					end
				end
			end
		end
		if ReturnText ~= "" then
			return ReturnText
		else
			return "Not Have"
		end
	end

	function GetFruitInU()
		local ReturnText = ""
		for i,v in pairs(game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer("getInventoryFruits")) do
			if type(v) == "table" then
				if v ~= nil then
					ReturnText = ReturnText .. v.Name .. " : " .. v.Price .. "\n"
				end
			end
		end

		if ReturnText ~= "" then
			return ReturnText
		else
			return "Not Have"
		end
	end

	function GetAllMelee()
		BuyDragonTalon = tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon",true))
		if BuyDragonTalon then
			if BuyDragonTalon == 1 then
				TalComplete = true
			end
		end
		BuySuperhuman = tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySuperhuman",true))
		if BuySuperhuman then
			if BuySuperhuman == 1 then
				SupComplete = true
			end
		end
		BuySharkmanKarate = tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate",true))
		if BuySharkmanKarate then
			if BuySharkmanKarate == 1 then
				SharkComplete = true
			end
		end
		BuyDeathStep = tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep",true))
		if BuyDeathStep then
			if BuyDeathStep == 1 then
				DeathComplete = true
			end
		end
		BuyElectricClaw = tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw",true))
		if BuyElectricClaw then
			if BuyElectricClaw == 1 then
				EClawComplete = true
			end
		end
		BuyGod = tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodhuman",true))
		if BuyGod then
			if BuyGod == 1 then
				GodComplete = true
			end
		end
		ReturnText = {}
		if SupComplete == true then
			table.insert(ReturnText,"SuperHuman")
		end
		if EClawComplete == true then
			table.insert(ReturnText,"\nElectric Claw")
		end
		if TalComplete == true then
			table.insert(ReturnText,"\nDragon Talon")
		end
		if SharkComplete == true then
			table.insert(ReturnText,"\nSharkman Karate")
		end
		if DeathComplete == true then
			table.insert(ReturnText,"\nDeath Step")
		end
		if GodComplete == true then
			table.insert(ReturnText,"\nGod Human")
		end

		if #ReturnText ~= 0 then
			return table.concat(ReturnText,",")
		else
			return "Not Have"
		end
	end

	local Embeds = {{
		["title"] = "Sulfurz Web Hook Stats**",
		["color"] = 1127128,
		["fields"] = {
			{
				["name"] = "User Name",
				["value"] = "||"..tostring(game.Players.LocalPlayer.Name).."||",
				["inline"] = true
			},
			{
				["name"] = "Level",
				["value"] = tostring(game:GetService("Players").LocalPlayer.Data:FindFirstChild("Level").Value),
				["inline"] = true
			},
			{
				["name"] = "Fragments",
				["value"] = tostring(game:GetService("Players").LocalPlayer.Data:FindFirstChild("Fragments").Value),
				["inline"] = true
			},
			{
				["name"] = "Bounty/Honor",
				["value"] = tostring(game:GetService("Players").LocalPlayer.leaderstats["Bounty/Honor"].Value),
				["inline"] = true
			},
			{
				["name"] = "Beli",
				["value"] = tostring(game:GetService("Players").LocalPlayer.Data:FindFirstChild("Beli").Value),
				["inline"] = true
			},
			{
				["name"] = "Fighting Style",
				["value"] = GetFightingStyle("Melee").."\nMas : "..tonumber(game.Players.LocalPlayer.Backpack:FindFirstChild(GetFightingStyle("Melee")).Level.Value),
				["inline"] = true
			},
			{
				["name"] = "Sword",
				["value"] = GetFightingStyle("Sword").."\nMas : "..tonumber(game.Players.LocalPlayer.Backpack:FindFirstChild(GetFightingStyle("Sword")).Level.Value) ,
				["inline"] = true
			},
			{
				["name"] = "Devil Fruit",
				["value"] = GetFightingStyle("Blox Fruit").."\nMas : "..tonumber(game.Players.LocalPlayer.Backpack:FindFirstChild(GetFightingStyle("Blox Fruit")).Level.Value),
				["inline"] = true
			},
			{
				["name"] = "Gun",
				["value"] = GetFightingStyle("Gun").."\nMas : "..tonumber(game.Players.LocalPlayer.Backpack:FindFirstChild(GetFightingStyle("Gun")).Level.Value),
				["inline"] = true
			},
			{
				["name"] = "Accessory",
				["value"] = GetFightingStyle("Wear"),
				["inline"] = true
			},
			{
				["name"] = "Race",
				["value"] = tostring(game:GetService("Players").LocalPlayer.Data:FindFirstChild("Race").Value),
				["inline"] = true
			},
			{
				["name"] = "Awakened",
				["value"] = tostring(GetAwaken()),
				["inline"] = true
			},
			{
				["name"] = "Status",
				["value"] = "```sml\n"..tostring("Melee : "..game:GetService("Players").LocalPlayer.Data.Stats.Melee:WaitForChild("Level").Value .. 
					"\nDefense : "..game:GetService("Players").LocalPlayer.Data.Stats.Defense:WaitForChild("Level").Value .. 
					"\nSword : "..game:GetService("Players").LocalPlayer.Data.Stats.Sword:WaitForChild("Level").Value.. 
					"\nGun : "..game:GetService("Players").LocalPlayer.Data.Stats.Gun:WaitForChild("Level").Value .. 
					"\nDevil Fruit : "..game:GetService("Players").LocalPlayer.Data.Stats["Demon Fruit"]:WaitForChild("Level").Value).."```",
				["inline"] = true
			},
			{
				["name"] = "Common :blue_circle:",
				["value"] = "```sml\n"..tostring(GetWeapon("Common")).."```",
				["inline"] = true
			},
			{
				["name"] = "Uncommon :green_circle:",
				["value"] = "```sml\n"..tostring(GetWeapon("Uncommon")).."```",
				["inline"] = true
			},
			{
				["name"] = "Rare :yellow_circle:",
				["value"] = "```sml\n"..tostring(GetWeapon("Rare")).."```",
				["inline"] = true
			},
			{
				["name"] = "Legendary :purple_circle:",
				["value"] = "```sml\n"..tostring(GetWeapon("Legendary")).."```",
				["inline"] = true
			},
			{
				["name"] = "Mythical :red_circle:",
				["value"] = "```sml\n"..tostring(GetWeapon("Mythical")).."```",
				["inline"] = true
			},
			{
				["name"] = "Fruit In Inventory",
				["value"] = "```sml\n"..tostring(GetFruitInU()).."```",
				["inline"] = true
			},
			{
				["name"] = "All Melee",
				["value"] = "```sml\n"..tostring(GetAllMelee()).."```",
				["inline"] = true
			},



			{
				["name"] = "ㅤ",
				["value"] = tostring("ㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤ"),
				["inline"] = false
			}},
		["footer"] = {
			["text"] = "Made by ! Sulfurz".."\nTime".." : "..os.date("%c").." ("..os.date("%X")..")",
			["icon_url"] = "https://media.discordapp.net/attachments/991643580361867335/1036591759238627409/20221031_170501.jpg"
		},
	}}

	local Message
	if _G.SendWebHookPing then
		Message = {
			['username'] = "Sulfurz Hook",
			["avatar_url"] = "https://media.discordapp.net/attachments/991643580361867335/1036591759238627409/20221031_170501.jpg",
			["content"] = "@everyone",
			["embeds"] = Embeds,
		}
	else
		Message = {
			['username'] = "Sulfurz Hook",
			["avatar_url"] = "https://media.discordapp.net/attachments/991643580361867335/1036591759238627409/20221031_170501.jpg",
			["embeds"] = Embeds,
		}
	end

	local DataCallBack = AllRequest({
		Url = WebHookUrl,
		Method = 'POST',
		Headers = {
			["Content-Type"] = "application/json"
		},
		Body = game:GetService("HttpService"):JSONEncode(Message)
	})
	return DataCallBack
end

WEB:Label("")

_G.Setting_table.Webhooklink = "https://discord.com/api/webhooks/1043903242729435229/Uc2vIIa3TZBbIB-XHJY4FY7Ot3EpwFHF07xefQvfkWlv4CtJGJFzd6M0PEZip5j1Ru-S"

WEB:Textbox("Web Hook",_G.Setting_table.Webhooklink,function(x)
	_G.Setting_table.Webhooklink = x
	Update_Setting(getgenv()['MyName'])	
end)

WEB:Toggle("Ping @Everyone",_G.Setting_table.SendWebHookPing,function(vu)
	_G.SendWebHookPing = vu
	_G.Setting_table.SendWebHookPing = vu
	Update_Setting(getgenv()['MyName'])	
end)

WEB:Toggle("Auto Send Web Hook",_G.Setting_table.Auto_Hook,function(vu)
	Auto_Hook = vu
	_G.Setting_table.Auto_Hook = vu
	Update_Setting(getgenv()['MyName'])	
end)

counttime = 0
spawn(function()
	while wait() do
		if Auto_Hook then
			WebHookLog:WebHookKaiTanSend(_G.Setting_table.Webhooklink)
			repeat wait(1)
				counttime = counttime + 1
			until counttime >= 180 or not Auto_Hook
			counttime = 0
		end
	end
end)

WEB:Button("Send WebHook",function()
	WebHookLog:WebHookKaiTanSend(_G.Setting_table.Webhooklink)
end)

WEB:Line()

WEB:Button("Copy Url WebHook",function()
	setclipboard(tostring("https://discord.com/api/webhooks/1043903242729435229/Uc2vIIa3TZBbIB-XHJY4FY7Ot3EpwFHF07xefQvfkWlv4CtJGJFzd6M0PEZip5j1Ru-S"))
end)

