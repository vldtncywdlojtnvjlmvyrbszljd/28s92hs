_G.ColorMethod = Color3.fromRGB(0, 98, 255)

local UiLib =  game:GetService("CoreGui").RobloxGui.Modules:FindFirstChild("Dream x Hub") 
if UiLib then 
    UiLib:Destroy()
    print("Dream x Hub Ui Destroy.")
end
local Ez = game.Players.LocalPlayer.PlayerGui.Main.Settings:FindFirstChild("Button")
    if Ez then
        Ez:Destroy()
    end

    local Emerald = game.Players.LocalPlayer.PlayerGui.Main.Settings.DisplayButton:Clone()
    Emerald.Name = "Button"
    Emerald.Visible = false
    Emerald.TextLabel.Text = "Dream x Hub"
    Emerald.Notify.Text = "Disable / Enable UI"
    Emerald.Parent = game.Players.LocalPlayer.PlayerGui.Main.Settings
	

    game.Players.LocalPlayer.PlayerGui.Main.Settings.MouseButton1Click:Connect(function()
        Emerald.Visible = not Emerald.Visible
    end)

    Emerald.MouseButton1Click:Connect(function()
		game:GetService("VirtualInputManager"):SendKeyEvent(true,"RightControl",false,game.Players.LocalPlayer.Character.HumanoidRootPart)
		game:GetService("VirtualInputManager"):SendKeyEvent(false,"RightControl",false,game.Players.LocalPlayer.Character.HumanoidRootPart)
    end)

	local UserInputService = game:GetService("UserInputService")
	local TweenService = game:GetService("TweenService")
	local RunService = game:GetService("RunService")
	local LocalPlayer = game:GetService("Players").LocalPlayer
	local Mouse = LocalPlayer:GetMouse()
	local tween = game:GetService("TweenService")
	local Red = {RainbowColorValue = 0, HueSelectionPosition = 0}
	local PresetColor = Color3.fromRGB(0, 190, 255)


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

	local Reduisceen = Instance.new("ScreenGui")
	Reduisceen.Parent = game:GetService("CoreGui").RobloxGui.Modules
	Reduisceen.Name = "Dream x Hub"
	Reduisceen.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

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

	local create = {}
	function create.win()
	    if logoid == nil or logoid == "" then
	        logoid = "14416611331"
	    end
		local fs = false


		local MainSceen = Instance.new("Frame")
		MainSceen.Name = "MainSceen"
		MainSceen.Parent = Reduisceen
		MainSceen.AnchorPoint = Vector2.new(0.5, 0.5)
		MainSceen.BackgroundColor3 = Color3.fromRGB(20,20,20)
		MainSceen.BorderSizePixel = 0
		MainSceen.Position = UDim2.new(0.5, 0, 0.5, 0)
		MainSceen.Size = UDim2.new(0, 0, 0, 0)
		MainSceen.ClipsDescendants = true
		
		local Main_UiConner  = Instance.new("UICorner")

		Main_UiConner.CornerRadius = UDim.new(0, 4)
		Main_UiConner.Name = "Main_UiConner"
		Main_UiConner.Parent = MainSceen


		local ClickFrame = Instance.new("Frame")
		ClickFrame.Name = "ClickFrame"
		ClickFrame.Parent = MainSceen
		ClickFrame.AnchorPoint = Vector2.new(0.5, 0.5)
		ClickFrame.BackgroundColor3 = Color3.fromRGB(255,255,255)
		ClickFrame.BorderSizePixel = 0
		ClickFrame.Position = UDim2.new(0.5, 0, 0.036, 0)
		ClickFrame.Size = UDim2.new(0, 534-20, 0, 30)
		ClickFrame.ClipsDescendants = true
		ClickFrame.BackgroundTransparency = 1


		MakeDraggable(ClickFrame,MainSceen)
		tween:Create(MainSceen,TweenInfo.new(0.4,Enum.EasingStyle.Back),{Size = UDim2.new(0, 550, 0, 610)}):Play()


	local ToggleFrameUi = Instance.new("TextButton")
	local UICorner = Instance.new("UICorner")
	local ToggleImgUi = Instance.new("ImageLabel")
	local Uitoggle = Instance.new("TextLabel")
	local Yedhee = Instance.new("TextLabel")
	local SearchStroke = Instance.new("UIStroke")


    
   --[[ local TextButton7 = Instance.new("TextButton")
    TextButton7.AnchorPoint = Vector2.new(0.5, 0.5)
    TextButton7.ClipsDescendants = true
    TextButton7.Position = UDim2.new(0.94, 0, 0.3, 0)
    TextButton7.BorderSizePixel = 0
    TextButton7.BackgroundColor3 = Color3.fromRGB(85, 170, 255)
    TextButton7.AutoButtonColor = false
    TextButton7.FontSize = Enum.FontSize.Size11
    TextButton7.TextSize = 11
    TextButton7.TextColor3 = Color3.fromRGB(109, 109, 109)
    TextButton7.Text = ""
    TextButton7.Font = Enum.Font.GothamSemibold
    TextButton7.TextXAlignment = Enum.TextXAlignment.Left
    TextButton7.Parent = Reduisceen
    
    local TextButton7_UiConner = Instance.new("UICorner")

    TextButton7_UiConner.CornerRadius = UDim.new(0, 9)
    TextButton7_UiConner.Name = "Main_UiConner"
    TextButton7_UiConner.Parent = TextButton7

    local TextButton8 = Instance.new("TextButton")
    TextButton8.AnchorPoint = Vector2.new(0.5, 0.5)
    TextButton8.Size = UDim2.new(0, 198, 0, 48)
    TextButton8.ClipsDescendants = true
    TextButton8.Position = UDim2.new(0.5, 0, 0.5, 0)
    TextButton8.BorderSizePixel = 0
    TextButton8.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    TextButton8.AutoButtonColor = false
    TextButton8.FontSize = Enum.FontSize.Size11
    TextButton8.TextSize = 11
    TextButton8.TextColor3 = Color3.fromRGB(45, 45, 45)
    TextButton8.Text = ""
    TextButton8.Font = Enum.Font.GothamSemibold
    TextButton8.Parent = TextButton7

    local TextButton8_UiConner = Instance.new("UICorner")

    TextButton8_UiConner.CornerRadius = UDim.new(0, 9)
    TextButton8_UiConner.Name = "Main_UiConner"
    TextButton8_UiConner.Parent = TextButton8

    local TextLabel13 = Instance.new("TextLabel")
    TextLabel13.AnchorPoint = Vector2.new(0.5, 0.5)
    TextLabel13.Size = UDim2.new(0, 198, 0, 50)
    TextLabel13.ClipsDescendants = true
    TextLabel13.BackgroundTransparency = 1
    TextLabel13.Position = UDim2.new(0.5, 0, 0.5, 0)
    TextLabel13.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TextLabel13.TextSize = 13
    TextLabel13.TextColor3 = Color3.fromRGB(255, 255, 255)
    TextLabel13.Text = "Ui Toggle : \nRightControl"
    TextLabel13.TextWrap = true
    TextLabel13.Font = Enum.Font.GothamSemibold
    TextLabel13.TextWrapped = true
    TextLabel13.Parent = TextButton8]]--

	
    --[[KeyButton.MouseButton1Click:Connect(function()
        KeyButton.Text = "..."
        local inputwait = UserInputService.InputBegan:wait()
        if inputwait.KeyCode.Name ~= "Unknown" then
            getgenv().Settings.Key = inputwait.KeyCode
            KeyButton.Text = "[ " .. inputwait.KeyCode.Name .. " ]"
            TextLabel13.Text = "Ui Toggle : " .. inputwait.KeyCode.Name

            Key = inputwait.KeyCode.Name
        end
    end)]]--


    local library = {toggledui = false;}
    game:GetService("UserInputService").InputBegan:Connect(function(input)
        if input.KeyCode == Enum.KeyCode.RightControl then
            if library.toggledui == false then
                library.toggledui = true
                tween:Create(MainSceen,TweenInfo.new(0.4,Enum.EasingStyle.Back,Enum.EasingDirection.In),{Size = UDim2.new(0, 0, 0, 0)}):Play()
                wait(0.2)
                TweenService:Create(
                    TextButton7,
                    TweenInfo.new(.5, Enum.EasingStyle.Quart, Enum.EasingDirection.Out),
                    {Size = UDim2.new(0, 220, 0, 50)}
                ):Play()
                TweenService:Create(
                    TextButton77,
                    TweenInfo.new(.5, Enum.EasingStyle.Quart, Enum.EasingDirection.Out),
                    {Size = UDim2.new(0, 217, 0, 47)}
                ):Play()
                --[[wait(9000)
                wait(.51)
                if TextButton7.Size.Y.Offset == UDim2.new(0, 0, 0, 0) then
                    Reduisceen.Enabled = false
                end]]--
            else
                Reduisceen.Enabled = true
                TweenService:Create(
                    TextButton7,
                    TweenInfo.new(.5, Enum.EasingStyle.Quart, Enum.EasingDirection.In),
                    {Size = UDim2.new(0, 0, 0, 0)}
                ):Play()
                TweenService:Create(
                    TextButton77,
                    TweenInfo.new(.5, Enum.EasingStyle.Quart, Enum.EasingDirection.In),
                    {Size = UDim2.new(0, 0, 0, 0)}
                ):Play()
                tween:Create(MainSceen,TweenInfo.new(0.4,Enum.EasingStyle.Back),{Size = UDim2.new(0, 550, 0, 610)}):Play()
                repeat wait() until MainSceen.Size == UDim2.new(0, 550, 0, 610)
                library.toggledui = false
                if MainSceen.Size == UDim2.new(0, 550, 0, 610) then
                    Reduisceen.Enabled = true
                end
            end
        end
    end)
    function UISetToggle(Set)
        if not Set then
            library.toggledui = true
            TweenService:Create(
                MainSceen,
                TweenInfo.new(.5, Enum.EasingStyle.Quart, Enum.EasingDirection.In),
                {Size = UDim2.new(0, 0, 0, 0)}
            ):Play()
            wait(0.2)
            TweenService:Create(
                TextButton7,
                TweenInfo.new(.5, Enum.EasingStyle.Quart, Enum.EasingDirection.Out),
                {Size = UDim2.new(0, 220, 0, 50)}
            ):Play()
                TweenService:Create(
                    TextButton77,
                    TweenInfo.new(.5, Enum.EasingStyle.Quart, Enum.EasingDirection.In),
                    {Size = UDim2.new(0, 210, 0, 50)}
                ):Play()
            wait(2)
            TweenService:Create(
                TextButton7,
                TweenInfo.new(.5, Enum.EasingStyle.Quart, Enum.EasingDirection.In),
                {Size = UDim2.new(0, 0, 0, 0)}
            ):Play()
                TweenService:Create(
                    TextButton77,
                    TweenInfo.new(.5, Enum.EasingStyle.Quart, Enum.EasingDirection.In),
                    {Size = UDim2.new(0, 0, 0, 0)}
                ):Play()
            wait(.5)
            Reduisceen.Enabled = false
        else
            Reduisceen.Enabled = true
            tween:Create(MainSceen,TweenInfo.new(0.4,Enum.EasingStyle.Back),{Size = UDim2.new(0, 550, 0, 610)}):Play()
            repeat wait() until MainSceen.Size == UDim2.new(0, 553, 0, 466)
            library.toggledui = true
            Reduisceen.Enabled = true
        end
    end
    

    if Config and Config.HideUI then
        UISetToggle(false)
    end
    
		--[[local library = {toggledui = false;}
		game:GetService("UserInputService").InputBegan:Connect(function(input)
			pcall(function()
				if input.KeyCode == Enum.KeyCode.RightControl then
					if library.toggledui == false then
						library.toggledui = true
						tween:Create(MainSceen,TweenInfo.new(0.4,Enum.EasingStyle.Back,Enum.EasingDirection.In),{Size = UDim2.new(0, 0, 0, 0)}):Play()
						wait(.3)
						Reduisceen.Enabled = false
					else
						library.toggledui = false
						tween:Create(MainSceen,TweenInfo.new(0.4,Enum.EasingStyle.Back),{Size = UDim2.new(0, 550, 0, 610)}):Play()
						Reduisceen.Enabled = true
					end
				end
			end)
		end)]]--

	local SearchStroke2 = Instance.new("UIStroke")
	
	SearchStroke2.Thickness = 1
	SearchStroke2.Name = ""
	SearchStroke2.Parent = MainSceen
	SearchStroke2.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
	SearchStroke2.LineJoinMode = Enum.LineJoinMode.Round
	SearchStroke2.Color = Color3.fromRGB(255,255,255)
	SearchStroke2.Transparency = 0
	
		local MainSceen22 = Instance.new("Frame")
		MainSceen22.Name = "MainSceen22"
		MainSceen22.Parent = MainSceen
		MainSceen22.AnchorPoint = Vector2.new(0.5, 0.5)
		MainSceen22.BackgroundColor3 = Color3.fromRGB(20,20,20)
		MainSceen22.BorderSizePixel = 0
		MainSceen22.Position = UDim2.new(0.5, 0, 0.05, 88)
		MainSceen22.Size = UDim2.new(0, 528, 0, 130)
		MainSceen22.ClipsDescendants = true

		local MainSceen222 = Instance.new("Frame")
		MainSceen222.Name = "MainSceen222"
		MainSceen222.Parent = MainSceen
		MainSceen222.AnchorPoint = Vector2.new(0.5, 0.5)
		MainSceen222.BackgroundColor3 = _G.ColorMethod
		MainSceen222.BorderSizePixel = 0
		MainSceen222.Position = UDim2.new(0.1, 0, 0.05, 72)
		MainSceen222.Size = UDim2.new(0, 6, 0, 70)
		MainSceen222.ClipsDescendants = true

		local Main_UiXConner  = Instance.new("UICorner")

		Main_UiXConner.CornerRadius = UDim.new(0, 4)
		Main_UiXConner.Name = "Main_UiXConner"
		Main_UiXConner.Parent = MainSceen222
		
		local Main_UiXConner  = Instance.new("UICorner")

		Main_UiXConner.CornerRadius = UDim.new(0, 4)
		Main_UiXConner.Name = "Main_UiXConner"
		Main_UiXConner.Parent = MainSceen22

	local SearchStroke = Instance.new("UIStroke")
	
	SearchStroke.Thickness = 1.5
	SearchStroke.Name = ""
	SearchStroke.Parent = MainSceen22
	SearchStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
	SearchStroke.LineJoinMode = Enum.LineJoinMode.Round
	SearchStroke.Color = Color3.fromRGB(255,255,255)
	SearchStroke.Transparency = 0

		local NameReal2 = Instance.new("TextLabel")

		NameReal2.Parent = MainSceen22
		NameReal2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		NameReal2.BackgroundTransparency = 1
		NameReal2.BorderSizePixel = 0
		NameReal2.Position = UDim2.new(0.2, 0, 0.05, 19)
		NameReal2.AnchorPoint = Vector2.new(0.5, 0.5)
		NameReal2.Size = UDim2.new(0, 1, 0, 0)
		NameReal2.Font = Enum.Font.GothamBold
		NameReal2.Text = "Welcome to"
		NameReal2.TextColor3 = Color3.fromRGB(255,255,255)
		NameReal2.TextSize = 15.000

		local JoinButton = Instance.new("TextButton")

		JoinButton.Parent = MainSceen22
		JoinButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		JoinButton.BackgroundTransparency = 1
		JoinButton.BorderSizePixel = 0
		JoinButton.Position = UDim2.new(0.25, 0, 0.05, 76)
		JoinButton.AnchorPoint = Vector2.new(0.5, 0.5)
		JoinButton.Size = UDim2.new(0, 140, 0.01, 25)
		JoinButton.Font = Enum.Font.GothamBold
		JoinButton.Text = "Join Discord"
		JoinButton.TextColor3 = _G.ColorMethod
		JoinButton.TextSize = 13.000
		JoinButton.MouseButton1Click:Connect(function()
            setclipboard("https://discord.gg/JJerDWrPrr")
		end)
    
		local Main_UiXConner  = Instance.new("UICorner")

		Main_UiXConner.CornerRadius = UDim.new(0, 8)
		Main_UiXConner.Name = "Main_UiXConner"
		Main_UiXConner.Parent = JoinButton
		
local IMGNAME = Instance.new("ImageLabel")
	IMGNAME.Name = "IMGDATA"
	IMGNAME.Parent = MainSceen22
	IMGNAME.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	IMGNAME.BackgroundTransparency = 1.000
	IMGNAME.Position = UDim2.new(0, 400, 0, 6)
	IMGNAME.Size = UDim2.new(0, 100, 0, 100)
	IMGNAME.Image = "rbxassetid://"..tostring(logoid)
	
	local SearchStroke = Instance.new("UIStroke")
	
	SearchStroke.Thickness = 1.4
	SearchStroke.Name = ""
	SearchStroke.Parent = JoinButton
	SearchStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
	SearchStroke.LineJoinMode = Enum.LineJoinMode.Round
	SearchStroke.Color = _G.ColorMethod
	SearchStroke.Transparency = 0		
		local NameReal2 = Instance.new("TextLabel")

		NameReal2.Parent = MainSceen22
		NameReal2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		NameReal2.BackgroundTransparency = 1
		NameReal2.BorderSizePixel = 0
		NameReal2.Position = UDim2.new(0.2, 0, 0.05, 40)
		NameReal2.AnchorPoint = Vector2.new(0.5, 0.5)
		NameReal2.Size = UDim2.new(0, 136, 0, 34)
		NameReal2.Font = Enum.Font.GothamBold
		NameReal2.Text = "Dream x"
		NameReal2.TextColor3 = _G.ColorMethod
		NameReal2.TextSize = 25.000

function create.bar(text)
    Infomation = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId);
    NameGames = Infomation.Name
    local barre = {}
    
	local Label = Instance.new("TextLabel")

    Label.Parent = MainSceen
    Label.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Label.BackgroundTransparency = 1
    Label.BorderSizePixel = 0
    Label.Position = UDim2.new(0.25, 0, 0.05, 570)
    Label.AnchorPoint = Vector2.new(0.5, 0.5)
    Label.Size = UDim2.new(0, 136, 0, 34)
    Label.Font = Enum.Font.GothamBold
    Label.Text = tostring(""..NameGames..""..text)
    Label.TextColor3 = Color3.fromRGB(255,255,255)
    Label.TextSize = 14.000
    
    function barre:loadbar()
        Label.Text = "                                                                    "..NameGames.."                                                      "..os.date("%H")..":"..os.date("%M")..":"..os.date("%S")
    end
    
    return barre
end

		local NameReal2 = Instance.new("TextLabel")
		
		NameReal2.Parent = MainSceen22
		NameReal2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		NameReal2.BackgroundTransparency = 1
		NameReal2.BorderSizePixel = 0
		NameReal2.Position = UDim2.new(0.3, 0, 0.05, 40)
		NameReal2.AnchorPoint = Vector2.new(0.5, 0.5)
		NameReal2.Size = UDim2.new(0, 136, 0, 34)
		NameReal2.Font = Enum.Font.GothamBold
		NameReal2.Text = "        Hub"
		NameReal2.TextColor3 = Color3.fromRGB(255,255,255)
		NameReal2.TextSize = 25.000
		
local IMGNAME = Instance.new("ImageLabel")
	IMGNAME.Name = "IMGDATA"
	IMGNAME.Parent = MainSceen
	IMGNAME.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	IMGNAME.BackgroundTransparency = 1.000
	IMGNAME.Position = UDim2.new(0, 10, 0, 6)
	IMGNAME.Size = UDim2.new(0, 34, 0, 34)
	IMGNAME.Image = "rbxassetid://"..tostring(logoid)
		
		
		local NameReal = Instance.new("TextLabel")

		NameReal.Parent = MainSceen
		NameReal.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		NameReal.BackgroundTransparency = 1
		NameReal.BorderSizePixel = 0
		NameReal.Position = UDim2.new(0.2, 0, 0.04, 0)
		NameReal.AnchorPoint = Vector2.new(0.5, 0.5)
		NameReal.Size = UDim2.new(0, 136, 0, 34)
		NameReal.Font = Enum.Font.GothamBold
		NameReal.Text = "Dream x"
		NameReal.TextColor3 = _G.ColorMethod
		NameReal.TextSize = 23.000
		
		local NameReal = Instance.new("TextLabel")

		NameReal.Parent = MainSceen
		NameReal.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		NameReal.BackgroundTransparency = 1
		NameReal.BorderSizePixel = 0
		NameReal.Position = UDim2.new(0.34, -5, 0.04, 0)
		NameReal.AnchorPoint = Vector2.new(0.5, 0.5)
		NameReal.Size = UDim2.new(0, 136, 0, 34)
		NameReal.Font = Enum.Font.GothamBold
		NameReal.Text = "Hub"
		NameReal.TextColor3 = Color3.fromRGB(255,255,255)
		NameReal.TextSize = 23.000
		

		local MainSceen2 = Instance.new("Frame")
		MainSceen2.Name = "MainSceen2"
		MainSceen2.Parent = MainSceen
		MainSceen2.AnchorPoint = Vector2.new(0.5, 0.5)
		MainSceen2.BackgroundColor3 = Color3.fromRGB(18,18,18)--Color3.fromRGB(18,18,18)
		MainSceen2.BorderSizePixel = 0
		MainSceen2.Position = UDim2.new(0.5, 0, 0.5, 0)
		MainSceen2.Size = UDim2.new(0, 0, 0, 0)
		MainSceen2.ClipsDescendants = true

		local Main_UiConner2  = Instance.new("UICorner")

		Main_UiConner2.CornerRadius = UDim.new(0, 4)
		Main_UiConner2.Name = "Main_UiConner"
		Main_UiConner2.Parent = MainSceen

		MainSceen2:TweenSizeAndPosition(UDim2.new(0, 550-20, 0,390), UDim2.new(0.5, 0, 0.53, 70), "Out", "Back", 0.5, true)


		local ScolTapBarFrame = Instance.new("Frame")
		ScolTapBarFrame.Name = "MainSceen2"
		ScolTapBarFrame.Parent = MainSceen2
		ScolTapBarFrame.AnchorPoint = Vector2.new(0.5, 0.5)
		ScolTapBarFrame.BackgroundColor3 = Color3.fromRGB(255,255,255)
		ScolTapBarFrame.BorderSizePixel = 0
		ScolTapBarFrame.BackgroundTransparency = 1
		ScolTapBarFrame.Position = UDim2.new(0.5, 0, 0.07, 0)
		ScolTapBarFrame.Size = UDim2.new(0, 500, 0, 35)
		ScolTapBarFrame.ClipsDescendants = true

		local ScrollingFrame_Menubar = Instance.new("ScrollingFrame")

		ScrollingFrame_Menubar.Parent = ScolTapBarFrame
		ScrollingFrame_Menubar.Active = true
		ScrollingFrame_Menubar.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		ScrollingFrame_Menubar.BackgroundTransparency = 1
		ScrollingFrame_Menubar.BorderSizePixel = 0
		ScrollingFrame_Menubar.Size = UDim2.new(0, 500, 0, 30)
		ScrollingFrame_Menubar.CanvasSize = UDim2.new(2, 0, 0, 0)
		ScrollingFrame_Menubar.ScrollBarImageColor3 = _G.ColorMethod
		ScrollingFrame_Menubar.ScrollBarThickness = 3


		local UIListLayout_Menubar = Instance.new("UIListLayout")

		UIListLayout_Menubar.Parent = ScrollingFrame_Menubar
		UIListLayout_Menubar.FillDirection = Enum.FillDirection.Horizontal
		UIListLayout_Menubar.SortOrder = Enum.SortOrder.LayoutOrder
		UIListLayout_Menubar.Padding = UDim.new(0, 10)

		local UIPadding_Menubar = Instance.new("UIPadding")

		UIPadding_Menubar.Parent = ScrollingFrame_Menubar
		UIPadding_Menubar.PaddingTop = UDim.new(0, 2)


		local PageOrders = -1

		local Container_Page = Instance.new('Frame',MainSceen2)
		Container_Page.Size = UDim2.new(0, 518, 0, 268)
		Container_Page.Position = UDim2.new(0.5, 0, 0.45, 0)
		Container_Page.BackgroundTransparency = 1
		Container_Page.Name = "Page "
		Container_Page.AnchorPoint = Vector2.new(0.5, 0.5)

		local pagesFolder = Instance.new("Folder")

		pagesFolder.Name = "pagesFolder"
		pagesFolder.Parent = Container_Page


		local UIPage = Instance.new('UIPageLayout',pagesFolder)
		UIPage.SortOrder = Enum.SortOrder.LayoutOrder
		UIPage.EasingDirection = Enum.EasingDirection.InOut
		UIPage.EasingStyle = Enum.EasingStyle.Quad
		UIPage.Padding = UDim.new(0, 10)
		UIPage.TweenTime = 0.500

		local top = {}

		local NotiFrame = Instance.new("Frame")
		NotiFrame.Name = "NotiFrame"
		NotiFrame.Parent = Reduisceen
		NotiFrame.AnchorPoint = Vector2.new(0.5, 0.5)
		NotiFrame.BackgroundColor3 = Color3.fromRGB(18,18,18)
		NotiFrame.BorderSizePixel = 0
		NotiFrame.Position =  UDim2.new(1, -210, 1, -500)
		NotiFrame.Size = UDim2.new(0, 400, 0, 500)
		NotiFrame.ClipsDescendants = true
		NotiFrame.BackgroundTransparency = 1


		local Notilistlayout = Instance.new("UIListLayout")
		Notilistlayout.Parent = NotiFrame
		Notilistlayout.SortOrder = Enum.SortOrder.LayoutOrder
		Notilistlayout.Padding = UDim.new(0, 5)


		function create:Notifile(titel,text,delays)
			local TitleFrame = Instance.new("Frame")
			TitleFrame.Name = "TitleFrame"
			TitleFrame.Parent = NotiFrame
			TitleFrame.AnchorPoint = Vector2.new(0.5, 0.5)
			TitleFrame.BackgroundColor3 = Color3.fromRGB(18,18,18)
			TitleFrame.BorderSizePixel = 0
			TitleFrame.Position =  UDim2.new(0.5, 0, 0.5,0)
			TitleFrame.Size = UDim2.new(0, 0, 0, 0)
			TitleFrame.ClipsDescendants = true
			TitleFrame.BackgroundTransparency = 0

			local ConnerTitile = Instance.new("UICorner")

			ConnerTitile.CornerRadius = UDim.new(0, 4)
			ConnerTitile.Name = ""
			ConnerTitile.Parent = TitleFrame

			TitleFrame:TweenSizeAndPosition(UDim2.new(0, 400-10, 0, 70),  UDim2.new(0.5, 0, 0.5,0), "Out", "Quad", 0.3, true)

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
			txdlid.BackgroundColor3 = _G.ColorMethod
			txdlid.Size =UDim2.new(0, 160, 0,25 )
			txdlid.Font = Enum.Font.GothamBold
			txdlid.Text = titel
			txdlid.TextColor3 = _G.ColorMethod
			txdlid.TextSize = 13.000
			txdlid.AnchorPoint = Vector2.new(0.5, 0.5)
			txdlid.Position = UDim2.new(0.23, 0, 0.3, 0)
			-- txdlid.TextYAlignment = Enum.TextYAlignment.Top
			txdlid.TextXAlignment = Enum.TextXAlignment.Left
			txdlid.BackgroundTransparency = 1

			local LableFrame = Instance.new("Frame")
			LableFrame.Name = "LableFrame"
			LableFrame.Parent = TitleFrame
			LableFrame.AnchorPoint = Vector2.new(0.5, 0.5)
			LableFrame.BackgroundColor3 = _G.ColorMethod
			LableFrame.BorderSizePixel = 0
			LableFrame.Position =  UDim2.new(0.36, 0, 0.67,0)
			LableFrame.Size = UDim2.new(0, 260, 0,25 )
			LableFrame.ClipsDescendants = true
			LableFrame.BackgroundTransparency = 1

			local TextNoti = Instance.new("TextLabel")

			TextNoti.Parent = LableFrame
			TextNoti.Name = "TextLabel_Tap"
			TextNoti.BackgroundColor3 = _G.ColorMethod
			TextNoti.Size =UDim2.new(0, 260, 0,25 )
			TextNoti.Font = Enum.Font.GothamBold
			TextNoti.Text = text
			TextNoti.TextColor3 = Color3.fromRGB(255, 255, 255)
			TextNoti.TextSize = 13.000
			TextNoti.AnchorPoint = Vector2.new(0.5, 0.5)
			TextNoti.Position = UDim2.new(0.5, 0, 0.5, 0)
			-- TextNoti.TextYAlignment = Enum.TextYAlignment.Top
			TextNoti.TextXAlignment = Enum.TextXAlignment.Left
			TextNoti.BackgroundTransparency = 1

			repeat wait() until TitleFrame.Size == UDim2.new(0, 400-10, 0, 70)

			local Time = Instance.new("Frame")
			Time.Name = "Time"
			Time.Parent = TitleFrame
	--Time.AnchorPoint = Vector2.new(0.5, 0.5)
			Time.BackgroundColor3 =  _G.ColorMethod
			Time.BorderSizePixel = 0
			Time.Position =  UDim2.new(0, 0, 0.,0)
			Time.Size = UDim2.new(0, 0,0,0)
			Time.ClipsDescendants = false
			Time.BackgroundTransparency = 0

			local ConnerTitile_Time = Instance.new("UICorner")

			ConnerTitile_Time.CornerRadius = UDim.new(0, 4)
			ConnerTitile_Time.Name = ""
			ConnerTitile_Time.Parent = Time


			Time:TweenSizeAndPosition(UDim2.new(0, 400-10, 0, 3),  UDim2.new(0., 0, 0.,0), "Out", "Quad", 0.3, true)
			repeat wait() until Time.Size == UDim2.new(0, 400-10, 0, 3)

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


		function top:Taps(text)
			PageOrders = PageOrders + 1
			local name = tostring(text) or tostring(math.random(1,5000))

			local Frame_Tap = Instance.new("Frame")
			Frame_Tap.Parent = ScrollingFrame_Menubar
			Frame_Tap.Name = text.."Server"
			Frame_Tap.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Frame_Tap.BackgroundTransparency = 1
			Frame_Tap.Position = UDim2.new(0.0, 0, 0.0, 0)
			Frame_Tap.Size = UDim2.new(0, 100, 0, 25)
			Frame_Tap.Visible = true

			local TextLabel_Tap = Instance.new("TextLabel")

			TextLabel_Tap.Parent = Frame_Tap
			TextLabel_Tap.Name = "TextLabel_Tap"
			TextLabel_Tap.BackgroundColor3 = _G.ColorMethod
			TextLabel_Tap.Position = UDim2.new(0.5, 0, 0.8, 0)
			TextLabel_Tap.Size = UDim2.new(0, 0, 0, 0)
			TextLabel_Tap.Font = Enum.Font.SourceSans
			TextLabel_Tap.Text = " "
			TextLabel_Tap.TextColor3 = Color3.fromRGB(0, 0, 0)
			TextLabel_Tap.TextSize = 14.000
			TextLabel_Tap.AnchorPoint = Vector2.new(0.5, 0.5)

			local TextButton_Tap = Instance.new("TextButton")

			TextButton_Tap.Parent = Frame_Tap
			TextButton_Tap.Name = "TextButton_Tap"
			TextButton_Tap.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			TextButton_Tap.BackgroundTransparency = 1.000
			TextButton_Tap.Position = UDim2.new(0.114491031, 0, -0.0216345787, 0)
			TextButton_Tap.Size = UDim2.new(0, 80, 0, 20)
			TextButton_Tap.Font = Enum.Font.GothamSemibold
			TextButton_Tap.TextColor3 = Color3.fromRGB(155, 155, 155)
			TextButton_Tap.TextSize = 13.000
			TextButton_Tap.Text = tostring(text)

			local MainPage = Instance.new("Frame")

			MainPage.Name = name.."_MainPage"
			MainPage.Parent = pagesFolder
			MainPage.BackgroundColor3 = Color3.fromRGB(255,255, 255)
			MainPage.BorderSizePixel = 0
			MainPage.Position = UDim2.new(0.5, 0, 0.5, 0) -- UDim2.new(0.0149812736, 0, 0.13, 0)
			MainPage.Size = UDim2.new(0, 518, 0, 375)
			MainPage.BackgroundTransparency = 1
			MainPage.ClipsDescendants = true
			MainPage.Visible = true
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
						{TextColor3 = _G.ColorMethod}
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
					{TextColor3 = _G.ColorMethod}
				):Play()

				MainPage.Visible = true
				Frame_Tap.Name  = text .. "Server"
				fs  = true
			end
			local ScrollingFrame_Pagefrist = Instance.new("ScrollingFrame")

			ScrollingFrame_Pagefrist.Parent = MainPage
			ScrollingFrame_Pagefrist.Active = true
			ScrollingFrame_Pagefrist.BackgroundColor3 = Color3.fromRGB(23, 23, 23) -- 249, 53, 139
			ScrollingFrame_Pagefrist.BorderSizePixel = 0
			ScrollingFrame_Pagefrist.Size = UDim2.new(0, 518, 0, 375)
			ScrollingFrame_Pagefrist.ScrollBarThickness = 4
			ScrollingFrame_Pagefrist.ScrollBarImageColor3 = _G.ColorMethod -- 249, 53, 139

			local UIGridLayout_Pagefrist = Instance.new("UIGridLayout")
			local UIPadding_Pagefrist = Instance.new("UIPadding")

			UIGridLayout_Pagefrist.Archivable = false
			UIGridLayout_Pagefrist.Parent = ScrollingFrame_Pagefrist
			UIGridLayout_Pagefrist.SortOrder = Enum.SortOrder.LayoutOrder
			UIGridLayout_Pagefrist.CellPadding = UDim2.new(0, 13, 0, 15)
			UIGridLayout_Pagefrist.CellSize = UDim2.new(0, 240, 0, 370)

			UIPadding_Pagefrist.Parent = ScrollingFrame_Pagefrist
			UIPadding_Pagefrist.PaddingLeft = UDim.new(0, 10)
			UIPadding_Pagefrist.PaddingTop = UDim.new(0, 20)

			local page = {}

			function page:newpage()

				local Pageframe = Instance.new("Frame")


				Pageframe.Parent = ScrollingFrame_Pagefrist
				Pageframe.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
				Pageframe.BorderSizePixel = 0
				Pageframe.Position = UDim2.new(0.028957529, 0, 0.0496277921, 0)
				Pageframe.Size = UDim2.new(0, 240, 0, 379)


				local ScrollingFrame_Pageframe = Instance.new("ScrollingFrame")


				ScrollingFrame_Pageframe.Parent = Pageframe
				ScrollingFrame_Pageframe.Active = true
				ScrollingFrame_Pageframe.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
				ScrollingFrame_Pageframe.BorderSizePixel = 0
				ScrollingFrame_Pageframe.Position = UDim2.new(0, 0, -0.0101253344, 0)
				ScrollingFrame_Pageframe.Size = UDim2.new(0, 240, 0, 379)
				ScrollingFrame_Pageframe.ScrollBarThickness = 4
				ScrollingFrame_Pageframe.ScrollBarImageColor3 = Color3.fromRGB(222, 222, 222)



				local UIPadding_Pageframe = Instance.new("UIPadding")
				local UIListLayout_Pageframe = Instance.new("UIListLayout")


				UIPadding_Pageframe.Parent = ScrollingFrame_Pageframe
				UIPadding_Pageframe.PaddingLeft = UDim.new(0, 15)
				UIPadding_Pageframe.PaddingTop = UDim.new(0, 10)


				UIListLayout_Pageframe.Parent = ScrollingFrame_Pageframe
				UIListLayout_Pageframe.SortOrder = Enum.SortOrder.LayoutOrder
				UIListLayout_Pageframe.Padding = UDim.new(0, 7)

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
						ScrollingFrame_Pagefrist.CanvasSize = UDim2.new(0,0,0,UIGridLayout_Pagefrist.AbsoluteContentSize.Y + 40)
					end)
				end)
			local items = {}

			function items:Toggle(text,config,callback)
				local Toggle = Instance.new("Frame")

				Toggle.Parent = ScrollingFrame_Pageframe
				Toggle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Toggle.BorderSizePixel = 0
				Toggle.Position = UDim2.new(0.5, 0, 0.5, 0)
				Toggle.Size = UDim2.new(0, 213, 0, 35)
				Toggle.BackgroundTransparency = 1
				Toggle.AnchorPoint = Vector2.new(0.5, 0.5)

				local TextButton_Toggle = Instance.new("TextButton")

				TextButton_Toggle.Parent = Toggle
				TextButton_Toggle.BackgroundTransparency =1
				TextButton_Toggle.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
				TextButton_Toggle.BorderSizePixel = 0
				TextButton_Toggle.Size = UDim2.new(0, 213, 0, 35)
				TextButton_Toggle.AutoButtonColor = false
				TextButton_Toggle.Font = Enum.Font.SourceSans
				TextButton_Toggle.Text = " "
				TextButton_Toggle.TextColor3 = Color3.fromRGB(0, 0, 0)
				TextButton_Toggle.TextSize = 12.000

				local TextButton_2_Toggle = Instance.new("TextButton")

				TextButton_2_Toggle.Parent = TextButton_Toggle
				TextButton_2_Toggle.BackgroundColor3 = Color3.fromRGB(155, 155, 155)
		--        TextButton_2_Toggle.BorderColor3 = _G.ColorMethod
				TextButton_2_Toggle.BorderSizePixel = 0
				TextButton_2_Toggle.AnchorPoint = Vector2.new(0.5, 0.5)
				TextButton_2_Toggle.Position = UDim2.new(0.9, 0, 0.5, 0)
				TextButton_2_Toggle.Size = UDim2.new(0, 30, 0, 13)
				TextButton_2_Toggle.Font = Enum.Font.SourceSans
				TextButton_2_Toggle.Text = " "
				TextButton_2_Toggle.TextColor3 = Color3.fromRGB(0, 0, 0)
				TextButton_2_Toggle.TextSize = 12.000
				TextButton_2_Toggle.AutoButtonColor = false

				local TextButton_Pageframe_Uiconner = Instance.new("UICorner")

				TextButton_Pageframe_Uiconner.CornerRadius = UDim.new(0, 30)
				TextButton_Pageframe_Uiconner.Name = ""
				TextButton_Pageframe_Uiconner.Parent = TextButton_2_Toggle

				local TextButton_3_Toggle = Instance.new("TextButton")

				TextButton_3_Toggle.Parent = TextButton_2_Toggle
				TextButton_3_Toggle.BackgroundColor3 = Color3.fromRGB(255, 255,255)
		--        TextButton_3_Toggle.BorderColor3 = _G.ColorMethod
				TextButton_3_Toggle.BorderSizePixel = 0
				TextButton_3_Toggle.AnchorPoint = Vector2.new(0.5, 0.5)
				TextButton_3_Toggle.Position = UDim2.new(0.1, 0, 0.5, 0)
				TextButton_3_Toggle.Size = UDim2.new(0, 19, 0, 19)
				TextButton_3_Toggle.Font = Enum.Font.SourceSans
				TextButton_3_Toggle.Text = " "
				TextButton_3_Toggle.TextColor3 = Color3.fromRGB(0, 0, 0)
				TextButton_3_Toggle.TextSize = 12.000
				TextButton_3_Toggle.AutoButtonColor = false

				local TextButton_Pageframe_Uiconner2 = Instance.new("UICorner")

				TextButton_Pageframe_Uiconner2.CornerRadius = UDim.new(0, 30)
				TextButton_Pageframe_Uiconner2.Name = ""
				TextButton_Pageframe_Uiconner2.Parent = TextButton_3_Toggle

				local TextButton_4_Toggle = Instance.new("TextButton")

				TextButton_4_Toggle.Parent = TextButton_3_Toggle
				TextButton_4_Toggle.BackgroundColor3 = Color3.fromRGB(155, 155,155)
		--        TextButton_3_Toggle.BorderColor3 = _G.ColorMethod
				TextButton_4_Toggle.BorderSizePixel = 0
				TextButton_4_Toggle.AnchorPoint = Vector2.new(0.5, 0.5)
				TextButton_4_Toggle.Position = UDim2.new(0.5, 0, 0.5, 0)
				TextButton_4_Toggle.Size = UDim2.new(0, 27, 0, 27-2)
				TextButton_4_Toggle.Font = Enum.Font.SourceSans
				TextButton_4_Toggle.Text = " "
				TextButton_4_Toggle.TextColor3 = Color3.fromRGB(0, 0, 0)
				TextButton_4_Toggle.TextSize = 12.000
				TextButton_4_Toggle.AutoButtonColor = false
				TextButton_4_Toggle.BackgroundTransparency = 1
				TextButton_4_Toggle.Visible = true

				local TextButton_Pageframe_Uiconner4 = Instance.new("UICorner")

				TextButton_Pageframe_Uiconner4.CornerRadius = UDim.new(0, 30)
				TextButton_Pageframe_Uiconner4.Name = ""
				TextButton_Pageframe_Uiconner4.Parent = TextButton_4_Toggle

				local TextLabel_Toggle = Instance.new("TextLabel")

				TextLabel_Toggle.Parent = Toggle
				TextLabel_Toggle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				TextLabel_Toggle.BackgroundTransparency = 1
				TextLabel_Toggle.AnchorPoint = Vector2.new(0.5, 0.5)
				TextLabel_Toggle.Position = UDim2.new(0.4, 0, 0.5, 0)
				TextLabel_Toggle.BorderSizePixel = 0
				TextLabel_Toggle.Size = UDim2.new(0, 130, 0, 25)
				TextLabel_Toggle.Font = Enum.Font.GothamSemibold
				TextLabel_Toggle.Text = text
				TextLabel_Toggle.TextColor3 = Color3.fromRGB(200, 200, 200)
				TextLabel_Toggle.TextSize = 13.000
				TextLabel_Toggle.ClipsDescendants = true
				TextLabel_Toggle.TextWrapped = true
				TextLabel_Toggle.TextXAlignment = Enum.TextXAlignment.Left

				local TextButton_Toggle2 = Instance.new("TextButton")

				TextButton_Toggle2.Parent = TextButton_Toggle
				TextButton_Toggle2.BackgroundTransparency =1
				TextButton_Toggle2.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
				TextButton_Toggle2.BorderSizePixel = 0
				TextButton_Toggle2.Size = UDim2.new(0, 213, 0, 35)
				TextButton_Toggle2.AutoButtonColor = false
				TextButton_Toggle2.Font = Enum.Font.SourceSans
				TextButton_Toggle2.Text = " "
				TextButton_Toggle2.TextColor3 = Color3.fromRGB(0, 0, 0)
				TextButton_Toggle2.TextSize = 12.000

				TextButton_Toggle2.MouseEnter:Connect(function()
					TweenService:Create(
						TextButton_4_Toggle,
						TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{BackgroundTransparency = 0.6} -- UDim2.new(0, 128, 0, 25)
					):Play()
					TweenService:Create(
						TextLabel_Toggle,
						TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{TextColor3 = Color3.fromRGB(255, 255, 255)} -- UDim2.new(0, 128, 0, 25)
					):Play()
				end
			)

			TextButton_Toggle2.MouseLeave:Connect(function()
					TweenService:Create(
						TextButton_4_Toggle,
						TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{BackgroundTransparency = 1} -- UDim2.new(0, 128, 0, 25)
					):Play()
					TweenService:Create(
						TextLabel_Toggle,
						TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{TextColor3 = Color3.fromRGB(200, 200, 200)} -- UDim2.new(0, 128, 0, 25)
					):Play()
				end
			)

			local check = {toogle = false ; loacker = true ; togfunction = {

			};
		}
		TextButton_Toggle2.MouseButton1Click:Connect(function()
				if check.toogle == false and check.loacker == true  then
					TweenService:Create(
						TextButton_4_Toggle,
						TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{BackgroundColor3 =  _G.ColorMethod} -- UDim2.new(0, 128, 0, 25)
					):Play()
					TweenService:Create(
						TextButton_3_Toggle,
						TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{BackgroundColor3 =  Color3.fromRGB(255,255,255)} -- UDim2.new(0, 128, 0, 25)
					):Play()
					TweenService:Create(
						TextButton_2_Toggle,
						TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{BackgroundColor3 =  _G.ColorMethod} -- UDim2.new(0, 128, 0, 25)
					):Play()
					TextButton_3_Toggle:TweenSizeAndPosition(UDim2.new(0, 19, 0, 19), UDim2.new(1, 0, 0.5, 0), "Out", "Quad", 0.3, true)
				elseif  check.loacker ==  true then
					TweenService:Create(
						TextButton_4_Toggle,
						TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{BackgroundColor3 =  Color3.fromRGB(155, 155, 155)} -- UDim2.new(0, 128, 0, 25)
					):Play()
					TweenService:Create(
						TextButton_3_Toggle,
						TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{BackgroundColor3 =  Color3.fromRGB(255, 255, 255)} -- UDim2.new(0, 128, 0, 25)
					):Play()
					TweenService:Create(
						TextButton_2_Toggle,
						TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{BackgroundColor3 =  Color3.fromRGB(155, 155, 155)} -- UDim2.new(0, 128, 0, 25)
					):Play()
					TextButton_3_Toggle:TweenSizeAndPosition(UDim2.new(0, 19, 0, 19), UDim2.new(0.1, 0, 0.5, 0), "Out", "Quad", 0.3, true)
				end
				if  check.loacker == true  then
				check.toogle = not check.toogle
				callback(check.toogle)
				end
			end
		)

			if config == true then
				TweenService:Create(
					TextButton_4_Toggle,
					TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
					{BackgroundColor3 =  Color3.fromRGB(0,190,255)} -- UDim2.new(0, 128, 0, 25)
				):Play()
				TweenService:Create(
					TextButton_3_Toggle,
					TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
					{BackgroundColor3 =  Color3.fromRGB(0,190,255)} -- UDim2.new(0, 128, 0, 25)
				):Play()
				TweenService:Create(
					TextButton_2_Toggle,
					TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
					{BackgroundColor3 =  _G.ColorMethod} -- UDim2.new(0, 128, 0, 25)
				):Play()
				TextButton_3_Toggle:TweenSizeAndPosition(UDim2.new(0, 19, 0, 19), UDim2.new(1, 0, 0.5, 0), "Out", "Quad", 0.3, true)
				check.toogle = true
				callback(check.toogle)
			end

			local lockerframe = Instance.new("Frame")

			lockerframe.Name = "lockerframe"
			lockerframe.Parent = Toggle
			lockerframe.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
			lockerframe.BackgroundTransparency = 1
			lockerframe.Size = UDim2.new(0, 320, 0, 35)
			lockerframe.Position = UDim2.new(0.5, 0, 0.5, 0)
			lockerframe.AnchorPoint = Vector2.new(0.5, 0.5)

			local LockerImageLabel = Instance.new("ImageLabel")
			LockerImageLabel.Parent = lockerframe
			LockerImageLabel.BackgroundTransparency = 1.000
			LockerImageLabel.BorderSizePixel = 0
			LockerImageLabel.Position = UDim2.new(0.5, 0, 0.5, 0)
			LockerImageLabel.AnchorPoint = Vector2.new(0.5, 0.5)
			LockerImageLabel.Size = UDim2.new(0, 0, 0, 0)
			LockerImageLabel.Image = "http://www.roblox.com/asset/?id=6031082533"


			function check.togfunction:lock()
				TweenService:Create(
					lockerframe,
					TweenInfo.new(.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out,0.1),
					{BackgroundTransparency = 0.7}
				):Play()
				TweenService:Create(
					LockerImageLabel,
					TweenInfo.new(.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out,0.1),
					{Size = UDim2.new(0, 30, 0, 30)}
				):Play()

				check.loacker  = false
			--    pcall(callback,locker)
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
			--   pcall(callback,locker)
			end

				return  check.togfunction
			end

			function items:Button(text,callback)

				local ButtonFrame = Instance.new("Frame")

				ButtonFrame.Name = "ButtonFrame"
				ButtonFrame.Parent = ScrollingFrame_Pageframe
				ButtonFrame.BackgroundColor3 = _G.ColorMethod
				ButtonFrame.BorderSizePixel = 0
				ButtonFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
				ButtonFrame.AnchorPoint = Vector2.new(0.5, 0.5)
				ButtonFrame.Size = UDim2.new(0, 213, 0, 25) -- UDim2.new(0, 213, 0, 35)
				ButtonFrame.BackgroundTransparency  = 1
				ButtonFrame.ClipsDescendants = true



				local MheeFrameStroke = Instance.new("UIStroke")

				MheeFrameStroke.Thickness = 0
				MheeFrameStroke.Name = ""
				MheeFrameStroke.Parent = ButtonFrame
				MheeFrameStroke.LineJoinMode = Enum.LineJoinMode.Round
				MheeFrameStroke.Color = _G.ColorMethod
				MheeFrameStroke.Transparency = 0.7

				local Button = Instance.new("TextButton")

				Button.Parent = ButtonFrame
				Button.Name = "Button"
				Button.BackgroundColor3 = _G.ColorMethod
				Button.Size = UDim2.new(0,150, 0, 25)
				Button.Font = Enum.Font.SourceSansSemibold
				Button.Text = tostring(text)
				Button.TextColor3 = Color3.fromRGB(155, 155, 155)
				Button.TextSize = 13.000
				Button.AnchorPoint = Vector2.new(0.5, 0.5)
				Button.Position = UDim2.new(0.5, 0, 0.5, 0)
				Button.TextXAlignment = Enum.TextXAlignment.Center
				Button.BackgroundTransparency = 0.6
				Button.TextWrapped = true
				Button.AutoButtonColor = false
				Button.ClipsDescendants = true

				local ConnerPageMhee = Instance.new("UICorner")

				ConnerPageMhee.CornerRadius = UDim.new(0, 4)
				ConnerPageMhee.Name = ""
				ConnerPageMhee.Parent = Button

				Button.MouseEnter:Connect(function()
					TweenService:Create(
						Button,
						TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{Size =  UDim2.new(0, 213, 0, 25)} -- UDim2.new(0, 128, 0, 25)
					):Play()
					TweenService:Create(
						Button,
						TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{BackgroundTransparency = 0} -- UDim2.new(0, 128, 0, 25)
					):Play()
					TweenService:Create(
						Button,
						TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{TextColor3 = Color3.fromRGB(255, 255, 255)} -- UDim2.new(0, 128, 0, 25)
					):Play()
				end
			)
				Button.MouseLeave:Connect(function()
					TweenService:Create(
						Button,
						TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{Size =  UDim2.new(0, 150, 0, 25)} -- UDim2.new(0, 128, 0, 25)
					):Play()
					TweenService:Create(
						Button,
						TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{BackgroundTransparency = 0.6} -- UDim2.new(0, 128, 0, 25)
					):Play()
					TweenService:Create(
						Button,
						TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{TextColor3 = Color3.fromRGB(155, 155, 155)} -- UDim2.new(0, 128, 0, 25)
					):Play()
				end
			)

			Button.MouseButton1Click:Connect(function()
			--    Ripple(Button)
				callback()
				TweenService:Create(
					Button,
					TweenInfo.new(0.2, Enum.EasingStyle.Back, Enum.EasingDirection.Out),
					{TextSize =  16} -- UDim2.new(0, 128, 0, 25)
				):Play()
				wait(0.1)
				TweenService:Create(
					Button,
					TweenInfo.new(0.2, Enum.EasingStyle.Back, Enum.EasingDirection.Out),
					{TextSize =  13} -- UDim2.new(0, 128, 0, 25)
				):Play()
			end
		)

			end

			function items:Slider(text,check,floor,min,max,de,lol,tog,callback)

			if check then

				local SliderFrame = Instance.new("Frame")

				SliderFrame.Name = "SliderFrame"
				SliderFrame.Parent = ScrollingFrame_Pageframe
				SliderFrame.BackgroundColor3 =  Color3.fromRGB(28, 28, 28)-- _G.ColorMethod
				SliderFrame.BorderSizePixel = 0
				SliderFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
				SliderFrame.AnchorPoint = Vector2.new(0.5, 0.5)
				SliderFrame.Size = UDim2.new(0, 213, 0, 75) -- UDim2.new(0, 213, 0, 35)
				SliderFrame.BackgroundTransparency  = 0
				SliderFrame.ClipsDescendants = true

				local SliderFrameConner = Instance.new("UICorner")

				SliderFrameConner.CornerRadius = UDim.new(0, 4)
				SliderFrameConner.Name = ""
				SliderFrameConner.Parent = SliderFrame

				local SliderFrameStroke = Instance.new("UIStroke")

				SliderFrameStroke.Thickness = 1
				SliderFrameStroke.Name = ""
				SliderFrameStroke.Parent = SliderFrame
				SliderFrameStroke.LineJoinMode = Enum.LineJoinMode.Round
				SliderFrameStroke.Color = _G.ColorMethod
				SliderFrameStroke.Transparency = 0.7


				SliderFrame.MouseEnter:Connect(function()
					TweenService:Create(
						SliderFrameStroke,
						TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{Transparency = 0} -- UDim2.new(0, 128, 0, 25)
					):Play()
				end
			)

				SliderFrame.MouseLeave:Connect(function()
					TweenService:Create(
						SliderFrameStroke,
						TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{Transparency = 0.7} -- UDim2.new(0, 128, 0, 25)
					):Play()
				end
			)


				local LabelNameSliderxd = Instance.new("TextLabel")

				LabelNameSliderxd.Parent = SliderFrame
				LabelNameSliderxd.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				LabelNameSliderxd.BackgroundTransparency = 1
				LabelNameSliderxd.BorderSizePixel = 0
				LabelNameSliderxd.Position = UDim2.new(0.35, 0, 0.2, 0)
				LabelNameSliderxd.AnchorPoint = Vector2.new(0.5, 0.5)
				LabelNameSliderxd.Size = UDim2.new(0, 120, 0, 20)
				LabelNameSliderxd.Font = Enum.Font.GothamBold
				LabelNameSliderxd.Text = tostring(text)
				LabelNameSliderxd.TextColor3 = Color3.fromRGB(255, 255, 255)
				LabelNameSliderxd.TextSize = 11.000
				LabelNameSliderxd.TextXAlignment = Enum.TextXAlignment.Left


				local ShowValueFarm = Instance.new("Frame")

				ShowValueFarm.Name = "ShowValueFarm"
				ShowValueFarm.Parent = SliderFrame
				ShowValueFarm.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
				ShowValueFarm.Position = UDim2.new(0.0833333358, 0, 0.235135213, 0)
				ShowValueFarm.Size = UDim2.new(0, 75, 0, 15)
				ShowValueFarm.BackgroundTransparency = 0
				ShowValueFarm.BorderSizePixel = 0
				ShowValueFarm.AnchorPoint = Vector2.new(0.5, 0.5)
				ShowValueFarm.Position = UDim2.new(0.8, 0, 0.2, 0)
				ShowValueFarm.ClipsDescendants = false

				local CustomValue = Instance.new("TextBox")

				CustomValue.Parent = ShowValueFarm
				CustomValue.BackgroundColor3 = Color3.fromRGB(45,45, 45)
				CustomValue.BorderSizePixel = 0
				CustomValue.ClipsDescendants = true
				CustomValue.AnchorPoint = Vector2.new(0.5, 0.5)
				CustomValue.Position = UDim2.new(0.5, 0, 0.5, 0)
				CustomValue.Size = UDim2.new(0, 158, 0, 26)
				CustomValue.Font = Enum.Font.GothamSemibold
				CustomValue.PlaceholderColor3 = Color3.fromRGB(222, 222, 222)
				CustomValue.PlaceholderText =  ""
				if floor == true then
					CustomValue.Text =  tostring(de and string.format("%.1f",(de / max) * (max - min) + min) or 0)
				else
					CustomValue.Text =  tostring(de and math.floor( (de / max) * (max - min) + min) or 0)
				end
				CustomValue.TextColor3 = Color3.fromRGB(255, 255, 255)
				CustomValue.TextSize = 8.000
				CustomValue.BackgroundTransparency = 1

				local ValueFrame = Instance.new("Frame")

				ValueFrame.Name = "ValueFrame"
				ValueFrame.Parent = SliderFrame
				ValueFrame.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
				ValueFrame.Position = UDim2.new(0.0833333358, 0, 0.235135213, 0)
				ValueFrame.Size = UDim2.new(0, 140, 0, 5)
				ValueFrame.BackgroundTransparency = 0
				ValueFrame.BorderSizePixel = 0
				ValueFrame.AnchorPoint = Vector2.new(0.5, 0.5)
				ValueFrame.Position = UDim2.new(0.4, 0, 0.8, 0)
				ValueFrame.ClipsDescendants = false


				local PartValue = Instance.new("Frame")

				PartValue.Name = "PartValue"
				PartValue.Parent = ValueFrame
				PartValue.BackgroundColor3 = Color3.fromRGB(222, 222, 222)
				PartValue.Position = UDim2.new(0.0833333358, 0, 0.235135213, 0)
				PartValue.Size = UDim2.new(0, 140, 0, 5)
				PartValue.BackgroundTransparency = 1
				PartValue.BorderSizePixel = 0
				PartValue.AnchorPoint = Vector2.new(0.5, 0.5)
				PartValue.Position = UDim2.new(0.5, 0, 0.5, 0)
				PartValue.ClipsDescendants = false

				local MainValue = Instance.new("Frame")

				MainValue.Name = "MainValue"
				MainValue.Parent = PartValue
				MainValue.BackgroundColor3 = _G.ColorMethod
				MainValue.Size = UDim2.new((de or 0) / max, 0, 0, 5)
				MainValue.BackgroundTransparency = 0
				MainValue.BorderSizePixel = 0
				-- MainValue.AnchorPoint = Vector2.new(0.5, 0.5)
				MainValue.Position = UDim2.new(0., 0, 0.0, 0)
				MainValue.ClipsDescendants = false

				local Conner_S1 = Instance.new("UICorner")

				Conner_S1.CornerRadius = UDim.new(0, 8)
				Conner_S1.Name = ""
				Conner_S1.Parent = MainValue

				local Conner_S2 = Instance.new("UICorner")

				Conner_S2.CornerRadius = UDim.new(0, 8)
				Conner_S2.Name = ""
				Conner_S2.Parent = ValueFrame

				local ConneValue = Instance.new("Frame")

				ConneValue.Name = "ConneValue"
				ConneValue.Parent = PartValue
				ConneValue.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				ConneValue.Size = UDim2.new(0, 13, 0,13)
				ConneValue.BackgroundTransparency = 0
				ConneValue.BorderSizePixel = 0
				ConneValue.AnchorPoint = Vector2.new(0.5, 0.5)
				ConneValue.Position = UDim2.new((de or 0)/max, 0.5, 0.3,0.5, 0)
				ConneValue.ClipsDescendants = false


				local Conner_Conne = Instance.new("UICorner")

				Conner_Conne.CornerRadius = UDim.new(0, 300)
				Conner_Conne.Name = ""
				Conner_Conne.Parent = ConneValue

				local Addvalue = Instance.new("ImageButton")

				Addvalue.Name = "Imatog"
				Addvalue.Parent = SliderFrame
				Addvalue.BackgroundTransparency = 1.000
				Addvalue.BorderSizePixel = 0
				Addvalue.Position = UDim2.new(0.85, 0, 0.35, 0)
				Addvalue.Size = UDim2.new(0, 15, 0, 15)
				Addvalue.Image = "http://www.roblox.com/asset/?id=6035067836"
				Addvalue.ImageColor3 =  _G.ColorMethod

				local Deletevalue = Instance.new("ImageButton")

				Deletevalue.Name = "Imatog"
				Deletevalue.Parent = SliderFrame
				Deletevalue.BackgroundTransparency = 1.000
				Deletevalue.BorderSizePixel = 0
				Deletevalue.Position = UDim2.new(0.7, 0, 0.35, 0)
				Deletevalue.Size = UDim2.new(0, 15, 0, 15)
				Deletevalue.Image = "http://www.roblox.com/asset/?id=6035047377"
				Deletevalue.ImageColor3 =  _G.ColorMethod


				local TextButton_2_Toggle = Instance.new("TextButton")

				TextButton_2_Toggle.Parent = ValueFrame
				TextButton_2_Toggle.BackgroundColor3 = Color3.fromRGB(155, 155, 155)
		--        TextButton_2_Toggle.BorderColor3 = _G.ColorMethod
				TextButton_2_Toggle.BorderSizePixel = 0
				TextButton_2_Toggle.AnchorPoint = Vector2.new(0.5, 0.5)
				TextButton_2_Toggle.Position = UDim2.new(1.25, 0, 0.4, 0)
				TextButton_2_Toggle.Size = UDim2.new(0, 30, 0, 13)
				TextButton_2_Toggle.Font = Enum.Font.SourceSans
				TextButton_2_Toggle.Text = " "
				TextButton_2_Toggle.TextColor3 = Color3.fromRGB(0, 0, 0)
				TextButton_2_Toggle.TextSize = 12.000
				TextButton_2_Toggle.AutoButtonColor = false

				local TextButton_Pageframe_Uiconner = Instance.new("UICorner")

				TextButton_Pageframe_Uiconner.CornerRadius = UDim.new(0, 30)
				TextButton_Pageframe_Uiconner.Name = ""
				TextButton_Pageframe_Uiconner.Parent = TextButton_2_Toggle

				local TextButton_3_Toggle = Instance.new("TextButton")

				TextButton_3_Toggle.Parent = TextButton_2_Toggle
				TextButton_3_Toggle.BackgroundColor3 = Color3.fromRGB(255, 255,255)
		--        TextButton_3_Toggle.BorderColor3 = _G.ColorMethod
				TextButton_3_Toggle.BorderSizePixel = 0
				TextButton_3_Toggle.AnchorPoint = Vector2.new(0.5, 0.5)
				TextButton_3_Toggle.Position = UDim2.new(0.1, 0, 0.5, 0)
				TextButton_3_Toggle.Size = UDim2.new(0, 19, 0, 19)
				TextButton_3_Toggle.Font = Enum.Font.SourceSans
				TextButton_3_Toggle.Text = " "
				TextButton_3_Toggle.TextColor3 = Color3.fromRGB(0, 0, 0)
				TextButton_3_Toggle.TextSize = 12.000
				TextButton_3_Toggle.AutoButtonColor = false

				local TextButton_Pageframe_Uiconner2 = Instance.new("UICorner")

				TextButton_Pageframe_Uiconner2.CornerRadius = UDim.new(0, 30)
				TextButton_Pageframe_Uiconner2.Name = ""
				TextButton_Pageframe_Uiconner2.Parent = TextButton_3_Toggle

				local TextButton_4_Toggle = Instance.new("TextButton")

				TextButton_4_Toggle.Parent = TextButton_3_Toggle
				TextButton_4_Toggle.BackgroundColor3 = Color3.fromRGB(155, 155,155)
		--        TextButton_3_Toggle.BorderColor3 = _G.ColorMethod
				TextButton_4_Toggle.BorderSizePixel = 0
				TextButton_4_Toggle.AnchorPoint = Vector2.new(0.5, 0.5)
				TextButton_4_Toggle.Position = UDim2.new(0.5, 0, 0.5, 0)
				TextButton_4_Toggle.Size = UDim2.new(0, 27, 0, 27-2)
				TextButton_4_Toggle.Font = Enum.Font.SourceSans
				TextButton_4_Toggle.Text = " "
				TextButton_4_Toggle.TextColor3 = Color3.fromRGB(0, 0, 0)
				TextButton_4_Toggle.TextSize = 12.000
				TextButton_4_Toggle.AutoButtonColor = false
				TextButton_4_Toggle.BackgroundTransparency = 1
				TextButton_4_Toggle.Visible = true

				local TextButton_Pageframe_Uiconner4 = Instance.new("UICorner")

				TextButton_Pageframe_Uiconner4.CornerRadius = UDim.new(0, 30)
				TextButton_Pageframe_Uiconner4.Name = ""
				TextButton_Pageframe_Uiconner4.Parent = TextButton_4_Toggle


				local TextButton_Toggle = Instance.new("TextButton")

				TextButton_Toggle.Parent = ValueFrame
				TextButton_Toggle.BackgroundTransparency =1
				TextButton_Toggle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				TextButton_Toggle.BorderSizePixel = 0
				TextButton_Toggle.Size = UDim2.new(0, 50, 0, 20)
				TextButton_Toggle.AutoButtonColor = false
				TextButton_Toggle.Font = Enum.Font.SourceSans
				TextButton_Toggle.Text = " "
				TextButton_Toggle.TextColor3 = Color3.fromRGB(0, 0, 0)
				TextButton_Toggle.TextSize = 12.000
				TextButton_Toggle.AnchorPoint = Vector2.new(0.5, 0.5)
				TextButton_Toggle.Position = UDim2.new(1.25, 0, 0.4, 0)



			-- local value = de
			local check2 = {toogle2 = false;}
				local function move(input)
					local pos =
						UDim2.new(
							math.clamp((input.Position.X - ValueFrame.AbsolutePosition.X) / ValueFrame.AbsoluteSize.X, 0, 1),
							0,
							0.3,
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
						--   callback[2] = value
						callback({
							["s"] = value;
							["t"] = check2.toogle2
						})
						--callback({value,check2.toogle2})
							--callback(value)
						else
							local value = math.floor(((pos.X.Scale * max) / max) * (max - min) + min)
							CustomValue.Text = tostring(value)
							callback({
								["s"] = value;
								["t"] = check2.toogle2
							})
					--       callback({value,check2.toogle2})

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

					game:GetService("UserInputService").InputChanged:Connect(
						function(input)
							if dragging and input.UserInputType == Enum.UserInputType.MouseMovement then
								move(input)
							end
						end
						)

						CustomValue.FocusLost:Connect(function()
							if CustomValue.Text == "" then
								CustomValue.Text  = de
							end
							if  tonumber(CustomValue.Text) > max then
								CustomValue.Text  = max
							end
							if  tonumber(CustomValue.Text) <= min then
								CustomValue.Text  = min
							end
							MainValue:TweenSize(UDim2.new((CustomValue.Text or 0) / max, 0, 0, 5), "Out", "Sine", 0.2, true)
							ConneValue:TweenPosition(UDim2.new((CustomValue.Text or 0)/max, 0,0, 0) , "Out", "Sine", 0.2, true)
							if floor == true then
								CustomValue.Text = tostring(CustomValue.Text and string.format("%.1f",(CustomValue.Text / max) * (max - min) + min) )
							else
								CustomValue.Text = tostring(CustomValue.Text and math.floor( (CustomValue.Text / max) * (max - min) + min) )
							end
							callback({
								["s"] =  CustomValue.Text;
								["t"] = check2.toogle2;
							})
					--       callback({ tonumber(CustomValue.Text),check2.toogle2})
					--  pcall(callback, CustomValue.Text)
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
								["t"] = check2.toogle2
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
								["t"] = check2.toogle2;
							})
				--callback({ tonumber(CustomValue.Text),check2.toogle2})
						--  pcall(callback, CustomValue.Text)
						end)




				---
						TextButton_Toggle.MouseEnter:Connect(function()
							TweenService:Create(
								TextButton_4_Toggle,
								TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
								{BackgroundTransparency = 0.6} -- UDim2.new(0, 128, 0, 25)
							):Play()
						end
					)

					TextButton_Toggle.MouseLeave:Connect(function()
							TweenService:Create(
								TextButton_4_Toggle,
								TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
								{BackgroundTransparency = 1} -- UDim2.new(0, 128, 0, 25)
							):Play()
						end
					)



				TextButton_Toggle.MouseButton1Click:Connect(function()
					if check2.toogle2 == false   then
						TweenService:Create(
							TextButton_4_Toggle,
							TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
							{BackgroundColor3 =  _G.ColorMethod} -- UDim2.new(0, 128, 0, 25)
						):Play()
						TweenService:Create(
							TextButton_3_Toggle,
							TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
							{BackgroundColor3 =  _G.ColorMethod} -- UDim2.new(0, 128, 0, 25)
						):Play()
						TweenService:Create(
							TextButton_2_Toggle,
							TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
							{BackgroundColor3 =  Color3.fromRGB(153, 0, 102)} -- UDim2.new(0, 128, 0, 25)
						):Play()
						TextButton_3_Toggle:TweenSizeAndPosition(UDim2.new(0, 19, 0, 19), UDim2.new(1, 0, 0.5, 0), "Out", "Quad", 0.3, true)
					else
						TweenService:Create(
							TextButton_4_Toggle,
							TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
							{BackgroundColor3 =  Color3.fromRGB(155, 155, 155)} -- UDim2.new(0, 128, 0, 25)
						):Play()
						TweenService:Create(
							TextButton_3_Toggle,
							TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
							{BackgroundColor3 =  Color3.fromRGB(255, 255, 255)} -- UDim2.new(0, 128, 0, 25)
						):Play()
						TweenService:Create(
							TextButton_2_Toggle,
							TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
							{BackgroundColor3 =  Color3.fromRGB(155, 155, 155)} -- UDim2.new(0, 128, 0, 25)
						):Play()
						TextButton_3_Toggle:TweenSizeAndPosition(UDim2.new(0, 19, 0, 19), UDim2.new(0.1, 0, 0.5, 0), "Out", "Quad", 0.3, true)
					end
						check2.toogle2 = not check2.toogle2
						callback({
							["t"] = check2.toogle2;

						})
					--   callback({value,check2.toogle2})
						--callback(check2.toogle2)
				end
			)

				if tog == true then
					TweenService:Create(
						TextButton_4_Toggle,
						TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{BackgroundColor3 =  _G.ColorMethod} -- UDim2.new(0, 128, 0, 25)
					):Play()
					TweenService:Create(
						TextButton_3_Toggle,
						TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{BackgroundColor3 =  _G.ColorMethod} -- UDim2.new(0, 128, 0, 25)
					):Play()
					TweenService:Create(
						TextButton_2_Toggle,
						TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{BackgroundColor3 =  Color3.fromRGB(153, 0, 102)} -- UDim2.new(0, 128, 0, 25)
					):Play()
					TextButton_3_Toggle:TweenSizeAndPosition(UDim2.new(0, 19, 0, 19), UDim2.new(1, 0, 0.5, 0), "Out", "Quad", 0.3, true)
					check2.toogle2 = true
					callback({
						["t"] = check2.toogle2;
					})
			--        callback({value,check2.toogle2})
				--  callback(check2.toogle2)
				end


			else
				tog = nil
				local SliderFrame = Instance.new("Frame")

				SliderFrame.Name = "SliderFrame"
				SliderFrame.Parent = ScrollingFrame_Pageframe
				SliderFrame.BackgroundColor3 =  Color3.fromRGB(28, 28, 28)-- _G.ColorMethod
				SliderFrame.BorderSizePixel = 0
				SliderFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
				SliderFrame.AnchorPoint = Vector2.new(0.5, 0.5)
				SliderFrame.Size = UDim2.new(0, 213, 0, 75) -- UDim2.new(0, 213, 0, 35)
				SliderFrame.BackgroundTransparency  = 0
				SliderFrame.ClipsDescendants = true

				local SliderFrameConner = Instance.new("UICorner")

				SliderFrameConner.CornerRadius = UDim.new(0, 4)
				SliderFrameConner.Name = ""
				SliderFrameConner.Parent = SliderFrame

				local SliderFrameStroke = Instance.new("UIStroke")

				SliderFrameStroke.Thickness = 1
				SliderFrameStroke.Name = ""
				SliderFrameStroke.Parent = SliderFrame
				SliderFrameStroke.LineJoinMode = Enum.LineJoinMode.Round
				SliderFrameStroke.Color = _G.ColorMethod
				SliderFrameStroke.Transparency = 0.7



				SliderFrame.MouseEnter:Connect(function()
					TweenService:Create(
						SliderFrameStroke,
						TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{Transparency = 0} -- UDim2.new(0, 128, 0, 25)
					):Play()
				end
			)

				SliderFrame.MouseLeave:Connect(function()
					TweenService:Create(
						SliderFrameStroke,
						TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{Transparency = 0.7} -- UDim2.new(0, 128, 0, 25)
					):Play()
				end
			)

				local LabelNameSliderxd = Instance.new("TextLabel")

				LabelNameSliderxd.Parent = SliderFrame
				LabelNameSliderxd.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				LabelNameSliderxd.BackgroundTransparency = 1
				LabelNameSliderxd.BorderSizePixel = 0
				LabelNameSliderxd.Position = UDim2.new(0.35, 0, 0.2, 0)
				LabelNameSliderxd.AnchorPoint = Vector2.new(0.5, 0.5)
				LabelNameSliderxd.Size = UDim2.new(0, 120, 0, 20)
				LabelNameSliderxd.Font = Enum.Font.GothamBold
				LabelNameSliderxd.Text = tostring(text)
				LabelNameSliderxd.TextColor3 = Color3.fromRGB(255, 255, 255)
				LabelNameSliderxd.TextSize = 11.000
				LabelNameSliderxd.TextXAlignment = Enum.TextXAlignment.Left


				local ShowValueFarm = Instance.new("Frame")

				ShowValueFarm.Name = "ShowValueFarm"
				ShowValueFarm.Parent = SliderFrame
				ShowValueFarm.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
				ShowValueFarm.Position = UDim2.new(0.0833333358, 0, 0.235135213, 0)
				ShowValueFarm.Size = UDim2.new(0, 75, 0, 15)
				ShowValueFarm.BackgroundTransparency = 0
				ShowValueFarm.BorderSizePixel = 0
				ShowValueFarm.AnchorPoint = Vector2.new(0.5, 0.5)
				ShowValueFarm.Position = UDim2.new(0.8, 0, 0.2, 0)
				ShowValueFarm.ClipsDescendants = false

				local CustomValue = Instance.new("TextBox")

				CustomValue.Parent = ShowValueFarm
				CustomValue.BackgroundColor3 = Color3.fromRGB(45,45, 45)
				CustomValue.BorderSizePixel = 0
				CustomValue.ClipsDescendants = true
				CustomValue.AnchorPoint = Vector2.new(0.5, 0.5)
				CustomValue.Position = UDim2.new(0.5, 0, 0.5, 0)
				CustomValue.Size = UDim2.new(0, 158, 0, 26)
				CustomValue.Font = Enum.Font.GothamSemibold
				CustomValue.PlaceholderColor3 = Color3.fromRGB(222, 222, 222)
				CustomValue.PlaceholderText =  ""
				if floor == true then
					CustomValue.Text =  tostring(de and string.format("%.1f",(de / max) * (max - min) + min) or 0)
				else
					CustomValue.Text =  tostring(de and math.floor( (de / max) * (max - min) + min) or 0)
				end
				CustomValue.TextColor3 = Color3.fromRGB(255, 255, 255)
				CustomValue.TextSize = 8.000
				CustomValue.BackgroundTransparency = 1

				local ValueFrame = Instance.new("Frame")

				ValueFrame.Name = "ValueFrame"
				ValueFrame.Parent = SliderFrame
				ValueFrame.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
				ValueFrame.Position = UDim2.new(0.0833333358, 0, 0.235135213, 0)
				ValueFrame.Size = UDim2.new(0, 190, 0, 5)
				ValueFrame.BackgroundTransparency = 0
				ValueFrame.BorderSizePixel = 0
				ValueFrame.AnchorPoint = Vector2.new(0.5, 0.5)
				ValueFrame.Position = UDim2.new(0.5, 0, 0.8, 0)
				ValueFrame.ClipsDescendants = false


				local PartValue = Instance.new("Frame")

				PartValue.Name = "PartValue"
				PartValue.Parent = ValueFrame
				PartValue.BackgroundColor3 = Color3.fromRGB(222, 222, 222)
				PartValue.Position = UDim2.new(0.0833333358, 0, 0.235135213, 0)
				PartValue.Size = UDim2.new(0, 190, 0, 5)
				PartValue.BackgroundTransparency = 1
				PartValue.BorderSizePixel = 0
				PartValue.AnchorPoint = Vector2.new(0.5, 0.5)
				PartValue.Position = UDim2.new(0.5, 0, 0.5, 0)
				PartValue.ClipsDescendants = false

				local MainValue = Instance.new("Frame")

				MainValue.Name = "MainValue"
				MainValue.Parent = PartValue
				MainValue.BackgroundColor3 = _G.ColorMethod
				MainValue.Size = UDim2.new((de or 0) / max, 0, 0, 5)
				MainValue.BackgroundTransparency = 0
				MainValue.BorderSizePixel = 0
				-- MainValue.AnchorPoint = Vector2.new(0.5, 0.5)
				MainValue.Position = UDim2.new(0., 0, 0.0, 0)
				MainValue.ClipsDescendants = false

				local Conner_S1 = Instance.new("UICorner")

				Conner_S1.CornerRadius = UDim.new(0, 8)
				Conner_S1.Name = ""
				Conner_S1.Parent = MainValue

				local Conner_S2 = Instance.new("UICorner")

				Conner_S2.CornerRadius = UDim.new(0, 8)
				Conner_S2.Name = ""
				Conner_S2.Parent = ValueFrame

				local ConneValue = Instance.new("Frame")

				ConneValue.Name = "ConneValue"
				ConneValue.Parent = PartValue
				ConneValue.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				ConneValue.Size = UDim2.new(0, 13, 0,13)
				ConneValue.BackgroundTransparency = 0
				ConneValue.BorderSizePixel = 0
				ConneValue.AnchorPoint = Vector2.new(0.5, 0.5)
				ConneValue.Position = UDim2.new((de or 0)/max, 0.5, 0.3,0.5, 0)
				ConneValue.ClipsDescendants = false


				local Conner_Conne = Instance.new("UICorner")

				Conner_Conne.CornerRadius = UDim.new(0, 300)
				Conner_Conne.Name = ""
				Conner_Conne.Parent = ConneValue

				local Addvalue = Instance.new("ImageButton")

				Addvalue.Name = "Imatog"
				Addvalue.Parent = SliderFrame
				Addvalue.BackgroundTransparency = 1.000
				Addvalue.BorderSizePixel = 0
				Addvalue.Position = UDim2.new(0.85, 0, 0.35, 0)
				Addvalue.Size = UDim2.new(0, 15, 0, 15)
				Addvalue.Image = "http://www.roblox.com/asset/?id=6035067836"
				Addvalue.ImageColor3 =  _G.ColorMethod

				local Deletevalue = Instance.new("ImageButton")

				Deletevalue.Name = "Imatog"
				Deletevalue.Parent = SliderFrame
				Deletevalue.BackgroundTransparency = 1.000
				Deletevalue.BorderSizePixel = 0
				Deletevalue.Position = UDim2.new(0.7, 0, 0.35, 0)
				Deletevalue.Size = UDim2.new(0, 15, 0, 15)
				Deletevalue.Image = "http://www.roblox.com/asset/?id=6035047377"
				Deletevalue.ImageColor3 =  _G.ColorMethod

				local function move(input)
					local pos =
						UDim2.new(
							math.clamp((input.Position.X - ValueFrame.AbsolutePosition.X) / ValueFrame.AbsoluteSize.X, 0, 1),
							0,
							0.3,
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

					game:GetService("UserInputService").InputChanged:Connect(
						function(input)
							if dragging and input.UserInputType == Enum.UserInputType.MouseMovement then
								move(input)
							end
						end
						)

						CustomValue.FocusLost:Connect(function()
							if CustomValue.Text == "" then
								CustomValue.Text  = de
							end
							if  tonumber(CustomValue.Text) > max then
								CustomValue.Text  = max
							end
							MainValue:TweenSize(UDim2.new((CustomValue.Text or 0) / max, 0, 0, 5), "Out", "Sine", 0.2, true)
							ConneValue:TweenPosition(UDim2.new((CustomValue.Text or 0)/max, 0,0, 0) , "Out", "Sine", 0.2, true)
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
					CustomValue.Text  = CustomValue.Text  - tonumber(lol)
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
					pcall(callback, CustomValue.Text)
				end)

				Deletevalue.MouseButton1Click:Connect(function ()
					if CustomValue.Text == "" then
						CustomValue.Text  = de
					end
					CustomValue.Text  = CustomValue.Text  + tonumber(lol)
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
					pcall(callback, CustomValue.Text)
				end)

			end

			end

			function items:Drop(text,use,option,callback)

			if use == false then
				local DropFrame = Instance.new("Frame")

				DropFrame.Name = "DropFrame"
				DropFrame.Parent = ScrollingFrame_Pageframe
				DropFrame.BackgroundColor3 =  Color3.fromRGB(23, 23, 23)-- _G.ColorMethod
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
				DropFrameStroke.Color = _G.ColorMethod
				DropFrameStroke.Transparency = 0.7





				local LabelFrameDrop = Instance.new("TextLabel")

				LabelFrameDrop.Parent = DropFrame
				LabelFrameDrop.Name = "LabelFrameDrop"
				LabelFrameDrop.BackgroundColor3 = _G.ColorMethod
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
				TextLabel_TapDrop.BackgroundColor3 = _G.ColorMethod
				TextLabel_TapDrop.Position = UDim2.new(0.04, 0, 0.14, 0)
				TextLabel_TapDrop.Size =    UDim2.new(0, 140, 0, 20)
				TextLabel_TapDrop.Font = Enum.Font.SourceSansSemibold
				TextLabel_TapDrop.Text = tostring(text).." :"
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
				ButtonDrop.BackgroundColor3 = _G.ColorMethod
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
					ListFrame.BackgroundColor3 =  Color3.fromRGB(22553, 23, 23)-- _G.ColorMethod
					ListFrame.BorderSizePixel = 0
					ListFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
					ListFrame.AnchorPoint = Vector2.new(0.5, 0.5)
					ListFrame.Size = UDim2.new(0, 180, 0, 30) -- UDim2.new(0, 213, 0, 35)
					ListFrame.BackgroundTransparency  = 1
					ListFrame.ClipsDescendants = true

					local TextLabel_TapDro2p = Instance.new("TextLabel")

					TextLabel_TapDro2p.Parent = ListFrame
					TextLabel_TapDro2p.Name =  tostring(v).."Dropdown"
					TextLabel_TapDro2p.BackgroundColor3 = _G.ColorMethod
					TextLabel_TapDro2p.Position = UDim2.new(0.5, 0, 0.5, 0)
					TextLabel_TapDro2p.Size =  UDim2.new(0, 180, 0, 30)
					TextLabel_TapDro2p.Font = Enum.Font.SourceSansSemibold
					TextLabel_TapDro2p.Text = tostring(v)
					TextLabel_TapDro2p.TextColor3 = Color3.fromRGB(155, 155, 155)
					TextLabel_TapDro2p.TextSize = 14.000
					TextLabel_TapDro2p.AnchorPoint = Vector2.new(0.5, 0.5)
					TextLabel_TapDro2p.BackgroundTransparency = 1
					TextLabel_TapDro2p.TextXAlignment = Enum.TextXAlignment.Center

					local ButtonDrop2 = Instance.new("TextButton")

					ButtonDrop2.Parent = ListFrame
					ButtonDrop2.Name = "ButtonDrop2"
					ButtonDrop2.BackgroundColor3 = _G.ColorMethod
					ButtonDrop2.Size = UDim2.new(0, 213, 0, 30)
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
							{TextColor3 = Color3.fromRGB(255, 255, 255)} -- UDim2.new(0, 128, 0, 25)
						):Play()
					end)

					ButtonDrop2.MouseLeave:Connect(function ()
						TweenService:Create(
							TextLabel_TapDro2p,
							TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
							{TextColor3 = Color3.fromRGB(155, 155, 155)} -- UDim2.new(0, 128, 0, 25)
						):Play()
					end)

					ButtonDrop2.MouseButton1Click:Connect(function()
						TweenService:Create(
							DropFrame,
							TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
							{Size = UDim2.new(0, 213, 0, 30)} -- UDim2.new(0, 128, 0, 25)
						):Play()
						TweenService:Create(
							DropArbt_listimage,
							TweenInfo.new(0.3, Enum.EasingStyle.Linear, Enum.EasingDirection.Out),
							{Rotation = 0}
						):Play()
						TextLabel_TapDrop.Text =  text.." : "..tostring(v)
						callback(v)
						dog = not dog
					end
				)


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
						TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{Size = UDim2.new(0, 213, 0, FrameSize)} -- UDim2.new(0, 128, 0, 25)
					):Play()
					TweenService:Create(
						DropArbt_listimage,
						TweenInfo.new(0.3, Enum.EasingStyle.Linear, Enum.EasingDirection.Out),
						{Rotation = -180}
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
						TweenInfo.new(0.3, Enum.EasingStyle.Linear, Enum.EasingDirection.Out),
						{Rotation = 0}
					):Play()
					ScolDown.CanvasSize = UDim2.new(0,0,0,UIListLayoutlist.AbsoluteContentSize.Y + 10  )
				end
				dog = not dog
			end
		)
		ScolDown.CanvasSize = UDim2.new(0,0,0,UIListLayoutlist.AbsoluteContentSize.Y + 10  )

			local dropfunc = {}

			function dropfunc:Clear()
				TextLabel_TapDrop.Text = tostring(text).." :"
				for i, v in next, ScolDown:GetChildren() do
					if v:IsA("Frame") then
						v:Destroy()
					end
				end
				ScolDown.CanvasSize = UDim2.new(0,0,0,UIListLayoutlist.AbsoluteContentSize.Y + 10  )
			end

			function dropfunc:Add(t)
				local ListFrame = Instance.new("Frame")

				ListFrame.Name = "ListFrame"
				ListFrame.Parent = ScolDown
				ListFrame.BackgroundColor3 =  Color3.fromRGB(22553, 23, 23)-- _G.ColorMethod
				ListFrame.BorderSizePixel = 0
				ListFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
				ListFrame.AnchorPoint = Vector2.new(0.5, 0.5)
				ListFrame.Size = UDim2.new(0, 180, 0, 30) -- UDim2.new(0, 213, 0, 35)
				ListFrame.BackgroundTransparency  = 1
				ListFrame.ClipsDescendants = true

				local TextLabel_TapDro2p = Instance.new("TextLabel")

				TextLabel_TapDro2p.Parent = ListFrame
				TextLabel_TapDro2p.Name =  tostring(t).."Dropdown"
				TextLabel_TapDro2p.BackgroundColor3 = _G.ColorMethod
				TextLabel_TapDro2p.Position = UDim2.new(0.5, 0, 0.5, 0)
				TextLabel_TapDro2p.Size =  UDim2.new(0, 180, 0, 30)
				TextLabel_TapDro2p.Font = Enum.Font.SourceSansSemibold
				TextLabel_TapDro2p.Text = tostring(t)
				TextLabel_TapDro2p.TextColor3 = Color3.fromRGB(155, 155, 155)
				TextLabel_TapDro2p.TextSize = 14.000
				TextLabel_TapDro2p.AnchorPoint = Vector2.new(0.5, 0.5)
				TextLabel_TapDro2p.BackgroundTransparency = 1
				TextLabel_TapDro2p.TextXAlignment = Enum.TextXAlignment.Center

				local ButtonDrop2 = Instance.new("TextButton")

				ButtonDrop2.Parent = ListFrame
				ButtonDrop2.Name = "ButtonDrop2"
				ButtonDrop2.BackgroundColor3 = _G.ColorMethod
				ButtonDrop2.Size = UDim2.new(0, 213, 0, 30)
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
						{TextColor3 = Color3.fromRGB(255, 255, 255)} -- UDim2.new(0, 128, 0, 25)
					):Play()
				end)

				ButtonDrop2.MouseLeave:Connect(function ()
					TweenService:Create(
						TextLabel_TapDro2p,
						TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{TextColor3 = Color3.fromRGB(155, 155, 155)} -- UDim2.new(0, 128, 0, 25)
					):Play()
				end)

				ButtonDrop2.MouseButton1Click:Connect(function()
					TweenService:Create(
						DropFrame,
						TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{Size = UDim2.new(0, 213, 0, 30)} -- UDim2.new(0, 128, 0, 25)
					):Play()
					TweenService:Create(
						DropArbt_listimage,
						TweenInfo.new(0.3, Enum.EasingStyle.Linear, Enum.EasingDirection.Out),
						{Rotation = 0}
					):Play()
					TextLabel_TapDrop.Text =  text.." : "..tostring(t)
					callback(t)
					dog = not dog
				end
			)

				ScolDown.CanvasSize = UDim2.new(0,0,0,UIListLayoutlist.AbsoluteContentSize.Y + 10  )
			end
			return dropfunc

		else

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
			DropFrame.BackgroundColor3 =  Color3.fromRGB(23, 23, 23)-- _G.ColorMethod
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
			DropFrameStroke.Color = _G.ColorMethod
			DropFrameStroke.Transparency = 0.7





			local LabelFrameDrop = Instance.new("TextLabel")

			LabelFrameDrop.Parent = DropFrame
			LabelFrameDrop.Name = "LabelFrameDrop"
			LabelFrameDrop.BackgroundColor3 = _G.ColorMethod
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
			TextLabel_TapDrop.BackgroundColor3 = _G.ColorMethod
			TextLabel_TapDrop.Position = UDim2.new(0.04, 0, 0.14, 0)
			TextLabel_TapDrop.Size =    UDim2.new(0, 140, 0, 20)
			TextLabel_TapDrop.Font = Enum.Font.SourceSansSemibold
			TextLabel_TapDrop.Text = tostring(text).." :"
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
			ButtonDrop.BackgroundColor3 = _G.ColorMethod
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
				listtextbutton.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
				listtextbutton.BorderSizePixel = 0
				listtextbutton.Size =  UDim2.new(0, 210, 0, 33)
				listtextbutton.AutoButtonColor = false
				listtextbutton.Font = Enum.Font.SourceSans
				listtextbutton.Text = " "
				listtextbutton.TextColor3 = Color3.fromRGB(0, 0, 0)
				listtextbutton.TextSize = 14.000

				local farmtoglist = Instance.new("TextButton")

				farmtoglist.Parent = listtextbutton
				farmtoglist.BackgroundColor3 = _G.ColorMethod
				farmtoglist.BorderColor3 = _G.ColorMethod
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
				farmtoglist2.BackgroundColor3 = Color3.fromRGB(32, 32,32)
				farmtoglist2.BorderColor3 = _G.ColorMethod
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
				listimage.BackgroundTransparency = 1.000
				listimage.AnchorPoint = Vector2.new(0.5, 0.5)
				listimage.Position = UDim2.new(0.5, 0, 0.5, 0)
				listimage.BorderSizePixel = 0
				listimage.Size = UDim2.new(0, 0, 0, 0)
				listimage.Image = "http://www.roblox.com/asset/?id=5880482965"


				local textlist = Instance.new("TextLabel")


				textlist.Parent = listtextbutton
				textlist.Name = "textlist"
				textlist.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				textlist.BackgroundTransparency = 1.000
				textlist.AnchorPoint = Vector2.new(0.5, 0.5)
				textlist.Position = UDim2.new(0.5, 0, 0.5, 0)
				textlist.BorderSizePixel = 0
				textlist.Size = UDim2.new(0, 91, 0, 25)
				textlist.Font = Enum.Font.GothamSemibold
				textlist.Text = tostring(v.Name)
				textlist.TextColor3 = Color3.fromRGB(255, 255, 255)
				textlist.TextSize = 13.000



				local TextButton_Pageframe_Uiconner2 = Instance.new("UICorner")

				TextButton_Pageframe_Uiconner2.CornerRadius = UDim.new(0, 5)
				TextButton_Pageframe_Uiconner2.Name = ""
				TextButton_Pageframe_Uiconner2.Parent = farmtoglist

				local TextButton_Pageframe_Uiconner22 = Instance.new("UICorner")

				TextButton_Pageframe_Uiconner22.CornerRadius = UDim.new(0, 5)
				TextButton_Pageframe_Uiconner22.Name = ""
				TextButton_Pageframe_Uiconner22.Parent = farmtoglist2



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
					TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
					{Size = UDim2.new(0, 213, 0, FrameSize)} -- UDim2.new(0, 128, 0, 25)
				):Play()
				TweenService:Create(
					DropArbt_listimage,
					TweenInfo.new(0.3, Enum.EasingStyle.Linear, Enum.EasingDirection.Out),
					{Rotation = -180}
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
					TweenInfo.new(0.3, Enum.EasingStyle.Linear, Enum.EasingDirection.Out),
					{Rotation = 0}
				):Play()
				ScolDown.CanvasSize = UDim2.new(0,0,0,UIListLayoutlist.AbsoluteContentSize.Y + 10  )
			end
			dog = not dog
		end
	)
	ScolDown.CanvasSize = UDim2.new(0,0,0,UIListLayoutlist.AbsoluteContentSize.Y + 10  )



			end



			end

			function items:TextBox(text,text2,callback)
				local TextFrame = Instance.new("Frame")

				TextFrame.Name = "TextFrame"
				TextFrame.Parent = ScrollingFrame_Pageframe
				TextFrame.BackgroundColor3 =  Color3.fromRGB(23, 23, 23)
				TextFrame.BorderSizePixel = 0
				TextFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
				TextFrame.AnchorPoint = Vector2.new(0.5, 0.5)
				TextFrame.Size = UDim2.new(0, 213, 0, 70)
				TextFrame.BackgroundTransparency  = 1
				TextFrame.ClipsDescendants = true

				local LabelNameSliderxd = Instance.new("TextLabel")

				LabelNameSliderxd.Parent = TextFrame
				LabelNameSliderxd.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				LabelNameSliderxd.BackgroundTransparency = 1
				LabelNameSliderxd.BorderSizePixel = 0
				LabelNameSliderxd.Position = UDim2.new(0.5, 0, 0.2, 0)
				LabelNameSliderxd.AnchorPoint = Vector2.new(0.5, 0.5)
				LabelNameSliderxd.Size = UDim2.new(0, 160, 0, 20)
				LabelNameSliderxd.Font = Enum.Font.GothamBold
				LabelNameSliderxd.Text = tostring(text)
				LabelNameSliderxd.TextColor3 = Color3.fromRGB(155, 155, 155)
				LabelNameSliderxd.TextSize = 11.000
				LabelNameSliderxd.TextXAlignment = Enum.TextXAlignment.Center

				local ConerTextBox = Instance.new("UICorner")

				ConerTextBox.CornerRadius = UDim.new(0, 4)
				ConerTextBox.Name = ""
				ConerTextBox.Parent = TextFrame

				local FrameBox = Instance.new("Frame")

				FrameBox.Name = "TextFrame"
				FrameBox.Parent = TextFrame
				FrameBox.BackgroundColor3 =  Color3.fromRGB(23, 23, 23)
				FrameBox.BorderSizePixel = 0
				FrameBox.Position = UDim2.new(0.5, 0, 0.65, 0)
				FrameBox.AnchorPoint = Vector2.new(0.5, 0.5)
				FrameBox.Size = UDim2.new(0, 158, 0, 30)
				FrameBox.BackgroundTransparency  = 0.2
				FrameBox.ClipsDescendants = true
				FrameBox.AnchorPoint = Vector2.new(0.5, 0.5)

				local TextFrame2 = Instance.new("TextBox")

				TextFrame2.Parent = FrameBox
				TextFrame2.BackgroundColor3 = _G.ColorMethod
				TextFrame2.BorderSizePixel = 0
				TextFrame2.ClipsDescendants = true
				TextFrame2.Position = UDim2.new(0.5, 0, 0.5, 0)
				TextFrame2.AnchorPoint = Vector2.new(0.5, 0.5)
				TextFrame2.Size = UDim2.new(0, 158, 0, 35)
				TextFrame2.Font = Enum.Font.GothamSemibold
				TextFrame2.PlaceholderColor3 = Color3.fromRGB(155, 155, 155)
				TextFrame2.PlaceholderText = text2
				TextFrame2.Text = ""
				TextFrame2.TextColor3 = Color3.fromRGB(155, 155, 155)
				TextFrame2.TextSize = 12.000
				TextFrame2.BackgroundTransparency = 1

				local ConerTextBox2 = Instance.new("UICorner")

				ConerTextBox2.CornerRadius = UDim.new(0, 4)
				ConerTextBox2.Name = ""
				ConerTextBox2.Parent = FrameBox

				local TextBoxStroke = Instance.new("UIStroke")

				TextBoxStroke.Thickness = 1
				TextBoxStroke.Name = ""
				TextBoxStroke.Parent = FrameBox
				TextBoxStroke.LineJoinMode = Enum.LineJoinMode.Round
				TextBoxStroke.Color = _G.ColorMethod
				TextBoxStroke.Transparency = 0.7


				TextFrame.MouseEnter:Connect(function()
					TweenService:Create(
						FrameBox,
						TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{Size = UDim2.new(0, 213, 0, 30)} -- UDim2.new(0, 128, 0, 25)
					):Play()
					TweenService:Create(
						FrameBox,
						TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{BackgroundColor3 = _G.ColorMethod} -- UDim2.new(0, 128, 0, 25)
					):Play()
					TweenService:Create(
						TextFrame2,
						TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{PlaceholderColor3 = Color3.fromRGB(255, 255, 255)} -- UDim2.new(0, 128, 0, 25)
					):Play()
					TweenService:Create(
						TextFrame2,
						TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{TextColor3 = Color3.fromRGB(255, 255, 255)} -- UDim2.new(0, 128, 0, 25)
					):Play()
					TweenService:Create(
						LabelNameSliderxd,
						TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{TextColor3 = Color3.fromRGB(255, 255, 255)} -- UDim2.new(0, 128, 0, 25)
					):Play()
					TweenService:Create(
						TextBoxStroke,
						TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{Thickness = 0} -- UDim2.new(0, 128, 0, 25)
					):Play()
				end
			)

			TextFrame.MouseLeave:Connect(function()
				TweenService:Create(
					FrameBox,
					TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
					{Size = UDim2.new(0, 158, 0, 30)} -- UDim2.new(0, 128, 0, 25)
				):Play()
				TweenService:Create(
					FrameBox,
					TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
					{BackgroundColor3 = Color3.fromRGB(23, 23, 23)} -- UDim2.new(0, 128, 0, 25)
				):Play()
				TweenService:Create(
					TextFrame2,
					TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
					{PlaceholderColor3 = Color3.fromRGB(155, 155, 155)} -- UDim2.new(0, 128, 0, 25)
				):Play()
				TweenService:Create(
					TextBoxStroke,
					TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
					{Thickness = 1} -- UDim2.new(0, 128, 0, 25)
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
			end
			)
				TextFrame2.FocusLost:Connect(function ()
					if #TextFrame2.Text > 0 then
						pcall(callback,TextFrame2.Text)
					end
				end)
			end

			function items:Bind(text,bi,callback)
				local BindFrame = Instance.new("Frame")

				BindFrame.Name = "BindFrame"
				BindFrame.Parent = ScrollingFrame_Pageframe
				BindFrame.BackgroundColor3 =  Color3.fromRGB(23, 23, 23)
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
				BindStroke.Color = _G.ColorMethod
				BindStroke.Transparency = 0.7

				local LabelBind = Instance.new("TextLabel")

				LabelBind.Parent = BindFrame
				LabelBind.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				LabelBind.BackgroundTransparency = 1
				LabelBind.BorderSizePixel = 0
				LabelBind.Position = UDim2.new(0.4, 0, 0.5, 0)
				LabelBind.AnchorPoint = Vector2.new(0.5, 0.5)
				LabelBind.Size = UDim2.new(0, 140, 0, 35)
				LabelBind.Font = Enum.Font.GothamBold
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
				LabelBind2.Font = Enum.Font.GothamBold
				LabelBind2.Text =  "KEY : "..key
				LabelBind2.TextColor3 = Color3.fromRGB(155, 155, 155)
				LabelBind2.TextSize = 11.000
				LabelBind2.AnchorPoint = Vector2.new(0.5, 0.5)
				LabelBind2.Position = UDim2.new(0.75, 0, 0.5, 0)
				LabelBind2.TextXAlignment = Enum.TextXAlignment.Center
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


					LabelBind2.Text = "KEY : ".."..."
					local inputwait = game:GetService("UserInputService").InputBegan:wait()
					local fuckulop = inputwait.KeyCode == Enum.KeyCode.Unknown and inputwait.UserInputType or inputwait.KeyCode

					if
					fuckulop.Name ~= "Focus" and fuckulop.Name ~= "MouseMovement" and fuckulop.Name ~= "Focus"
					then
						LabelBind2.Text =  "KEY : "..fuckulop.Name
						key = fuckulop.Name
					end
					-- if fuckulop.Name ~= "Unknown" then
					--     LabelBind2.Text = fuckulop.Name
					--     key = fuckulop.Name
					-- end

				end)


				game:GetService("UserInputService").InputBegan:connect(
					function(current)
						local fuckulop2 = current.KeyCode == Enum.KeyCode.Unknown and current.UserInputType or current.KeyCode

							if fuckulop2.Name ==  key then
								pcall(callback)

						end
					end
					)

			end

			function items:Line()
				local LineFrame = Instance.new("Frame")

				LineFrame.Name = "LineFrame"
				LineFrame.Parent = ScrollingFrame_Pageframe
				LineFrame.BackgroundColor3 =  _G.ColorMethod
				LineFrame.BorderSizePixel = 0
				LineFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
				LineFrame.AnchorPoint = Vector2.new(0.5, 0.5)
				LineFrame.Size = UDim2.new(0, 213, 0, 1)
				LineFrame.BackgroundTransparency  = 0
				LineFrame.ClipsDescendants = true

				local LineFrame_BindConner = Instance.new("UICorner")

				LineFrame_BindConner.CornerRadius = UDim.new(0, 30)
				LineFrame_BindConner.Name = ""
				LineFrame_BindConner.Parent = LineFrame

			end

			function items:Color(text,preset,callback)
				local Pixker = Instance.new("Frame")

				Pixker.Name = "Pixker"
				Pixker.Parent = ScrollingFrame_Pageframe
				Pixker.BackgroundColor3 = Color3.fromRGB(23, 23, 23)
				Pixker.Position = UDim2.new(0.0833333358, 0, 0.235135213, 0)
				Pixker.Size = UDim2.new(0, 213, 0, 33)
				Pixker.BackgroundTransparency = 0
				Pixker.BorderSizePixel = 0
				Pixker.AnchorPoint = Vector2.new(0.5, 0.5)
				Pixker.Position = UDim2.new(0.5, 0, 0.5, 0)
				Pixker.ClipsDescendants = true


				local BoxColorCorner2 = Instance.new("UICorner")

				BoxColorCorner2.CornerRadius = UDim.new(0, 4)
				BoxColorCorner2.Name = "BoxColorCorner"
				BoxColorCorner2.Parent = Pixker

				local MheeFrameStroke = Instance.new("UIStroke")

				MheeFrameStroke.Thickness = 1
				MheeFrameStroke.Name = ""
				MheeFrameStroke.Parent = Pixker
				MheeFrameStroke.LineJoinMode = Enum.LineJoinMode.Round
				MheeFrameStroke.Color = _G.ColorMethod
				MheeFrameStroke.Transparency = 0.7


				local TextFrameColor = Instance.new("TextLabel")

				TextFrameColor.Parent = Pixker
				TextFrameColor.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				TextFrameColor.BorderSizePixel = 0
				TextFrameColor.Size = UDim2.new(0, 200, 0, 34)
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
				TextReal.Font = Enum.Font.GothamSemibold
				TextReal.Text = text
				TextReal.TextColor3 = Color3.fromRGB(155,155, 155)
				TextReal.TextSize = 12.000
				TextReal.BackgroundTransparency = 1
				TextReal.Position = UDim2.new(0.05, 0, 0., 0)
				TextReal.TextXAlignment = Enum.TextXAlignment.Left

				local BoxColor = Instance.new("Frame")

				BoxColor.Name = "BoxColor"
				BoxColor.Parent = TextFrameColor
				BoxColor.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				BoxColor.Position = UDim2.new(0.85, 0, 0.5, 0)
				BoxColor.Size = UDim2.new(0, 35, 0, 19)
				BoxColor.AnchorPoint = Vector2.new(0.5, 0.5)

				local BoxColorCorner = Instance.new("UICorner")

				BoxColorCorner.CornerRadius = UDim.new(0, 4)
				BoxColorCorner.Name = "BoxColorCorner"
				BoxColorCorner.Parent = BoxColor

				local TextButton_Dropdown = Instance.new("TextButton")


				TextButton_Dropdown.Parent = TextFrameColor
				TextButton_Dropdown.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
				TextButton_Dropdown.BorderSizePixel = 0
				TextButton_Dropdown.Position = UDim2.new(0., 0, 0.14705883, 0)
				TextButton_Dropdown.Size = UDim2.new(0, 200, 0, 33)
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
						MheeFrameStroke,
						TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{Transparency = 0.}
					):Play()
					TweenService:Create(
						TextReal,
						TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{TextColor3 = Color3.fromRGB(255,255, 255)}
					):Play()

				end)
				Pixker.MouseLeave:Connect(function()
					TweenService:Create(
						MheeFrameStroke,
						TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{Transparency = 0.7}
					):Play()
					TweenService:Create(
						TextReal,
						TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{TextColor3 = Color3.fromRGB(155,155, 155)}
					):Play()
				end)
			-- Rainbow Toggle


			local TextButton_2_Toggle = Instance.new("TextButton")

			TextButton_2_Toggle.Parent = TextFrameColor
			TextButton_2_Toggle.BackgroundColor3 = Color3.fromRGB(155, 155, 155)
	--        TextButton_2_Toggle.BorderColor3 = _G.ColorMethod
			TextButton_2_Toggle.BorderSizePixel = 0
			TextButton_2_Toggle.AnchorPoint = Vector2.new(0.5, 0.5)
			TextButton_2_Toggle.Position = UDim2.new(0.2, 0, 1.87, 0)
			TextButton_2_Toggle.Size = UDim2.new(0, 30, 0, 13)
			TextButton_2_Toggle.Font = Enum.Font.SourceSans
			TextButton_2_Toggle.Text = " "
			TextButton_2_Toggle.TextColor3 = Color3.fromRGB(0, 0, 0)
			TextButton_2_Toggle.TextSize = 12.000
			TextButton_2_Toggle.AutoButtonColor = false

			local TextButton_Pageframe_Uiconner = Instance.new("UICorner")

			TextButton_Pageframe_Uiconner.CornerRadius = UDim.new(0, 30)
			TextButton_Pageframe_Uiconner.Name = ""
			TextButton_Pageframe_Uiconner.Parent = TextButton_2_Toggle

			local TextButton_3_Toggle = Instance.new("TextButton")

			TextButton_3_Toggle.Parent = TextButton_2_Toggle
			TextButton_3_Toggle.BackgroundColor3 = Color3.fromRGB(255, 255,255)
	--        TextButton_3_Toggle.BorderColor3 = _G.ColorMethod
			TextButton_3_Toggle.BorderSizePixel = 0
			TextButton_3_Toggle.AnchorPoint = Vector2.new(0.5, 0.5)
			TextButton_3_Toggle.Position = UDim2.new(0.1, 0, 0.5, 0)
			TextButton_3_Toggle.Size = UDim2.new(0, 19, 0, 19)
			TextButton_3_Toggle.Font = Enum.Font.SourceSans
			TextButton_3_Toggle.Text = " "
			TextButton_3_Toggle.TextColor3 = Color3.fromRGB(0, 0, 0)
			TextButton_3_Toggle.TextSize = 12.000
			TextButton_3_Toggle.AutoButtonColor = false

			local TextButton_Pageframe_Uiconner2 = Instance.new("UICorner")

			TextButton_Pageframe_Uiconner2.CornerRadius = UDim.new(0, 30)
			TextButton_Pageframe_Uiconner2.Name = ""
			TextButton_Pageframe_Uiconner2.Parent = TextButton_3_Toggle

			local TextButton_4_Toggle = Instance.new("TextButton")

			TextButton_4_Toggle.Parent = TextButton_3_Toggle
			TextButton_4_Toggle.BackgroundColor3 = Color3.fromRGB(155, 155,155)
	--        TextButton_3_Toggle.BorderColor3 = _G.ColorMethod
			TextButton_4_Toggle.BorderSizePixel = 0
			TextButton_4_Toggle.AnchorPoint = Vector2.new(0.5, 0.5)
			TextButton_4_Toggle.Position = UDim2.new(0.5, 0, 0.5, 0)
			TextButton_4_Toggle.Size = UDim2.new(0, 27, 0, 27-2)
			TextButton_4_Toggle.Font = Enum.Font.SourceSans
			TextButton_4_Toggle.Text = " "
			TextButton_4_Toggle.TextColor3 = Color3.fromRGB(0, 0, 0)
			TextButton_4_Toggle.TextSize = 12.000
			TextButton_4_Toggle.AutoButtonColor = false
			TextButton_4_Toggle.BackgroundTransparency = 1
			TextButton_4_Toggle.Visible = true

			local TextButton_Pageframe_Uiconner4 = Instance.new("UICorner")

			TextButton_Pageframe_Uiconner4.CornerRadius = UDim.new(0, 30)
			TextButton_Pageframe_Uiconner4.Name = ""
			TextButton_Pageframe_Uiconner4.Parent = TextButton_4_Toggle


			local TextButton_Toggle = Instance.new("TextButton")

			TextButton_Toggle.Parent = ValueFrame
			TextButton_Toggle.BackgroundTransparency =1
			TextButton_Toggle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			TextButton_Toggle.BorderSizePixel = 0
			TextButton_Toggle.Size = UDim2.new(0, 50, 0, 20)
			TextButton_Toggle.AutoButtonColor = false
			TextButton_Toggle.Font = Enum.Font.SourceSans
			TextButton_Toggle.Text = " "
			TextButton_Toggle.TextColor3 = Color3.fromRGB(0, 0, 0)
			TextButton_Toggle.TextSize = 12.000
			TextButton_Toggle.AnchorPoint = Vector2.new(0.5, 0.5)
			TextButton_Toggle.Position = UDim2.new(1.25, 0, 0.4, 0)

			local TextButton_3_Toggle2 = Instance.new("TextLabel")

			TextButton_3_Toggle2.Parent = TextButton_2_Toggle
			TextButton_3_Toggle2.BackgroundColor3 = Color3.fromRGB(32, 32,32)
			TextButton_3_Toggle2.BorderColor3 = _G.ColorMethod
			TextButton_3_Toggle2.BorderSizePixel = 0
			TextButton_3_Toggle2.AnchorPoint = Vector2.new(0.5, 0.5)
			TextButton_3_Toggle2.Position = UDim2.new(1.9, 0, 0.5, 0)
			TextButton_3_Toggle2.Size = UDim2.new(0, 500, 0, 21)
			TextButton_3_Toggle2.Font = Enum.Font.SourceSansBold
			TextButton_3_Toggle2.Text = "Rainbow"
			TextButton_3_Toggle2.TextColor3 = Color3.fromRGB(255, 255, 255)
			TextButton_3_Toggle2.TextSize = 13.000
			TextButton_3_Toggle2.BackgroundTransparency = 1

			local OMF = Instance.new("TextButton")

			OMF.Parent = TextButton_2_Toggle
			OMF.BackgroundTransparency =1
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
			Color.Position = UDim2.new(0.05,0,4,0)
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
			Hue.Position = UDim2.new(0.14,0,3,0)
			Hue.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Hue.Size = UDim2.new(0, 160, 0, 25)
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
			BTN_XD.BackgroundColor3 = _G.ColorMethod
			BTN_XD.BorderColor3 = _G.ColorMethod
			BTN_XD.BorderSizePixel = 0
			BTN_XD.AnchorPoint = Vector2.new(0.5, 0.5)
			BTN_XD.Position = UDim2.new(0.8, 0, 1.9, 0)
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



			local MheeFrameStroke = Instance.new("UIStroke")

			MheeFrameStroke.Thickness = 1
			MheeFrameStroke.Name = ""
			MheeFrameStroke.Parent = BTN_XD
			MheeFrameStroke.LineJoinMode = Enum.LineJoinMode.Round
			MheeFrameStroke.Color = _G.ColorMethod
			MheeFrameStroke.Transparency = 0.7


			local UwU = false


			OMF.MouseButton1Click:Connect(function()
				if       UwU == false  then
					TweenService:Create(
						TextButton_4_Toggle,
						TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{BackgroundColor3 =  _G.ColorMethod} -- UDim2.new(0, 128, 0, 25)
					):Play()
					TweenService:Create(
						TextButton_3_Toggle,
						TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{BackgroundColor3 =  _G.ColorMethod} -- UDim2.new(0, 128, 0, 25)
					):Play()
					TweenService:Create(
						TextButton_2_Toggle,
						TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{BackgroundColor3 =  Color3.fromRGB(153, 0, 102)} -- UDim2.new(0, 128, 0, 25)
					):Play()
					TextButton_3_Toggle:TweenSizeAndPosition(UDim2.new(0, 19, 0, 19), UDim2.new(1, 0, 0.5, 0), "Out", "Quad", 0.3, true)
				else
					TweenService:Create(
						TextButton_4_Toggle,
						TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{BackgroundColor3 =  Color3.fromRGB(155, 155, 155)} -- UDim2.new(0, 128, 0, 25)
					):Play()
					TweenService:Create(
						TextButton_3_Toggle,
						TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{BackgroundColor3 =  Color3.fromRGB(255, 255, 255)} -- UDim2.new(0, 128, 0, 25)
					):Play()
					TweenService:Create(
						TextButton_2_Toggle,
						TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{BackgroundColor3 =  Color3.fromRGB(155, 155, 155)} -- UDim2.new(0, 128, 0, 25)
					):Play()
					TextButton_3_Toggle:TweenSizeAndPosition(UDim2.new(0, 19, 0, 19), UDim2.new(0.1, 0, 0.5, 0), "Out", "Quad", 0.3, true)
				end
				UwU = not UwU
			end
		)


		OMF.MouseEnter:Connect(function()
				TweenService:Create(
					TextButton_4_Toggle,
					TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
					{BackgroundTransparency = 0.6} -- UDim2.new(0, 128, 0, 25)
				):Play()
			end
		)

		OMF.MouseLeave:Connect(function()
				TweenService:Create(
					TextButton_4_Toggle,
					TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
					{BackgroundTransparency = 1} -- UDim2.new(0, 128, 0, 25)
				):Play()
			end
		)

		OMF.MouseButton1Down:Connect(
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
			TextButton_3_Toggle.MouseButton1Down:Connect(
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
						{Size = UDim2.new(0, 213, 0, 180)}
					):Play()
				else
					TweenService:Create(
						Pixker,
						TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{Size = UDim2.new(0, 213, 0, 33)}
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
							{Size = UDim2.new(0, 213, 0, 33)}
						):Play()
						sk = not sk
					end
				)


			end
			function items:Label(text,image)
				if image == nil then
					image = logoid
				end
				local labaelchange = {}
				local LabelFrame = Instance.new("Frame")


				LabelFrame.Name = "Mainframenoti"
				LabelFrame.Parent = ScrollingFrame_Pageframe
				LabelFrame.BackgroundColor3 = Color3.fromRGB(23, 23, 23)
				LabelFrame.BackgroundTransparency = 0
				LabelFrame.BorderSizePixel = 0
				LabelFrame.ClipsDescendants = false
				LabelFrame.AnchorPoint = Vector2.new(0.5, 0.5)
				LabelFrame.Position = UDim2.new(0.498, 0, 0.5, 0)
				LabelFrame.Size = UDim2.new(0, 213, 0, 28)

				local LabelFarm2 = Instance.new("TextLabel")

				LabelFarm2.Parent = LabelFrame
				LabelFarm2.Name = "TextLabel_Tap"
				LabelFarm2.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
				LabelFarm2.Size =UDim2.new(0, 130, 0,24 )
				LabelFarm2.Font = Enum.Font.SourceSansSemibold
				LabelFarm2.Text = text
				LabelFarm2.TextColor3 = Color3.fromRGB(255, 255, 255)
				LabelFarm2.TextSize = 12.000
				LabelFarm2.AnchorPoint = Vector2.new(0.5, 0.5)
				LabelFarm2.Position = UDim2.new(0.5, 0, 0.5, 0)
				LabelFarm2.TextXAlignment = Enum.TextXAlignment.Center
				LabelFarm2.BackgroundTransparency = 1
				LabelFarm2.TextWrapped = true

				local ImageLabel_gx = Instance.new("ImageLabel")

				ImageLabel_gx.Parent = LabelFrame
				ImageLabel_gx.BackgroundTransparency = 1.000
				ImageLabel_gx.BorderSizePixel = 0
				ImageLabel_gx.Size = UDim2.new(0,15, 0, 15)
				ImageLabel_gx.AnchorPoint = Vector2.new(0.5, 0.5)
				ImageLabel_gx.Position = UDim2.new(0.1, 0, 0.50, 0)
				ImageLabel_gx.Image = "http://www.roblox.com/asset/?id="..tostring(7040410130)
				ImageLabel_gx.BackgroundTransparency = 1

				local noticore55 = Instance.new("UICorner")

				noticore55.CornerRadius = UDim.new(0, 4)
				noticore55.Name = ""
				noticore55.Parent = LabelFarm2

				local noticore2777 = Instance.new("UICorner")

				noticore2777.CornerRadius = UDim.new(0, 4)
				noticore2777.Name = ""
				noticore2777.Parent = LabelFrame

				local LabelStroke = Instance.new("UIStroke")

				LabelStroke.Thickness = 1
				LabelStroke.Name = ""
				LabelStroke.Parent = LabelFrame
				LabelStroke.LineJoinMode = Enum.LineJoinMode.Round
				LabelStroke.Color = _G.ColorMethod
				LabelStroke.Transparency = 0.7

				LabelFrame.MouseEnter:Connect(function()
					TweenService:Create(
						LabelStroke,
						TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{Transparency =0}
					):Play()
				end
			)
				LabelFrame.MouseLeave:Connect(function()
					TweenService:Create(
						LabelStroke,
						TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{Transparency =0.7}
					):Play()
				end
			)
				function labaelchange:Change(text2)
					LabelFarm2.Text = text2
				end
				return  labaelchange
			end
			return  items
			end
		return  page
		end
	return top
	end
    if game.PlaceId == 2753915549 then
        World1 = true
    elseif game.PlaceId == 4442272183 then
        World2 = true
    elseif game.PlaceId == 7449423635 then
        World3 = true
    end
    
    function CheckQuest() 
        local MyLevel = game:GetService("Players").LocalPlayer.Data.Level.Value
        if World1 then
            if MyLevel == 1 or MyLevel <= 9 then
                Mon = "Bandit [Lv. 5]"
                LevelQuest = 1
                NameQuest = "BanditQuest1"
                NameMon = "Bandit"
                CFrameQuest = CFrame.new(1059.37195, 15.4495068, 1550.4231, 0.939700544, -0, -0.341998369, 0, 1, -0, 0.341998369, 0, 0.939700544)
                CFrameMon = CFrame.new(1045.962646484375, 27.00250816345215, 1560.8203125)

                CheckMon1 = CFrame.new(971.873962, 31.9546661, 1562.98059, 0.0875590593, 0, 0.996159315, 0, 1, 0, -0.996159315, 0, 0.0875590593)
                CheckMon2 = CFrame.new(1135.16931, 21.2259197, 1613.34119, -0.206625402, -1.96702015e-08, -0.978420138, -3.26833884e-08, 1, -1.32018778e-08, 0.978420138, 2.92502413e-08, -0.206625402)
                CheckMon3 = CFrame.new(1262.35876, 17.5764179, 1605.62146, -0.576178133, -2.32247874e-08, -0.817324162, -5.99842309e-08, 1, 1.38706433e-08, 0.817324162, 5.70185179e-08, -0.576178133)
                CheckMon4 = CFrame.new(1250.03601, 35.711277, 1552.29016, 0.986919999, -8.53766764e-08, -0.161210641, 8.88896565e-08, 1, 1.45790882e-08, 0.161210641, -2.87183521e-08, 0.986919999)
                CheckMon5 = CFrame.new(1324.23889, 34.8984566, 1527.25293, 0.432903767, -3.0906083e-08, -0.901440144, 5.80232573e-08, 1, -6.42039e-09, 0.901440144, -4.95250845e-08, 0.432903767)
                CheckMon6 = CFrame.new(1240.6604, 34.9283485, 1649.90137, -0.203074843, 3.62875525e-08, 0.979163229, -7.5253844e-08, 1, -5.26671258e-08, -0.979163229, -8.43811634e-08, -0.203074843)
			elseif MyLevel == 10 or MyLevel <= 14 then
				Mon = "Monkey [Lv. 14]"
				LevelQuest = 1
				NameQuest = "JungleQuest"
				NameMon = "Monkey"
				CFrameQuest = CFrame.new(-1598.08911, 35.5501175, 153.377838, 0, 0, 1, 0, 1, -0, -1, 0, 0)
				CFrameMon = CFrame.new(-1448.51806640625, 67.85301208496094, 11.46579647064209)

				CheckMon1 = CFrame.new()
				CheckMon2 = CFrame.new()
				CheckMon3 = CFrame.new()
				CheckMon4 = CFrame.new()
				CheckMon5 = CFrame.new()
				CheckMon6 = CFrame.new()
			elseif MyLevel == 15 or MyLevel <= 29 then
				Mon = "Gorilla [Lv. 20]"
				LevelQuest = 2
				NameQuest = "JungleQuest"
				NameMon = "Gorilla"
				CFrameQuest = CFrame.new(-1598.08911, 35.5501175, 153.377838, 0, 0, 1, 0, 1, -0, -1, 0, 0)
				CFrameMon = CFrame.new(-1129.8836669921875, 40.46354675292969, -525.4237060546875)

				CheckMon1 = CFrame.new()
				CheckMon2 = CFrame.new()
				CheckMon3 = CFrame.new()
				CheckMon4 = CFrame.new()
				CheckMon5 = CFrame.new()
				CheckMon6 = CFrame.new()
			elseif MyLevel == 30 or MyLevel <= 39 then
				Mon = "Pirate [Lv. 35]"
				LevelQuest = 1
				NameQuest = "BuggyQuest1"
				NameMon = "Pirate"
				CFrameQuest = CFrame.new(-1141.07483, 4.10001802, 3831.5498, 0.965929627, -0, -0.258804798, 0, 1, -0, 0.258804798, 0, 0.965929627)
				CFrameMon = CFrame.new(-1103.513427734375, 13.752052307128906, 3896.091064453125)

				CheckMon1 = CFrame.new()
				CheckMon2 = CFrame.new()
				CheckMon3 = CFrame.new()
				CheckMon4 = CFrame.new()
				CheckMon5 = CFrame.new()
				CheckMon6 = CFrame.new()
			elseif MyLevel == 40 or MyLevel <= 59 then
				Mon = "Brute [Lv. 45]"
				LevelQuest = 2
				NameQuest = "BuggyQuest1"
				NameMon = "Brute"
				CFrameQuest = CFrame.new(-1141.07483, 4.10001802, 3831.5498, 0.965929627, -0, -0.258804798, 0, 1, -0, 0.258804798, 0, 0.965929627)
				CFrameMon = CFrame.new(-1140.083740234375, 14.809885025024414, 4322.92138671875)

				CheckMon1 = CFrame.new()
				CheckMon2 = CFrame.new()
				CheckMon3 = CFrame.new()
				CheckMon4 = CFrame.new()
				CheckMon5 = CFrame.new()
				CheckMon6 = CFrame.new()	
			elseif MyLevel == 60 or MyLevel <= 74 then
				Mon = "Desert Bandit [Lv. 60]"
				LevelQuest = 1
				NameQuest = "DesertQuest"
				NameMon = "Desert Bandit"
				CFrameQuest = CFrame.new(894.488647, 5.14000702, 4392.43359, 0.819155693, -0, -0.573571265, 0, 1, -0, 0.573571265, 0, 0.819155693)
				CFrameMon = CFrame.new(924.7998046875, 6.44867467880249, 4481.5859375)

				CheckMon1 = CFrame.new(1001.05511, 7.56507349, 4488.61133, 0.573598742, 0, 0.81913656, 0, 1, 0, -0.81913656, 0, 0.573598742)
				CheckMon2 = CFrame.new(937.035278, 7.56507301, 4428.8291, 0.573598742, 0, 0.81913656, 0, 1, 0, -0.81913656, 0, 0.573598742)
				CheckMon3 = CFrame.new(859.81543, 7.56507301, 4488.05957, 0.642763317, -0, -0.766064942, 0, 1, -0, 0.766064942, 0, 0.642763317)
				CheckMon4 = CFrame.new(931.704895, 7.56507301, 4534.03271, 1, 0, 0, 0, 1, 0, 0, 0, 1)
				CheckMon5 = CFrame.new(1001.05511, 7.56507349, 4488.61133, 0.573598742, 0, 0.81913656, 0, 1, 0, -0.81913656, 0, 0.573598742)
				CheckMon6 = CFrame.new(937.035278, 7.56507301, 4428.8291, 0.573598742, 0, 0.81913656, 0, 1, 0, -0.81913656, 0, 0.573598742)
			elseif MyLevel == 75 or MyLevel <= 89 then
				Mon = "Desert Officer [Lv. 70]"
				LevelQuest = 2
				NameQuest = "DesertQuest"
				NameMon = "Desert Officer"
				CFrameQuest = CFrame.new(894.488647, 5.14000702, 4392.43359, 0.819155693, -0, -0.573571265, 0, 1, -0, 0.573571265, 0, 0.819155693)
				CFrameMon = CFrame.new(1608.65503, 9.53006077, 4370.19971, -0.14646633, -6.53534227e-10, -0.989215672, -3.29505205e-08, 1, 4.21809698e-09, 0.989215672, 3.32129808e-08, -0.14646633)

				CheckMon1 = CFrame.new(1655.32104, 28.9763756, 4322.92578, 0.707081854, 1.27633981e-09, -0.707131743, -2.48295828e-09, 1, -6.77829681e-10, 0.707131743, 2.23505969e-09, 0.707081854)
				CheckMon2 = CFrame.new(1575.40784, 10.9427614, 4301.3877, -0.954208374, 4.54883287e-09, -0.299142689, 1.74838699e-09, 1, 9.62920854e-09, 0.299142689, 8.66525429e-09, -0.954208374)
				CheckMon3 = CFrame.new(1661.37219, 29.2129154, 4388.53906, -0.628513455, -1.06301513e-07, -0.777798712, -1.01427887e-07, 1, -5.47091652e-08, 0.777798712, 4.45050325e-08, -0.628513455)
				CheckMon4 = CFrame.new(1612.43079, 16.8807621, 4458.51172, -0.984312177, 7.45605089e-09, -0.176435664, -1.48898494e-08, 1, 1.25327901e-07, 0.176435664, 1.25988876e-07, -0.984312177)
				CheckMon5 = CFrame.new(1572.42615, 22.6353397, 4317.42285, 0.869487703, -3.5616432e-09, 0.493954629, 1.15326539e-08, 1, -1.30899824e-08, -0.493954629, 1.7078186e-08, 0.869487703)
				CheckMon6 = CFrame.new(1649.80396, 29.6709919, 4325.14551, 0.854436159, 4.76128612e-08, 0.519556403, -3.64758037e-08, 1, -3.16551088e-08, -0.519556403, 8.0960314e-09, 0.854436159)
			elseif MyLevel == 90 or MyLevel <= 99 then
				Mon = "Snow Bandit [Lv. 90]"
				LevelQuest = 1
				NameQuest = "SnowQuest"
				NameMon = "Snow Bandit"
				CFrameQuest = CFrame.new(1389.74451, 88.1519318, -1298.90796, -0.342042685, 0, 0.939684391, 0, 1, 0, -0.939684391, 0, -0.342042685)
				CFrameMon = CFrame.new(1354.347900390625, 87.27277374267578, -1393.946533203125)

				CheckMon1 = CFrame.new(1316.16284, 88.7900314, -1396.52441, -0.707134247, 0, -0.707079291, 0, 1, 0, 0.707079291, 0, -0.707134247)
				CheckMon2 = CFrame.new(1458.70764, 88.7900314, -1447.14978, -0.707134247, 0, 0.707079291, 0, 1, 0, -0.707079291, 0, -0.707134247)
				CheckMon3 = CFrame.new(1273.7478, 88.7900314, -1345.84009, 0.707134247, -0, -0.707079291, 0, 1, -0, 0.707079291, 0, 0.707134247)
				CheckMon4 = CFrame.new(1199.32764, 88.7900314, -1329.0376, -1, 0, 0, 0, 1, 0, 0, 0, -1)
				CheckMon5 = CFrame.new(1381.32471, 88.7900314, -1464.94336, -0.965929747, 0, 0.258804798, 0, 1, 0, -0.258804798, 0, -0.965929747)
                CheckMon6 = CFrame.new(1316.16284, 88.7900314, -1396.52441, -0.707134247, 0, -0.707079291, 0, 1, 0, 0.707079291, 0, -0.707134247)
            elseif MyLevel == 100 or MyLevel <= 119 then
                Mon = "Snowman [Lv. 100]"
                LevelQuest = 2
                NameQuest = "SnowQuest"
                NameMon = "Snowman"
                CFrameQuest = CFrame.new(1389.74451, 88.1519318, -1298.90796, -0.342042685, 0, 0.939684391, 0, 1, 0, -0.939684391, 0, -0.342042685)
                CFrameMon = CFrame.new(1201.6412353515625, 144.57958984375, -1550.0670166015625)

				CheckMon1 = CFrame.new(1265.48938, 106.809998, -1483.4198, 0, 0, 1, 0, 1, -0, -1, 0, 0)
				CheckMon2 = CFrame.new(1035.97852, 106.809998, -1489.35962, -0.707134247, 0, 0.707079291, 0, 1, 0, -0.707079291, 0, -0.707134247)
				CheckMon3 = CFrame.new(1190.08936, 106.809998, -1626.58069, 0, 0, -1, 0, 1, 0, 1, 0, 0)
				CheckMon4 = CFrame.new(1265.48938, 106.809998, -1483.4198, 0, 0, 1, 0, 1, -0, -1, 0, 0)
				CheckMon5 = CFrame.new(1035.97852, 106.809998, -1489.35962, -0.707134247, 0, 0.707079291, 0, 1, 0, -0.707079291, 0, -0.707134247)
                CheckMon6 = CFrame.new(1190.08936, 106.809998, -1626.58069, 0, 0, -1, 0, 1, 0, 1, 0, 0)
            elseif MyLevel == 120 or MyLevel <= 149 then
                Mon = "Chief Petty Officer [Lv. 120]"
                LevelQuest = 1
                NameQuest = "MarineQuest2"
                NameMon = "Chief Petty Officer"
                CFrameQuest = CFrame.new(-5039.58643, 27.3500385, 4324.68018, 0, 0, -1, 0, 1, 0, 1, 0, 0)
                CFrameMon = CFrame.new(-4881.23095703125, 22.65204429626465, 4273.75244140625)

				CheckMon1 = CFrame.new()
				CheckMon2 = CFrame.new()
				CheckMon3 = CFrame.new()
				CheckMon4 = CFrame.new()
				CheckMon5 = CFrame.new()
                CheckMon6 = CFrame.new()
            elseif MyLevel == 150 or MyLevel <= 174 then
                Mon = "Sky Bandit [Lv. 150]"
                LevelQuest = 1
                NameQuest = "SkyQuest"
                NameMon = "Sky Bandit"
                CFrameQuest = CFrame.new(-4839.53027, 716.368591, -2619.44165, 0.866007268, 0, 0.500031412, 0, 1, 0, -0.500031412, 0, 0.866007268)
                CFrameMon = CFrame.new(-4953.20703125, 295.74420166015625, -2899.22900390625)

				CheckMon1 = CFrame.new()
				CheckMon2 = CFrame.new()
				CheckMon3 = CFrame.new()
				CheckMon4 = CFrame.new()
				CheckMon5 = CFrame.new()
                CheckMon6 = CFrame.new()
            elseif MyLevel == 175 or MyLevel <= 189 then
                Mon = "Dark Master [Lv. 175]"
                LevelQuest = 2
                NameQuest = "SkyQuest"
                NameMon = "Dark Master"
                CFrameQuest = CFrame.new(-4839.53027, 716.368591, -2619.44165, 0.866007268, 0, 0.500031412, 0, 1, 0, -0.500031412, 0, 0.866007268)
                CFrameMon = CFrame.new(-5259.8447265625, 391.3976745605469, -2229.035400390625)

				CheckMon1 = CFrame.new()
				CheckMon2 = CFrame.new()
				CheckMon3 = CFrame.new()
				CheckMon4 = CFrame.new()
				CheckMon5 = CFrame.new()
                CheckMon6 = CFrame.new()
            elseif MyLevel == 190 or MyLevel <= 209 then
                Mon = "Prisoner [Lv. 190]"
                LevelQuest = 1
                NameQuest = "PrisonerQuest"
                NameMon = "Prisoner"
                CFrameQuest = CFrame.new(5308.93115, 1.65517521, 475.120514, -0.0894274712, -5.00292918e-09, -0.995993316, 1.60817859e-09, 1, -5.16744869e-09, 0.995993316, -2.06384709e-09, -0.0894274712)
                CFrameMon = CFrame.new(5098.9736328125, -0.3204058110713959, 474.2373352050781)

				CheckMon1 = CFrame.new()
				CheckMon2 = CFrame.new()
				CheckMon3 = CFrame.new()
				CheckMon4 = CFrame.new()
				CheckMon5 = CFrame.new()
                CheckMon6 = CFrame.new()
            elseif MyLevel == 210 or MyLevel <= 249 then
                Mon = "Dangerous Prisoner [Lv. 210]"
                LevelQuest = 2
                NameQuest = "PrisonerQuest"
                NameMon = "Dangerous Prisoner"
                CFrameQuest = CFrame.new(5308.93115, 1.65517521, 475.120514, -0.0894274712, -5.00292918e-09, -0.995993316, 1.60817859e-09, 1, -5.16744869e-09, 0.995993316, -2.06384709e-09, -0.0894274712)
                CFrameMon = CFrame.new(5654.5634765625, 15.633401870727539, 866.2991943359375)

				CheckMon1 = CFrame.new()
				CheckMon2 = CFrame.new()
				CheckMon3 = CFrame.new()
				CheckMon4 = CFrame.new()
				CheckMon5 = CFrame.new()
                CheckMon6 = CFrame.new()
            elseif MyLevel == 250 or MyLevel <= 274 then
                Mon = "Toga Warrior [Lv. 250]"
                LevelQuest = 1
                NameQuest = "ColosseumQuest"
                NameMon = "Toga Warrior"
                CFrameQuest = CFrame.new(-1580.04663, 6.35000277, -2986.47534, -0.515037298, 0, -0.857167721, 0, 1, 0, 0.857167721, 0, -0.515037298)
                CFrameMon = CFrame.new(-1820.21484375, 51.68385696411133, -2740.6650390625)

				CheckMon1 = CFrame.new()
				CheckMon2 = CFrame.new()
				CheckMon3 = CFrame.new()
				CheckMon4 = CFrame.new()
				CheckMon5 = CFrame.new()
                CheckMon6 = CFrame.new()
            elseif MyLevel == 275 or MyLevel <= 299 then
                Mon = "Gladiator [Lv. 275]"
                LevelQuest = 2
                NameQuest = "ColosseumQuest"
                NameMon = "Gladiator"
                CFrameQuest = CFrame.new(-1580.04663, 6.35000277, -2986.47534, -0.515037298, 0, -0.857167721, 0, 1, 0, 0.857167721, 0, -0.515037298)
                CFrameMon = CFrame.new(-1292.838134765625, 56.380882263183594, -3339.031494140625)

				CheckMon1 = CFrame.new()
				CheckMon2 = CFrame.new()
				CheckMon3 = CFrame.new()
				CheckMon4 = CFrame.new()
				CheckMon5 = CFrame.new()
                CheckMon6 = CFrame.new()
            elseif MyLevel == 300 or MyLevel <= 324 then
                Mon = "Military Soldier [Lv. 300]"
                LevelQuest = 1
                NameQuest = "MagmaQuest"
                NameMon = "Military Soldier"
                CFrameQuest = CFrame.new(-5313.37012, 10.9500084, 8515.29395, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469)
                CFrameMon = CFrame.new(-5411.16455078125, 11.081554412841797, 8454.29296875)

				CheckMon1 = CFrame.new()
				CheckMon2 = CFrame.new()
				CheckMon3 = CFrame.new()
				CheckMon4 = CFrame.new()
				CheckMon5 = CFrame.new()
                CheckMon6 = CFrame.new()
            elseif MyLevel == 325 or MyLevel <= 374 then
                Mon = "Military Spy [Lv. 325]"
                LevelQuest = 2
                NameQuest = "MagmaQuest"
                NameMon = "Military Spy"
                CFrameQuest = CFrame.new(-5313.37012, 10.9500084, 8515.29395, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469)
                CFrameMon = CFrame.new(-5802.8681640625, 86.26241302490234, 8828.859375)

				CheckMon1 = CFrame.new()
				CheckMon2 = CFrame.new()
				CheckMon3 = CFrame.new()
				CheckMon4 = CFrame.new()
				CheckMon5 = CFrame.new()
                CheckMon6 = CFrame.new()
            elseif MyLevel == 375 or MyLevel <= 399 then
                Mon = "Fishman Warrior [Lv. 375]"
                LevelQuest = 1
                NameQuest = "FishmanQuest"
                NameMon = "Fishman Warrior"
                CFrameQuest = CFrame.new(61122.65234375, 18.497442245483, 1569.3997802734)
                CFrameMon = CFrame.new(60878.30078125, 18.482830047607422, 1543.7574462890625)

				CheckMon1 = CFrame.new()
				CheckMon2 = CFrame.new()
				CheckMon3 = CFrame.new()
				CheckMon4 = CFrame.new()
				CheckMon5 = CFrame.new()
				CheckMon6 = CFrame.new()
                if _G.AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
                end
            elseif MyLevel == 400 or MyLevel <= 449 then
                Mon = "Fishman Commando [Lv. 400]"
                LevelQuest = 2
                NameQuest = "FishmanQuest"
                NameMon = "Fishman Commando"
                CFrameQuest = CFrame.new(61122.65234375, 18.497442245483, 1569.3997802734)
                CFrameMon = CFrame.new(61922.6328125, 18.482830047607422, 1493.934326171875)

                CheckMon1 = CFrame.new()
                CheckMon2 = CFrame.new()
                CheckMon3 = CFrame.new()
                CheckMon4 = CFrame.new()
                CheckMon5 = CFrame.new()
                CheckMon6 = CFrame.new()
                if _G.AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
                end
            elseif MyLevel == 450 or MyLevel <= 474 then
                Mon = "God's Guard [Lv. 450]"
                LevelQuest = 1
                NameQuest = "SkyExp1Quest"
                NameMon = "God's Guard"
                CFrameQuest = CFrame.new(-4721.88867, 843.874695, -1949.96643, 0.996191859, -0, -0.0871884301, 0, 1, -0, 0.0871884301, 0, 0.996191859)
                CFrameMon = CFrame.new(-4710.04296875, 845.2769775390625, -1927.3079833984375)

                CheckMon1 = CFrame.new()
                CheckMon2 = CFrame.new()
                CheckMon3 = CFrame.new()
                CheckMon4 = CFrame.new()
                CheckMon5 = CFrame.new()
                CheckMon6 = CFrame.new()
                if _G.AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-4607.82275, 872.54248, -1667.55688))
                end
            elseif MyLevel == 475 or MyLevel <= 524 then
                Mon = "Shanda [Lv. 475]"
                LevelQuest = 2
                NameQuest = "SkyExp1Quest"
                NameMon = "Shanda"
                CFrameQuest = CFrame.new(-7859.09814, 5544.19043, -381.476196, -0.422592998, 0, 0.906319618, 0, 1, 0, -0.906319618, 0, -0.422592998)
                CFrameMon = CFrame.new(-7678.48974609375, 5566.40380859375, -497.2156066894531)

                CheckMon1 = CFrame.new()
                CheckMon2 = CFrame.new()
                CheckMon3 = CFrame.new()
                CheckMon4 = CFrame.new()
                CheckMon5 = CFrame.new()
                CheckMon6 = CFrame.new()
                if _G.AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047))
                end
            elseif MyLevel == 525 or MyLevel <= 549 then
                Mon = "Royal Squad [Lv. 525]"
                LevelQuest = 1
                NameQuest = "SkyExp2Quest"
                NameMon = "Royal Squad"
                CFrameQuest = CFrame.new(-7906.81592, 5634.6626, -1411.99194, 0, 0, -1, 0, 1, 0, 1, 0, 0)
                CFrameMon = CFrame.new(-7624.25244140625, 5658.13330078125, -1467.354248046875)

                CheckMon1 = CFrame.new()
                CheckMon2 = CFrame.new()
                CheckMon3 = CFrame.new()
                CheckMon4 = CFrame.new()
                CheckMon5 = CFrame.new()
                CheckMon6 = CFrame.new()
            elseif MyLevel == 550 or MyLevel <= 624 then
                Mon = "Royal Soldier [Lv. 550]"
                LevelQuest = 2
                NameQuest = "SkyExp2Quest"
                NameMon = "Royal Soldier"
                CFrameQuest = CFrame.new(-7906.81592, 5634.6626, -1411.99194, 0, 0, -1, 0, 1, 0, 1, 0, 0)
                CFrameMon = CFrame.new(-7836.75341796875, 5645.6640625, -1790.6236572265625)

                CheckMon1 = CFrame.new()
                CheckMon2 = CFrame.new()
                CheckMon3 = CFrame.new()
                CheckMon4 = CFrame.new()
                CheckMon5 = CFrame.new()
                CheckMon6 = CFrame.new()
            elseif MyLevel == 625 or MyLevel <= 649 then
                Mon = "Galley Pirate [Lv. 625]"
                LevelQuest = 1
                NameQuest = "FountainQuest"
                NameMon = "Galley Pirate"
                CFrameQuest = CFrame.new(5259.81982, 37.3500175, 4050.0293, 0.087131381, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, 0.087131381)
                CFrameMon = CFrame.new(5551.02197265625, 78.90135192871094, 3930.412841796875)

                CheckMon1 = CFrame.new()
                CheckMon2 = CFrame.new()
                CheckMon3 = CFrame.new()
                CheckMon4 = CFrame.new()
                CheckMon5 = CFrame.new()
                CheckMon6 = CFrame.new()
            elseif MyLevel >= 650 then
                Mon = "Galley Captain [Lv. 650]"
                LevelQuest = 2
                NameQuest = "FountainQuest"
                NameMon = "Galley Captain"
                CFrameQuest = CFrame.new(5259.81982, 37.3500175, 4050.0293, 0.087131381, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, 0.087131381)
                CFrameMon = CFrame.new(5441.95166015625, 42.50205993652344, 4950.09375)

                CheckMon1 = CFrame.new()
                CheckMon2 = CFrame.new()
                CheckMon3 = CFrame.new()
                CheckMon4 = CFrame.new()
                CheckMon5 = CFrame.new()
                CheckMon6 = CFrame.new()
            end
        elseif World2 then
            if MyLevel == 700 or MyLevel <= 724 then
                Mon = "Raider [Lv. 700]"
                LevelQuest = 1
                NameQuest = "Area1Quest"
                NameMon = "Raider"
                CFrameQuest = CFrame.new(-429.543518, 71.7699966, 1836.18188, -0.22495985, 0, -0.974368095, 0, 1, 0, 0.974368095, 0, -0.22495985)
                CFrameMon = CFrame.new(-728.3267211914062, 52.779319763183594, 2345.7705078125)

                CheckMon1 = CFrame.new()
                CheckMon2 = CFrame.new()
                CheckMon3 = CFrame.new()
                CheckMon4 = CFrame.new()
                CheckMon5 = CFrame.new()
                CheckMon6 = CFrame.new()
            elseif MyLevel == 725 or MyLevel <= 774 then
                Mon = "Mercenary [Lv. 725]"
                LevelQuest = 2
                NameQuest = "Area1Quest"
                NameMon = "Mercenary"
                CFrameQuest = CFrame.new(-429.543518, 71.7699966, 1836.18188, -0.22495985, 0, -0.974368095, 0, 1, 0, 0.974368095, 0, -0.22495985)
                CFrameMon = CFrame.new(-1004.3244018554688, 80.15886688232422, 1424.619384765625)

                CheckMon1 = CFrame.new()
                CheckMon2 = CFrame.new()
                CheckMon3 = CFrame.new()
                CheckMon4 = CFrame.new()
                CheckMon5 = CFrame.new()
                CheckMon6 = CFrame.new()
            elseif MyLevel == 775 or MyLevel <= 799 then
                Mon = "Swan Pirate [Lv. 775]"
                LevelQuest = 1
                NameQuest = "Area2Quest"
                NameMon = "Swan Pirate"
                CFrameQuest = CFrame.new(638.43811, 71.769989, 918.282898, 0.139203906, 0, 0.99026376, 0, 1, 0, -0.99026376, 0, 0.139203906)
                CFrameMon = CFrame.new(1068.664306640625, 137.61428833007812, 1322.1060791015625)

                CheckMon1 = CFrame.new()
                CheckMon2 = CFrame.new()
                CheckMon3 = CFrame.new()
                CheckMon4 = CFrame.new()
                CheckMon5 = CFrame.new()
                CheckMon6 = CFrame.new()
            elseif MyLevel == 800 or MyLevel <= 874 then
                Mon = "Factory Staff [Lv. 800]"
                NameQuest = "Area2Quest"
                LevelQuest = 2
                NameMon = "Factory Staff"
                CFrameQuest = CFrame.new(632.698608, 73.1055908, 918.666321, -0.0319722369, 8.96074881e-10, -0.999488771, 1.36326533e-10, 1, 8.92172336e-10, 0.999488771, -1.07732087e-10, -0.0319722369)
                CFrameMon = CFrame.new(73.07867431640625, 81.86344146728516, -27.470672607421875)

                CheckMon1 = CFrame.new()
                CheckMon2 = CFrame.new()
                CheckMon3 = CFrame.new()
                CheckMon4 = CFrame.new()
                CheckMon5 = CFrame.new()
                CheckMon6 = CFrame.new()
            elseif MyLevel == 875 or MyLevel <= 899 then
                Mon = "Marine Lieutenant [Lv. 875]"
                LevelQuest = 1
                NameQuest = "MarineQuest3"
                NameMon = "Marine Lieutenant"
                CFrameQuest = CFrame.new(-2440.79639, 71.7140732, -3216.06812, 0.866007268, 0, 0.500031412, 0, 1, 0, -0.500031412, 0, 0.866007268)
                CFrameMon = CFrame.new(-2821.372314453125, 75.89727783203125, -3070.089111328125)

                CheckMon1 = CFrame.new()
                CheckMon2 = CFrame.new()
                CheckMon3 = CFrame.new()
                CheckMon4 = CFrame.new()
                CheckMon5 = CFrame.new()
                CheckMon6 = CFrame.new()
            elseif MyLevel == 900 or MyLevel <= 949 then
                Mon = "Marine Captain [Lv. 900]"
                LevelQuest = 2
                NameQuest = "MarineQuest3"
                NameMon = "Marine Captain"
                CFrameQuest = CFrame.new(-2440.79639, 71.7140732, -3216.06812, 0.866007268, 0, 0.500031412, 0, 1, 0, -0.500031412, 0, 0.866007268)
                CFrameMon = CFrame.new(-1861.2310791015625, 80.17658233642578, -3254.697509765625)

                CheckMon1 = CFrame.new()
                CheckMon2 = CFrame.new()
                CheckMon3 = CFrame.new()
                CheckMon4 = CFrame.new()
                CheckMon5 = CFrame.new()
                CheckMon6 = CFrame.new()
            elseif MyLevel == 950 or MyLevel <= 974 then
                Mon = "Zombie [Lv. 950]"
                LevelQuest = 1
                NameQuest = "ZombieQuest"
                NameMon = "Zombie"
                CFrameQuest = CFrame.new(-5497.06152, 47.5923004, -795.237061, -0.29242146, 0, -0.95628953, 0, 1, 0, 0.95628953, 0, -0.29242146)
                CFrameMon = CFrame.new(-5657.77685546875, 78.96973419189453, -928.68701171875)

                CheckMon1 = CFrame.new()
                CheckMon2 = CFrame.new()
                CheckMon3 = CFrame.new()
                CheckMon4 = CFrame.new()
                CheckMon5 = CFrame.new()
                CheckMon6 = CFrame.new()
            elseif MyLevel == 975 or MyLevel <= 999 then
                Mon = "Vampire [Lv. 975]"
                LevelQuest = 2
                NameQuest = "ZombieQuest"
                NameMon = "Vampire"
                CFrameQuest = CFrame.new(-5497.06152, 47.5923004, -795.237061, -0.29242146, 0, -0.95628953, 0, 1, 0, 0.95628953, 0, -0.29242146)
                CFrameMon = CFrame.new(-6037.66796875, 32.18463897705078, -1340.6597900390625)

                CheckMon1 = CFrame.new()
                CheckMon2 = CFrame.new()
                CheckMon3 = CFrame.new()
                CheckMon4 = CFrame.new()
                CheckMon5 = CFrame.new()
                CheckMon6 = CFrame.new()
            elseif MyLevel == 1000 or MyLevel <= 1049 then
                Mon = "Snow Trooper [Lv. 1000]"
                LevelQuest = 1
                NameQuest = "SnowMountainQuest"
                NameMon = "Snow Trooper"
                CFrameQuest = CFrame.new(609.858826, 400.119904, -5372.25928, -0.374604106, 0, 0.92718488, 0, 1, 0, -0.92718488, 0, -0.374604106)
                CFrameMon = CFrame.new(549.1473388671875, 427.3870544433594, -5563.69873046875)

                CheckMon1 = CFrame.new()
                CheckMon2 = CFrame.new()
                CheckMon3 = CFrame.new()
                CheckMon4 = CFrame.new()
                CheckMon5 = CFrame.new()
                CheckMon6 = CFrame.new()
            elseif MyLevel == 1050 or MyLevel <= 1099 then
                Mon = "Winter Warrior [Lv. 1050]"
                LevelQuest = 2
                NameQuest = "SnowMountainQuest"
                NameMon = "Winter Warrior"
                CFrameQuest = CFrame.new(609.858826, 400.119904, -5372.25928, -0.374604106, 0, 0.92718488, 0, 1, 0, -0.92718488, 0, -0.374604106)
                CFrameMon = CFrame.new(1142.7451171875, 475.6398010253906, -5199.41650390625)

                CheckMon1 = CFrame.new()
                CheckMon2 = CFrame.new()
                CheckMon3 = CFrame.new()
                CheckMon4 = CFrame.new()
                CheckMon5 = CFrame.new()
                CheckMon6 = CFrame.new()
            elseif MyLevel == 1100 or MyLevel <= 1124 then
                Mon = "Lab Subordinate [Lv. 1100]"
                LevelQuest = 1
                NameQuest = "IceSideQuest"
                NameMon = "Lab Subordinate"
                CFrameQuest = CFrame.new(-6064.06885, 15.2422857, -4902.97852, 0.453972578, -0, -0.891015649, 0, 1, -0, 0.891015649, 0, 0.453972578)
                CFrameMon = CFrame.new(-5707.4716796875, 15.951709747314453, -4513.39208984375)

                CheckMon1 = CFrame.new()
                CheckMon2 = CFrame.new()
                CheckMon3 = CFrame.new()
                CheckMon4 = CFrame.new()
                CheckMon5 = CFrame.new()
                CheckMon6 = CFrame.new()
            elseif MyLevel == 1125 or MyLevel <= 1174 then
                Mon = "Horned Warrior [Lv. 1125]"
                LevelQuest = 2
                NameQuest = "IceSideQuest"
                NameMon = "Horned Warrior"
                CFrameQuest = CFrame.new(-6064.06885, 15.2422857, -4902.97852, 0.453972578, -0, -0.891015649, 0, 1, -0, 0.891015649, 0, 0.453972578)
                CFrameMon = CFrame.new(-6341.36669921875, 15.951770782470703, -5723.162109375)

                CheckMon1 = CFrame.new()
                CheckMon2 = CFrame.new()
                CheckMon3 = CFrame.new()
                CheckMon4 = CFrame.new()
                CheckMon5 = CFrame.new()
                CheckMon6 = CFrame.new()
            elseif MyLevel == 1175 or MyLevel <= 1199 then
                Mon = "Magma Ninja [Lv. 1175]"
                LevelQuest = 1
                NameQuest = "FireSideQuest"
                NameMon = "Magma Ninja"
                CFrameQuest = CFrame.new(-5428.03174, 15.0622921, -5299.43457, -0.882952213, 0, 0.469463557, 0, 1, 0, -0.469463557, 0, -0.882952213)
                CFrameMon = CFrame.new(-5449.6728515625, 76.65874481201172, -5808.20068359375)

                CheckMon1 = CFrame.new()
                CheckMon2 = CFrame.new()
                CheckMon3 = CFrame.new()
                CheckMon4 = CFrame.new()
                CheckMon5 = CFrame.new()
                CheckMon6 = CFrame.new()
            elseif MyLevel == 1200 or MyLevel <= 1249 then
                Mon = "Lava Pirate [Lv. 1200]"
                LevelQuest = 2
                NameQuest = "FireSideQuest"
                NameMon = "Lava Pirate"
                CFrameQuest = CFrame.new(-5428.03174, 15.0622921, -5299.43457, -0.882952213, 0, 0.469463557, 0, 1, 0, -0.469463557, 0, -0.882952213)
                CFrameMon = CFrame.new(-5213.33154296875, 49.73788070678711, -4701.451171875)

                CheckMon1 = CFrame.new()
                CheckMon2 = CFrame.new()
                CheckMon3 = CFrame.new()
                CheckMon4 = CFrame.new()
                CheckMon5 = CFrame.new()
                CheckMon6 = CFrame.new()
            elseif MyLevel == 1250 or MyLevel <= 1274 then
                Mon = "Ship Deckhand [Lv. 1250]"
                LevelQuest = 1
                NameQuest = "ShipQuest1"
                NameMon = "Ship Deckhand"
                CFrameQuest = CFrame.new(1037.80127, 125.092171, 32911.6016)         
                CFrameMon = CFrame.new(1212.0111083984375, 150.79205322265625, 33059.24609375)  
                
                CheckMon1 = CFrame.new()
                CheckMon2 = CFrame.new()
                CheckMon3 = CFrame.new()
                CheckMon4 = CFrame.new()
                CheckMon5 = CFrame.new()
                CheckMon6 = CFrame.new()
                if _G.AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
                end
            elseif MyLevel == 1275 or MyLevel <= 1299 then
                Mon = "Ship Engineer [Lv. 1275]"
                LevelQuest = 2
                NameQuest = "ShipQuest1"
                NameMon = "Ship Engineer"
                CFrameQuest = CFrame.new(1037.80127, 125.092171, 32911.6016)   
                CFrameMon = CFrame.new(919.4786376953125, 43.54401397705078, 32779.96875)

                CheckMon1 = CFrame.new()
                CheckMon2 = CFrame.new()
                CheckMon3 = CFrame.new()
                CheckMon4 = CFrame.new()
                CheckMon5 = CFrame.new()
                CheckMon6 = CFrame.new()  
                if _G.AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
                end             
            elseif MyLevel == 1300 or MyLevel <= 1324 then
                Mon = "Ship Steward [Lv. 1300]"
                LevelQuest = 1
                NameQuest = "ShipQuest2"
                NameMon = "Ship Steward"
                CFrameQuest = CFrame.new(968.80957, 125.092171, 33244.125)         
                CFrameMon = CFrame.new(919.4385375976562, 129.55599975585938, 33436.03515625)      

                CheckMon1 = CFrame.new()
                CheckMon2 = CFrame.new()
                CheckMon3 = CFrame.new()
                CheckMon4 = CFrame.new()
                CheckMon5 = CFrame.new()
                CheckMon6 = CFrame.new()
                if _G.AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
                end
            elseif MyLevel == 1325 or MyLevel <= 1349 then
                Mon = "Ship Officer [Lv. 1325]"
                LevelQuest = 2
                NameQuest = "ShipQuest2"
                NameMon = "Ship Officer"
                CFrameQuest = CFrame.new(968.80957, 125.092171, 33244.125)
                CFrameMon = CFrame.new(1036.0179443359375, 181.4390411376953, 33315.7265625)

                CheckMon1 = CFrame.new()
                CheckMon2 = CFrame.new()
                CheckMon3 = CFrame.new()
                CheckMon4 = CFrame.new()
                CheckMon5 = CFrame.new()
                CheckMon6 = CFrame.new()
                if _G.AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
                end
            elseif MyLevel == 1350 or MyLevel <= 1374 then
                Mon = "Arctic Warrior [Lv. 1350]"
                LevelQuest = 1
                NameQuest = "FrostQuest"
                NameMon = "Arctic Warrior"
                CFrameQuest = CFrame.new(5667.6582, 26.7997818, -6486.08984, -0.933587909, 0, -0.358349502, 0, 1, 0, 0.358349502, 0, -0.933587909)
                CFrameMon = CFrame.new(5966.24609375, 62.97002029418945, -6179.3828125)

                CheckMon1 = CFrame.new()
                CheckMon2 = CFrame.new()
                CheckMon3 = CFrame.new()
                CheckMon4 = CFrame.new()
                CheckMon5 = CFrame.new()
                CheckMon6 = CFrame.new()
                if _G.AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-6508.5581054688, 5000.034996032715, -132.83953857422))
                end
            elseif MyLevel == 1375 or MyLevel <= 1424 then
                Mon = "Snow Lurker [Lv. 1375]"
                LevelQuest = 2
                NameQuest = "FrostQuest"
                NameMon = "Snow Lurker"
                CFrameQuest = CFrame.new(5667.6582, 26.7997818, -6486.08984, -0.933587909, 0, -0.358349502, 0, 1, 0, 0.358349502, 0, -0.933587909)
                CFrameMon = CFrame.new(5407.07373046875, 69.19437408447266, -6880.88037109375)

                CheckMon1 = CFrame.new()
                CheckMon2 = CFrame.new()
                CheckMon3 = CFrame.new()
                CheckMon4 = CFrame.new()
                CheckMon5 = CFrame.new()
                CheckMon6 = CFrame.new()
            elseif MyLevel == 1425 or MyLevel <= 1449 then
                Mon = "Sea Soldier [Lv. 1425]"
                LevelQuest = 1
                NameQuest = "ForgottenQuest"
                NameMon = "Sea Soldier"
                CFrameQuest = CFrame.new(-3054.44458, 235.544281, -10142.8193, 0.990270376, -0, -0.13915664, 0, 1, -0, 0.13915664, 0, 0.990270376)
                CFrameMon = CFrame.new(-3028.2236328125, 64.67451477050781, -9775.4267578125)

                CheckMon1 = CFrame.new()
                CheckMon2 = CFrame.new()
                CheckMon3 = CFrame.new()
                CheckMon4 = CFrame.new()
                CheckMon5 = CFrame.new()
                CheckMon6 = CFrame.new()
            elseif MyLevel >= 1450 then
                Mon = "Water Fighter [Lv. 1450]"
                LevelQuest = 2
                NameQuest = "ForgottenQuest"
                NameMon = "Water Fighter"
                CFrameQuest = CFrame.new(-3054.44458, 235.544281, -10142.8193, 0.990270376, -0, -0.13915664, 0, 1, -0, 0.13915664, 0, 0.990270376)
                CFrameMon = CFrame.new(-3352.9013671875, 285.01556396484375, -10534.841796875)

                CheckMon1 = CFrame.new()
                CheckMon2 = CFrame.new()
                CheckMon3 = CFrame.new()
                CheckMon4 = CFrame.new()
                CheckMon5 = CFrame.new()
                CheckMon6 = CFrame.new()
            end
        elseif World3 then
            if MyLevel == 1500 or MyLevel <= 1524 then
                Mon = "Pirate Millionaire [Lv. 1500]"
                LevelQuest = 1
                NameQuest = "PiratePortQuest"
                NameMon = "Pirate Millionaire"
                CFrameQuest = CFrame.new(-290.074677, 42.9034653, 5581.58984, 0.965929627, -0, -0.258804798, 0, 1, -0, 0.258804798, 0, 0.965929627)
                CFrameMon = CFrame.new(-245.9963836669922, 47.30615234375, 5584.1005859375)

                CheckMon1 = CFrame.new()
                CheckMon2 = CFrame.new()
                CheckMon3 = CFrame.new()
                CheckMon4 = CFrame.new()
                CheckMon5 = CFrame.new()
                CheckMon6 = CFrame.new()
            elseif MyLevel == 1525 or MyLevel <= 1574 then
                Mon = "Pistol Billionaire [Lv. 1525]"
                LevelQuest = 2
                NameQuest = "PiratePortQuest"
                NameMon = "Pistol Billionaire"
                CFrameQuest = CFrame.new(-290.074677, 42.9034653, 5581.58984, 0.965929627, -0, -0.258804798, 0, 1, -0, 0.258804798, 0, 0.965929627)
                CFrameMon = CFrame.new(-187.3301544189453, 86.23987579345703, 6013.513671875)

                CheckMon1 = CFrame.new()
                CheckMon2 = CFrame.new()
                CheckMon3 = CFrame.new()
                CheckMon4 = CFrame.new()
                CheckMon5 = CFrame.new()
                CheckMon6 = CFrame.new()
            elseif MyLevel == 1575 or MyLevel <= 1599 then
                Mon = "Dragon Crew Warrior [Lv. 1575]"
                LevelQuest = 1
                NameQuest = "AmazonQuest"
                NameMon = "Dragon Crew Warrior"
                CFrameQuest = CFrame.new(5832.83594, 51.6806107, -1101.51563, 0.898790359, -0, -0.438378751, 0, 1, -0, 0.438378751, 0, 0.898790359)
                CFrameMon = CFrame.new(6141.140625, 51.35136413574219, -1340.738525390625)

                CheckMon1 = CFrame.new()
                CheckMon2 = CFrame.new()
                CheckMon3 = CFrame.new()
                CheckMon4 = CFrame.new()
                CheckMon5 = CFrame.new()
                CheckMon6 = CFrame.new()
            elseif MyLevel == 1600 or MyLevel <= 1624 then 
                Mon = "Dragon Crew Archer [Lv. 1600]"
                NameQuest = "AmazonQuest"
                LevelQuest = 2
                NameMon = "Dragon Crew Archer"
                CFrameQuest = CFrame.new(5833.1147460938, 51.60498046875, -1103.0693359375)
                CFrameMon = CFrame.new(6616.41748046875, 441.7670593261719, 446.0469970703125)

                CheckMon1 = CFrame.new()
                CheckMon2 = CFrame.new()
                CheckMon3 = CFrame.new()
                CheckMon4 = CFrame.new()
                CheckMon5 = CFrame.new()
                CheckMon6 = CFrame.new()
            elseif MyLevel == 1625 or MyLevel <= 1649 then
                Mon = "Female Islander [Lv. 1625]"
                NameQuest = "AmazonQuest2"
                LevelQuest = 1
                NameMon = "Female Islander"
                CFrameQuest = CFrame.new(5446.8793945313, 601.62945556641, 749.45672607422)
                CFrameMon = CFrame.new(4685.25830078125, 735.8078002929688, 815.3425903320312)

                CheckMon1 = CFrame.new()
                CheckMon2 = CFrame.new()
                CheckMon3 = CFrame.new()
                CheckMon4 = CFrame.new()
                CheckMon5 = CFrame.new()
                CheckMon6 = CFrame.new()
            elseif MyLevel == 1650 or MyLevel <= 1699 then 
                Mon = "Giant Islander [Lv. 1650]"
                NameQuest = "AmazonQuest2"
                LevelQuest = 2
                NameMon = "Giant Islander"
                CFrameQuest = CFrame.new(5446.8793945313, 601.62945556641, 749.45672607422)
                CFrameMon = CFrame.new(4729.09423828125, 590.436767578125, -36.97627639770508)

                CheckMon1 = CFrame.new()
                CheckMon2 = CFrame.new()
                CheckMon3 = CFrame.new()
                CheckMon4 = CFrame.new()
                CheckMon5 = CFrame.new()
                CheckMon6 = CFrame.new()
            elseif MyLevel == 1700 or MyLevel <= 1724 then
                Mon = "Marine Commodore [Lv. 1700]"
                LevelQuest = 1
                NameQuest = "MarineTreeIsland"
                NameMon = "Marine Commodore"
                CFrameQuest = CFrame.new(2180.54126, 27.8156815, -6741.5498, -0.965929747, 0, 0.258804798, 0, 1, 0, -0.258804798, 0, -0.965929747)
                CFrameMon = CFrame.new(2286.0078125, 73.13391876220703, -7159.80908203125)

                CheckMon1 = CFrame.new()
                CheckMon2 = CFrame.new()
                CheckMon3 = CFrame.new()
                CheckMon4 = CFrame.new()
                CheckMon5 = CFrame.new()
                CheckMon6 = CFrame.new()
            elseif MyLevel == 1725 or MyLevel <= 1774 then
                Mon = "Marine Rear Admiral [Lv. 1725]"
                NameMon = "Marine Rear Admiral"
                NameQuest = "MarineTreeIsland"
                LevelQuest = 2
                CFrameQuest = CFrame.new(2179.98828125, 28.731239318848, -6740.0551757813)
                CFrameMon = CFrame.new(3656.773681640625, 160.52406311035156, -7001.5986328125)

                CheckMon1 = CFrame.new()
                CheckMon2 = CFrame.new()
                CheckMon3 = CFrame.new()
                CheckMon4 = CFrame.new()
                CheckMon5 = CFrame.new()
                CheckMon6 = CFrame.new()
            elseif MyLevel == 1775 or MyLevel <= 1799 then
                Mon = "Fishman Raider [Lv. 1775]"
                LevelQuest = 1
                NameQuest = "DeepForestIsland3"
                NameMon = "Fishman Raider"
                CFrameQuest = CFrame.new(-10581.6563, 330.872955, -8761.18652, -0.882952213, 0, 0.469463557, 0, 1, 0, -0.469463557, 0, -0.882952213)   
                CFrameMon = CFrame.new(-10407.5263671875, 331.76263427734375, -8368.5166015625)

                CheckMon1 = CFrame.new()
                CheckMon2 = CFrame.new()
                CheckMon3 = CFrame.new()
                CheckMon4 = CFrame.new()
                CheckMon5 = CFrame.new()
                CheckMon6 = CFrame.new()
            elseif MyLevel == 1800 or MyLevel <= 1824 then
                Mon = "Fishman Captain [Lv. 1800]"
                LevelQuest = 2
                NameQuest = "DeepForestIsland3"
                NameMon = "Fishman Captain"
                CFrameQuest = CFrame.new(-10581.6563, 330.872955, -8761.18652, -0.882952213, 0, 0.469463557, 0, 1, 0, -0.469463557, 0, -0.882952213)   
                CFrameMon = CFrame.new(-10994.701171875, 352.38140869140625, -9002.1103515625) 

                CheckMon1 = CFrame.new()
                CheckMon2 = CFrame.new()
                CheckMon3 = CFrame.new()
                CheckMon4 = CFrame.new()
                CheckMon5 = CFrame.new()
                CheckMon6 = CFrame.new()
            elseif MyLevel == 1825 or MyLevel <= 1849 then
                Mon = "Forest Pirate [Lv. 1825]"
                LevelQuest = 1
                NameQuest = "DeepForestIsland"
                NameMon = "Forest Pirate"
                CFrameQuest = CFrame.new(-13234.04, 331.488495, -7625.40137, 0.707134247, -0, -0.707079291, 0, 1, -0, 0.707079291, 0, 0.707134247)
                CFrameMon = CFrame.new(-13274.478515625, 332.3781433105469, -7769.58056640625)

                CheckMon1 = CFrame.new(-13508.9697, 373.493439, -8028.40283, -0.887894273, -5.01272304e-08, 0.460047513, -6.26067589e-08, 1, -1.1870414e-08, -0.460047513, -3.93417565e-08, -0.887894273)
                CheckMon2 = CFrame.new(-13649.8164, 366.375092, -7912.97412, -0.99568212, 1.04439472e-07, 0.0928281695, 9.68950573e-08, 1, -8.57798454e-08, -0.0928281695, -7.64148709e-08, -0.99568212)
                CheckMon3 = CFrame.new(-13587.6348, 371.914795, -7727.26318, -0.938968599, 1.71673087e-09, -0.344002932, -2.49983501e-08, 1, 7.32243706e-08, 0.344002932, 7.73548834e-08, -0.938968599)
                CheckMon4 = CFrame.new(-13332.9854, 365.892792, -7631.16895, 0.92872709, 6.61424338e-08, -0.370764047, -1.0650016e-07, 1, -8.83773623e-08, 0.370764047, 1.21564881e-07, 0.92872709)
                CheckMon5 = CFrame.new(-13108.1748, 378.291809, -7719.71826, 0.684096396, 4.89554708e-09, -0.729391634, -2.90481044e-08, 1, -2.05323936e-08, 0.729391634, 3.52335796e-08, 0.684096396)
                CheckMon6 = CFrame.new(-13281.7822, 374.903839, -7882.2793, 0.454543233, 6.92401301e-08, 0.890724659, -1.12631014e-07, 1, -2.02581827e-08, -0.890724659, -9.11150053e-08, 0.454543233)
            elseif MyLevel == 1850 or MyLevel <= 1899 then
                Mon = "Mythological Pirate [Lv. 1850]"
                LevelQuest = 2
                NameQuest = "DeepForestIsland"
                NameMon = "Mythological Pirate"
                CFrameQuest = CFrame.new(-13234.04, 331.488495, -7625.40137, 0.707134247, -0, -0.707079291, 0, 1, -0, 0.707079291, 0, 0.707134247)   
                CFrameMon = CFrame.new(-13680.607421875, 501.08154296875, -6991.189453125)

                CheckMon1 = CFrame.new()
                CheckMon2 = CFrame.new()
                CheckMon3 = CFrame.new()
                CheckMon4 = CFrame.new()
                CheckMon5 = CFrame.new()
                CheckMon6 = CFrame.new()
            elseif MyLevel == 1900 or MyLevel <= 1924 then
                Mon = "Jungle Pirate [Lv. 1900]"
                LevelQuest = 1
                NameQuest = "DeepForestIsland2"
                NameMon = "Jungle Pirate"
                CFrameQuest = CFrame.new(-12680.3818, 389.971039, -9902.01953, -0.0871315002, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, -0.0871315002)
                CFrameMon = CFrame.new(-12256.16015625, 331.73828125, -10485.8369140625)

                CheckMon1 = CFrame.new()
                CheckMon2 = CFrame.new()
                CheckMon3 = CFrame.new()
                CheckMon4 = CFrame.new()
                CheckMon5 = CFrame.new()
                CheckMon6 = CFrame.new()
            elseif MyLevel == 1925 or MyLevel <= 1974 then
                Mon = "Musketeer Pirate [Lv. 1925]"
                LevelQuest = 2
                NameQuest = "DeepForestIsland2"
                NameMon = "Musketeer Pirate"
                CFrameQuest = CFrame.new(-12680.3818, 389.971039, -9902.01953, -0.0871315002, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, -0.0871315002)
                CFrameMon = CFrame.new(-13457.904296875, 391.545654296875, -9859.177734375)

                CheckMon1 = CFrame.new()
                CheckMon2 = CFrame.new()
                CheckMon3 = CFrame.new()
                CheckMon4 = CFrame.new()
                CheckMon5 = CFrame.new()
                CheckMon6 = CFrame.new()
            elseif MyLevel == 1975 or MyLevel <= 1999 then
                Mon = "Reborn Skeleton [Lv. 1975]"
                LevelQuest = 1
                NameQuest = "HauntedQuest1"
                NameMon = "Reborn Skeleton"
                CFrameQuest = CFrame.new(-9479.2168, 141.215088, 5566.09277, 0, 0, 1, 0, 1, -0, -1, 0, 0)
                CFrameMon = CFrame.new(-8763.7236328125, 165.72299194335938, 6159.86181640625)

                CheckMon1 = CFrame.new(-8824.19238, 175.48645, 5870.11377, 0.62798363, 9.13857345e-09, 0.778226554, -7.63684671e-09, 1, -5.58032731e-09, -0.778226554, -2.43884291e-09, 0.62798363)
                CheckMon2 = CFrame.new(-8629.36914, 187.544052, 5848.33545, 0.819642544, -2.27179209e-09, -0.572875261, 2.07670858e-09, 1, -9.94340943e-10, 0.572875261, -3.74690862e-10, 0.819642544)
                CheckMon3 = CFrame.new(-8678.30469, 173.04599, 5963.81201, 0.451347023, -6.66441125e-08, -0.892348528, -1.47039101e-08, 1, -8.21211472e-08, 0.892348528, 5.0186145e-08, 0.451347023)
                CheckMon4 = CFrame.new(-8701.04199, 175.785599, 6119.77002, 0.420404792, 2.59231587e-08, -0.907336652, 1.07656808e-08, 1, 3.355877e-08, 0.907336652, -2.3876364e-08, 0.420404792)
                CheckMon5 = CFrame.new(-8837.22559, 188.12149, 6167.56055, -0.398383588, -4.28801605e-10, 0.917218924, 7.47557127e-09, 1, 3.71443121e-09, -0.917218924, 8.33650393e-09, -0.398383588)
                CheckMon6 = CFrame.new(-8871.75488, 187.248123, 6035.9248, 0.963075042, 1.8362144e-09, -0.269233197, 2.65848077e-09, 1, 1.63298246e-08, 0.269233197, -1.64425966e-08, 0.963075042)
            elseif MyLevel == 2000 or MyLevel <= 2024 then
                Mon = "Living Zombie [Lv. 2000]"
                LevelQuest = 2
                NameQuest = "HauntedQuest1"
                NameMon = "Living Zombie"
                CFrameQuest = CFrame.new(-9479.2168, 141.215088, 5566.09277, 0, 0, 1, 0, 1, -0, -1, 0, 0)
                CFrameMon = CFrame.new(-10144.1318359375, 138.62667846679688, 5838.0888671875)

                CheckMon1 = CFrame.new(-10069.4561, 188.63353, 6036.76904, -0.959142506, 1.21361069e-07, 0.2829234, 1.27233108e-07, 1, 2.3808886e-09, -0.2829234, 3.82808345e-08, -0.959142506)
                CheckMon2 = CFrame.new(-10170.6758, 184.712036, 6164.82471, -0.982380807, 1.66730878e-08, 0.186890259, 1.40104621e-08, 1, -1.55678457e-08, -0.186890259, -1.26751338e-08, -0.982380807)
                CheckMon3 = CFrame.new(-10305.9258, 200.289261, 5965.40088, 0.481956154, -1.5737271e-07, -0.876195312, 1.32612115e-07, 1, -1.06665127e-07, 0.876195312, -6.47862066e-08, 0.481956154)
                CheckMon4 = CFrame.new(-10192.5957, 185.294479, 5856.6001, 0.955602825, 4.08865342e-09, 0.294657826, 6.41432518e-10, 1, -1.59561626e-08, -0.294657826, 1.54367576e-08, 0.955602825)
                CheckMon5 = CFrame.new(-10183.2197, 201.046768, 5737.72705, 0.982637405, -2.42209151e-08, -0.185536385, 3.70097233e-08, 1, 6.54654499e-08, 0.185536385, -7.11954513e-08, 0.982637405)
                CheckMon6 = CFrame.new(-9964.29395, 174.587494, 5992.88184, -0.594639301, -2.54532573e-08, -0.803992629, -1.38471732e-08, 1, -2.14170939e-08, 0.803992629, -1.60242064e-09, -0.594639301)
            elseif MyLevel == 2025 or MyLevel <= 2049 then
                Mon = "Demonic Soul [Lv. 2025]"
                LevelQuest = 1
                NameQuest = "HauntedQuest2"
                NameMon = "Demonic Soul"
                CFrameQuest = CFrame.new(-9516.99316, 172.017181, 6078.46533, 0, 0, -1, 0, 1, 0, 1, 0, 0) 
                CFrameMon = CFrame.new(-9505.8720703125, 172.10482788085938, 6158.9931640625)

                CheckMon1 = CFrame.new(-9427.12695, 219.343124, 6041.4917, 0.990468204, -1.1686569e-08, 0.137741715, 1.00252979e-08, 1, 1.27545281e-08, -0.137741715, -1.12520526e-08, 0.990468204)
                CheckMon2 = CFrame.new(-9252.88574, 219.278763, 6057.72803, 0.995733798, 5.33412958e-08, -0.0922721773, -5.44631682e-08, 1, -9.64020241e-09, 0.0922721773, 1.46245114e-08, 0.995733798)
                CheckMon3 = CFrame.new(-9346.99121, 219.293167, 6203.76611, -0.993181705, -2.77374768e-09, 0.116576575, -3.74594045e-09, 1, -8.12043144e-09, -0.116576575, -8.50175308e-09, -0.993181705)
                CheckMon4 = CFrame.new(-9568.96387, 200.709488, 6237.21338, -0.999033034, -7.95472772e-08, -0.0439652205, -8.14020709e-08, 1, 4.0397552e-08, 0.0439652205, 4.3937348e-08, -0.999033034)
                CheckMon5 = CFrame.new(-9759.93066, 217.346466, 6165.63916, -0.144022912, -8.41954702e-08, 0.989574373, 2.54144172e-08, 1, 8.87813343e-08, -0.989574373, 3.7936001e-08, -0.144022912)
                CheckMon6 = CFrame.new(-9626.31055, 211.994217, 6053.49609, 0.999290347, 3.96760491e-08, 0.0376669914, -3.68631952e-08, 1, -7.53714247e-08, -0.0376669914, 7.39294137e-08, 0.999290347)
            elseif MyLevel == 2050 or MyLevel <= 2074 then
                Mon = "Posessed Mummy [Lv. 2050]"
                LevelQuest = 2
                NameQuest = "HauntedQuest2"
                NameMon = "Posessed Mummy"
                CFrameQuest = CFrame.new(-9516.99316, 172.017181, 6078.46533, 0, 0, -1, 0, 1, 0, 1, 0, 0)
                CFrameMon = CFrame.new(-9582.0224609375, 6.251527309417725, 6205.478515625)

                CheckMon1 = CFrame.new(-9756.90918, 73.7009277, 6044.8042, 0.420550346, 7.32510088e-08, 0.90726918, -5.22212709e-08, 1, -5.65315545e-08, -0.90726918, -2.3604386e-08, 0.420550346)
		        CheckMon2 = CFrame.new(-9757.49414, 58.1739922, 6376.94824, -0.99214977, -5.64152032e-08, 0.125055477, -5.17347942e-08, 1, 4.06742764e-08, -0.125055477, 3.38852537e-08, -0.99214977)
                CheckMon3 = CFrame.new(-9422.35059, 52.8296814, 6355.78711, -0.571127117, 4.23444284e-08, 0.820861638, -1.57029465e-08, 1, -6.25109067e-08, -0.820861638, -4.85916196e-08, -0.571127117)
                CheckMon4 = CFrame.new(-9395.8418, 57.9208946, 6117.64648, 0.974173963, 2.69318861e-08, 0.225798786, -2.02755466e-08, 1, -3.17981161e-08, -0.225798786, 2.63987019e-08, 0.974173963)
                CheckMon5 = CFrame.new(-9761.71973, 68.8145599, 6051.16699, 0.445878446, -1.3687648e-07, 0.895093501, 8.45088053e-08, 1, 1.10821745e-07, -0.895093501, 2.62302517e-08, 0.445878446)
                CheckMon6 = CFrame.new(-9588.82812, 50.5405121, 6355.9834, -0.997189879, 6.79267771e-08, 0.0749153793, 6.71515039e-08, 1, -1.28674964e-08, -0.0749153793, -7.80065701e-09, -0.997189879)
            elseif MyLevel == 2075 or MyLevel <= 2099 then
                Mon = "Peanut Scout [Lv. 2075]"
                LevelQuest = 1
                NameQuest = "NutsIslandQuest"
                NameMon = "Peanut Scout"
                CFrameQuest = CFrame.new(-2104.3908691406, 38.104167938232, -10194.21875, 0, 0, -1, 0, 1, 0, 1, 0, 0)
                CFrameMon = CFrame.new(-2143.241943359375, 47.72198486328125, -10029.9951171875)

                CheckMon1 = CFrame.new(-1935.40869, 64.504097, -10204.7627, -0.99649483, -1.87247373e-08, -0.0836543962, -5.12964915e-09, 1, -1.62729876e-07, 0.0836543962, -1.61730355e-07, -0.99649483)
                CheckMon2 = CFrame.new(-1874.14868, 42.7715263, -10066.9434, -0.572683513, -2.72833827e-08, -0.819776535, 1.48496309e-08, 1, -4.36552163e-08, 0.819776535, -3.71740008e-08, -0.572683513)
                CheckMon3 = CFrame.new(-2047.25537, 70.2439575, -10045.249, 0.170529157, -1.38666572e-08, 0.985352635, -6.13368201e-09, 1, 1.51343063e-08, -0.985352635, -8.62468053e-09, 0.170529157)
                CheckMon4 = CFrame.new(-2134.60181, 50.5320282, -9977.47559, -0.0254334211, 7.38696571e-08, 0.999676526, 1.22990869e-07, 1, -7.07644645e-08, -0.999676526, 1.21151302e-07, -0.0254334211)
                CheckMon5 = CFrame.new(-2246.7561, 44.7930565, -9938.20996, -0.702467501, 1.06935595e-07, 0.711715817, 1.23221199e-07, 1, -2.86304083e-08, -0.711715817, 6.75865408e-08, -0.702467501)
                CheckMon6 = CFrame.new(-2296.69482, 70.3379593, -10232.957, 0.827077806, -2.12927045e-08, 0.562087417, 1.10537428e-08, 1, 2.16165645e-08, -0.562087417, -1.16654117e-08, 0.827077806)
            elseif MyLevel == 2100 or MyLevel <= 2124 then
                Mon = "Peanut President [Lv. 2100]"
                LevelQuest = 2
                NameQuest = "NutsIslandQuest"
                NameMon = "Peanut President"
                CFrameQuest = CFrame.new(-2104.3908691406, 38.104167938232, -10194.21875, 0, 0, -1, 0, 1, 0, 1, 0, 0)
                CFrameMon = CFrame.new(-1859.35400390625, 38.10316848754883, -10422.4296875)

                CheckMon1 = CFrame.new(-2001.04956, 71.2070236, -10504.2051, 0.607673764, 4.88326428e-08, 0.794186771, -2.88118382e-08, 1, -3.94421669e-08, -0.794186771, 1.0859883e-09, 0.607673764)
                CheckMon2 = CFrame.new(-1886.10083, 81.0883484, -10605.4082, -0.405647039, -1.21895738e-07, 0.914029777, -1.32446473e-07, 1, 7.4580953e-08, -0.914029777, -9.08064735e-08, -0.405647039)
                CheckMon3 = CFrame.new(-1991.02234, 72.40728, -10653.9473, -0.976447165, -6.89133639e-09, 0.215756565, -6.47625464e-09, 1, 2.63081623e-09, -0.215756565, 1.17155874e-09, -0.976447165)
                CheckMon4 = CFrame.new(-2250.55688, 121.280579, -10442.3857, -0.930166364, 6.78055159e-08, 0.367138326, 2.33944188e-08, 1, -1.2541544e-07, -0.367138326, -1.08068235e-07, -0.930166364)
                CheckMon5 = CFrame.new(-2393.27417, 121.605972, -10439.5381, 0.793983459, 0, -0.607939363, -0, 1, -0, 0.607939363, 0, 0.793983459)
                CheckMon6 = CFrame.new(-2304.21704, 121.594933, -10591.7227, 0.863951385, 2.15770104e-08, -0.503575206, 1.96676986e-08, 1, 7.65902399e-08, 0.503575206, -7.60744143e-08, 0.863951385)
            elseif MyLevel == 2125 or MyLevel <= 2149 then
                Mon = "Ice Cream Chef [Lv. 2125]"
                LevelQuest = 1
                NameQuest = "IceCreamIslandQuest"
                NameMon = "Ice Cream Chef"
                CFrameQuest = CFrame.new(-820.64825439453, 65.819526672363, -10965.795898438, 0, 0, -1, 0, 1, 0, 1, 0, 0)
                CFrameMon = CFrame.new(-872.24658203125, 65.81957244873047, -10919.95703125)

                CheckMon1 = CFrame.new(-1135.05591, 112.142845, -10918.6406, 0.433253229, 8.35783553e-10, 0.901272237, 2.90175106e-10, 1, -1.06682851e-09, -0.901272237, 7.23733629e-10, 0.433253229)
                CheckMon2 = CFrame.new(-973.971375, 115.732338, -10964.1699, 0.85032934, 1.03518978e-07, -0.526250899, -3.12130766e-08, 1, 1.4627544e-07, 0.526250899, -1.07956382e-07, 0.85032934)
                CheckMon3 = CFrame.new(-936.68512, 106.458107, -11159.5947, 0.129575387, -1.29825835e-07, -0.991569579, 1.05727437e-07, 1, -1.1711348e-07, 0.991569579, -8.96610857e-08, 0.129575387)
                CheckMon4 = CFrame.new(-794.373291, 112.487808, -10796.4102, -0.936513603, 1.04442055e-09, -0.350631237, 4.33117409e-09, 1, -8.58960281e-09, 0.350631237, -9.56292467e-09, -0.936513603)
                CheckMon5 = CFrame.new(-711.820374, 113.585167, -10910.6055, 0.831463456, -1.36577015e-07, -0.555579424, 1.17482642e-07, 1, -7.00070899e-08, 0.555579424, -7.06260339e-09, 0.831463456)
                CheckMon6 = CFrame.new(-519.264404, 111.638138, -10883.208, 0.998946846, 1.97393568e-08, 0.0458831005, -2.20221725e-08, 1, 4.92473937e-08, -0.0458831005, -5.02059727e-08, 0.998946846)
            elseif MyLevel == 2150 or MyLevel <= 2199 then
                Mon = "Ice Cream Commander [Lv. 2150]"
                LevelQuest = 2
                NameQuest = "IceCreamIslandQuest"
                NameMon = "Ice Cream Commander"
                CFrameQuest = CFrame.new(-820.64825439453, 65.819526672363, -10965.795898438, 0, 0, -1, 0, 1, 0, 1, 0, 0)
                CFrameMon = CFrame.new(-558.06103515625, 112.04895782470703, -11290.7744140625)

                CheckMon1 = CFrame.new(-892.082825, 96.9785385, -11456.3125, 0.83248806, 4.03850393e-08, -0.554042935, -3.71397562e-08, 1, 1.7086462e-08, 0.554042935, 6.35274411e-09, 0.83248806)
                CheckMon2 = CFrame.new(-661.659546, 99.6984482, -11373.5635, 0.885432661, 2.19282601e-08, -0.464767665, -1.37947227e-08, 1, 2.09006821e-08, 0.464767665, -1.2094806e-08, 0.885432661)
                CheckMon3 = CFrame.new(-528.16571, 106.602196, -11362.1582, 0.978659451, -1.98598382e-09, 0.20548895, -2.06923989e-08, 1, 1.08214067e-07, -0.20548895, -1.10156783e-07, 0.978659451)
                CheckMon4 = CFrame.new(-358.641327, 103.267212, -11098.6875, -0.632584751, -6.35516031e-08, -0.774491131, -3.87077783e-08, 1, -5.04404092e-08, 0.774491131, -1.92900029e-09, -0.632584751)
                CheckMon5 = CFrame.new(-541.701965, 94.4902267, -10866.8545, -0.942876935, -3.25763125e-07, 0.333141237, -3.0464119e-07, 1, 1.15638571e-07, -0.333141237, 7.54439888e-09, -0.942876935)
                CheckMon6 = CFrame.new(-741.151367, 157.973923, -11218.5059, -0.00460160617, -3.3868627e-08, 0.99998939, 1.36176951e-07, 1, 3.44956241e-08, -0.99998939, 1.36334236e-07, -0.00460160617)
            elseif MyLevel == 2200 or MyLevel <= 2224 then
                Mon = "Cookie Crafter [Lv. 2200]"
                LevelQuest = 1
                NameQuest = "CakeQuest1"
                NameMon = "Cookie Crafter"
                CFrameQuest = CFrame.new(-2021.32007, 37.7982254, -12028.7295, 0.957576931, -8.80302053e-08, 0.288177818, 6.9301187e-08, 1, 7.51931211e-08, -0.288177818, -5.2032135e-08, 0.957576931)
                CFrameMon = CFrame.new(-2374.13671875, 37.79826354980469, -12125.30859375)

                CheckMon1 = CFrame.new(-2244.38403, 84.5937347, -11966.5693, 0.684626043, -2.79045564e-09, 0.728894472, 1.03706476e-07, 1, -9.35796649e-08, -0.728894472, 1.39658155e-07, 0.684626043)
                CheckMon2 = CFrame.new(-2239.07202, 71.3713074, -12118.1895, -0.175984547, 5.34427187e-08, -0.984392941, 7.31218535e-08, 1, 4.12176888e-08, 0.984392941, -6.47269545e-08, -0.175984547)
                CheckMon3 = CFrame.new(-2355.51074, 85.0535126, -12006.0488, -0.993479848, 1.01235642e-08, 0.114007972, 1.28077571e-09, 1, -7.76361446e-08, -0.114007972, -7.69839232e-08, -0.993479848)
                CheckMon4 = CFrame.new(-2468.146, 86.4915009, -12093.3086, 0.646698356, -9.67201359e-08, 0.762745857, 1.55997455e-07, 1, -5.45813172e-09, -0.762745857, 1.22516184e-07, 0.646698356)
                CheckMon5 = CFrame.new(-2427.89868, 85.0442657, -12256.9541, 0.98892343, -1.65592951e-07, 0.148426607, 1.69780861e-07, 1, -1.55451563e-08, -0.148426607, 4.05729672e-08, 0.98892343)
                CheckMon6 = CFrame.new(-2304.95239, 70.9222336, -12201.5723, 0.505560398, 1.69670038e-08, -0.86279124, 3.15298934e-08, 1, 3.81404774e-08, 0.86279124, -4.64860328e-08, 0.505560398)
            elseif MyLevel == 2225 or MyLevel <= 2249 then
                Mon = "Cake Guard [Lv. 2225]"
                LevelQuest = 2
                NameQuest = "CakeQuest1"
                NameMon = "Cake Guard"
                CFrameQuest = CFrame.new(-2021.32007, 37.7982254, -12028.7295, 0.957576931, -8.80302053e-08, 0.288177818, 6.9301187e-08, 1, 7.51931211e-08, -0.288177818, -5.2032135e-08, 0.957576931)
                CFrameMon = CFrame.new(-1598.3070068359375, 43.773197174072266, -12244.5810546875)

                CheckMon1 = CFrame.new(-1729.49707, 84.5956421, -12227.9824, 0.732341707, 2.65629598e-08, 0.68093729, 9.04747499e-10, 1, -3.99824565e-08, -0.68093729, 2.98968956e-08, 0.732341707)
                CheckMon2 = CFrame.new(-1711.56189, 74.110878, -12447.6641, 0.954447567, -8.1241025e-10, -0.298378706, 4.77166573e-09, 1, 1.25407551e-08, 0.298378706, -1.33932572e-08, 0.954447567)
                CheckMon3 = CFrame.new(-1476.32593, 70.5646973, -12438.1562, 0.648082912, 7.86242893e-08, -0.761569798, 3.33237509e-08, 1, 1.31597716e-07, 0.761569798, -1.10664594e-07, 0.648082912)
                CheckMon4 = CFrame.new(-1413.24695, 83.1266251, -12270.084, -0.781568706, 1.35070035e-08, -0.623819172, 7.07879053e-08, 1, -6.70364244e-08, 0.623819172, -9.65524194e-08, -0.781568706)
                CheckMon5 = CFrame.new(-1531.44861, 69.4834671, -12123.6631, -0.867123783, 1.25474301e-07, 0.498092711, 7.72577593e-08, 1, -1.17412405e-07, -0.498092711, -6.33295656e-08, -0.867123783)
                CheckMon6 = CFrame.new(-1761.64941, 83.8251038, -12221.6641, -0.343321651, 4.35954988e-08, -0.939217865, 2.58765276e-08, 1, 3.6957907e-08, 0.939217865, -1.16152492e-08, -0.343321651)
            elseif MyLevel == 2250 or MyLevel <= 2274 then
                Mon = "Baking Staff [Lv. 2250]"
                LevelQuest = 1
                NameQuest = "CakeQuest2"
                NameMon = "Baking Staff"
                CFrameQuest = CFrame.new(-1927.91602, 37.7981339, -12842.5391, -0.96804446, 4.22142143e-08, 0.250778586, 4.74911062e-08, 1, 1.49904711e-08, -0.250778586, 2.64211941e-08, -0.96804446)
                CFrameMon = CFrame.new(-1887.8099365234375, 77.6185073852539, -12998.3505859375)

                CheckMon1 = CFrame.new(-1856.35645, 75.7143097, -12730.3936, 0.812491834, 6.9515643e-08, 0.582972586, -3.71579141e-08, 1, -6.74562486e-08, -0.582972586, 3.31456071e-08, 0.812491834)
                CheckMon2 = CFrame.new(-1855.76025, 70.7872086, -13144.2354, 0.920099735, 9.9839923e-09, 0.391684145, -1.35766278e-08, 1, 6.40275966e-09, -0.391684145, -1.12089271e-08, 0.920099735)
                CheckMon3 = CFrame.new(-1727.10547, 84.019516, -13098.0068, 0.989560962, -4.96676691e-08, 0.14411509, 3.79085847e-08, 1, 8.4341039e-08, -0.14411509, -7.79973988e-08, 0.989560962)
                CheckMon4 = CFrame.new(-1765.17505, 82.5674057, -12870.0312, -0.764274776, 1.36604674e-08, -0.644890726, -5.77742432e-09, 1, 2.80295662e-08, 0.644890726, 2.51480987e-08, -0.764274776)
                CheckMon5 = CFrame.new(-1972.89648, 71.1857986, -12768.0527, -0.999514401, 4.43135022e-08, -0.0311611705, 4.53241071e-08, 1, -3.17251754e-08, 0.0311611705, -3.31221202e-08, -0.999514401)
                CheckMon6 = CFrame.new(-1818.00244, 71.5158768, -12787.6143, -0.876434743, -1.45583612e-09, -0.481520623, 1.68707057e-08, 1, -3.37304513e-08, 0.481520623, -3.76861315e-08, -0.876434743)
            elseif MyLevel == 2275 or MyLevel <= 2299 then
                Mon = "Head Baker [Lv. 2275]"
                LevelQuest = 2
                NameQuest = "CakeQuest2"
                NameMon = "Head Baker"
                CFrameQuest = CFrame.new(-1927.91602, 37.7981339, -12842.5391, -0.96804446, 4.22142143e-08, 0.250778586, 4.74911062e-08, 1, 1.49904711e-08, -0.250778586, 2.64211941e-08, -0.96804446)
                CFrameMon = CFrame.new(-2216.188232421875, 82.884521484375, -12869.2939453125)

                CheckMon1 = CFrame.new(-2087.60596, 84.2054443, -12719.0088, -0.929849744, -1.32171953e-08, 0.367939413, -3.27643939e-08, 1, -4.68793715e-08, -0.367939413, -5.56460833e-08, -0.929849744)
                CheckMon2 = CFrame.new(-2266.49854, 86.282814, -12711.4805, -0.949727476, -1.18209975e-08, 0.313077807, 2.30631318e-08, 1, 1.07719828e-07, -0.313077807, 1.09525033e-07, -0.949727476)
                CheckMon3 = CFrame.new(-2389.47021, 99.5698395, -12811.749, -0.0687390193, -7.03534369e-08, -0.997634649, -3.5392457e-08, 1, -6.80816257e-08, 0.997634649, 3.06288825e-08, -0.0687390193)
                CheckMon4 = CFrame.new(-2405.86548, 99.5830917, -13010.5303, 0.62676394, -6.93155542e-08, 0.779209197, -6.00325336e-08, 1, 1.37243987e-07, -0.779209197, -1.32797481e-07, 0.62676394)
                CheckMon5 = CFrame.new(-2265.27344, 77.8565979, -13046.7354, -0.999814451, -3.01491028e-08, -0.0192615129, -3.19738334e-08, 1, 9.44266034e-08, 0.0192615129, 9.50249515e-08, -0.999814451)
                CheckMon6 = CFrame.new(-2167.27222, 85.6375961, -13044.3086, 0.99458456, 2.5570845e-08, -0.103930421, -3.11924779e-08, 1, -5.24650225e-08, 0.103930421, 5.54227491e-08, 0.99458456)
            elseif MyLevel == 2300 or MyLevel <= 2324 then
                Mon = "Cocoa Warrior [Lv. 2300]"
                LevelQuest = 1
                NameQuest = "ChocQuest1"
                NameMon = "Cocoa Warrior"
                CFrameQuest = CFrame.new(233.22836303710938, 29.876001358032227, -12201.2333984375)
                CFrameMon = CFrame.new(-21.55328369140625, 80.57499694824219, -12352.3876953125)

                CheckMon1 = CFrame.new(-138.362595, 58.0741158, -12249.5469, 0.208865464, -7.56502327e-09, 0.977944374, 1.45024629e-07, 1, -2.32381456e-08, -0.977944374, 1.46679668e-07, 0.208865464)
                CheckMon2 = CFrame.new(-133.233536, 57.2373161, -12367.0371, -0.782099485, 5.35671738e-08, -0.623153567, 1.05591582e-07, 1, -4.65630769e-08, 0.623153567, -1.02216731e-07, -0.782099485)
                CheckMon3 = CFrame.new(-11.9051647, 66.653801, -12372.9902, -0.123100869, -3.55521057e-10, 0.992394149, -2.05629536e-09, 1, 1.03174039e-10, -0.992394149, -2.02795469e-09, -0.123100869)
                CheckMon4 = CFrame.new(4.13743496, 74.0585938, -12307.8291, -0.376112521, -1.0988164e-07, 0.926573992, 8.4853184e-08, 1, 1.53032559e-07, -0.926573992, 1.36180219e-07, -0.376112521)
                CheckMon5 = CFrame.new(-31.2151756, 56.915184, -12209.5947, -0.802473605, 7.71048292e-09, 0.596687615, -2.05508162e-08, 1, -4.05605363e-08, -0.596687615, -4.4811177e-08, -0.802473605)
                CheckMon6 = CFrame.new(147.117096, 57.6593361, -12265.5986, -0.676408291, -1.63273928e-08, 0.736526847, -8.20618169e-08, 1, -5.31954818e-08, -0.736526847, -9.64225961e-08, -0.676408291)
            elseif MyLevel == 2325 or MyLevel <= 2349 then
                Mon = "Chocolate Bar Battler [Lv. 2325]"
                LevelQuest = 2
                NameQuest = "ChocQuest1"
                NameMon = "Chocolate Bar Battler"
                CFrameQuest = CFrame.new(233.22836303710938, 29.876001358032227, -12201.2333984375)
                CFrameMon = CFrame.new(582.590576171875, 77.18809509277344, -12463.162109375)

                CheckMon1 = CFrame.new(587.980103, 72.0407181, -12402.9707, 0.094342418, 3.67570827e-08, -0.995539784, -3.50976315e-08, 1, 3.35957324e-08, 0.995539784, 3.17715845e-08, 0.094342418)
                CheckMon2 = CFrame.new(574.089417, 69.6150742, -12544.6064, -0.219282046, 1.49779666e-07, -0.975661516, -2.09664712e-08, 1, 1.58228275e-07, 0.975661516, 5.51527961e-08, -0.219282046)
                CheckMon3 = CFrame.new(731.186584, 43.3155403, -12563.2959, -0.219413146, 5.95489738e-08, -0.975632012, 5.47993935e-08, 1, 4.87122875e-08, 0.975632012, -4.27759268e-08, -0.219413146)
                CheckMon4 = CFrame.new(698.415649, 56.859333, -12701.9111, 0.983628094, -6.96207465e-08, 0.180210263, 7.40062518e-08, 1, -1.76121109e-08, -0.180210263, 3.06604555e-08, 0.983628094)
                CheckMon5 = CFrame.new(805.410645, 57.5525169, -12766.1357, 0.8995049, -1.53321906e-08, -0.436910629, 3.19441291e-08, 1, 3.06738031e-08, 0.436910629, -4.15479668e-08, 0.8995049)
                CheckMon6 = CFrame.new(832.505615, 63.648304, -12662.2344, -0.998010576, -2.72647007e-08, -0.0630470216, -2.63266049e-08, 1, -1.57100395e-08, 0.0630470216, -1.40189709e-08, -0.998010576)
            elseif MyLevel == 2350 or MyLevel <= 2374 then
                Mon = "Sweet Thief [Lv. 2350]"
                LevelQuest = 1
                NameQuest = "ChocQuest2"
                NameMon = "Sweet Thief"
                CFrameQuest = CFrame.new(150.5066375732422, 30.693693161010742, -12774.5029296875)
                CFrameMon = CFrame.new(165.1884765625, 76.05885314941406, -12600.8369140625)

                CheckMon1 = CFrame.new(136.744873, 60.2308617, -12531.7627, -0.124936625, -8.16624546e-09, 0.992164731, 5.55158408e-08, 1, 1.52214721e-08, -0.992164731, 5.69825787e-08, -0.124936625)
                CheckMon2 = CFrame.new(15.3610544, 57.4404984, -12518.7959, -0.536671579, -9.95797791e-08, 0.843791246, -1.37035002e-07, 1, 3.08571479e-08, -0.843791246, -9.9068771e-08, -0.536671579)
                CheckMon3 = CFrame.new(-153.696579, 69.5192795, -12646.9033, 0.476063401, 1.82775786e-08, 0.879410982, 3.7258939e-08, 1, -4.09537719e-08, -0.879410982, 5.22625108e-08, 0.476063401)
                CheckMon4 = CFrame.new(-76.126152, 73.5181885, -12754.1641, 0.998938084, 1.74580332e-08, 0.0460731648, -1.67539191e-08, 1, -1.56686752e-08, -0.0460731648, 1.48801291e-08, 0.998938084)
                CheckMon5 = CFrame.new(84.9475861, 57.5448799, -12685.5195, -0.517933071, -1.44159074e-07, -0.855421126, -1.31866727e-07, 1, -8.86825546e-08, 0.855421126, 6.68699585e-08, -0.517933071)
                CheckMon6 = CFrame.new(153.005539, 58.2741508, -12587.1016, -0.818851709, -2.93604696e-08, -0.574005127, 2.86611002e-08, 1, -9.20369132e-08, 0.574005127, -9.18162044e-08, -0.818851709)
            elseif MyLevel == 2375 or MyLevel <= 2399 then
                Mon = "Candy Rebel [Lv. 2375]"
                LevelQuest = 2
                NameQuest = "ChocQuest2"
                NameMon = "Candy Rebel"
                CFrameQuest = CFrame.new(150.5066375732422, 30.693693161010742, -12774.5029296875)
                CFrameMon = CFrame.new(134.86563110351562, 77.2476806640625, -12876.5478515625)

                CheckMon1 = CFrame.new(50.1195526, 57.9000626, -12843.9502, 0.973907948, -3.29434044e-08, 0.226943478, 3.35321886e-08, 1, 1.2608371e-09, -0.226943478, 6.38197228e-09, 0.973907948)
                CheckMon2 = CFrame.new(-63.9395065, 66.9850769, -12937.4893, 0.577623904, -1.356089e-07, 0.816303015, 1.08213058e-07, 1, 8.95530761e-08, -0.816303015, 3.66066502e-08, 0.577623904)
                CheckMon3 = CFrame.new(38.6049194, 78.4089508, -13028.2148, 0.670794308, -6.83894967e-08, -0.741643429, 7.51627454e-08, 1, -2.42309905e-08, 0.741643429, -3.94899438e-08, 0.670794308)
                CheckMon4 = CFrame.new(162.079712, 79.1854477, -13037.2314, 0.0412256233, 4.20811155e-08, -0.999149859, 2.76779595e-08, 1, 4.32589324e-08, 0.999149859, -2.94378069e-08, 0.0412256233)
                CheckMon5 = CFrame.new(224.295471, 65.7922363, -12933.3594, -0.998743415, 2.02578097e-08, 0.0501152538, 2.55589025e-08, 1, 1.05137197e-07, -0.0501152538, 1.06285974e-07, -0.998743415)
                CheckMon6 = CFrame.new(3.65961504, 67.1162033, -12877.3906, 0.912846565, 1.22155919e-09, 0.408302724, 1.12644178e-08, 1, -2.8175771e-08, -0.408302724, 3.03194483e-08, 0.912846565)
            elseif MyLevel == 2400 or MyLevel <= 2449 then
                Mon = "Candy Pirate [Lv. 2400]"
                LevelQuest = 1
                NameQuest = "CandyQuest1"
                NameMon = "Candy Pirate"
                CFrameQuest = CFrame.new(-1150.0400390625, 20.378934860229492, -14446.3349609375)
                CFrameMon = CFrame.new(-1310.5003662109375, 26.016523361206055, -14562.404296875)

                CheckMon1 = CFrame.new(-1294.11658, 62.4167709, -14392.5508, 0.115329698, -1.52740443e-09, 0.99332726, 3.47349314e-08, 1, -2.4952147e-09, -0.99332726, 3.47909292e-08, 0.115329698)
                CheckMon2 = CFrame.new(-1445.19678, 70.942215, -14391.8525, -0.011791124, 5.84226676e-08, 0.999930501, -9.88347679e-08, 1, -5.95921854e-08, -0.999930501, -9.95305527e-08, -0.011791124)
                CheckMon3 = CFrame.new(-1370.04932, 68.6282272, -14466.7412, 0.833862066, 2.19873435e-08, -0.551972866, -1.0740032e-08, 1, 2.36091999e-08, 0.551972866, -1.37586111e-08, 0.833862066)
                CheckMon4 = CFrame.new(-1413.58508, 63.7344475, -14702.1836, 0.9999699, -1.2771844e-08, -0.00775956642, 1.27690587e-08, 1, -4.08601791e-10, 0.00775956642, 3.09507142e-10, 0.9999699)
                CheckMon5 = CFrame.new(-1298.62659, 62.4396248, -14801.6357, 0.874962866, 2.01293044e-08, -0.484190017, -4.25879065e-08, 1, -3.53859697e-08, 0.484190017, 5.15820489e-08, 0.874962866)
                CheckMon6 = CFrame.new(-1249.57849, 59.0028229, -14709.0029, -0.896261871, 4.64267877e-08, -0.443525285, 4.83742291e-08, 1, 6.92364654e-09, 0.443525285, -1.52497925e-08, -0.896261871)
            elseif MyLevel <= 2450 then
                Mon = "Snow Demon [Lv. 2425]"
                LevelQuest = 2
                NameQuest = "CandyQuest1"
                NameMon = "Snow Demon"
                CFrameQuest = CFrame.new(-1150.0400390625, 20.378934860229492, -14446.3349609375)
                CFrameMon = CFrame.new(-899.0391235351562, 26.511367797851562, -14430.8681640625)

                CheckMon1 = CFrame.new(-814.575134, 46.3611526, -14676.0615, -0.893897116, -9.83944588e-08, -0.448272198, -4.83920886e-08, 1, -1.22998728e-07, 0.448272198, -8.82553763e-08, -0.893897116)
                CheckMon2 = CFrame.new(-923.827698, 54.1577339, -14764.4463, 0.354899645, 1.43488549e-07, 0.934904397, -1.00387368e-07, 1, -1.15371265e-07, -0.934904397, -5.29073745e-08, 0.354899645)
                CheckMon3 = CFrame.new(-916.351746, 77.2956238, -14643.4688, -0.985127985, -1.60073043e-07, -0.17182216, -1.66933489e-07, 1, 2.54787622e-08, 0.17182216, 5.37827169e-08, -0.985127985)
                CheckMon4 = CFrame.new(-850.853699, 73.5847168, -14398.0049, -0.671341181, 5.21119468e-08, -0.741148472, 3.74825788e-08, 1, 3.63602588e-08, 0.741148472, -3.3700176e-09, -0.671341181)
                CheckMon5 = CFrame.new(-790.34082, 71.0368805, -14294.5928, -0.831256807, 4.25613251e-08, -0.555888593, -2.36914151e-08, 1, 1.11991824e-07, 0.555888593, 1.06263755e-07, -0.831256807)
                CheckMon6 = CFrame.new(-886.678223, 58.4641342, -14306.7451, 0.764181912, -1.36404168e-07, 0.645000815, 1.08902562e-07, 1, 8.24538517e-08, -0.645000815, 7.23249549e-09, 0.764181912)
            end
        end
    end
    function CheckOldQuest(LevelFarm)
        if World1 then
            if LevelFarm == 1 then -- Bandit
                Name = "Bandit [Lv. 5]"
                QuestName = "BanditQuest1"
    
                LevelQuest = 1
                NameMon = "Bandit"
    
                CFrameMon = CFrame.new(1145, 17, 1634)
                VectorMon = Vector3.new(1145, 17, 1634)
    
                CFrameQuest = CFrame.new(1060, 17, 1547)
                VectorQuest = Vector3.new(1060, 17, 1547)
            elseif LevelFarm == 2 then -- Monkey
                Name = "Monkey [Lv. 14]"
                QuestName = "JungleQuest"
    
                LevelQuest = 1
                NameMon = "Monkey"
    
                CFrameMon = CFrame.new(-1496, 39, 35)
                VectorMon = Vector3.new(-1496, 39, 35)
    
                CFrameQuest = CFrame.new(-1602, 37, 152)
                VectorQuest = Vector3.new(-1602, 37, 152)
            elseif LevelFarm == 3 then -- Gorilla
                Name = "Gorilla [Lv. 20]"
                QuestName = "JungleQuest"
    
                LevelQuest = 2
                NameMon = "Gorilla"
    
                CFrameMon = CFrame.new(-1237, 6, -486)
                VectorMon = Vector3.new(-1237, 7, -486)
    
                CFrameQuest = CFrame.new(-1602, 37, 152)
                VectorQuest = Vector3.new(-1602, 37, 152)
            elseif LevelFarm == 4 then -- Pirate
                Name = "Pirate [Lv. 35]"
                QuestName = "BuggyQuest1"
    
                LevelQuest = 1
                NameMon = "Pirate"
    
                CFrameMon = CFrame.new(-1115, 14, 3938)
                VectorMon = Vector3.new(-1115, 14, 3938)
    
                CFrameQuest = CFrame.new(-1140, 5, 3828)
                VectorQuest = Vector3.new(-1140, 5, 3828)
            elseif LevelFarm == 5 then -- Brute
                Name = "Brute [Lv. 45]"
                QuestName = "BuggyQuest1"
    
                LevelQuest = 2
                NameMon = "Brute"
    
                CFrameMon = CFrame.new(-1145, 15, 4350)
                VectorMon = Vector3.new(-1146, 15, 4350)
    
                CFrameQuest = CFrame.new(-1140, 5, 3828)
                VectorQuest = Vector3.new(-1140, 5, 3828)
            elseif LevelFarm == 6 then -- Desert Bandit
                Name = "Desert Bandit [Lv. 60]"
                QuestName = "DesertQuest"
    
                LevelQuest = 1
                NameMon = "Desert Bandit"
    
                CFrameMon = CFrame.new(932, 7, 4484)
                VectorMon = Vector3.new(932, 7, 4484)
    
                CFrameQuest = CFrame.new(897, 7, 4388)
                VectorQuest = Vector3.new(897, 7, 4388)
            elseif LevelFarm == 7 then -- Desert Officre
                Name = "Desert Officer [Lv. 70]"
                QuestName = "DesertQuest"
    
                LevelQuest = 2
                NameMon = "Desert Officer"
    
                CFrameMon = CFrame.new(1572, 10, 4373)
                VectorMon = Vector3.new(1572, 10, 4373)
    
                CFrameQuest = CFrame.new(897, 7, 4388)
                VectorQuest = Vector3.new(897, 7, 4388)
            elseif LevelFarm == 8 then -- Snow Bandits
                Name = "Snow Bandit [Lv. 90]"
                QuestName = "SnowQuest"
    
                LevelQuest = 1
                NameMon = "Snow Bandits"
    
                CFrameMon = CFrame.new(1289, 150, -1442)
                VectorMon = Vector3.new(1289, 106, -1442)
    
                CFrameQuest = CFrame.new(1386, 87, -1297)
                VectorQuest = Vector3.new(1386, 87, -1297)
            elseif LevelFarm == 9 then -- Snowman
                Name = "Snowman [Lv. 100]"
                QuestName = "SnowQuest"
    
                LevelQuest = 2
                NameMon = "Snowman"
    
                CFrameMon = CFrame.new(1289, 150, -1442)
                VectorMon = Vector3.new(1289, 106, -1442)
    
                CFrameQuest = CFrame.new(1386, 87, -1297)
                VectorQuest = Vector3.new(1386, 87, -1297)
            elseif LevelFarm == 10 then -- Chief Petty Officer
                Name = "Chief Petty Officer [Lv. 120]"
                QuestName = "MarineQuest2"
    
                LevelQuest = 1
                NameMon = "Chief Petty Officer"
    
                CFrameMon = CFrame.new(-4855, 23, 4308)
                VectorMon = Vector3.new(-4855, 23, 4308)
    
                CFrameQuest = CFrame.new(-5036, 29, 4325)
                VectorQuest = Vector3.new(-5036, 29, 4325)
            elseif LevelFarm == 11 then -- Sky Bandit
                Name = "Sky Bandit [Lv. 150]"
                QuestName = "SkyQuest"
    
                LevelQuest = 1
                NameMon = "Sky Bandit"
    
                CFrameMon = CFrame.new(-4981, 278, -2830)
                VectorMon = Vector3.new(-4981, 278, -2830)
    
                CFrameQuest = CFrame.new(-4842, 718, -2623)
                VectorQuest = Vector3.new(-4842, 718, -2623)
            elseif LevelFarm == 12 then -- Dark Master
                Name = "Dark Master [Lv. 175]"
                QuestName = "SkyQuest"
    
                LevelQuest = 2
                NameMon = "Dark Master"
    
                CFrameMon = CFrame.new(-5250, 389, -2272)
                VectorMon = Vector3.new(-5250, 389, -2272)
    
                CFrameQuest = CFrame.new(-4842, 718, -2623)
                VectorQuest = Vector3.new(-4842, 718, -2623)
            elseif LevelFarm == 13 then -- Dark Master
                Name = "Prisoner [Lv. 190]"
                QuestName = "PrisonerQuest"
    
                LevelQuest = 1
                NameMon = "Prisoner"
    
                CFrameMon = CFrame.new(5411, 96, 690)
                VectorMon = Vector3.new(5411, 96, 690)
    
                CFrameQuest = CFrame.new(5308, 2, 474)
                VectorQuest = Vector3.new(5308, 2, 474)
            elseif LevelFarm == 14 then -- Dark Master
                Name = "Dangerous Prisoner [Lv. 210]"
                QuestName = "PrisonerQuest"
    
                LevelQuest = 2
                NameMon = "Dangerous Prisoner"
    
                CFrameMon = CFrame.new(5411, 96, 690)
                VectorMon = Vector3.new(5411, 96, 690)
    
                CFrameQuest = CFrame.new(5308, 2, 474)
                VectorQuest = Vector3.new(5308, 2, 474)
            elseif LevelFarm == 15 then -- Toga Warrior
                Name = "Toga Warrior [Lv. 250]"
                QuestName = "ColosseumQuest"
    
                LevelQuest = 1
                NameMon = "Toga Warrior"
    
                CFrameMon = CFrame.new(-1770, 8, -2777)
                VectorMon = Vector3.new(-1770, 8, -2777)
    
                CFrameQuest = CFrame.new(-1576, 8, -2985)
                VectorQuest = Vector3.new(-1576, 8, -2985)
            elseif LevelFarm == 16 then -- Military Soldier
                Name = "Military Soldier [Lv. 300]"
                QuestName = "MagmaQuest"
    
                LevelQuest = 1
                NameMon = "Military Soldier"
    
                CFrameMon = CFrame.new(-5408, 11, 8447)
                VectorMon = Vector3.new(-5408, 11, 8447)
    
                CFrameQuest = CFrame.new(-5316, 12, 8517)
                VectorQuest = Vector3.new(-5316, 12, 8517)
            elseif LevelFarm == 17 then -- Military Spy
                Name = "Military Spy [Lv. 325]"
                QuestName = "MagmaQuest"
    
                LevelQuest = 2
                NameMon = "Military Spy"
    
                CFrameMon = CFrame.new(-5815, 84, 8820)
                VectorMon = Vector3.new(-5815, 84, 8820)
    
                CFrameQuest = CFrame.new(-5316, 12, 8517)
                VectorQuest = Vector3.new(-5316, 12, 8517)
            elseif LevelFarm == 18 then -- Fishman Warrior
                Name = "Fishman Warrior [Lv. 375]"
                QuestName = "FishmanQuest"
    
                LevelQuest = 1
                NameMon = "Fishman Warrior"
    
                CFrameMon = CFrame.new(60859, 19, 1501)
                VectorMon = Vector3.new(60859, 19, 1501)
    
                CFrameQuest = CFrame.new(61123, 19, 1569)
                VectorQuest = Vector3.new(61123, 19, 1569)
            elseif LevelFarm == 19 then -- Fishman Commando
                Name = "Fishman Commando [Lv. 400]"
                QuestName = "FishmanQuest"
    
                LevelQuest = 2
                NameMon = "Fishman Commando"
    
                CFrameMon = CFrame.new(61891, 19, 1470)
                VectorMon = Vector3.new(61891, 19, 1470)
    
                CFrameQuest = CFrame.new(61123, 19, 1569)
                VectorQuest = Vector3.new(61123, 19, 1569)
            elseif LevelFarm == 20 then -- God's Guards
                Name = "God's Guard [Lv. 450]"
                QuestName = "SkyExp1Quest"
    
                LevelQuest = 1
                NameMon = "God's Guards"
    
                CFrameMon = CFrame.new(-4698, 845, -1912)
                VectorMon = Vector3.new(-4698, 845, -1912)
    
                CFrameQuest = CFrame.new(-4722, 845, -1954)
                VectorQuest = Vector3.new(-4722, 846, -1954)
            elseif LevelFarm == 21 then -- Shandas
                Name = "Shanda [Lv. 475]"
                QuestName = "SkyExp1Quest"
    
                LevelQuest = 2
                NameMon = "Shandas"
    
                CFrameMon = CFrame.new(-7685, 5567, -502)
                VectorMon = Vector3.new(-7685, 5567, -502)
    
                CFrameQuest = CFrame.new(-7862, 5546, -380)
                VectorQuest = Vector3.new(-7862, 5546, -380)
            elseif LevelFarm == 22 then -- Royal Squad
                Name = "Royal Squad [Lv. 525]"
                QuestName = "SkyExp2Quest"
    
                LevelQuest = 1
                NameMon = "Royal Squad"
    
                CFrameMon = CFrame.new(-7670, 5607, -1460)
                VectorMon = Vector3.new(-7670, 5607, -1460)
    
                CFrameQuest = CFrame.new(-7904, 5636, -1412)
                VectorQuest = Vector3.new(-7904, 5636, -1412)
            elseif LevelFarm == 23 then -- Royal Soldier
                Name = "Royal Soldier [Lv. 550]"
                QuestName = "SkyExp2Quest"
    
                LevelQuest = 2
                NameMon = "Royal Soldier"
    
                CFrameMon = CFrame.new(-7828, 5607, -1744)
                VectorMon = Vector3.new(-7828, 5607, -1744)
    
                CFrameQuest = CFrame.new(-7904, 5636, -1412)
                VectorQuest = Vector3.new(-7904, 5636, -1412)
            elseif LevelFarm == 24 then -- Galley Pirate
                Name = "Galley Pirate [Lv. 625]"
                QuestName = "FountainQuest"
    
                LevelQuest = 1
                NameMon = "Galley Pirate"
    
                CFrameMon = CFrame.new(5589, 45, 3996)
                VectorMon = Vector3.new(5589, 45, 3996)
    
                CFrameQuest = CFrame.new(5256, 39, 4050)
                VectorQuest = Vector3.new(5256, 39, 4050)
            elseif LevelFarm == 25 then -- Galley Captain
                Name = "Galley Captain [Lv. 650]"
                QuestName = "FountainQuest"
    
                LevelQuest = 2
                NameMon = "Galley Captain"
    
                CFrameMon = CFrame.new(5649, 39, 4936)
                VectorMon = Vector3.new(5649, 39, 4936)
    
                CFrameQuest = CFrame.new(5256, 39, 4050)
                VectorQuest = Vector3.new(5256, 39, 4050)
            end
        end
        if World2 then
            if LevelFarm == 1 then -- Raider [Lv. 700]
                Name = "Raider [Lv. 700]"
                QuestName = "Area1Quest"
    
                LevelQuest = 1
                NameMon = "Raider"
    
                CFrameQuest = CFrame.new(-425, 73, 1837)
                VectorQuest = Vector3.new(-425, 73, 1837)
    
                CFrameMon = CFrame.new(-746, 39, 2390)
                VectorMon = Vector3.new(-746, 39, 2389)
            elseif LevelFarm == 2 then -- Mercenary [Lv. 725]
                Name = "Mercenary [Lv. 725]"
                QuestName = "Area1Quest"
    
                LevelQuest = 2
                NameMon = "Mercenary"
    
                CFrameQuest = CFrame.new(-425, 73, 1837)
                VectorQuest = Vector3.new(-425, 73, 1837)
    
                CFrameMon = CFrame.new(-874, 141, 1312)
                VectorMon = Vector3.new(-874, 141, 1312)
            elseif LevelFarm == 3 then -- Swan Pirate [Lv. 775]
                Name = "Swan Pirate [Lv. 775]"
                QuestName = "Area2Quest"
    
                LevelQuest = 1
                NameMon = "Swan Pirate"
    
                CFrameQuest = CFrame.new(634, 73, 918)
                VectorQuest = Vector3.new(634, 73, 918)
    
                CFrameMon = CFrame.new(878, 122, 1235)
                VectorMon = Vector3.new(878, 122, 1235)
            elseif LevelFarm == 4 then -- Factory Staff [Lv. 800]
                Name = "Factory Staff [Lv. 800]"
                QuestName = "Area2Quest"
    
                LevelQuest = 2
                NameMon = "Factory Staff"
    
                CFrameQuest = CFrame.new(634, 73, 918)
                VectorQuest = Vector3.new(634, 73, 918)
    
                CFrameMon = CFrame.new(295, 73, -56)
                VectorMon = Vector3.new(295, 73, -56)
            elseif LevelFarm == 5 then -- Marine Lieutenant [Lv. 875]
                Name = "Marine Lieutenant [Lv. 875]"
                QuestName = "MarineQuest3"
    
                LevelQuest = 1
                NameMon = "Marine Lieutenant"
    
                CFrameMon = CFrame.new(-2806, 73, -3038)
                VectorMon = Vector3.new(-2806, 73, -3038)
    
                CFrameQuest = CFrame.new(-2443, 73, -3219)
                VectorQuest = Vector3.new(-2443, 73, -3219)
            elseif LevelFarm == 6 then -- Marine Captain [Lv. 900]
                Name = "Marine Captain [Lv. 900]"
                QuestName = "MarineQuest3"
    
                LevelQuest = 2
                NameMon = "Marine Captain"
    
                CFrameMon = CFrame.new(-1869, 73, -3320)
                VectorMon = Vector3.new(-1869, 73, -3320)
    
                CFrameQuest = CFrame.new(-2443, 73, -3219)
                VectorQuest = Vector3.new(-2443, 73, -3219)
            elseif LevelFarm == 7 then -- Zombie [Lv. 950]
                Name = "Zombie [Lv. 950]"
                QuestName = "ZombieQuest"
    
                LevelQuest = 1
                NameMon = "Zombie"
    
                CFrameMon = CFrame.new(-5736, 126, -728)
                VectorMon = Vector3.new(-5736, 126, -728)
    
                CFrameQuest = CFrame.new(-5494, 49, -795)
                VectorQuest = Vector3.new(-5494, 49, -794)
            elseif LevelFarm == 8 then -- Vampire [Lv. 975]
                Name = "Vampire [Lv. 975]"
                QuestName = "ZombieQuest"
    
                LevelQuest = 2
                NameMon = "Vampire"
    
                CFrameMon = CFrame.new(-6033, 7, -1317)
                VectorMon = Vector3.new(-6033, 7, -1317)
    
                CFrameQuest = CFrame.new(-5494, 49, -795)
                VectorQuest = Vector3.new(-5494, 49, -795)
            elseif LevelFarm == 9 then -- Snow Trooper [Lv. 1000] **
                Name = "Snow Trooper [Lv. 1000]"
                QuestName = "SnowMountainQuest"
    
                LevelQuest = 1
                NameMon = "Snow Trooper"
    
                CFrameMon = CFrame.new(478, 402, -5362)
                VectorMon = Vector3.new(478, 402, -5362)
    
                CFrameQuest = CFrame.new(605, 402, -5371)
                VectorQuest = Vector3.new(605, 402, -5371)
            elseif LevelFarm == 10 then -- Winter Warrior [Lv. 1050]
                Name = "Winter Warrior [Lv. 1050]"
                QuestName = "SnowMountainQuest"
    
                LevelQuest = 2
                NameMon = "Winter Warrior"
    
                CFrameMon = CFrame.new(1157, 430, -5188)
                VectorMon = Vector3.new(1157, 430, -5188)
    
                CFrameQuest = CFrame.new(605, 402, -5371)
                VectorQuest = Vector3.new(605, 402, -5371)
            elseif LevelFarm == 11 then -- Lab Subordinate [Lv. 1100]
                Name = "Lab Subordinate [Lv. 1100]"
                QuestName = "IceSideQuest"
    
                LevelQuest = 1
                NameMon = "Lab Subordinate"
    
                CFrameMon = CFrame.new(-5782, 42, -4484)
                VectorMon = Vector3.new(-5782, 42, -4484)
    
                CFrameQuest = CFrame.new(-6060, 16, -4905)
                VectorQuest = Vector3.new(-6060, 16, -4905)
            elseif LevelFarm == 12 then -- Horned Warrior [Lv. 1125]
                Name = "Horned Warrior [Lv. 1125]"
                QuestName = "IceSideQuest"
    
                LevelQuest = 2
                NameMon = "Horned Warrior"
    
                CFrameMon = CFrame.new(-6406, 24, -5805)
                VectorMon = Vector3.new(-6406, 24, -5805)
    
                CFrameQuest = CFrame.new(-6060, 16, -4905)
                VectorQuest = Vector3.new(-6060, 16, -4905)
            elseif LevelFarm == 13 then -- Magma Ninja [Lv. 1175]
                Name = "Magma Ninja [Lv. 1175]"
                QuestName = "FireSideQuest"
                LevelQuest = 1
                NameMon = "Magma Ninja"
    
                CFrameMon = CFrame.new(-5428, 78, -5959)
                VectorMon = Vector3.new(-5428, 78, -5959)
    
                CFrameQuest = CFrame.new(-5430, 16, -5295)
                VectorQuest = Vector3.new(-5430, 16, -5296)
            elseif LevelFarm == 14 then -- Lava Pirate [Lv. 1200]
                Name = "Lava Pirate [Lv. 1200]"
                QuestName = "FireSideQuest"
    
                LevelQuest = 2
                NameMon = "Lava Pirate"
    
                CFrameMon = CFrame.new(-5270, 42, -4800)
                VectorMon = Vector3.new(-5270, 42, -4800)
    
                CFrameQuest = CFrame.new(-5430, 16, -5295)
                VectorQuest = Vector3.new(-5430, 16, -5296)
            elseif LevelFarm == 15 then -- Ship Deckhand [Lv. 1250]
                Name = "Ship Deckhand [Lv. 1250]"
                QuestName = "ShipQuest1"
    
                LevelQuest = 1
                NameMon = "Ship Deckhand"
    
                CFrameMon = CFrame.new(1198, 126, 33031)
                VectorMon = Vector3.new(1198, 126, 33031)
    
                CFrameQuest = CFrame.new(1038, 125, 32913)
                VectorQuest = Vector3.new(1038, 125, 32913)
            elseif LevelFarm == 16 then -- Ship Engineer [Lv. 1275]
                Name = "Ship Engineer [Lv. 1275]"
                QuestName = "ShipQuest1"
    
                LevelQuest = 2
                NameMon = "Ship Engineer"
    
                CFrameMon = CFrame.new(918, 44, 32787)
                VectorMon = Vector3.new(918, 44, 32787)
    
                CFrameQuest = CFrame.new(1038, 125, 32913)
                VectorQuest = Vector3.new(1038, 125, 32913)
            elseif LevelFarm == 17 then -- Ship Steward [Lv. 1300]
                Name = "Ship Steward [Lv. 1300]"
                QuestName = "ShipQuest2"
    
                LevelQuest = 1
                NameMon = "Ship Steward"
    
                CFrameMon = CFrame.new(915, 130, 33419)
                VectorMon = Vector3.new(915, 130, 33419)
    
                CFrameQuest = CFrame.new(969, 125, 33245)
                VectorQuest = Vector3.new(969, 125, 33245)
            elseif LevelFarm == 18 then -- Ship Officer [Lv. 1325]
                Name = "Ship Officer [Lv. 1325]"
                QuestName = "ShipQuest2"
    
                LevelQuest = 2
                NameMon = "Ship Officer"
    
                CFrameMon = CFrame.new(916, 181, 33335)
                VectorMon = Vector3.new(916, 181, 33335)
    
                CFrameQuest = CFrame.new(969, 125, 33245)
                VectorQuest = Vector3.new(969, 125, 33245)
            elseif LevelFarm == 19 then -- Arctic Warrior [Lv. 1350]
                Name = "Arctic Warrior [Lv. 1350]"
                QuestName = "FrostQuest"
    
                LevelQuest = 1
                NameMon = "Arctic Warrior"
    
                CFrameMon = CFrame.new(6038, 29, -6231)
                VectorMon = Vector3.new(6038, 29, -6231)
    
                VectorQuest = Vector3.new(5669, 28, -6482)
                CFrameQuest = CFrame.new(5669, 28, -6482)
            elseif LevelFarm == 20 then -- Snow Lurker [Lv. 1375]
                Name = "Snow Lurker [Lv. 1375]"
                QuestName = "FrostQuest"
    
                LevelQuest = 2
                NameMon = "Snow Lurker"
    
                CFrameMon = CFrame.new(5560, 42, -6826)
                VectorMon = Vector3.new(5560, 42, -6826)
    
                VectorQuest = Vector3.new(5669, 28, -6482)
                CFrameQuest = CFrame.new(5669, 28, -6482)
            elseif LevelFarm == 21 then -- Sea Soldier [Lv. 1425]
                Name = "Sea Soldier [Lv. 1425]"
                QuestName = "ForgottenQuest"
    
                LevelQuest = 1
                NameMon = "Sea Soldier"
    
                CFrameMon = CFrame.new(-3022, 16, -9722)
                VectorMon = Vector3.new(-3022, 16, -9722)
    
                CFrameQuest = CFrame.new(-3054, 237, -10148)
                VectorQuest = Vector3.new(-3054, 237, -10148)
            elseif LevelFarm == 22 then -- Water Fighter [Lv. 1450]
                Name = "Water Fighter [Lv. 1450]"
                QuestName = "ForgottenQuest"
    
                LevelQuest = 2
                NameMon = "Water Fighter"
    
                CFrameMon = CFrame.new(-3385, 239, -10542)
                VectorMon = Vector3.new(-3385, 239, -10542)
    
                CFrameQuest = CFrame.new(-3054, 237, -10148)
                VectorQuest = Vector3.new(-3054, 237, -10148)
            end
        end
        if World3 then
            if LevelFarm == 1 then
                Name = "Pirate Millionaire [Lv. 1500]"
                QuestName = "PiratePortQuest"
    
                LevelQuest = 1
                NameMon = "Pirate"
    
                CFrameMon = CFrame.new(-373, 75, 5550)
                VectorMon = Vector3.new(-373, 75, 5550)
    
                CFrameQuest = CFrame.new(-288, 44, 5576)
                VectorQuest = Vector3.new(-288, 44, 5576)
            elseif LevelFarm == 2 then
                Name = "Pistol Billionaire [Lv. 1525]"
                QuestName = "PiratePortQuest"
    
                LevelQuest = 2
                NameMon = "Pistol"
    
                CFrameMon = CFrame.new(-469, 74, 5904)
                VectorMon = Vector3.new(-469, 74, 5904)
    
                CFrameQuest = CFrame.new(-288, 44, 5576)
                VectorQuest = Vector3.new(-288, 44, 5576)
            elseif LevelFarm == 3 then
                Name = "Dragon Crew Warrior [Lv. 1575]"
                QuestName = "AmazonQuest"
    
                LevelQuest = 1
                NameMon = "Warrior"
    
                CFrameMon = CFrame.new(6339, 52, -1213)
                VectorMon = Vector3.new(6338, 52, -1213)
    
                CFrameQuest = CFrame.new(5835, 52, -1105)
                VectorQuest = Vector3.new(5835, 52, -1105)
            elseif LevelFarm == 4 then
                Name = "Dragon Crew Archer [Lv. 1600]"
                QuestName = "AmazonQuest"
    
                LevelQuest = 2
                NameMon = "Archer"
    
                CFrameMon = CFrame.new(6594, 383, 139)
                VectorMon = Vector3.new(6594, 383, 139)
    
                CFrameQuest = CFrame.new(5835, 52, -1105)
                VectorQuest = Vector3.new(5835, 52, -1105)
            elseif LevelFarm == 5 then
                Name = "Female Islander [Lv. 1625]"
                QuestName = "AmazonQuest2"
    
                LevelQuest = 1
                NameMon = "Female"
    
                CFrameMon = CFrame.new(5308, 819, 1047)
                VectorMon = Vector3.new(5308, 819, 1047)
    
                CFrameQuest = CFrame.new(5443, 602, 751)
                VectorQuest = Vector3.new(5443, 602, 751)
            elseif LevelFarm == 6 then
                Name = "Giant Islander [Lv. 1650]"
                QuestName = "AmazonQuest2"
    
                LevelQuest = 2
                NameMon = "Giant Islanders"
    
                CFrameMon = CFrame.new(4951, 602, -68)
                VectorMon = Vector3.new(4951, 602, -68)
    
                CFrameQuest = CFrame.new(5443, 602, 751)
                VectorQuest = Vector3.new(5443, 602, 751)
            elseif LevelFarm == 7 then
                Name = "Marine Commodore [Lv. 1700]"
                QuestName = "MarineTreeIsland"
    
                LevelQuest = 1
                NameMon = "Marine Commodore"
    
                CFrameMon = CFrame.new(2447, 73, -7470)
                VectorMon = Vector3.new(2447, 73, -7470)
    
                CFrameQuest = CFrame.new(2180, 29, -6737)
                VectorQuest = Vector3.new(2180, 29, -6737)
            elseif LevelFarm == 8 then
                Name = "Marine Rear Admiral [Lv. 1725]"
                QuestName = "MarineTreeIsland"
    
                LevelQuest = 2
                NameMon = "Marine Rear Admiral"
    
                CFrameMon = CFrame.new(3671, 161, -6932)
                VectorMon = Vector3.new(3671, 161, -6932)
    
                CFrameQuest = CFrame.new(2180, 29, -6737)
                VectorQuest = Vector3.new(2180, 29, -6737)
            elseif LevelFarm == 9 then
                Name = "Fishman Raider [Lv. 1775]"
                QuestName = "DeepForestIsland3"
    
                LevelQuest = 1
                NameMon = "Fishman Raider"
    
                CFrameMon = CFrame.new(-10560, 332, -8466)
                VectorMon = Vector3.new(-10560, 332, -8466)
    
                CFrameQuest = CFrame.new(-10584, 332, -8758)
                VectorQuest = Vector3.new(-10584, 332, -8758)
            elseif LevelFarm == 10 then
                Name = "Fishman Captain [Lv. 1800]"
                QuestName = "DeepForestIsland3"
    
                LevelQuest = 2
                NameMon = "Fishman Captain"
    
                CFrameMon = CFrame.new(-10993, 332, -8940)
                VectorMon = Vector3.new(-10993, 332, -8940)
    
                CFrameQuest = CFrame.new(-10584, 332, -8758)
                VectorQuest = Vector3.new(-10584, 332, -8758)
            elseif LevelFarm == 11 then
                Name = "Forest Pirate [Lv. 1825]"
                QuestName = "DeepForestIsland"
    
                LevelQuest = 1
                NameMon = "Forest Pirate"
    
                CFrameMon = CFrame.new(-13479, 333, -7905)
                VectorMon = Vector3.new(-13479, 333, -7905)
    
                CFrameQuest = CFrame.new(-13232, 333, -7627)
                VectorQuest = Vector3.new(-13232, 333, -7627)
            elseif LevelFarm == 12 then
                Name = "Mythological Pirate [Lv. 1850]"
                QuestName = "DeepForestIsland"
    
                LevelQuest = 2
                NameMon = "Mythological Pirate"
    
                CFrameMon = CFrame.new(-13545, 470, -6917)
                VectorMon = Vector3.new(-13545, 470, -6917)
    
                CFrameQuest = CFrame.new(-13232, 333, -7627)
                VectorQuest = Vector3.new(-13232, 333, -7627)
            elseif LevelFarm == 13 then
                Name = "Jungle Pirate [Lv. 1900]"
                QuestName = "DeepForestIsland2"
    
                LevelQuest = 1
                NameMon = "Jungle Pirate"
    
                CFrameMon = CFrame.new(-12107, 332, -10549)
                VectorMon = Vector3.new(-12106, 332, -10549)
    
                CFrameQuest = CFrame.new(-12684, 391, -9902)
                VectorQuest = Vector3.new(-12684, 391, -9902)
            elseif LevelFarm == 14 then
                Name = "Musketeer Pirate [Lv. 1925]"
                QuestName = "DeepForestIsland2"
    
                LevelQuest = 2
                NameMon = "Musketeer Pirate"
    
                CFrameMon = CFrame.new(-13286, 392, -9769)
                VectorMon = Vector3.new(-13286, 392, -9768)
    
                CFrameQuest = CFrame.new(-12684, 391, -9902)
                VectorQuest = Vector3.new(-12684, 391, -9902)
            elseif LevelFarm == 15 then
                Name = "Reborn Skeleton [Lv. 1975]"
                QuestName = "HauntedQuest1"
    
                LevelQuest = 1
                NameMon = "Reborn Skeleton"
    
                CFrameMon = CFrame.new(-8760, 142, 6039)
                VectorMon = Vector3.new(-8760, 142, 6039)
    
                CFrameQuest = CFrame.new(-9482, 142, 5567)
                VectorQuest = Vector3.new(-9482, 142, 5567)
            elseif LevelFarm == 16 then
                Name = "Living Zombie [Lv. 2000]"
                QuestName = "HauntedQuest1"
    
                LevelQuest = 2
                NameMon = "Living Zombie"
    
                CFrameMon = CFrame.new(-10144, 140, 5932)
                VectorMon = Vector3.new(-10144, 140, 5932)
    
                CFrameQuest = CFrame.new(-9482, 142, 5567)
                VectorQuest = Vector3.new(-9482, 142, 5567)
            elseif LevelFarm == 17 then
                Name = "Demonic Soul [Lv. 2025]"
                QuestName = "HauntedQuest2"
    
                LevelQuest = 1
                NameMon = "Demonic Soul"
    
                CFrameMon = CFrame.new(-9507, 172, 6158)
                VectorMon = Vector3.new(-9506, 172, 6158)
    
                CFrameQuest = CFrame.new(-9513, 172, 6079)
                VectorQuest = Vector3.new(-9513, 172, 6079)
            elseif LevelFarm == 18 then
                Name = "Posessed Mummy [Lv. 2050]"
                QuestName = "HauntedQuest2"
    
                LevelQuest = 2
                NameMon = "Posessed Mummy"
    
                CFrameMon = CFrame.new(-9577, 6, 6223)
                VectorMon = Vector3.new(-9577, 6, 6223)
    
                CFrameQuest = CFrame.new(-9513, 172, 6079)
                VectorQuest = Vector3.new(-9513, 172, 6079)
    
            elseif LevelFarm == 19 then
                Name = "Peanut Scout [Lv. 2075]"
                QuestName = "NutsIslandQuest"
    
                LevelQuest = 1
                NameMon = "Peanut Scout"
    
                CFrameMon = CFrame.new(-2124, 123, -10435)
                VectorMon = Vector3.new(-2124, 123, -10435)
    
                CFrameQuest = CFrame.new(-2104, 38, -10192)
                VectorQuest = Vector3.new(-2104, 38, -10192)
            elseif LevelFarm == 20 then
                Name = "Peanut President [Lv. 2100]"
                QuestName = "NutsIslandQuest"
    
                LevelQuest = 2
                NameMon = "Peanut President"
    
                CFrameMon = CFrame.new(-2124, 123, -10435)
                VectorMon = Vector3.new(-2124, 123, -10435)
    
                CFrameQuest = CFrame.new(-2104, 38, -10192)
                VectorQuest = Vector3.new(-2104, 38, -10192)
            elseif LevelFarm == 21 then
                Name = "Ice Cream Chef [Lv. 2125]"
                QuestName = "IceCreamIslandQuest"
    
                LevelQuest = 1
                NameMon = "Ice Cream Chef"
    
                CFrameMon = CFrame.new(-641, 127, -11062)
                VectorMon = Vector3.new(-641, 127, -11062)
    
                CFrameQuest = CFrame.new(-822, 66, -10965)
                VectorQuest = Vector3.new(-822, 66, -10965)
            elseif LevelFarm == 22 then
                Name = "Ice Cream Commander [Lv. 2150]"
                QuestName = "IceCreamIslandQuest"
    
                LevelQuest = 2
                NameMon = "Ice Cream Commander"
    
                CFrameMon = CFrame.new(-641, 127, -11062)
                VectorMon = Vector3.new(-641, 127, -11062)
    
                CFrameQuest = CFrame.new(-822, 66, -10965)
                VectorQuest = Vector3.new(-822, 66, -10965)
                ---------------------------------------------------------------
            elseif LevelFarm == 23 then
                Name = "Cookie Crafter [Lv. 2200]"
                QuestName = "CakeQuest1"
    
                LevelQuest = 1
                NameMon = "Cookie Crafter"
    
                CFrameMon = CFrame.new(-2365, 38, -12099)
                VectorMon = Vector3.new(-2365, 38, -12099)
    
                CFrameQuest = CFrame.new(-2020, 38, -12025)
                VectorQuest = Vector3.new(-2020, 38, -12025)
            elseif LevelFarm == 24 then
                Name = "Cake Guard [Lv. 2225]"
                QuestName = "CakeQuest1"
    
                LevelQuest = 2
                NameMon = "Cake Guard"
    
                CFrameMon = CFrame.new(-1651, 38, -12308)
                VectorMon = Vector3.new(-1651, 38, -12308)
    
                CFrameQuest = CFrame.new(-2020, 38, -12025)
                VectorQuest = Vector3.new(-2020, 38, -12025)
            elseif LevelFarm == 25 then
                Name = "Baking Staff [Lv. 2250]"
                QuestName = "CakeQuest2"
    
                LevelQuest = 1
                NameMon = "Baking Staff"
    
                CFrameMon = CFrame.new(-1870, 38, -12938)
                VectorMon = Vector3.new(-1870, 38, -12938)
    
                CFrameQuest = CFrame.new(-1926, 38, -12850)
                VectorQuest = Vector3.new(-1926, 38, -12850)
            elseif LevelFarm == 26 then
                Name = "Head Baker [Lv. 2275]"
                QuestName = "CakeQuest2"
    
                LevelQuest = 2
                NameMon = "Head Baker"
    
                CFrameMon = CFrame.new(-1926, 88, -12850)
                VectorMon = CFrame.new(-1870, 38, -12938)
    
                CFrameQuest = CFrame.new(-1926, 38, -12850)
                VectorQuest = Vector3.new(-1926, 38, -12850)
                ---------------------------------------------------------------
            elseif LevelFarm == 27 then
                Name = "Cocoa Warrior [Lv. 2300]"
                QuestName = "ChocQuest1"
    
                LevelQuest = 1
                NameMon = "Cocoa Warrior"
    
                CFrameMon = CFrame.new(231, 23, -12194)
                VectorMon = CFrame.new(231, 23, -12194)
    
                CFrameQuest = CFrame.new(231, 23, -12194)
                VectorQuest = Vector3.new(231, 23, -12194)
            elseif LevelFarm == 28 then				
                Name = "Chocolate Bar Battler [Lv. 2325]"
                QuestName = "ChocQuest1"
    
                LevelQuest = 2
                NameMon = "Chocolate Bar Battler"
    
                CFrameMon = CFrame.new(231, 23, -12194)
                VectorMon = CFrame.new(231, 23, -12194)
    
                CFrameQuest = CFrame.new(231, 23, -12194)
                VectorQuest = Vector3.new(231, 23, -12194)
            elseif LevelFarm == 29 then				
                Name = "Sweet Thief [Lv. 2350]"
                QuestName = "ChocQuest2"
    
                LevelQuest = 1
                NameMon = "Sweet Thief"
    
                CFrameMon = CFrame.new(71, 77, -12632)
                VectorMon = CFrame.new(71, 77, -12632)
    
                CFrameQuest = CFrame.new(151, 23, -12774)
                VectorQuest = Vector3.new(151, 23, -12774)
            elseif LevelFarm == 30 then				
                Name = "Candy Rebel [Lv. 2375]"
                QuestName = "ChocQuest2"
    
                LevelQuest = 2
                NameMon = "Candy Rebel"
    
                CFrameMon = CFrame.new(134, 77, -12882)
                VectorMon = CFrame.new(134, 77, -12882)
    
                CFrameQuest = CFrame.new(151, 23, -12774)
                VectorQuest = Vector3.new(151, 23, -12774)
            elseif LevelFarm == 31 then
    
                Name = "Candy Pirate [Lv. 2400]"
                QuestName = "CandyQuest1"
    
                LevelQuest = 1
                NameMon = "Candy Pirate"
    
                CFrameMon = CFrame.new(-1476, 52, -14638)
                VectorMon = Vector3.new(-1476, 52, -14638)
    
                CFrameQuest = CFrame.new(-1149, 13, -14445)
                VectorQuest = Vector3.new(-1149, 13, -14445)
            elseif LevelFarm == 32 then
    
    
                Name = "Snow Demon [Lv. 2425]"
                QuestName = "CandyQuest1"
    
                LevelQuest = 2
                NameMon = "Snow Demon"
                
                CFrameMon = CFrame.new(-948, 62, -14551)
                VectorMon = CFrame.new(-948, 62, -14551)
    
                CFrameQuest = CFrame.new(-1149, 13, -14445)
                VectorQuest = Vector3.new(-1149, 13, -14445)
            end
        end
    end
    
    function Hop()
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
                if tonumber(v.maxPlayers) > tonumber(v.playing) then
                    for _,Existing in pairs(AllIDs) do
                        if num ~= 0 then
                            if ID == tostring(Existing) then
                                Possible = false
                            end
                        else
                            if tonumber(actualHour) ~= tonumber(Existing) then
                                local delFile = pcall(function()
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
    end                   
    
    function isnil(thing)
        return (thing == nil)
    end
    local function round(n)
        return math.floor(tonumber(n) + 0.5)
    end
    Number = math.random(1, 1000000)
    function UpdateEspPlayer()
        if ESPPlayer then
            for i,v in pairs(game:GetService("Players"):GetPlayers()) do
                if not isnil(v.Character) then
                    if not v.Character.Head:FindFirstChild('NameEsp'..v.Name) then
                        local BillboardGui = Instance.new("BillboardGui")
                        local ESP = Instance.new("TextLabel")
                        local HealthESP = Instance.new("TextLabel")
                        BillboardGui.Parent = v.Character.Head
                        BillboardGui.Name = 'NameEsp'..v.Name
                        BillboardGui.ExtentsOffset = Vector3.new(0, 1, 0)
                        BillboardGui.Size = UDim2.new(1,200,1,30)
                        BillboardGui.Adornee = v.Character.Head
                        BillboardGui.AlwaysOnTop = true
                        ESP.Name = "ESP"
                        ESP.Parent = BillboardGui
                        ESP.TextTransparency = 0
                        ESP.BackgroundTransparency = 1
                        ESP.Size = UDim2.new(0, 200, 0, 30)
                        ESP.Position = UDim2.new(0,25,0,0)
                        ESP.Font = Enum.Font.Gotham
                        ESP.Text = (v.Name ..' '.."[ "..round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Character.Head.Position).Magnitude/3) ..' M'.." ]")
                        if v.Team == game:GetService("Players").LocalPlayer.Team then
                            ESP.TextColor3 = Color3.new(0, 255, 255)
                        else
                            ESP.TextColor3 = Color3.new(255, 0, 0)
                        end
                        ESP.TextSize = 14
                        ESP.TextStrokeTransparency = 0.500
                        ESP.TextWrapped = true
                        HealthESP.Name = "HealthESP"
                        HealthESP.Parent = ESP
                        HealthESP.TextTransparency = 0
                        HealthESP.BackgroundTransparency = 1
                        HealthESP.Position = ESP.Position + UDim2.new(0, -25, 0, 15)
                        HealthESP.Size = UDim2.new(0, 200, 0, 30)
                        HealthESP.Font = Enum.Font.Gotham
                        HealthESP.TextColor3 = Color3.fromRGB(255, 0, 0)
                        HealthESP.TextSize = 14
                        HealthESP.TextStrokeTransparency = 0.500
                        HealthESP.TextWrapped = true
                        HealthESP.Text = "Health "..math.floor(v.Character.Humanoid.Health).."/"..math.floor(v.Character.Humanoid.MaxHealth)
                    else
                        v.Character.Head['NameEsp'..v.Name].ESP.Text = (v.Name ..' '..round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Character.Head.Position).Magnitude/3) ..' M')
                        v.Character.Head['NameEsp'..v.Name].ESP.HealthESP.Text = "Health "..math.floor(v.Character.Humanoid.Health).."/"..math.floor(v.Character.Humanoid.MaxHealth)
                        v.Character.Head:FindFirstChild('NameEsp'..v.Name).ESP.TextTransparency = 0
                        v.Character.Head:FindFirstChild('NameEsp'..v.Name).ESP.HealthESP.TextTransparency = 0
                    end
                end
            end
        else
            for i,v in pairs(game:GetService("Players"):GetPlayers()) do
                if v.Character.Head:FindFirstChild('NameEsp'..v.Name) then
                    v.Character.Head:FindFirstChild('NameEsp'..v.Name).ESP.TextTransparency = 1
                    v.Character.Head:FindFirstChild('NameEsp'..v.Name).ESP.HealthESP.TextTransparency = 1
                end
            end
        end     
    end
    
    function UpdateIslandESP() 
        for i,v in pairs(game:GetService("Workspace")["_WorldOrigin"].Locations:GetChildren()) do
            pcall(function()
                if IslandESP then 
                    if v.Name ~= "Sea" then
                        if not v:FindFirstChild('NameEsp') then
                            local bill = Instance.new('BillboardGui',v)
                            bill.Name = 'NameEsp'
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
                            name.TextColor3 = Color3.fromRGB(80, 245, 245)
                        else
                            v['NameEsp'].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
                        end
                    end
                else
                    if v:FindFirstChild('NameEsp') then
                        v:FindFirstChild('NameEsp'):Destroy()
                    end
                end
            end)
        end
    end
    
    function UpdateChestEsp() 
        for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
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
                                name.TextColor3 = Color3.fromRGB(0, 255, 250)
                            if v.Name == "Chest1" then
                                name.Text = ("Chest 1" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
                            end
                            if v.Name == "Chest2" then
                                name.Text = ("Chest 2" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
                            end
                        if v.Name == "Chest3" then
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
    
    function UpdateBfEsp() 
        for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
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
    
    function UpdateFlowerEsp() 
        for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
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
    
    function InfAb()
        if InfAbility then
            if not game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("Agility") then
                local inf = Instance.new("ParticleEmitter")
                inf.Acceleration = Vector3.new(0,0,0)
                inf.Archivable = true
                inf.Drag = 20
                inf.EmissionDirection = Enum.NormalId.Top
                inf.Enabled = true
                inf.Lifetime = NumberRange.new(0.2,0.2)
                inf.LightInfluence = 0
                inf.LockedToPart = true
                inf.Name = "Agility"
                inf.Rate = 500
                local numberKeypoints2 = {
                    NumberSequenceKeypoint.new(0, 0);
                    NumberSequenceKeypoint.new(1, 4); 
                }
                inf.Size = NumberSequence.new(numberKeypoints2)
                inf.RotSpeed = NumberRange.new(999, 9999)
                inf.Rotation = NumberRange.new(0, 0)
                inf.Speed = NumberRange.new(30, 30)
                inf.SpreadAngle = Vector2.new(360,360)
                inf.Texture = "rbxassetid://7157487174"
                inf.VelocityInheritance = 0
                inf.ZOffset = 2
                inf.Transparency = NumberSequence.new(0)
                inf.Color = ColorSequence.new(Color3.fromRGB(80,245,245),Color3.fromRGB(80,245,245))
                inf.Parent = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
            end
        else
            if game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("Agility") then
                game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("Agility"):Destroy()
            end
        end
    end
    
    local LocalPlayer = game:GetService'Players'.LocalPlayer
    local originalstam = LocalPlayer.Character.Energy.Value
    function infinitestam()
        LocalPlayer.Character.Energy.Changed:connect(function()
            if InfiniteEnergy then
                LocalPlayer.Character.Energy.Value = originalstam
            end 
        end)
    end
    
    spawn(function()
        pcall(function()
            while wait() do
                if InfiniteEnergy then
                    wait(0.3)
                    originalstam = LocalPlayer.Character.Energy.Value
                    infinitestam()
                end
            end
        end)
    end)
    
    function fly()
        local mouse=game:GetService("Players").LocalPlayer:GetMouse''
        localplayer=game:GetService("Players").LocalPlayer
        game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart")
        local torso = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
        local speedSET=25
        local keys={a=false,d=false,w=false,s=false}
        local e1
        local e2
        local function start()
            local pos = Instance.new("BodyPosition",torso)
            local gyro = Instance.new("BodyGyro",torso)
            pos.Name="EPIXPOS"
            pos.maxForce = Vector3.new(math.huge, math.huge, math.huge)
            pos.position = torso.Position
            gyro.maxTorque = Vector3.new(9e9, 9e9, 9e9)
            gyro.CFrame = torso.CFrame
            repeat
                    wait()
                    localplayer.Character.Humanoid.PlatformStand=true
                    local new=gyro.CFrame - gyro.CFrame.p + pos.position
                    if not keys.w and not keys.s and not keys.a and not keys.d then
                    speed=1
                    end
                    if keys.w then
                    new = new + workspace.CurrentCamera.CoordinateFrame.lookVector * speed
                    speed=speed+speedSET
                    end
                    if keys.s then
                    new = new - workspace.CurrentCamera.CoordinateFrame.lookVector * speed
                    speed=speed+speedSET
                    end
                    if keys.d then
                    new = new * CFrame.new(speed,0,0)
                    speed=speed+speedSET
                    end
                    if keys.a then
                    new = new * CFrame.new(-speed,0,0)
                    speed=speed+speedSET
                    end
                    if speed>speedSET then
                    speed=speedSET
                    end
                    pos.position=new.p
                    if keys.w then
                    gyro.CFrame = workspace.CurrentCamera.CoordinateFrame*CFrame.Angles(-math.rad(speed*15),0,0)
                    elseif keys.s then
                    gyro.CFrame = workspace.CurrentCamera.CoordinateFrame*CFrame.Angles(math.rad(speed*15),0,0)
                    else
                    gyro.CFrame = workspace.CurrentCamera.CoordinateFrame
                    end
            until not Fly
            if gyro then 
                    gyro:Destroy() 
            end
            if pos then 
                    pos:Destroy() 
            end
            flying=false
            localplayer.Character.Humanoid.PlatformStand=false
            speed=0
        end
        e1=mouse.KeyDown:connect(function(key)
            if not torso or not torso.Parent then 
                    flying=false e1:disconnect() e2:disconnect() return 
            end
            if key=="w" then
                keys.w=true
            elseif key=="s" then
                keys.s=true
            elseif key=="a" then
                keys.a=true
            elseif key=="d" then
                keys.d=true
            end
        end)
        e2=mouse.KeyUp:connect(function(key)
            if key=="w" then
                keys.w=false
            elseif key=="s" then
                keys.s=false
            elseif key=="a" then
                keys.a=false
            elseif key=="d" then
                keys.d=false
            end
        end)
        start()
    end
    
    function Click()
        game:GetService'VirtualUser':CaptureController()
        game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
    end
    
    function AutoHaki()
        if not game:GetService("Players").LocalPlayer.Character:FindFirstChild("HasBuso") then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
        end
    end
    
    function UnEquipWeapon(Weapon)
        if game.Players.LocalPlayer.Character:FindFirstChild(Weapon) then
            _G.NotAutoEquip = true
            wait(.5)
            game.Players.LocalPlayer.Character:FindFirstChild(Weapon).Parent = game.Players.LocalPlayer.Backpack
            wait(.1)
            _G.NotAutoEquip = false
        end
    end
    
    function EquipWeapon(ToolSe)
        if not _G.NotAutoEquip then
            if game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe) then
                Tool = game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe)
                wait(.1)
                game.Players.LocalPlayer.Character.Humanoid:EquipTool(Tool)
            end
        end
    end
    
    
    function GetDistance(target)
        return math.floor((target.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude)
    end
    
    function BTP(P1)
        game.Players.LocalPlayer.Character.Head:Destroy()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = P1
        wait(1)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = P1
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
        end
        function GetDistance(target)
            return math.floor((target.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude)
        end

    TP = function(p)
		task.spawn(function()
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
    function tps(Pos)
        Distance = (Pos.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
        if Distance < 250 then
            Speed = 600
        elseif Distance < 500 then
            Speed = 300
        elseif Distance < 750 then
            Speed = 250
        elseif Distance >= 1000 then
            Speed = 200
        end
        game:GetService("TweenService"):Create(
            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart,
            TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear),
            {CFrame = Pos}
        ):Play()
    end
    topos = function(p)
		task.spawn(function()
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
    --part tang

	spawn(function()
        pcall(function()
            while wait() do
                if _G.Auto_Bone or AutoFarmChest or _G.FastFarm or _G.AutoFarmNearest or _G.AutoFarm or _G.AutoBossLaw or _G.AutoAdvanceDungeon or _G.AutoDoughtBoss or _G.Auto_DungeonMobAura or _G.AutoFarmChest or _G.AutoFarmBossHallow or _G.AutoFarmSwanGlasses or _G.AutoLongSword or _G.AutoBlackSpikeycoat or _G.AutoElectricClaw or _G.AutoFarmGunMastery or _G.AutoHolyTorch or _G.AutoLawRaid or _G.AutoFarmBoss or _G.AutoTwinHooks or _G.AutoOpenSwanDoor or _G.AutoDragon_Trident or _G.AutoSaber or _G.AutoFarmFruitMastery or _G.AutoFarmGunMastery or _G.TeleportIsland or _G.Auto_EvoRace or _G.AutoFarmAllMsBypassType or _G.AutoObservationv2 or _G.AutoMusketeerHat or _G.AutoEctoplasm or _G.AutoRengoku or _G.Auto_Rainbow_Haki or _G.AutoObservation or _G.AutoDarkDagger or _G.Safe_Mode or _G.MasteryFruit or _G.AutoBudySword or _G.AutoBounty or _G.AutoAllBoss or _G.Auto_Bounty or _G.AutoSharkman or _G.Auto_Mastery_Fruit or _G.Auto_Mastery_Gun or _G.Auto_Dungeon or _G.Auto_Cavender or _G.Auto_Pole or _G.Auto_Kill_Ply or _G.Auto_Factory or _G.AutoSecondSea or _G.TeleportPly or _G.AutoBartilo or _G.Auto_DarkBoss or _G.GrabChest or _G.AutoFarmBounty or _G.Holy_Torch or _G.AutoFarm or _G.Clip or FarmBoss or _G.AutoElitehunter or _G.AutoThirdSea or _G.AutoFarmBone or _G.Auto_Next_island == true then
                    if not game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip") then
                        local Noclip = Instance.new("BodyVelocity")
                        Noclip.Name = "BodyClip"
                        Noclip.Parent = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
                        Noclip.MaxForce = Vector3.new(100000,100000,100000)
                        Noclip.Velocity = Vector3.new(0,0,0)
                    end
                end
            end
        end)
    end)
    
    spawn(function()
        pcall(function()
            game:GetService("RunService").Stepped:Connect(function()
                if _G.Auto_Bone or AutoFarmChest or _G.FastFarm or _G.AutoFarmNearest or _G.AutoFarm or _G.AutoBossLaw or _G.AutoAdvanceDungeon or _G.AutoDoughtBoss or _G.Auto_DungeonMobAura or _G.AutoFarmChest or _G.AutoFarmBossHallow or _G.AutoFarmSwanGlasses or _G.AutoLongSword or _G.AutoBlackSpikeycoat or _G.AutoElectricClaw or _G.AutoFarmGunMastery or _G.AutoHolyTorch or _G.AutoLawRaid or _G.AutoFarmBoss or _G.AutoTwinHooks or _G.AutoOpenSwanDoor or _G.AutoDragon_Trident or _G.AutoSaber or _G.NOCLIP or _G.AutoFarmFruitMastery or _G.AutoFarmGunMastery or _G.TeleportIsland or _G.Auto_EvoRace or _G.AutoFarmAllMsBypassType or _G.AutoObservationv2 or _G.AutoMusketeerHat or _G.AutoEctoplasm or _G.AutoRengoku or _G.Auto_Rainbow_Haki or _G.AutoObservation or _G.AutoDarkDagger or _G.Safe_Mode or _G.MasteryFruit or _G.AutoBudySword or _G.AutoBounty or _G.AutoAllBoss or _G.Auto_Bounty or _G.AutoSharkman or _G.Auto_Mastery_Fruit or _G.Auto_Mastery_Gun or _G.Auto_Dungeon or _G.Auto_Cavender or _G.Auto_Pole or _G.Auto_Kill_Ply or _G.Auto_Factory or _G.AutoSecondSea or _G.TeleportPly or _G.AutoBartilo or _G.Auto_DarkBoss or _G.GrabChest or _G.AutoFarmBounty or _G.Holy_Torch or _G.AutoFarm or _G.Clip or _G.AutoElitehunter or _G.AutoThirdSea or _G.AutoFarmBone or _G.Auto_Next_island == true then
                    for _, v in pairs(game:GetService("Players").LocalPlayer.Character:GetDescendants()) do
                        if v:IsA("BasePart") then
                            v.CanCollide = false    
                        end
                    end
                end
            end)
        end)
    end)
    
    spawn(function()
        while wait() do
            if _G.Auto_Bone or AutoFarmChest or _G.FastFarm or _G.AutoFarmNearest or _G.AutoFarm or _G.AutoBossLaw or _G.AutoDoughtBoss or _G.Auto_DungeonMobAura or _G.AutoFarmChest or _G.AutoFarmBossHallow or _G.AutoFarmSwanGlasses or _G.AutoLongSword or _G.AutoBlackSpikeycoat or _G.AutoElectricClaw or _G.AutoFarmGunMastery or _G.AutoHolyTorch or _G.AutoLawRaid or _G.AutoFarmBoss or _G.AutoTwinHooks or _G.AutoOpenSwanDoor or _G.AutoDragon_Trident or _G.AutoSaber or _G.NOCLIP or _G.AutoFarmFruitMastery or _G.AutoFarmGunMastery or _G.TeleportIsland or _G.Auto_EvoRace or _G.AutoFarmAllMsBypassType or _G.AutoObservationv2 or _G.AutoMusketeerHat or _G.AutoEctoplasm or _G.AutoRengoku or _G.Auto_Rainbow_Haki or _G.AutoObservation or _G.AutoDarkDagger or _G.Safe_Mode or _G.MasteryFruit or _G.AutoBudySword or _G.AutoAllBoss or _G.Auto_Bounty or _G.AutoSharkman or _G.Auto_Mastery_Fruit or _G.Auto_Mastery_Gun or _G.Auto_Dungeon or _G.Auto_Cavender or _G.Auto_Pole or _G.Auto_Kill_Ply or _G.Auto_Factory or _G.AutoSecondSea or _G.TeleportPly or _G.AutoBartilo or _G.Auto_DarkBoss or _G.AutoFarm or _G.Clip or _G.AutoElitehunter or _G.AutoThirdSea or _G.AutoFarmBone == true then
                pcall(function()
                    game:GetService("ReplicatedStorage").Remotes.CommE:FireServer("Ken",true)
                end)
            end    
        end
    end)
    
    spawn(function()
    game:GetService("RunService").RenderStepped:Connect(function()
        if _G.AutoClick or Fastattack then
             pcall(function()
                game:GetService'VirtualUser':CaptureController()
                game:GetService'VirtualUser':Button1Down(Vector2.new(0,1,0,1))
            end)
        end
    end)
    end)
    
    function StopTween(target)
        if not target then
            _G.StopTween = true
            wait()
            topos(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
            wait()
            if game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip") then
                game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip"):Destroy()
            end
            _G.StopTween = false
            _G.Clip = false
        end
    end
    
    spawn(function()
        pcall(function()
            while wait() do
                for i,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do  
                    if v:IsA("Tool") then
                        if v:FindFirstChild("RemoteFunctionShoot") then 
                            SelectWeaponGun = v.Name
                        end
                    end
                end
            end
        end)
    end)
    
    game:GetService("Players").LocalPlayer.Idled:connect(function()
        game:GetService("VirtualUser"):Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
        wait(1)
        game:GetService("VirtualUser"):Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
    end)
local Window = create.win()
local Main = Window:Taps("Genaral")
local I = Window:Taps("Items")
local P = Window:Taps("Player")
local S = Window:Taps("Stutas")
local V = Window:Taps("Visual")
local Misc = Window:Taps("Misc")
local Farm = Main:newpage()
local Set = Main:newpage()
local Farm1 = Main:newpage()
local Ohter = Main:newpage()
local Auto1 = I:newpage()
local Auto2 = I:newpage()
Farm:Label("[ Auto Farm Function ]")

Farm:Toggle("Auto Farm Level",false,function(t)
    _G.AutoFarm = t
    StopTween(_G.AutoFarm)
end)

spawn(function()
    while wait() do
        if _G.AutoFarm then
            pcall(function()
                local QuestTitle = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text
                if not string.find(QuestTitle, NameMon) then
                    StartMagnet = false
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                end
                if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                    StartMagnet = false
                    CheckQuest()
                    repeat wait() TP(CFrameQuest) until (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 or not _G.AutoFarm
                    if (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 then
                        wait(0.1)
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest",NameQuest,LevelQuest)
                        wait(0.1)
                    end
                elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                    CheckQuest()
                    if game:GetService("Workspace").Enemies:FindFirstChild(Mon) then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                                if v.Name == Mon then
                                    if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) then
                                        repeat task.wait()
                                            AutoHaki()        
                                            EquipWeapon(_G.SelectWeapon)                                    
                                            PosMon = v.HumanoidRootPart.CFrame
                                            TP(v.HumanoidRootPart.CFrame * CFrame.new(0,40,0))
                                            v.HumanoidRootPart.CanCollide = false
                                            v.Humanoid.WalkSpeed = 0
                                            v.Head.CanCollide = false
                                            v.HumanoidRootPart.Size = Vector3.new(70,70,70)
                                            StartMagnet = true
                                            game:GetService'VirtualUser':CaptureController()
                                            game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                        until not _G.AutoFarm or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                    else
                                        StartMagnet = false
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                                    end
                                end
                            end
                        end
                    else
                        tps(CheckMon1)
                        wait(0.5)
                        tps(CheckMon2)
                        wait(0.5)
                        tps(CheckMon3)
                        wait(0.5)
                        tps(CheckMon4)
                        wait(0.5)
                        tps(CheckMon5)
                        wait(0.5)
                        tps(CheckMon6)
                        StartMagnet = false
                        if game:GetService("ReplicatedStorage"):FindFirstChild(Mon) then
                         TP(game:GetService("ReplicatedStorage"):FindFirstChild(Mon).HumanoidRootPart.CFrame * CFrame.new(15,10,2))
                        end
                    end
                end
            end)
        end
    end
end)
Farm:Toggle("Fast Farm Level",false,function(t)
    _G.FastFarm = t
    StopTween(_G.FastFarm)
end)
spawn(function()
    pcall(function()
        while wait() do
            if _G.FastFarm then
                if game:GetService("Players").LocalPlayer.Data.Level.Value == 10 or game:GetService("Players").LocalPlayer.Data.Level.Value <= 79 then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-4607.82275, 872.54248, -1667.55688))
				TP(CFrame.new(-4714.5918, 853.107605, -1936.83521, 0.81843853, 3.70031046e-08, 0.57459408, -1.47672345e-08, 1, -4.33645795e-08, -0.57459408, 2.70060774e-08, 0.81843853))
                    StartMagnet = false
					_G.AutoFarm = false
                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if v.Name == "God's Guard [Lv. 450]" then
							repeat task.wait()
								EquipWeapon(_G.SelectWeapon)
								AutoHaki()
                                StartMagnet = true
								game:GetService'VirtualUser':CaptureController()
								game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                TP(v.HumanoidRootPart.CFrame * CFrame.new(1,14,1))
                                wait(.1)
                                TP(v.HumanoidRootPart.CFrame * CFrame.new(10,14,10))
                                wait(.1)
                                TP(v.HumanoidRootPart.CFrame * CFrame.new(20,14,19))
                                wait(.1)
                                TP(v.HumanoidRootPart.CFrame * CFrame.new(15,14,13))
                                wait(.1)
                                TP(v.HumanoidRootPart.CFrame * CFrame.new(10,14,5))
                                wait(.1)
                                TP(v.HumanoidRootPart.CFrame * CFrame.new(6,14,2))
                                wait(.1)
                                TP(v.HumanoidRootPart.CFrame * CFrame.new(1,14,1))
                            until not _G.FastFarm or v.Humanoid.Health <= 0 or game.Players.LocalPlayer.Character.Humanoid.Health <= 0
                            break  -- Exit the loop once the enemy is defeated or the player dies
                        end
                    end
                end
            end
        end
    end)
end)

spawn(function()
    pcall(function()
    while wait() do
    if _G.FastFarm then
    if not game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip") then
        local Noclip = Instance.new("BodyVelocity")
        Noclip.Name = "BodyClip"
        Noclip.Parent = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
        Noclip.MaxForce = Vector3.new(100000,100000,100000)
        Noclip.Velocity = Vector3.new(0,0,0)
    end
    end
    end
    end)
    end)

	spawn(function()
		pcall(function()
			while wait() do
				if _G.FastFarm then
					for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						for x,y in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if v.Name == "God's Guard [Lv. 450]" and y.Name == "God's Guard [Lv. 450]" then
								v.HumanoidRootPart.CFrame = y.HumanoidRootPart.CFrame
								v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
								y.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
								v.HumanoidRootPart.Transparency = 1
								v.HumanoidRootPart.CanCollide = false
								y.HumanoidRootPart.CanCollide = false
								v.Humanoid.WalkSpeed = 0
								y.Humanoid.WalkSpeed = 0
								v.Humanoid.JumpPower = 0
								y.Humanoid.JumpPower = 0
								if sethiddenproperty then
									sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
								end
							end
						end
					end
				end
			end
		end)
	end)

Farm:Toggle("Auto Farm Nearest",false,function(t)
    _G.AutoFarmNearest = t
    StopTween(_G.AutoFarmNearest)
end)
spawn(function()
    while wait() do
        if  _G.AutoFarmNearest then
            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                if v.Name and v:FindFirstChild("Humanoid") then
                    if v.Humanoid.Health > 0 then
                        repeat wait()
                          EquipWeapon(_G.SelectWeapon)
                            if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                local args = {
                                    [1] = "Buso"
                                }
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                               end
                            topos(v.HumanoidRootPart.CFrame * CFrame.new(0,40,0))
                            v.HumanoidRootPart.CanCollide = false
                            Fastattack = true
                            v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                            game:GetService("VirtualUser"):CaptureController()
                               game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672), game.Workspace.CurrentCamera.CFrame)
                               AutoFarmNearestMagnet = true
                               PosMon = v.HumanoidRootPart.CFrame
                        until not _G.AutoFarmNearest or not v.Parent or v.Humanoid.Health <= 0 
                        AutoFarmNearestMagnet = false
                        Fastattack = false
                    end
                end
            end
        end
    end
    end)
    Farm:Label("[ World ]")

	if World1 then
	Farm:Toggle("Auto Second Sea",_G.AutoSecondSea,function(value)
            _G.AutoSecondSea = value
            StopTween(_G.AutoSecondSea)
        end)
    
        spawn(function()
            while wait() do 
                if _G.AutoSecondSea then
                    pcall(function()
                        local MyLevel = game:GetService("Players").LocalPlayer.Data.Level.Value
                        if MyLevel >= 700 and World1 then
                            if game:GetService("Workspace").Map.Ice.Door.CanCollide == false and game:GetService("Workspace").Map.Ice.Door.Transparency == 1 then
                                local CFrame1 = CFrame.new(4849.29883, 5.65138149, 719.611877)
                                repeat TP(CFrame1) wait() until (CFrame1.Position-game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 or _G.AutoSecondSea == false
                                wait(1.1)
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("DressrosaQuestProgress","Detective")
                                wait(0.5)
                                EquipWeapon("Key")
                                repeat TP(CFrame.new(1347.7124, 37.3751602, -1325.6488)) wait() until (Vector3.new(1347.7124, 37.3751602, -1325.6488)-game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 or _G.AutoSecondSea == false
                                wait(0.5)
                            else
                                if game:GetService("Workspace").Map.Ice.Door.CanCollide == false and game:GetService("Workspace").Map.Ice.Door.Transparency == 1 then
                                    if game:GetService("Workspace").Enemies:FindFirstChild("Ice Admiral [Lv. 700] [Boss]") then
                                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                            if v.Name == "Ice Admiral [Lv. 700] [Boss]" then
                                                if not v.Humanoid.Health <= 0 then
                                                    if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                                        OldCFrameSecond = v.HumanoidRootPart.CFrame
                                                        repeat task.wait()
                                                            AutoHaki()
                                                            EquipWeapon(_G.SelectWeapon)
                                                            v.HumanoidRootPart.CanCollide = false
                                                            v.Humanoid.WalkSpeed = 0
                                                            v.Head.CanCollide = false
                                                            v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                                            v.HumanoidRootPart.CFrame = OldCFrameSecond
                                                            TP(v.HumanoidRootPart.CFrame * CFrame.new(5,10,7))
                                                            game:GetService("VirtualUser"):CaptureController()
                                                            game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
                                                            sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                                                        until not _G.AutoSecondSea or not v.Parent or v.Humanoid.Health <= 0
                                                    end
                                                else 
                                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
                                                end
                                            end
                                        end
                                    else
                                        if game:GetService("ReplicatedStorage"):FindFirstChild("Ice Admiral [Lv. 700] [Boss]") then
                                            TP(game:GetService("ReplicatedStorage"):FindFirstChild("Ice Admiral [Lv. 700] [Boss]").HumanoidRootPart.CFrame * CFrame.new(5,10,7))
                                        end
                                    end
                                end
                            end
                        end
                    end)
                end
            end
        end)
	end


        if World2 then
        Farm:Toggle("Auto Third Sea",_G.AutoThirdSea,function(value)
            _G.AutoThirdSea = value
            StopTween(_G.AutoThirdSea)
        end)
    
        spawn(function()
            while wait() do
                if _G.AutoThirdSea then
                    pcall(function()
                        if game:GetService("Players").LocalPlayer.Data.Level.Value >= 1500 and World2 then
                            _G.AutoFarm = false
                            if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ZQuestProgress","Check") == 0 then
                                TP(CFrame.new(-1926.3221435547, 12.819851875305, 1738.3092041016))
                                if (CFrame.new(-1926.3221435547, 12.819851875305, 1738.3092041016).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10 then
                                    wait(1.5)
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ZQuestProgress","Begin")
                                end
                                wait(1.8)
                                if game:GetService("Workspace").Enemies:FindFirstChild("rip_indra [Lv. 1500] [Boss]") then
                                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                        if v.Name == "rip_indra [Lv. 1500] [Boss]" then
                                            OldCFrameThird = v.HumanoidRootPart.CFrame
                                            repeat task.wait()
                                                AutoHaki()
                                                EquipWeapon(_G.SelectWeapon)
                                                TP(v.HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                                                v.HumanoidRootPart.CFrame = OldCFrameThird
                                                v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                                v.HumanoidRootPart.CanCollide = false
                                                v.Humanoid.WalkSpeed = 0
                                                game:GetService'VirtualUser':CaptureController()
                                                game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
                                                sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                                            until _G.AutoThirdSea == false or v.Humanoid.Health <= 0 or not v.Parent
                                        end
                                    end
                                elseif not game:GetService("Workspace").Enemies:FindFirstChild("rip_indra [Lv. 1500] [Boss]") and (CFrame.new(-26880.93359375, 22.848554611206, 473.18951416016).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 1000 then
                                    TP(CFrame.new(-26880.93359375, 22.848554611206, 473.18951416016))
                                end
                            end
                        end
                    end)
                end
            end
		end)
	end

	if World3 then
        Farm:Toggle("Auto Third Sea",_G.AutoFouthSea,function(value)
            _G.AutoFouthSea = value
            StopTween(_G.AutoFouthSea)
        end)
		spawn(function()
			while wait() do
				if _G.AutoFouthSea then
					pcall(function()
						game.Players.LocalPlayer:Kick("Coming Soon!")
					end)
				end
			end
		end)
	end
	Farm:Label("[ Chest Farm ]")
    
	Farm:Toggle("Auto Farm Chest",false,function(vu)
		AutoFarmChest = vu
		StopTween(AutoFarmChest)
end)

Farm:Toggle("Enabled Hop Server",false,function(value)
AutoFarmChestHop = value
 end)
 
 _G.MagnitudeAdd = 0
 spawn(function()
    while wait() do 
        if AutoFarmChest then
            for i,v in pairs(game:GetService("Workspace"):GetChildren()) do 
                if v.Name:find("Chest") then
                    if game:GetService("Workspace"):FindFirstChild(v.Name) then
                        if (v.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 5000 + _G.MagnitudeAdd then
                            repeat wait()
                                if game:GetService("Workspace"):FindFirstChild(v.Name) then
                                    TP(v.CFrame)
                                end
                            until AutoFarmChest == false or not v.Parent
                            TP(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
                            _G.MagnitudeAdd = _G.MagnitudeAdd + 1500
                            break
                        else
                            if AutoFarmChestHop then
                                Hop()
                            end
                        end
                    end
                end
            end
        end
    end
end)
Farm1:Label("[ Misc Bone ]")
    
BoneCheck = Farm1:Label("Your Bone : Third World ")

spawn(function()
	while wait() do
		pcall(function()
			BoneCheck:Change("Your Bone : "..(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bones","Check")))
		end)
	end
end)

Farm1:Toggle("Auto Farm Bone",_G.Auto_Bone,function(value)
	_G.Auto_Bone = value
	StopTween(_G.Auto_Bone)
end)


spawn(function()
	while wait() do 
		if _G.Auto_Bone and World3 then
			pcall(function()
				if game:GetService("Workspace").Enemies:FindFirstChild("Reborn Skeleton [Lv. 1975]") or game:GetService("Workspace").Enemies:FindFirstChild("Living Zombie [Lv. 2000]") or game:GetService("Workspace").Enemies:FindFirstChild("Demonic Soul [Lv. 2025]") or game:GetService("Workspace").Enemies:FindFirstChild("Posessed Mummy [Lv. 2050]") then
					for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if v.Name == "Reborn Skeleton [Lv. 1975]" or v.Name == "Living Zombie [Lv. 2000]" or v.Name == "Demonic Soul [Lv. 2025]" or v.Name == "Posessed Mummy [Lv. 2050]" then
						   if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
							   repeat task.wait()
									AutoHaki()
									EquipWeapon(_G.SelectWeapon)
									v.HumanoidRootPart.CanCollide = false
									v.Humanoid.WalkSpeed = 0
									v.Head.CanCollide = false 
									StartMagnetBoneMon = true
									PosMonBone = v.HumanoidRootPart.CFrame
									TP(v.HumanoidRootPart.CFrame * CFrame.new(2,20,2))
									game:GetService("VirtualUser"):CaptureController()
									game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
								until not _G.Auto_Bone or not v.Parent or v.Humanoid.Health <= 0
							end
						end
					end
				else
					TP(CFrame.new(-9466.72949, 171.162918, 6132.01514))
					StartMagnetBoneMon = false
					for i,v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do 
						if v.Name == "Reborn Skeleton [Lv. 1975]" then
							TP(v.HumanoidRootPart.CFrame * CFrame.new(2,20,2))
						elseif v.Name == "Living Zombie [Lv. 2000]" then
							TP(v.HumanoidRootPart.CFrame * CFrame.new(2,20,2))
						elseif v.Name == "Demonic Soul [Lv. 2025]" then
							TP(v.HumanoidRootPart.CFrame * CFrame.new(2,20,2))
						elseif v.Name == "Posessed Mummy [Lv. 2050]" then
							TP(v.HumanoidRootPart.CFrame * CFrame.new(2,20,2))
						end
					end
				end
			end)
		end
	end
end)    


Farm1:Toggle("Auto Random Bone",_G.Auto_Random_Bone,function(value)
	_G.Auto_Random_Bone = value
end)

spawn(function()
	pcall(function()
		while wait(.1) do
			if _G.Auto_Random_Bone then    
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bones","Buy",1,1)
			end
		end
	end)
end)
Farm1:Label("[ Misc Bone ]")
local MobKilled =  Farm1:Label("Killed")
    
spawn(function()
	while wait() do
		pcall(function()
			if string.len(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")) == 88 then
				MobKilled:Change("Defeat : "..string.sub(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"),39,41))
			elseif string.len(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")) == 87 then
				MobKilled:Change("Defeat : "..string.sub(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"),39,40))
			elseif string.len(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")) == 86 then
				MobKilled:Change("Defeat : "..string.sub(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"),39,39))
			else
				MobKilled:Change("Boss Is Spawning")
			end
		end)
	end
end)
Farm1:Toggle("Auto Farm Cake Prince",_G.AutoDoughtBoss,function(value)
	_G.AutoDoughtBoss = value
	StopTween(_G.AutoDoughtBoss)
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

spawn(function()
	while wait() do
		if _G.AutoDoughtBoss then
			pcall(function()
				if game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]") then
					for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if v.Name == "Cake Prince [Lv. 2300] [Raid Boss]" then
							if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
								repeat task.wait()
									AutoHaki()
									EquipWeapon(_G.SelectWeapon)
									v.HumanoidRootPart.CanCollide = false
									v.Humanoid.WalkSpeed = 0
									v.HumanoidRootPart.Size = Vector3.new(50,50,50)
									TP(v.HumanoidRootPart.CFrame * CFrame.new(2,40,2))
									game:GetService("VirtualUser"):CaptureController()
									game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
									sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
								until not _G.AutoDoughtBoss or not v.Parent or v.Humanoid.Health <= 0
							end
						end
					end
				else
					if game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]") then
						TP(game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
					else
						if KillMob == 0 then
						end                    
						if game:GetService("Workspace").Map.CakeLoaf.BigMirror.Other.Transparency == 1 then
							if game:GetService("Workspace").Enemies:FindFirstChild("Cookie Crafter [Lv. 2200]") or game:GetService("Workspace").Enemies:FindFirstChild("Cake Guard [Lv. 2225]") or game:GetService("Workspace").Enemies:FindFirstChild("Baking Staff [Lv. 2250]") or game:GetService("Workspace").Enemies:FindFirstChild("Head Baker [Lv. 2275]") then
								for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
									if v.Name == "Cookie Crafter [Lv. 2200]" or v.Name == "Cake Guard [Lv. 2225]" or v.Name == "Baking Staff [Lv. 2250]" or v.Name == "Head Baker [Lv. 2275]" then
										if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
											repeat task.wait()
												AutoHaki()
												EquipWeapon(_G.SelectWeapon)
												v.HumanoidRootPart.CanCollide = false
												v.Humanoid.WalkSpeed = 0
												v.Head.CanCollide = false 
												v.HumanoidRootPart.Size = Vector3.new(50,50,50)
												MagnetDought = true
												PosMonDoughtOpenDoor = v.HumanoidRootPart.CFrame
												TP(v.HumanoidRootPart.CFrame * CFrame.new(2,40,2))
												game:GetService("VirtualUser"):CaptureController()
												game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
											until not _G.AutoDoughtBoss or not v.Parent or v.Humanoid.Health <= 0 or game:GetService("Workspace").Map.CakeLoaf.BigMirror.Other.Transparency == 0 or game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]") or game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]") or KillMob == 0
										end
									end
								end
							else
								TP(CFrame.new(-2091.911865234375, 70.00884246826172, -12142.8359375))
								MagnetDought = false
								if game:GetService("ReplicatedStorage"):FindFirstChild("Cookie Crafter [Lv. 2200]") then
									TP(game:GetService("ReplicatedStorage"):FindFirstChild("Cookie Crafter [Lv. 2200]").HumanoidRootPart.CFrame * CFrame.new(2,20,2)) 
								else
									if game:GetService("ReplicatedStorage"):FindFirstChild("Cake Guard [Lv. 2225]") then
										TP(game:GetService("ReplicatedStorage"):FindFirstChild("Cake Guard [Lv. 2225]").HumanoidRootPart.CFrame * CFrame.new(2,20,2)) 
									else
										if game:GetService("ReplicatedStorage"):FindFirstChild("Baking Staff [Lv. 2250]") then
											TP(game:GetService("ReplicatedStorage"):FindFirstChild("Baking Staff [Lv. 2250]").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
										else
											if game:GetService("ReplicatedStorage"):FindFirstChild("Head Baker [Lv. 2275]") then
												TP(game:GetService("ReplicatedStorage"):FindFirstChild("Head Baker [Lv. 2275]").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
											end
										end
									end
								end                       
							end
						else
							if game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]") then
								TP(game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
							else
								if game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]") then
									TP(game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
								end
							end
						end
					end
				end
			end)
		end
	end
end)    

Farm1:Toggle("Auto Spawn",true,function(value)
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner",value)
end)

Farm1:Toggle("Auto Dough King", _G.Autodoughking,function(value)
	 _G.Autodoughking = value
	StopTween( _G.Autodoughking)
end)

Farm1:Toggle("Enabled Hop Server", _G.AutodoughkingHop,function(value)
	 _G.AutodoughkingHop = value
end)

spawn(function()
	while wait() do
		if  _G.Autodoughking and World3 then
			pcall(function()
				if game:GetService("Workspace").Enemies:FindFirstChild("Dough King [Lv. 2300] [Raid Boss]") then
					for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if v.Name == "Dough King [Lv. 2300] [Raid Boss]" then
							if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
								repeat task.wait()
									AutoHaki()
									EquipWeapon(_G.SelectWeapon)
									v.HumanoidRootPart.CanCollide = false
									v.Humanoid.WalkSpeed = 0
									v.HumanoidRootPart.Size = Vector3.new(50,50,50)
									topos(v.HumanoidRootPart.CFrame * CFrame.new(2,40,2))
									game:GetService("VirtualUser"):CaptureController()
									game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
									sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
								until not  _G.Autodoughking or not v.Parent or v.Humanoid.Health <= 0
							end
						end
					end
				else
				topos(CFrame.new(-2662.818603515625, 1062.3480224609375, -11853.6953125))
					if game:GetService("ReplicatedStorage"):FindFirstChild("Dough King [Lv. 2300] [Raid Boss]") then
						topos(game:GetService("ReplicatedStorage"):FindFirstChild("Dough King [Lv. 2300] [Raid Boss]").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
					else
						if  _G.AutodoughkingHop then
							Hop()
						end
					end
				end
			end)
		end
	end
end)
    
Set:Label("Settings Auto Farm")
local WeaponList = {
    "Melee","Devil Fruit","Sword","Gun"
    }
local SelectWeapon = Set:Drop("Select Weapon / Combat",false,WeaponList,function(Value)
    _G.SelectWeapon = Value
end)
spawn(function()
    while wait() do
    pcall(function()
     if _G.SelectWeapon == "Melee" then
     for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
     if v.ToolTip == "Melee" then
     if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
        _G.SelectWeapon = v.Name
     end
     end
     end
     elseif _G.SelectWeapon == "Sword" then
     for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
     if v.ToolTip == "Sword" then
     if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
        _G.SelectWeapon = v.Name
     end
     end
     end
     elseif _G.SelectWeapon == "Devil Fruit" then
     for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
     if v.ToolTip == "Blox Fruit" then
     if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
        _G.SelectWeapon = v.Name
     end
     end
     end
     elseif _G.SelectWeapon == "Gun" then
     for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
     if v.ToolTip == "Gun" then
     if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
        _G.SelectWeapon = v.Name
     end
     end
     end
     else
       for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
     if v.ToolTip == _G.SelectWeapon then
        _G.SelectWeapon = v.Name
     end
     end
     end
     end)
    end
    end) 
    Set:Toggle("Double Quest",true,function(t)
        _G.Double_Quest = t
    end)
    local NoLoopDuplicate = false
        local SubQuest = false
        local oldmob = Name
        local oldcheckquest = NameMon
        
        task.spawn(function()
            while wait() do
                pcall(function()
                    if _G.AutoFarm then
                        if _G.Double_Quest then 
                            if SubQuest == true then 
                                if LevelFarm then 
                                    if tonumber(LevelFarm-1) ~= 0 then 
                                        CheckOldQuest(tonumber(LevelFarm-1))
                                    end
                                end
                            else
                                CheckQuest()
                                oldmob = Name
                                oldcheckquest = NameMon
                                spawn(function()
                                    pcall(function()
                                        if NoLoopDuplicate == false then 
                                            if CheckNotifyComplete() and _G.AutoFarm then
                                                NoLoopDuplicate = true 
                                                while wait() do
                                                    SubQuest = true
                                                    if CheckNotifyComplete() or _G.AutoFarm == false then
                                                        break;
                                                    end
                                                end
                                                SubQuest = false
                                                NoLoopDuplicate = false
                                            end
                                        end
                                    end)
                                end)
                                if SubQuest == true then  
                                    if LevelFarm then 
                                        if tonumber(LevelFarm-1) ~= 0 then 
                                            CheckOldQuest(tonumber(LevelFarm-1))
                                        end
                                    end
                                end
                            end
                        else
                            CheckQuest()
                        end
                        AutoFarmLevel()
                    end
                end)
            end
        end)
        Set:Toggle("Fast Attack",true,function(t)
        FastAttack = t
    end)
    require(game.ReplicatedStorage.Util.CameraShaker):Stop()
    local plr = game.Players.LocalPlayer
	local CbFw = getupvalues(require(game.Players.LocalPlayer.PlayerScripts.CombatFramework))
	local CbFw2 = CbFw[2]

	function GetCurrentBlade() 
		local p13 = CbFw2.activeController
		local ret = p13.blades[1]
		if not ret then return end
		while ret.Parent~=game.Players.LocalPlayer.Character do ret=ret.Parent end
		return ret
	end
	local CombatFramework = require(game:GetService("Players").LocalPlayer.PlayerScripts:WaitForChild("CombatFramework"))
	local CombatFrameworkR = getupvalues(CombatFramework)[2]
	local RigController = require(game:GetService("Players")["LocalPlayer"].PlayerScripts.CombatFramework.RigController)
	local RigControllerR = getupvalues(RigController)[2]
	local realbhit = require(game.ReplicatedStorage.CombatFramework.RigLib)
	local cooldownfastattack = tick()
		
	task.spawn(function()
		local CombatFrameworkOld = require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework)
		local CombatFrameworkR = getupvalues(CombatFrameworkOld)[2]
		local CameraShakerR = require(game.ReplicatedStorage.Util.CameraShaker)
			
		function maxincrement()
			return #CombatFrameworkR.activeController.anims.basic
		end
			
		spawn(function()
			local old
			old = hookmetamethod(game, "__namecall",function(self,...)
				local method = getnamecallmethod() local args = {...}
				if method:lower() == "fireserver" then
					if args[1] == "hit" then
						args[3] = maxincrement()
						return old(self,unpack(args))
					end 
				end
			return old(self,...)
			end) 
		end)
	end)
	
	spawn(function()
		while task.wait() do
			pcall(function()
				if FastAttack then
					repeat task.wait(0.185)
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
					until not FastAttack
				end
			end)
		end
	end)
    Set:Toggle("Bring Mob",true,function(t)
        _G.BringMonster = t
    end)

    spawn(function()
        while task.wait() do
            pcall(function()
                if _G.BringMonster then
                    CheckQuest()
                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if _G.AutoFarm and StartMagnet and v.Name == Mon and (Mon == "Factory Staff [Lv. 800]" or Mon == "Monkey [Lv. 14]" or Mon == "Dragon Crew Warrior [Lv. 1575]" or Mon == "Dragon Crew Archer [Lv. 1600]") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and (v.HumanoidRootPart.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 250 then
                            v.HumanoidRootPart.Size = Vector3.new(150,150,150)
                            v.HumanoidRootPart.CFrame = PosMon
                            v.Humanoid:ChangeState(14)
                            v.HumanoidRootPart.CanCollide = false
                            v.Head.CanCollide = false
                            if v.Humanoid:FindFirstChild("Animator") then
                                v.Humanoid.Animator:Destroy()
                            end
                            sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                        elseif _G.AutoFarm and StartMagnet and v.Name == Mon and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and (v.HumanoidRootPart.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 250 then
                            v.HumanoidRootPart.Size = Vector3.new(150,150,150)
                            v.HumanoidRootPart.CFrame = PosMon
                            v.Humanoid:ChangeState(14)
                            v.HumanoidRootPart.CanCollide = false
                            v.Head.CanCollide = false
                            if v.Humanoid:FindFirstChild("Animator") then
                                v.Humanoid.Animator:Destroy()
                            end
                            sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                        end
                        if _G.AutoRengoku and StartRengokuMagnet then
                            if (v.Name == "Snow Lurker [Lv. 1375]" or v.Name == "Arctic Warrior [Lv. 1350]") and (v.HumanoidRootPart.Position - RengokuMon.Position).Magnitude <= 250 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                v.HumanoidRootPart.Size = Vector3.new(1500,1500,1500)
                                v.Humanoid:ChangeState(14)
                                v.HumanoidRootPart.CanCollide = false
                                v.Head.CanCollide = false
                                v.HumanoidRootPart.CFrame = RengokuMon
                                if v.Humanoid:FindFirstChild("Animator") then
                                    v.Humanoid.Animator:Destroy()
                                end
                                sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                            end
                        end
                        if _G.AutoMusketeerHat and StartMagnetMusketeerhat then
                            if v.Name == "Forest Pirate [Lv. 1825]" and (v.HumanoidRootPart.Position - MusketeerHatMon.Position).Magnitude <= 250 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                v.Humanoid:ChangeState(14)
                                v.HumanoidRootPart.CanCollide = false
                                v.Head.CanCollide = false
                                v.HumanoidRootPart.CFrame = MusketeerHatMon
                                if v.Humanoid:FindFirstChild("Animator") then
                                    v.Humanoid.Animator:Destroy()
                                end
                                sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                            end
                        end
                        if _G.AutoObservationHakiV2 and Mangnetcitzenmon then
                            if v.Name == "Forest Pirate [Lv. 1825]" and (v.HumanoidRootPart.Position - MusketeerHatMon.Position).Magnitude <= 250 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                v.Humanoid:ChangeState(14)
                                v.HumanoidRootPart.CanCollide = false
                                v.Head.CanCollide = false
                                v.HumanoidRootPart.CFrame = PosHee
                                if v.Humanoid:FindFirstChild("Animator") then
                                    v.Humanoid.Animator:Destroy()
                                end
                                sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                            end
                        end
                        if _G.Auto_EvoRace and StartEvoMagnet then
                            if v.Name == "Zombie [Lv. 950]" and (v.HumanoidRootPart.Position - PosMonEvo.Position).Magnitude <= 250 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                v.Humanoid:ChangeState(14)
                                v.HumanoidRootPart.CanCollide = false
                                v.Head.CanCollide = false
                                v.HumanoidRootPart.CFrame = PosMonEvo
                                if v.Humanoid:FindFirstChild("Animator") then
                                    v.Humanoid.Animator:Destroy()
                                end
                                sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                            end
                        end
                        if _G.AutoBartilo and AutoBartiloBring then
                            if v.Name == "Swan Pirate [Lv. 775]" and (v.HumanoidRootPart.Position - PosMonBarto.Position).Magnitude <= 250 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                v.Humanoid:ChangeState(14)
                                v.HumanoidRootPart.CanCollide = false
                                v.Head.CanCollide = false
                                v.HumanoidRootPart.CFrame = PosMonBarto
                                if v.Humanoid:FindFirstChild("Animator") then
                                    v.Humanoid.Animator:Destroy()
                                end
                                sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                            end
                        end
                        if _G.AutoFarmFruitMastery and StartMasteryFruitMagnet then
                            if v.Name == "Monkey [Lv. 14]" then
                                if (v.HumanoidRootPart.Position - PosMonMasteryFruit.Position).Magnitude <= 250 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                    v.Humanoid:ChangeState(14)
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Head.CanCollide = false
                                    v.HumanoidRootPart.CFrame = PosMonMasteryFruit
                                    if v.Humanoid:FindFirstChild("Animator") then
                                        v.Humanoid.Animator:Destroy()
                                    end
                                    sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                                end
                            elseif v.Name == "Factory Staff [Lv. 800]" then
                                if (v.HumanoidRootPart.Position - PosMonMasteryFruit.Position).Magnitude <= 250 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                    v.Humanoid:ChangeState(14)
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Head.CanCollide = false
                                    v.HumanoidRootPart.CFrame = PosMonMasteryFruit
                                    if v.Humanoid:FindFirstChild("Animator") then
                                        v.Humanoid.Animator:Destroy()
                                    end
                                    sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                                end
                            elseif v.Name == Mon then
                                if (v.HumanoidRootPart.Position - PosMonMasteryFruit.Position).Magnitude <= 250 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                    v.Humanoid:ChangeState(14)
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Head.CanCollide = false
                                    v.HumanoidRootPart.CFrame = PosMonMasteryFruit
                                    if v.Humanoid:FindFirstChild("Animator") then
                                        v.Humanoid.Animator:Destroy()
                                    end
                                    sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                                end
                            end
                        end
                        if _G.AutoFarmGunMastery and StartMasteryGunMagnet then
                            if v.Name == "Monkey [Lv. 14]" then
                                if (v.HumanoidRootPart.Position - PosMonMasteryGun.Position).Magnitude <= 250 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                    v.Humanoid:ChangeState(14)
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Head.CanCollide = false
                                    v.HumanoidRootPart.CFrame = PosMonMasteryGun
                                    if v.Humanoid:FindFirstChild("Animator") then
                                        v.Humanoid.Animator:Destroy()
                                    end
                                    sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                                end
                            elseif v.Name == "Factory Staff [Lv. 800]" then
                                if (v.HumanoidRootPart.Position - PosMonMasteryGun.Position).Magnitude <= 250 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                    v.Humanoid:ChangeState(14)
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Head.CanCollide = false
                                    v.HumanoidRootPart.CFrame = PosMonMasteryGun
                                    if v.Humanoid:FindFirstChild("Animator") then
                                        v.Humanoid.Animator:Destroy()
                                    end
                                    sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                                end
                            elseif v.Name == Mon then
                                if (v.HumanoidRootPart.Position - PosMonMasteryGun.Position).Magnitude <= 250 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                    v.Humanoid:ChangeState(14)
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Head.CanCollide = false
                                    v.HumanoidRootPart.CFrame = PosMonMasteryGun
                                    if v.Humanoid:FindFirstChild("Animator") then
                                        v.Humanoid.Animator:Destroy()
                                    end
                                    sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                                end
                            end
                        end
                        if _G.Auto_Bone and StartMagnetBoneMon then
                            if (v.Name == "Reborn Skeleton [Lv. 1975]" or v.Name == "Living Zombie [Lv. 2000]" or v.Name == "Demonic Soul [Lv. 2025]" or v.Name == "Posessed Mummy [Lv. 2050]") and (v.HumanoidRootPart.Position - PosMonBone.Position).Magnitude <= 250 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                v.Humanoid:ChangeState(14)
                                v.HumanoidRootPart.CanCollide = false
                                v.Head.CanCollide = false
                                v.HumanoidRootPart.CFrame = PosMonBone
                                if v.Humanoid:FindFirstChild("Animator") then
                                    v.Humanoid.Animator:Destroy()
                                end
                                sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                            end
                        end
                        if _G.AutoFarmCandy and StartCandyMagnet then
                            if (v.Name == "Ice Cream Chef [Lv. 2125]" or v.Name == "Ice Cream Commander [Lv. 2150]") and (v.HumanoidRootPart.Position - CandyMon.Position).Magnitude <= 250 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                v.Humanoid:ChangeState(14)
                                v.HumanoidRootPart.CanCollide = false
                                v.Head.CanCollide = false
                                v.HumanoidRootPart.CFrame = CandyMon
                                if v.Humanoid:FindFirstChild("Animator") then
                                    v.Humanoid.Animator:Destroy()
                                end
                                sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                            end
                        end
                        if _G.AutoDoughtBoss and MagnetDought then
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
    Set:Toggle("Auto Click",false,function(value)
        _G.AutoClick = value
        end)
        
        
        Set:Toggle("Remove Attack",false,function(value)
            getgenv().A = require(game:GetService("ReplicatedStorage").CombatFramework.RigLib).wrapAttackAnimationAsync 
        getgenv().B = require(game.Players.LocalPlayer.PlayerScripts.CombatFramework.Particle).play
        spawn(function()
        
            while wait() do
                    pcall(function()
                        require(game:GetService("ReplicatedStorage").CombatFramework.RigLib).wrapAttackAnimationAsync =function(a1,a2,a3,a4,a5)
                            local GetBladeHits = require(game:GetService("ReplicatedStorage").CombatFramework.RigLib).getBladeHits(a2,a3,a4)
                            if GetBladeHits then
                                 require(game:GetService("ReplicatedStorage").CombatFramework.RigLib).play = function() end
                                a1:Play(0.2, 0.2, 0.2)
                                a5(GetBladeHits)
                                 require(game:GetService("ReplicatedStorage").CombatFramework.RigLib).play = getgenv().B 
                                wait(.5)
                                a1:Stop()
                            end
                        end
                    end)
                
            end
        end)
           end)
           
           Set:Toggle("Delete Attack FIx",false,function(d)
            _G.DeleteAttackFx = d
            if _G.DeleteAttackFx == true then
            while _G.DeleteAttackFx do wait()
                for i, v in pairs(game.Workspace["_WorldOrigin"]:GetChildren()) do
                    if v.Name == "CurvedRing" or v.Name == "DamageCounter" or v.Name == "SwordSlash" or v.Name == "Damage" or v.Name == "Mon" or v.Name == "Sounds" then
                        v:Destroy() 
                    end
                end
            end
            end
        end)
            
            spawn(function()
              while wait() do
              if _G.WhiteScreen then
                for i, v in pairs(game.Workspace["_WorldOrigin"]:GetChildren()) do
                    if v.Name == "CurvedRing" or v.Name == "SlashHit" or v.Name == "DamageCounter" or v.Name == "SwordSlash" or v.Name == "SlashTail" or v.Name == "Sounds" then
                        v:Destroy() 
                    end
                end
            end
            end
        end) 
            
        Set:Toggle("White Screen",_G.WhiteScreen,function(value)
            _G.WhiteScreen = value
        if _G.WhiteScreen == true then
            game:GetService("RunService"):Set3dRenderingEnabled(false)
        elseif _G.WhiteScreen == false then
            game:GetService("RunService"):Set3dRenderingEnabled(true)
        end
        end)
            
         getgenv().A = require(game:GetService("ReplicatedStorage").CombatFramework.RigLib).wrapAttackAnimationAsync
        getgenv().B = require(game.Players.LocalPlayer.PlayerScripts.CombatFramework.Particle).play
        spawn(function()
            while wait() do
              if _G.DeleteAttackFx then
                    pcall(function()
                        require(game:GetService("ReplicatedStorage").CombatFramework.RigLib).wrapAttackAnimationAsync =function(a1,a2,a3,a4,a5)
                            local GetBladeHits = require(game:GetService("ReplicatedStorage").CombatFramework.RigLib).getBladeHits(a2,a3,a4)
                            if GetBladeHits then
                                 require(game:GetService("ReplicatedStorage").CombatFramework.RigLib).play = function() end
                                a1:Play(0.2, 0.2, 0.2)
                                a5(GetBladeHits)
                                 require(game:GetService("ReplicatedStorage").CombatFramework.RigLib).play = getgenv().B 
                                wait(.5)
                                a1:Stop()
                            end
                        end
                    end)
                 end
            end
            end)
            Set:Toggle("Invisible Monsters",_G.inv,function(value)
            _G.inv = value
            
                 while wait() do
                     if _G.inv then
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
              end
            end)  
			Ohter:Label("[ Other ]")
			Ohter:Toggle("Auto Musketeer Hat",_G.AutoMusketeerHat,function(value)
				_G.AutoMusketeerHat = value
				StopTween(_G.AutoMusketeerHat)
			end)
			
			spawn(function()
				pcall(function()
					while wait(.1) do
						if _G.AutoMusketeerHat then
							if game:GetService("Players").LocalPlayer.Data.Level.Value >= 1800 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress").KilledBandits == false then
								if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Forest Pirate") and string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "50") and game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
									if game:GetService("Workspace").Enemies:FindFirstChild("Forest Pirate [Lv. 1825]") then
										for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
											if v.Name == "Forest Pirate [Lv. 1825]" then
												repeat task.wait()
													pcall(function()
														EquipWeapon(_G.SelectWeapon)
														AutoHaki()
														v.HumanoidRootPart.Size = Vector3.new(50,50,50)
														topos(v.HumanoidRootPart.CFrame * CFrame.new(2,20,2))
														v.HumanoidRootPart.CanCollide = false
														game:GetService'VirtualUser':CaptureController()
														game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
														MusketeerHatMon = v.HumanoidRootPart.CFrame
														StartMagnetMusketeerhat = true
													end)
												until _G.AutoMusketeerHat == false or not v.Parent or v.Humanoid.Health <= 0 or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
												StartMagnetMusketeerhat = false
											end
										end
									else
										StartMagnetMusketeerhat = false
										topos(CFrame.new(-13206.452148438, 425.89199829102, -7964.5537109375))
									end
								else
									topos(CFrame.new(-12443.8671875, 332.40396118164, -7675.4892578125))
									if (Vector3.new(-12443.8671875, 332.40396118164, -7675.4892578125) - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 30 then
										wait(1.5)
										game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest","CitizenQuest",1)
									end
								end
							elseif game:GetService("Players").LocalPlayer.Data.Level.Value >= 1800 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress").KilledBoss == false then
								if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible and string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Captain Elephant") and game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
									if game:GetService("Workspace").Enemies:FindFirstChild("Captain Elephant [Lv. 1875] [Boss]") then
										for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
											if v.Name == "Captain Elephant [Lv. 1875] [Boss]" then
												OldCFrameElephant = v.HumanoidRootPart.CFrame
												repeat task.wait()
													pcall(function()
														EquipWeapon(_G.SelectWeapon)
														AutoHaki()
														v.HumanoidRootPart.CanCollide = false
														v.HumanoidRootPart.Size = Vector3.new(50,50,50)
														topos(v.HumanoidRootPart.CFrame * CFrame.new(2,20,2))
														v.HumanoidRootPart.CanCollide = false
														v.HumanoidRootPart.CFrame = OldCFrameElephant
														game:GetService("VirtualUser"):CaptureController()
														game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672))
														sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
													end)
												until _G.AutoMusketeerHat == false or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
											end
										end
									else
										topos(CFrame.new(-13374.889648438, 421.27752685547, -8225.208984375))
									end
								else
									topos(CFrame.new(-12443.8671875, 332.40396118164, -7675.4892578125))
									if (CFrame.new(-12443.8671875, 332.40396118164, -7675.4892578125).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 4 then
										wait(1.5)
										game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress","Citizen")
									end
								end
							elseif game:GetService("Players").LocalPlayer.Data.Level.Value >= 1800 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress","Citizen") == 2 then
								topos(CFrame.new(-12512.138671875, 340.39279174805, -9872.8203125))
							end
						end
					end
				end)
			end)
			
			Ohter:Toggle("Auto Rainbow Haki",_G.Auto_Rainbow_Haki,function(value)
				_G.Auto_Rainbow_Haki = value
				StopTween(_G.Auto_Rainbow_Haki)
			end)
			
			spawn(function()
				pcall(function()
					while wait(.1) do
						if _G.Auto_Rainbow_Haki then
							if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
								topos(CFrame.new(-11892.0703125, 930.57672119141, -8760.1591796875))
								if (Vector3.new(-11892.0703125, 930.57672119141, -8760.1591796875) - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 30 then
									wait(1.5)
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("HornedMan","Bet")
								end
							elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true and string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Stone") then
								if game:GetService("Workspace").Enemies:FindFirstChild("Stone [Lv. 1550] [Boss]") then
									for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
										if v.Name == "Stone [Lv. 1550] [Boss]" then
											OldCFrameRainbow = v.HumanoidRootPart.CFrame
											repeat task.wait()
												EquipWeapon(_G.SelectWeapon)
												topos(v.HumanoidRootPart.CFrame * CFrame.new(2,20,2))
												v.HumanoidRootPart.CanCollide = false
												v.HumanoidRootPart.CFrame = OldCFrameRainbow
												v.HumanoidRootPart.Size = Vector3.new(50,50,50)
												game:GetService("VirtualUser"):CaptureController()
												game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672))
												sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
											until _G.Auto_Rainbow_Haki == false or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
										end
									end
								else
									topos(CFrame.new(-1086.11621, 38.8425903, 6768.71436, 0.0231462717, -0.592676699, 0.805107772, 2.03251839e-05, 0.805323839, 0.592835128, -0.999732077, -0.0137055516, 0.0186523199))
								end
							elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true and string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Island Empress") then
								if game:GetService("Workspace").Enemies:FindFirstChild("Island Empress [Lv. 1675] [Boss]") then
									for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
										if v.Name == "Island Empress [Lv. 1675] [Boss]" then
											OldCFrameRainbow = v.HumanoidRootPart.CFrame
											repeat task.wait()
												EquipWeapon(_G.SelectWeapon)
												topos(v.HumanoidRootPart.CFrame * CFrame.new(2,20,2))
												v.HumanoidRootPart.CanCollide = false
												v.HumanoidRootPart.CFrame = OldCFrameRainbow
												v.HumanoidRootPart.Size = Vector3.new(50,50,50)
												game:GetService("VirtualUser"):CaptureController()
												game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672))
												sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
											until _G.Auto_Rainbow_Haki == false or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
										end
									end
								else
									topos(CFrame.new(5713.98877, 601.922974, 202.751251, -0.101080291, -0, -0.994878292, -0, 1, -0, 0.994878292, 0, -0.101080291))
								end
							elseif string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Kilo Admiral") then
								if game:GetService("Workspace").Enemies:FindFirstChild("Kilo Admiral [Lv. 1750] [Boss]") then
									for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
										if v.Name == "Kilo Admiral [Lv. 1750] [Boss]" then
											OldCFrameRainbow = v.HumanoidRootPart.CFrame
											repeat task.wait()
												EquipWeapon(_G.SelectWeapon)
												topos(v.HumanoidRootPart.CFrame * CFrame.new(2,20,2))
												v.HumanoidRootPart.CanCollide = false
												v.HumanoidRootPart.Size = Vector3.new(50,50,50)
												v.HumanoidRootPart.CFrame = OldCFrameRainbow
												game:GetService("VirtualUser"):CaptureController()
												game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672))
												sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
											until _G.Auto_Rainbow_Haki == false or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
										end
									end
								else
									topos(CFrame.new(2877.61743, 423.558685, -7207.31006, -0.989591599, -0, -0.143904909, -0, 1.00000012, -0, 0.143904924, 0, -0.989591479))
								end
							elseif string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Captain Elephant") then
								if game:GetService("Workspace").Enemies:FindFirstChild("Captain Elephant [Lv. 1875] [Boss]") then
									for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
										if v.Name == "Captain Elephant [Lv. 1875] [Boss]" then
											OldCFrameRainbow = v.HumanoidRootPart.CFrame
											repeat task.wait()
												EquipWeapon(_G.SelectWeapon)
												topos(v.HumanoidRootPart.CFrame * CFrame.new(2,20,2))
												v.HumanoidRootPart.CanCollide = false
												v.HumanoidRootPart.Size = Vector3.new(50,50,50)
												v.HumanoidRootPart.CFrame = OldCFrameRainbow
												game:GetService("VirtualUser"):CaptureController()
												game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672))
												sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
											until _G.Auto_Rainbow_Haki == false or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
										end
									end
								else
									topos(CFrame.new(-13485.0283, 331.709259, -8012.4873, 0.714521289, 7.98849911e-08, 0.69961375, -1.02065748e-07, 1, -9.94383065e-09, -0.69961375, -6.43015241e-08, 0.714521289))
								end
							elseif string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Beautiful Pirate") then
								if game:GetService("Workspace").Enemies:FindFirstChild("Beautiful Pirate [Lv. 1950] [Boss]") then
									for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
										if v.Name == "Beautiful Pirate [Lv. 1950] [Boss]" then
											OldCFrameRainbow = v.HumanoidRootPart.CFrame
											repeat task.wait()
												EquipWeapon(_G.SelectWeapon)
												topos(v.HumanoidRootPart.CFrame * CFrame.new(2,20,2))
												v.HumanoidRootPart.CanCollide = false
												v.HumanoidRootPart.Size = Vector3.new(50,50,50)
												v.HumanoidRootPart.CFrame = OldCFrameRainbow
												game:GetService("VirtualUser"):CaptureController()
												game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672))
												sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
											until _G.Auto_Rainbow_Haki == false or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
										end
									end
								else
									topos(CFrame.new(5312.3598632813, 20.141201019287, -10.158538818359))
								end
							else
								topos(CFrame.new(-11892.0703125, 930.57672119141, -8760.1591796875))
								if (Vector3.new(-11892.0703125, 930.57672119141, -8760.1591796875) - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 30 then
									wait(1.5)
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("HornedMan","Bet")
								end
							end
						end
					end
				end)
			end)
			
			Ohter:Toggle("Auto Citizen Quest",_G.AutoObservationHakiV2,function(x)
				_G.AutoObservationHakiV2 = x
			end)
		
			spawn(function()
				while wait() do
					if _G.AutoObservationHakiV2 then
						if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
							repeat 
								topos(CFrame.new(-12444.78515625, 332.40396118164, -7673.1806640625)) 
								wait() 
							until _G.StopTween == true or not _G.AutoObservationHakiV2 or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-12444.78515625, 332.40396118164, -7673.1806640625)).Magnitude <= 10
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
													game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
												end
												EquipWeapon(_G.SelectWeapon)
												topos(v.HumanoidRootPart.CFrame * CFrame.new(1,20,1))
												PosHee =  v.HumanoidRootPart.CFrame
												if sethiddenproperty then
													sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
												end
												v.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
												v.HumanoidRootPart.CanCollide = false
												v.HumanoidRootPart.Size = Vector3.new(50,50,50)
												game:GetService'VirtualUser':CaptureController()
												game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
												Mangnetcitzenmon = true
											until _G.AutoObservationHakiV2 == false or v.Humanoid.Health <= 0
											Mangnetcitzenmon = false
										end
									end
								else
									repeat 
										topos(CFrame.new(-13277.568359375, 370.34185791016, -7821.1572265625)) 
										wait() 
									until _G.StopTween == true or not _G.AutoObservationHakiV2 or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-13277.568359375, 370.34185791016, -7821.1572265625)).Magnitude <= 10
								end
							elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text ==  "Defeat  Captain Elephant (0/1)" then 
								if game:GetService("Workspace").Enemies:FindFirstChild("Captain Elephant [Lv. 1875] [Boss]") then
									for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
										if v.Name == "Captain Elephant [Lv. 1875] [Boss]" then
											repeat wait()
												if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
													game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
												end
												EquipWeapon(_G.SelectWeapon)
												topos(v.HumanoidRootPart.CFrame * CFrame.new(1,20,1))										
												if sethiddenproperty then
													sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
												end
												v.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
												v.HumanoidRootPart.CanCollide = false
												v.HumanoidRootPart.Size = Vector3.new(50,50,50)
												game:GetService'VirtualUser':CaptureController()
												game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
											until _G.AutoObservationHakiV2 == false or v.Humanoid.Health <= 0
										end
									end
								else
									repeat 
										topos(CFrame.new(-13493.12890625, 318.89553833008, -8373.7919921875)) 
										wait() 
									until _G.StopTween == true or not _G.AutoObservationHakiV2 or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-13493.12890625, 318.89553833008, -8373.7919921875)).Magnitude <= 10
								end        
							end
						end
						if game.Players.LocalPlayer.Backpack:FindFirstChild("Banana") and  game.Players.LocalPlayer.Backpack:FindFirstChild("Apple") and game.Players.LocalPlayer.Backpack:FindFirstChild("Pineapple") then
							repeat 
								topos(CFrame.new(-12444.78515625, 332.40396118164, -7673.1806640625)) 
								wait() 
							until _G.StopTween == true or not _G.AutoObservationHakiV2 or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-12444.78515625, 332.40396118164, -7673.1806640625)).Magnitude <= 10
							wait(.5)
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress","Citizen")
						elseif game.Players.LocalPlayer.Backpack:FindFirstChild("Fruit Bowl") or game.Players.LocalPlayer.Character:FindFirstChild("Fruit Bowl") then
							repeat 
								topos(CFrame.new(-10920.125, 624.20275878906, -10266.995117188)) 
								wait() 
							until _G.StopTween == true or not _G.AutoObservationHakiV2 or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-10920.125, 624.20275878906, -10266.995117188)).Magnitude <= 10
							wait(.5)
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("KenTalk2","Start")
							wait(1)
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("KenTalk2","Buy")
						else
							for i,v in pairs(game.Workspace:GetDescendants()) do
								if v.Name == "Apple" or v.Name == "Banana" or v.Name == "Pineapple" then
									v.Handle.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,1,10)
									wait()
									firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart,v.Handle,0)    
									wait()
								end
							end   
						end
					end
				end
			end)
		
			spawn(function()
				while wait() do
					pcall(function()
						if _G.AutoObservationHakiV2 then
							if sethiddenproperty then
								sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
							end
						end
					end)
					game:GetService("RunService").Heartbeat:Wait()
				end
			end)
		
			spawn(function()
				game:GetService("RunService").Heartbeat:connect(function()
					pcall(function()
						if _G.AutoObservationHakiV2 then
							if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid") then
								game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState(11)
							end
						end
					end)
				end)
			end)
		
			spawn(function()
				pcall(function()
					game:GetService("RunService").Heartbeat:Connect(function()
						game:GetService("RunService").Heartbeat:Wait()
						if _G.AutoObservationHakiV2 and StatrMagnet then
							for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
								if v.Name == "Forest Pirate [Lv. 1825]" and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
									if v.Name == "Forest Pirate [Lv. 1825]" then
										v.HumanoidRootPart.CanCollide = false
										v.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
										v.HumanoidRootPart.CFrame = PosHee
									end
								end
							end
						end
					end)
				end)
			end)
		
			spawn(function()
				game:GetService("RunService").Heartbeat:connect(function()
					game:GetService("RunService").Heartbeat:Wait()
					pcall(function()
						if _G.AutoObservationHakiV2 and StatrMagnet then
							CheckQuest()
							for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
								if v.Name == Ms then
									v.Humanoid:ChangeState(11)
								end
							end
						end
					end)
					game:GetService("RunService").Heartbeat:Wait()
				end)
			end)
			
			Ohter:Toggle("Auto Rengoku",_G.AutoRengoku,function(value)
				_G.AutoRengoku = value
				StopTween(_G.AutoRengoku)
			end)
			
			spawn(function()
				pcall(function()
					while wait() do
						if _G.AutoRengoku then
							if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Hidden Key") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Hidden Key") then
								EquipWeapon("Hidden Key")
								topos(CFrame.new(6571.1201171875, 299.23028564453, -6967.841796875))
							elseif game:GetService("Workspace").Enemies:FindFirstChild("Snow Lurker [Lv. 1375]") or game:GetService("Workspace").Enemies:FindFirstChild("Arctic Warrior [Lv. 1350]") then
								for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
									if (v.Name == "Snow Lurker [Lv. 1375]" or v.Name == "Arctic Warrior [Lv. 1350]") and v.Humanoid.Health > 0 then
										repeat task.wait()
											EquipWeapon(_G.SelectWeapon)
											AutoHaki()
											v.HumanoidRootPart.CanCollide = false
											v.HumanoidRootPart.Size = Vector3.new(50,50,50)
											RengokuMon = v.HumanoidRootPart.CFrame
											topos(v.HumanoidRootPart.CFrame * CFrame.new(2,20,2))
											game:GetService'VirtualUser':CaptureController()
											game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
											StartRengokuMagnet = true
										until game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Hidden Key") or _G.AutoRengoku == false or not v.Parent or v.Humanoid.Health <= 0
										StartRengokuMagnet = false
									end
								end
							else
								StartRengokuMagnet = false
								topos(CFrame.new(5439.716796875, 84.420944213867, -6715.1635742188))
							end
						end
					end
				end)
			end)
			
			Ohter:Toggle("Auto Yama",_G.AutoYama,function(value)
				_G.AutoYama = value
				StopTween(_G.AutoYama)
			end)
			
			spawn(function()
				while wait() do
					if _G.AutoYama then
						if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter","Progress") >= 30 then
							repeat wait(.1)
								fireclickdetector(game:GetService("Workspace").Map.Waterfall.SealedKatana.Handle.ClickDetector)
							until game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Yama") or not _G.AutoYama
						end
					end
				end
			end)
			
			Ohter:Toggle("Auto Evo Race (V2)",_G.Auto_EvoRace,function(value)
				_G.Auto_EvoRace = value
				StopTween(_G.Auto_EvoRace)
			end)
			
			spawn(function()
				pcall(function()
					while wait(.1) do
						if _G.Auto_EvoRace then
							if not game:GetService("Players").LocalPlayer.Data.Race:FindFirstChild("Evolved") then
								if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","1") == 0 then
									topos(CFrame.new(-2779.83521, 72.9661407, -3574.02002, -0.730484903, 6.39014104e-08, -0.68292886, 3.59963224e-08, 1, 5.50667032e-08, 0.68292886, 1.56424669e-08, -0.730484903))
									if (Vector3.new(-2779.83521, 72.9661407, -3574.02002) - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 4 then
										wait(1.3)
										game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","2")
									end
								elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","1") == 1 then
									pcall(function()
										if not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flower 1") and not game:GetService("Players").LocalPlayer.Character:FindFirstChild("Flower 1") then
											topos(game:GetService("Workspace").Flower1.CFrame)
										elseif not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flower 2") and not game:GetService("Players").LocalPlayer.Character:FindFirstChild("Flower 2") then
											topos(game:GetService("Workspace").Flower2.CFrame)
										elseif not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flower 3") and not game:GetService("Players").LocalPlayer.Character:FindFirstChild("Flower 3") then
											if game:GetService("Workspace").Enemies:FindFirstChild("Zombie [Lv. 950]") then
												for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
													if v.Name == "Zombie [Lv. 950]" then
														repeat task.wait()
															AutoHaki()
															EquipWeapon(_G.SelectWeapon)
															topos(v.HumanoidRootPart.CFrame * CFrame.new(2,20,2))
															v.HumanoidRootPart.CanCollide = false
															v.HumanoidRootPart.Size = Vector3.new(50,50,50)
															game:GetService("VirtualUser"):CaptureController()
															game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672))
															PosMonEvo = v.HumanoidRootPart.CFrame
															StartEvoMagnet = true
														until game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flower 3") or not v.Parent or v.Humanoid.Health <= 0 or _G.Auto_EvoRace == false
														StartEvoMagnet = false
													end
												end
											else
												StartEvoMagnet = false
												topos(CFrame.new(-5685.9233398438, 48.480125427246, -853.23724365234))
											end
										end
									end)
								elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","1") == 2 then
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","3")
								end
							end
						end
					end
				end)
			end)
			
			Ohter:Toggle("Auto Bartlio Quest",_G.AutoBartilo,function(value)
				_G.AutoBartilo = value
			end)
			
			spawn(function()
				pcall(function()
					while wait(.1) do
						if _G.AutoBartilo then
							if game:GetService("Players").LocalPlayer.Data.Level.Value >= 800 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 0 then
								if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Swan Pirates") and string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "50") and game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then 
									if game:GetService("Workspace").Enemies:FindFirstChild("Swan Pirate [Lv. 775]") then
										Ms = "Swan Pirate [Lv. 775]"
										for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
											if v.Name == Ms then
												pcall(function()
													repeat task.wait()
														sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
														EquipWeapon(_G.SelectWeapon)
														AutoHaki()
														v.HumanoidRootPart.Transparency = 1
														v.HumanoidRootPart.CanCollide = false
														v.HumanoidRootPart.Size = Vector3.new(50,50,50)
														topos(v.HumanoidRootPart.CFrame * CFrame.new(2,20,2))													
														PosMonBarto =  v.HumanoidRootPart.CFrame
														game:GetService'VirtualUser':CaptureController()
														game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
														AutoBartiloBring = true
													until not v.Parent or v.Humanoid.Health <= 0 or _G.AutoBartilo == false or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
													AutoBartiloBring = false
												end)
											end
										end
									else
										repeat topos(CFrame.new(932.624451, 156.106079, 1180.27466, -0.973085582, 4.55137119e-08, -0.230443969, 2.67024713e-08, 1, 8.47491108e-08, 0.230443969, 7.63147128e-08, -0.973085582)) wait() until not _G.AutoBartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(932.624451, 156.106079, 1180.27466, -0.973085582, 4.55137119e-08, -0.230443969, 2.67024713e-08, 1, 8.47491108e-08, 0.230443969, 7.63147128e-08, -0.973085582)).Magnitude <= 10
									end
								else
									repeat topos(CFrame.new(-456.28952, 73.0200958, 299.895966)) wait() until not _G.AutoBartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-456.28952, 73.0200958, 299.895966)).Magnitude <= 10
									wait(1.1)
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest","BartiloQuest",1)
								end 
							elseif game:GetService("Players").LocalPlayer.Data.Level.Value >= 800 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 1 then
								if game:GetService("Workspace").Enemies:FindFirstChild("Jeremy [Lv. 850] [Boss]") then
									Ms = "Jeremy [Lv. 850] [Boss]"
									for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
										if v.Name == Ms then
											OldCFrameBartlio = v.HumanoidRootPart.CFrame
											repeat task.wait()
												sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
												EquipWeapon(_G.SelectWeapon)
												AutoHaki()
												v.HumanoidRootPart.Transparency = 1
												v.HumanoidRootPart.CanCollide = false
												v.HumanoidRootPart.Size = Vector3.new(50,50,50)
												v.HumanoidRootPart.CFrame = OldCFrameBartlio
												topos(v.HumanoidRootPart.CFrame * CFrame.new(2,20,2))
												game:GetService'VirtualUser':CaptureController()
												game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
												sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
											until not v.Parent or v.Humanoid.Health <= 0 or _G.AutoBartilo == false
										end
									end
								elseif game:GetService("ReplicatedStorage"):FindFirstChild("Jeremy [Lv. 850] [Boss]") then
									repeat topos(CFrame.new(-456.28952, 73.0200958, 299.895966)) wait() until not _G.AutoBartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-456.28952, 73.0200958, 299.895966)).Magnitude <= 10
									wait(1.1)
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo")
									wait(1)
									repeat topos(CFrame.new(2099.88159, 448.931, 648.997375)) wait() until not _G.AutoBartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(2099.88159, 448.931, 648.997375)).Magnitude <= 10
									wait(2)
								else
									repeat topos(CFrame.new(2099.88159, 448.931, 648.997375)) wait() until not _G.AutoBartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(2099.88159, 448.931, 648.997375)).Magnitude <= 10
								end
							elseif game:GetService("Players").LocalPlayer.Data.Level.Value >= 800 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 2 then
								repeat topos(CFrame.new(-1850.49329, 13.1789551, 1750.89685)) wait() until not _G.AutoBartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-1850.49329, 13.1789551, 1750.89685)).Magnitude <= 10
								wait(1)
								repeat topos(CFrame.new(-1858.87305, 19.3777466, 1712.01807)) wait() until not _G.AutoBartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-1858.87305, 19.3777466, 1712.01807)).Magnitude <= 10
								wait(1)
								repeat topos(CFrame.new(-1803.94324, 16.5789185, 1750.89685)) wait() until not _G.AutoBartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-1803.94324, 16.5789185, 1750.89685)).Magnitude <= 10
								wait(1)
								repeat topos(CFrame.new(-1858.55835, 16.8604317, 1724.79541)) wait() until not _G.AutoBartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-1858.55835, 16.8604317, 1724.79541)).Magnitude <= 10
								wait(1)
								repeat topos(CFrame.new(-1869.54224, 15.987854, 1681.00659)) wait() until not _G.AutoBartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-1869.54224, 15.987854, 1681.00659)).Magnitude <= 10
								wait(1)
								repeat topos(CFrame.new(-1800.0979, 16.4978027, 1684.52368)) wait() until not _G.AutoBartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-1800.0979, 16.4978027, 1684.52368)).Magnitude <= 10
								wait(1)
								repeat topos(CFrame.new(-1819.26343, 14.795166, 1717.90625)) wait() until not _G.AutoBartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-1819.26343, 14.795166, 1717.90625)).Magnitude <= 10
								wait(1)
								repeat topos(CFrame.new(-1813.51843, 14.8604736, 1724.79541)) wait() until not _G.AutoBartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-1813.51843, 14.8604736, 1724.79541)).Magnitude <= 10
							end
						end 
					end
				end)
			end)
			
			Ohter:Toggle("Auto Holy Torch",_G.AutoHolyTorch,function(value)
				_G.AutoHolyTorch = value
				StopTween(_G.AutoHolyTorch)
			end)
			
			spawn(function()
				while wait() do
					if _G.AutoHolyTorch then
						pcall(function()
							wait(1)
							TP1(CFrame.new(-10752, 417, -9366))
							wait(1)
							TP1(CFrame.new(-11672, 334, -9474))
							wait(1)
							TP1(CFrame.new(-12132, 521, -10655))
							wait(1)
							TP1(CFrame.new(-13336, 486, -6985))
							wait(1)
							TP1(CFrame.new(-13489, 332, -7925))
						end)
					end
				end
			end)
			Auto1:Label("Misc Buddy Sword")
    
			Auto1:Toggle("Auto Buddy Sword",_G.AutoBudySword,function(value)
        _G.AutoBudySword = value
        StopTween(_G.AutoBudySword)
    end)
    
    Auto1:Toggle("Auto Buddy Sword Hop",_G.AutoBudySwordHop,function(value)
        _G.AutoBudySwordHop = value
    end)
    
    spawn(function()
        while wait() do
            if _G.AutoBudySword and World3 then
                pcall(function()
                    if game:GetService("Workspace").Enemies:FindFirstChild("Cake Queen [Lv. 2175] [Boss]") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Cake Queen [Lv. 2175] [Boss]" then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat task.wait()
                                        AutoHaki()
                                        EquipWeapon(_G.SelectWeapon)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid.WalkSpeed = 0
                                        v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                        topos(v.HumanoidRootPart.CFrame * CFrame.new(2,40,2))
                                        game:GetService("VirtualUser"):CaptureController()
                                        game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
                                        sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
                                    until not _G.AutoBudySword or not v.Parent or v.Humanoid.Health <= 0
                                end
                            end
                        end
                    else
                    topos(CFrame.new(-731.2034301757812, 381.5658874511719, -11198.4951171875))
                        if game:GetService("ReplicatedStorage"):FindFirstChild("Cake Queen [Lv. 2175] [Boss]") then
                            topos(game:GetService("ReplicatedStorage"):FindFirstChild("Cake Queen [Lv. 2175] [Boss]").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                        else
                            if _G.AutoBudySwordHop then
                                Hop()
                            end
                        end
                    end
                end)
            end
        end
    end)
    
    Auto1:Label("Observation")
    
    local ObservationRange = Auto1:Label("")
    
    spawn(function()
        while wait() do
            pcall(function()
                ObservationRange:Change("Observation Range Level : "..math.floor(game:GetService("Players").LocalPlayer.VisionRadius.Value))
            end)
        end
    end)
    
    Auto1:Toggle("Auto Farm Observation",_G.AutoObservation,function(value)
        _G.AutoObservation = value
        StopTween(_G.AutoObservation)
    end)
    
    spawn(function()
        while wait() do
            pcall(function()
                if _G.AutoObservation then
                    repeat task.wait()
                        if not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then
                            game:GetService('VirtualUser'):CaptureController()
                            game:GetService('VirtualUser'):SetKeyDown('0x65')
                            wait(2)
                            game:GetService('VirtualUser'):SetKeyUp('0x65')
                        end
                    until game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") or not _G.AutoObservation
                end
            end)
        end
    end)
    
    Auto1:Toggle("Auto Farm Observation Hop",_G.AutoObservation_Hop,function(value)
        _G.AutoObservation_Hop = value
    end)
    
    spawn(function()
        pcall(function()
            while wait() do
                if _G.AutoObservation then
                    if game:GetService("Players").LocalPlayer.VisionRadius.Value >= 3000 then
                        game:GetService("StarterGui"):SetCore("SendNotification", {
                            Icon = "rbxassetid://0";
                            Title = "Observation", 
                            Text = "You Have Max Points"
                        })
                        wait(2)
                    else
                        if World2 then
                            if game:GetService("Workspace").Enemies:FindFirstChild("Lava Pirate [Lv. 1200]") then
                                if game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then
                                    repeat task.wait()
                                        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies:FindFirstChild("Lava Pirate [Lv. 1200]").HumanoidRootPart.CFrame * CFrame.new(3,0,0)
                                    until _G.AutoObservation == false or not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")
                                else
                                    repeat task.wait()
                                        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies:FindFirstChild("Lava Pirate [Lv. 1200]").HumanoidRootPart.CFrame * CFrame.new(0,50,0)+
                                            wait(1)
                                        if not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") and _G.AutoObservation_Hop == true then
                                            game:GetService("TeleportService"):Teleport(game.PlaceId,game:GetService("Players").LocalPlayer)
                                        end
                                    until _G.AutoObservation == false or game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")
                                end
                            else
                                topos(CFrame.new(-5478.39209, 15.9775667, -5246.9126))
                            end
                        elseif World1 then
                            if game:GetService("Workspace").Enemies:FindFirstChild("Galley Captain [Lv. 650]") then
                                if game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then
                                    repeat task.wait()
                                        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies:FindFirstChild("Galley Captain [Lv. 650]").HumanoidRootPart.CFrame * CFrame.new(3,0,0)
                                    until _G.AutoObservation == false or not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")
                                else
                                    repeat task.wait()
                                        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies:FindFirstChild("Galley Captain [Lv. 650]").HumanoidRootPart.CFrame * CFrame.new(0,50,0)
                                        wait(1)
                                        if not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") and _G.AutoObservation_Hop == true then
                                            game:GetService("TeleportService"):Teleport(game.PlaceId,game:GetService("Players").LocalPlayer)
                                        end
                                    until _G.AutoObservation == false or game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")
                                end
                            else
                                topos(CFrame.new(5533.29785, 88.1079102, 4852.3916))
                            end
                        elseif World3 then
                            if game:GetService("Workspace").Enemies:FindFirstChild("Giant Islander [Lv. 1650]") then
                                if game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then
                                    repeat task.wait()
                                        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies:FindFirstChild("Giant Islander [Lv. 1650]").HumanoidRootPart.CFrame * CFrame.new(3,0,0)
                                    until _G.AutoObservation == false or not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")
                                else
                                    repeat task.wait()
                                        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies:FindFirstChild("Giant Islander [Lv. 1650]").HumanoidRootPart.CFrame * CFrame.new(0,50,0)
                                        wait(1)
                                        if not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") and _G.AutoObservation_Hop == true then
                                            game:GetService("TeleportService"):Teleport(game.PlaceId,game:GetService("Players").LocalPlayer)
                                        end
                                    until _G.AutoObservation == false or game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")
                                end
                            else
                                topos(CFrame.new(4530.3540039063, 656.75695800781, -131.60952758789))
                            end
                        end
                    end
                end
            end
        end)
    end)
    Auto1:Label("Soul Guitar")
    
    local FM = Auto1:Label('Moon Check')
    
    task.spawn(function()
            while task.wait() do
                pcall(function()
                    if game:GetService("Lighting").Sky.MoonTextureId=="http://www.roblox.com/asset/?id=9709149431" then
                        FM:Change("🌕: Full Moon 100%")
                    elseif game:GetService("Lighting").Sky.MoonTextureId=="http://www.roblox.com/asset/?id=9709149052" then
                        FM:Change("🌖’ : Full Moon 75%")
                    elseif game:GetService("Lighting").Sky.MoonTextureId=="http://www.roblox.com/asset/?id=9709143733" then
                        FM:Change("🌗“ : Full Moon 50%")
                    elseif game:GetService("Lighting").Sky.MoonTextureId=="http://www.roblox.com/asset/?id=9709150401" then
                        FM:Change("🌘 : Full Moon 25%")
                    elseif game:GetService("Lighting").Sky.MoonTextureId=="http://www.roblox.com/asset/?id=9709149680" then
                        FM:Change("🌘: Full Moon 15%")
                    else
                        FM:Change("🌑: Full Moon 0%")
                    end
                end)
            end
    end)
    
	Auto1:Toggle("Auto Soul Guitar",_G.AutoNevaSoulGuitar,function(value)
  _G.AutoNevaSoulGuitar = value    
 StopTween(_G.AutoNevaSoulGuitar)
 end)

spawn(function()
		while wait() do
			pcall(function()
				if _G.AutoNevaSoulGuitar then
					if GetWeaponInventory("Soul Guitar") == false then
						if (CFrame.new(-9681.458984375, 6.139880657196045, 6341.3720703125).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 5000 then
							if game:GetService("Workspace").NPCs:FindFirstChild("Skeleton Machine") then
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("soulGuitarBuy",true)
							else
								if game:GetService("Workspace").Map["Haunted Castle"].Candle1.Transparency == 0 then
									if game:GetService("Workspace").Map["Haunted Castle"].Placard1.Left.Part.Transparency == 0 then
										Quest2 = true
										repeat wait() topos(CFrame.new(-8762.69140625, 176.84783935546875, 6171.3076171875)) until (CFrame.new(-8762.69140625, 176.84783935546875, 6171.3076171875).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 or not _G.AutoNevaSoulGuitar
										wait(1)
										fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"].Placard7.Left.ClickDetector)
										wait(1)
										fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"].Placard6.Left.ClickDetector)
										wait(1)
										fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"].Placard5.Left.ClickDetector)
										wait(1)
										fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"].Placard4.Right.ClickDetector)
										wait(1)
										fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"].Placard3.Left.ClickDetector)
										wait(1)
										fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"].Placard2.Right.ClickDetector)
										wait(1)
										fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"].Placard1.Right.ClickDetector)
										wait(1)
									elseif game:GetService("Workspace").Map["Haunted Castle"].Tablet.Segment1:FindFirstChild("ClickDetector") then
										if game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part1:FindFirstChild("ClickDetector") then
											Quest4 = true
											repeat wait() topos(CFrame.new(-9553.5986328125, 65.62338256835938, 6041.58837890625)) until (CFrame.new(-9553.5986328125, 65.62338256835938, 6041.58837890625).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 or not _G.AutoNevaSoulGuitar
											wait(1)
											topos(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part3.CFrame)
											wait(1)
											fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part3.ClickDetector)
											wait(1)
											topos(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part4.CFrame)
											wait(1)
											fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part4.ClickDetector)
											wait(1)
											fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part4.ClickDetector)
											wait(1)
											fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part4.ClickDetector)
											wait(1)
											topos(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part6.CFrame)
											wait(1)
											fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part6.ClickDetector)
											wait(1)
											fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part6.ClickDetector)
											wait(1)
											topos(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part8.CFrame)
											wait(1)
											fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part8.ClickDetector)
											wait(1)
											topos(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part10.CFrame)
											wait(1)
											fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part10.ClickDetector)
											wait(1)
											fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part10.ClickDetector)
											wait(1)
											fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part10.ClickDetector)
										else
											Quest3 = true
											--Not Work Yet
										end
									else
										if game:GetService("Workspace").NPCs:FindFirstChild("Ghost") then
											local args = {
												[1] = "GuitarPuzzleProgress",
												[2] = "Ghost"
											}

											game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
										end
										if game.Workspace.Enemies:FindFirstChild("Living Zombie [Lv. 2000]") then
											for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
												if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
													if v.Name == "Living Zombie [Lv. 2000]" then
														EquipWeapon(_G.SelectWeapon)
														v.HumanoidRootPart.Size = Vector3.new(60,60,60)
														v.HumanoidRootPart.Transparency = 1
														v.Humanoid.JumpPower = 0
														v.Humanoid.WalkSpeed = 0
														v.HumanoidRootPart.CanCollide = false
														v.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,20,0)
														topos(CFrame.new(-10160.787109375, 138.6616973876953, 5955.03076171875))
														game:GetService'VirtualUser':CaptureController()
														game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
													end
												end
											end
										else
											topos(CFrame.new(-10160.787109375, 138.6616973876953, 5955.03076171875))
										end
									end
								else    
									if string.find(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("gravestoneEvent",2), "Error") then
										print("Go to Grave")
										topos(CFrame.new(-8653.2060546875, 140.98487854003906, 6160.033203125))
									elseif string.find(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("gravestoneEvent",2), "Nothing") then
										print("Wait Next Night")
									else
										game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("gravestoneEvent",2,true)
									end
								end
							end
						else
							topos(CFrame.new(-9681.458984375, 6.139880657196045, 6341.3720703125))
	end
	else
if _G.soulGuitarhop then
hop()
end
						end
					end
			end)
		end
end)

Auto1:Toggle("Auto Soul Guitar + Hop",false,function(value)
  _G.soulGuitarhop = value    
 end)

 Auto1:Label("Dual Curse Katana Test")

 Auto1:Toggle("Auto Dual Curse Katana",_G.AutoCdk,function(value)
 _G.AutoCdk = value
end)

spawn(function()
		while wait() do
			pcall(function()
				if _G.AutoCdk then
					if GetMaterial("Alucard Fragment") == 0 then
						Auto_Quest_Yama_1 = true
						Auto_Quest_Yama_2 = false
						Auto_Quest_Yama_3 = false
						Auto_Quest_Tushita_1 = false
						Auto_Quest_Tushita_2 = false
						Auto_Quest_Tushita_3 = false
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress","Evil")
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","StartTrial","Evil")
					elseif GetMaterial("Alucard Fragment") == 1 then
						Auto_Quest_Yama_1 = false
						Auto_Quest_Yama_2 = true
						Auto_Quest_Yama_3 = false
						Auto_Quest_Tushita_1 = false
						Auto_Quest_Tushita_2 = false
						Auto_Quest_Tushita_3 = false
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress","Evil")
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","StartTrial","Evil")
					elseif GetMaterial("Alucard Fragment") == 2 then
						Auto_Quest_Yama_1 = false
						Auto_Quest_Yama_2 = false
						Auto_Quest_Yama_3 = true
						Auto_Quest_Tushita_1 = false
						Auto_Quest_Tushita_2 = false
						Auto_Quest_Tushita_3 = false
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress","Evil")
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","StartTrial","Evil")
					elseif GetMaterial("Alucard Fragment") == 3 then
						Auto_Quest_Yama_1 = false
						Auto_Quest_Yama_2 = false
						Auto_Quest_Yama_3 = false
						Auto_Quest_Tushita_1 = true
						Auto_Quest_Tushita_2 = false
						Auto_Quest_Tushita_3 = false
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress","Good")
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","StartTrial","Good")
					elseif GetMaterial("Alucard Fragment") == 4 then
						Auto_Quest_Yama_1 = false
						Auto_Quest_Yama_2 = false
						Auto_Quest_Yama_3 = false
						Auto_Quest_Tushita_1 = false
						Auto_Quest_Tushita_2 = true
						Auto_Quest_Tushita_3 = false
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress","Good")
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","StartTrial","Good")
					elseif GetMaterial("Alucard Fragment") == 5 then
						Auto_Quest_Yama_1 = false
						Auto_Quest_Yama_2 = false
						Auto_Quest_Yama_3 = false
						Auto_Quest_Tushita_1 = false
						Auto_Quest_Tushita_2 = false
						Auto_Quest_Tushita_3 = true
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress","Good")
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","StartTrial","Good")
					elseif GetMaterial("Alucard Fragment") == 6 then
						if game:GetService("Workspace").Enemies:FindFirstChild("Cursed Skeleton Boss [Lv. 2025] [Boss]") or game:GetService("Workspace").ReplicatedStorage:FindFirstChild("Cursed Skeleton Boss [Lv. 2025] [Boss]") then
							Auto_Quest_Yama_1 = false
							Auto_Quest_Yama_2 = false
							Auto_Quest_Yama_3 = false
							Auto_Quest_Tushita_1 = false
							Auto_Quest_Tushita_2 = false
							Auto_Quest_Tushita_3 = false
							if game:GetService("Workspace").Enemies:FindFirstChild("Cursed Skeleton Boss [Lv. 2025] [Boss]") or game:GetService("Workspace").Enemies:FindFirstChild("Cursed Skeleton [Lv. 2200]") then
								for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
									if v.Name == "Cursed Skeleton Boss [Lv. 2025] [Boss]" or v.Name == "Cursed Skeleton [Lv. 2200]" then
										if v.Humanoid.Health > 0 then
											v.HumanoidRootPart.CanCollide = false
											v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
											topos(v.HumanoidRootPart.CFrame * CFrame.new(0,50,0))
											game:GetService'VirtualUser':CaptureController()
											game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
										end
									end
								end
							end
						else
							if (CFrame.new(-12361.7060546875, 603.3547973632812, -6550.5341796875).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 100 then
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress","Good")
								wait(1)
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress","Evil")
								wait(1)
								topos(CFrame.new(-12361.7060546875, 603.3547973632812, -6550.5341796875))
								wait(1.5)
								game:GetService("VirtualInputManager"):SendKeyEvent(true, "E", false, game)
								wait(1.5)
								topos(CFrame.new(-12253.5419921875, 598.8999633789062, -6546.8388671875))
							else
								topos(CFrame.new(-12361.7060546875, 603.3547973632812, -6550.5341796875))
							end   
						end
					end
				end
			end)
		end
	end)

	spawn(function()
		while wait() do
			if Auto_Quest_Yama_1 then
				pcall(function()
					if game:GetService("Workspace").Enemies:FindFirstChild("Mythological Pirate [Lv. 1850]") then
						for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if v.Name == "Mythological Pirate [Lv. 1850]" then
								repeat wait()
									topos(v.HumanoidRootPart.CFrame * CFrame.new(0,0,-2))
								until _G.AutoCdk == false or Auto_Cursed_Dual_Katana == false or Auto_Quest_Yama_1 == false
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","StartTrial","Evil")
							end
						end
					else
						topos(CFrame.new(-13451.46484375, 543.712890625, -6961.0029296875))
					end
				end)
			end
		end
	end)

	spawn(function()
		while wait() do
			pcall(function()
				if Auto_Quest_Yama_2 then
					for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if v:FindFirstChild("HazeESP") then
							v.HazeESP.Size = UDim2.new(50,50,50,50)
							v.HazeESP.MaxDistance = "inf"
						end
					end
					for i,v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
						if v:FindFirstChild("HazeESP") then
							v.HazeESP.Size = UDim2.new(50,50,50,50)
							v.HazeESP.MaxDistance = "inf"
						end
					end
				end
			end)
		end
	end)

	spawn(function()
		while wait() do
			pcall(function()
				for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
					if Auto_Quest_Yama_2 and v:FindFirstChild("HazeESP") and (v.HumanoidRootPart.Position - PosMonsEsp.Position).magnitude <= 300 then
						v.HumanoidRootPart.CFrame = PosMonsEsp
						v.HumanoidRootPart.CanCollide = false
						v.HumanoidRootPart.Size = Vector3.new(50,50,50)
						if not v.HumanoidRootPart:FindFirstChild("BodyVelocity") then
							local vc = Instance.new("BodyVelocity", v.HumanoidRootPart)
							vc.MaxForce = Vector3.new(1, 1, 1) * math.huge
							vc.Velocity = Vector3.new(0, 0, 0)
						end
					end
				end
			end)
		end
	end)

	spawn(function()
		while wait() do
			if Auto_Quest_Yama_2 then 
				pcall(function() 
					for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if v:FindFirstChild("HazeESP") then
							repeat wait()
								if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 2000 then
									topos(y.HumanoidRootPart.CFrameMon * CFrame.new(0,20,0))
								else
									StartMagnet = true
									FastAttack = true
									if Auto_Buso then
										if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
											game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
										end
									end
									if not game.Players.LocalPlayer.Character:FindFirstChild(_G.Select_Weapon) then
										wait()
										EquipWeapon(_G.SelectWeapon)
									end
									PosMonsEsp = v.HumanoidRootPart.CFrame
									if not FastAttack then
										game:GetService'VirtualUser':CaptureController()
										game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
									end
									v.HumanoidRootPart.Size = Vector3.new(60,60,60)
									if _G.Configs["Show Hitbox"] then
										v.HumanoidRootPart.Transparency = _G.Hitbox_LocalTransparency
									else
										v.HumanoidRootPart.Transparency = 1
									end
									v.Humanoid.JumpPower = 0
									v.Humanoid.WalkSpeed = 0
									v.HumanoidRootPart.CanCollide = false
									v.Humanoid:ChangeState(11)
									topos(v.HumanoidRootPart.CFrame * CFrame.new(0,20,0))								
								end      
							until Auto_Cursed_Dual_Katana == false or Auto_Quest_Yama_2 == false or not v.Parent or v.Humanoid.Health <= 0 or not v:FindFirstChild("HazeESP")
						else
							for x,y in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
								if y:FindFirstChild("HazeESP") then
									if (y.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 2000 then
										topos(y.HumanoidRootPart.CFrameMon* CFrame.new(0,20,0))
									else
										topos(y.HumanoidRootPart.CFrame * CFrame.new(0,20,0))
									end
								end
							end
						end
					end
				end)
			end
		end
	end)

	spawn(function()
		while wait() do
			if Auto_Quest_Yama_3 then
				pcall(function()
					if game.Players.LocalPlayer.Backpack:FindFirstChild("Hallow Essence") then         
						_G.Auto_Bone = false           
						topos(game:GetService("Workspace").Map["Haunted Castle"].Summoner.Detection.CFrame)
					elseif game:GetService("Workspace").Map:FindFirstChild("HellDimension") then
						repeat wait()
							if game:GetService("Workspace").Enemies:FindFirstChild("Cursed Skeleton [Lv. 2200]") or game:GetService("Workspace").Enemies:FindFirstChild("Cursed Skeleton [Lv. 2200] [Boss]") or game:GetService("Workspace").Enemies:FindFirstChild("Hell's Messenger [Lv. 2200] [Boss]") then
								for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
									if v.Name == "Cursed Skeleton [Lv. 2200]" or v.Name == "Cursed Skeleton [Lv. 2200] [Boss]" or v.Name == "Hell's Messenger [Lv. 2200] [Boss]" then
										if v.Humanoid.Health > 0 then
											repeat wait()
												StartMagnet = true
												FastAttack = true
												if Auto_Buso then
													if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
														game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
													end
												end
												if not game.Players.LocalPlayer.Character:FindFirstChild(_G.Select_Weapon) then
													wait()
													EquipWeapon(_G.SelectWeapon)
												end
												PosMonsEsp = v.HumanoidRootPart.CFrame
												if not FastAttack then
													game:GetService'VirtualUser':CaptureController()
													game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
												end
												v.HumanoidRootPart.Size = Vector3.new(60,60,60)
												if _G.Configs["Show Hitbox"] then
													v.HumanoidRootPart.Transparency = _G.Hitbox_LocalTransparency
												else
													v.HumanoidRootPart.Transparency = 1
												end
												v.Humanoid.JumpPower = 0
												v.Humanoid.WalkSpeed = 0
												v.HumanoidRootPart.CanCollide = false
												v.Humanoid:ChangeState(11)
												topos(v.HumanoidRootPart.CFrame * CFrame.new(0,50,0))
											until v.Humanoid.Health <= 0 or not v.Parent or Auto_Quest_Yama_3 == false
										end
									end
								end
							else
								wait(5)
								topos(game:GetService("Workspace").Map.HellDimension.Torch1.CFrame)
								wait(1.5)
								game:GetService("VirtualInputManager"):SendKeyEvent(true, "E", false, game)
								wait(1.5)        
								topos(game:GetService("Workspace").Map.HellDimension.Torch2.CFrame)
								wait(1.5)
								game:GetService("VirtualInputManager"):SendKeyEvent(true, "E", false, game)
								wait(1.5)     
								topos(game:GetService("Workspace").Map.HellDimension.Torch3.CFrame)
								wait(1.5)
								game:GetService("VirtualInputManager"):SendKeyEvent(true, "E", false, game)
								wait(1.5)     
								topos(game:GetService("Workspace").Map.HellDimension.Exit.CFrame)
							end
						until Auto_Cursed_Dual_Katana == false or Auto_Quest_Yama_3 == false or GetMaterial("Alucard Fragment") == 3
					else
						if game:GetService("Workspace").Enemies:FindFirstChild("Soul Reaper [Lv. 2100] [Raid Boss]") or game.ReplicatedStorage:FindFirstChild("Soul Reaper [Lv. 2100] [Raid Boss]") then
							if game:GetService("Workspace").Enemies:FindFirstChild("Soul Reaper [Lv. 2100] [Raid Boss]") then
								for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
									if v.Name == "Soul Reaper [Lv. 2100] [Raid Boss]" then
										if v.Humanoid.Health > 0 then
											repeat wait()
												topos(v.HumanoidRootPart.CFrame * CFrame.new(0,0,-2))
											until Auto_Cursed_Dual_Katana == false or Auto_Quest_Yama_3 == false or game:GetService("Workspace").Map:FindFirstChild("HellDimension")
										end
									end
								end
							else
								topos(CFrame.new(-9570.033203125, 315.9346923828125, 6726.89306640625))
							end
						else
							_G.Auto_Bone = true
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bones","Buy",1,1)
						end
					end
				end)
			end
		end
	end)

	spawn(function() 
		while wait() do
			if Auto_Quest_Tushita_1 then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","BoatQuest",workspace.NPCs:FindFirstChild("Luxury Boat Dealer"))
			end
		end
	end)

	spawn(function()
		while wait() do
			if Auto_Quest_Tushita_1 then
				topos(CFrame.new(-9546.990234375, 21.139892578125, 4686.1142578125))
				wait(5)
				topos(CFrame.new(-6120.0576171875, 16.455780029296875, -2250.697265625))
				wait(5)
				topos(CFrame.new(-9533.2392578125, 7.254445552825928, -8372.69921875))    
			end
		end
	end)

	spawn(function()
		while wait() do
			if Auto_Quest_Tushita_2 then
				pcall(function()
					if (CFrame.new(-5539.3115234375, 313.800537109375, -2972.372314453125).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 500 then
						for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if Auto_Quest_Tushita_2 and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
								if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 2000 then
									repeat wait()
										v.HumanoidRootPart.CanCollide = false
										v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
										topos(v.HumanoidRootPart.CFrame * CFrame.new(0,50,0))
										game:GetService'VirtualUser':CaptureController()
										game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
									until v.Humanoid.Health <= 0 or not v.Parent or Auto_Quest_Tushita_2 == false
								end
							end
						end
					else
						topos(CFrame.new(-5545.1240234375, 313.800537109375, -2976.616455078125))
					end
				end)
			end
		end
	end)

	spawn(function()
		while wait() do
			if Auto_Quest_Tushita_3 then
				pcall(function()
					if game:GetService("Workspace").Enemies:FindFirstChild("Cake Queen [Lv. 2175] [Boss]") or game.ReplicatedStorage:FindFirstChild("Cake Queen [Lv. 2175] [Boss]") then
						if game:GetService("Workspace").Enemies:FindFirstChild("Cake Queen [Lv. 2175] [Boss]") then
							for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
								if v.Name == "Cake Queen [Lv. 2175] [Boss]" then
									if v.Humanoid.Health > 0 then
										repeat wait()
											if Auto_Buso then
												if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
													game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
												end
											end
											if not game.Players.LocalPlayer.Character:FindFirstChild(_G.Select_Weapon) then
												wait()
												EquipWeapon(_G.SelectWeapon)
											end
											if not FastAttack then
												game:GetService'VirtualUser':CaptureController()
												game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
											end
											v.HumanoidRootPart.Size = Vector3.new(60,60,60)
											if _G.Configs["Show Hitbox"] then
												v.HumanoidRootPart.Transparency = _G.Hitbox_LocalTransparency
											else
												v.HumanoidRootPart.Transparency = 1
											end
											v.Humanoid.JumpPower = 0
											v.Humanoid.WalkSpeed = 0
											v.HumanoidRootPart.CanCollide = false
											v.Humanoid:ChangeState(11)
											topos(v.HumanoidRootPart.CFrame * CFrame.new(0,50,0))
										until Auto_Cursed_Dual_Katana == false or Auto_Quest_Tushita_3 == false or game:GetService("Workspace").Map:FindFirstChild("HeavenlyDimension")
									end
								end
							end
						else
							topos(CFrame.new(-709.3132934570312, 381.6005859375, -11011.396484375))
						end
					elseif game:GetService("Workspace").Map:FindFirstChild("HeavenlyDimension") then
						repeat wait()
							if game:GetService("Workspace").Enemies:FindFirstChild("Cursed Skeleton [Lv. 2200]") or game:GetService("Workspace").Enemies:FindFirstChild("Cursed Skeleton [Lv. 2200] [Boss]") or game:GetService("Workspace").Enemies:FindFirstChild("Heaven's Guardian [Lv. 2200] [Boss]") then
								for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
									if v.Name == "Cursed Skeleton [Lv. 2200]" or v.Name == "Cursed Skeleton [Lv. 2200] [Boss]" or v.Name == "Heaven's Guardian [Lv. 2200] [Boss]" then
										if v.Humanoid.Health > 0 then
											repeat wait()
												if Auto_Buso then
													if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
														game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
													end
												end
												if not game.Players.LocalPlayer.Character:FindFirstChild(_G.Select_Weapon) then
													wait()
													EquipWeapon(_G.SelectWeapon)
												end
												if not FastAttack then
													game:GetService'VirtualUser':CaptureController()
													game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
												end
												v.HumanoidRootPart.Size = Vector3.new(60,60,60)
												if _G.Configs["Show Hitbox"] then
													v.HumanoidRootPart.Transparency = _G.Hitbox_LocalTransparency
												else
													v.HumanoidRootPart.Transparency = 1
												end
												v.Humanoid.JumpPower = 0
												v.Humanoid.WalkSpeed = 0
												v.HumanoidRootPart.CanCollide = false
												v.Humanoid:ChangeState(11)
											until v.Humanoid.Health <= 0 or not v.Parent or Auto_Quest_Tushita_3 == false
										end
									end
								end
							else
								wait(5)
								topos(game:GetService("Workspace").Map.HeavenlyDimension.Torch1.CFrame)
								wait(1.5)
								game:GetService("VirtualInputManager"):SendKeyEvent(true, "E", false, game)
								wait(1.5)        
								topos(game:GetService("Workspace").Map.HeavenlyDimension.Torch2.CFrame)
								wait(1.5)
								game:GetService("VirtualInputManager"):SendKeyEvent(true, "E", false, game)
								wait(1.5)     
								topos(game:GetService("Workspace").Map.HeavenlyDimension.Torch3.CFrame)
								wait(1.5)
								game:GetService("VirtualInputManager"):SendKeyEvent(true, "E", false, game)
								wait(1.5)     
								topos(game:GetService("Workspace").Map.HeavenlyDimension.Exit.CFrame)
							end
						until Auto_Cursed_Dual_Katana == false or Auto_Quest_Tushita_3 == false or GetMaterial("Alucard Fragment") == 6
					else
						hop()
					end
				end)
			end
		end
 end)
	
 Auto1:Label(" Tushita ")

 Auto1:Toggle("Auto Tushita", _G.Autotushita,function(value)
         _G.Autotushita = value
        StopTween( _G.Autotushita)
    end)
    
    Auto1:Toggle("Auto Tushita Hop", _G.Autotushitahop,function(value)
         _G.Autotushitahop = value
    end)
    
    spawn(function()
        while wait() do
            if  _G.Autotushita and World3 then
                pcall(function()
                    if game:GetService("Workspace").Enemies:FindFirstChild("Longma [Lv. 2000] [Boss]") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Longma [Lv. 2000] [Boss]" then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat task.wait()
                                        AutoHaki()
                                        EquipWeapon(_G.SelectWeapon)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid.WalkSpeed = 0
                                        v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                        topos(v.HumanoidRootPart.CFrame * CFrame.new(2,40,2))
                                        game:GetService("VirtualUser"):CaptureController()
                                        game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
                                        sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
                                    until not  _G.Autotushita or not v.Parent or v.Humanoid.Health <= 0
                                end
                            end
                        end
                    else
                    topos(CFrame.new(-10238.875976563, 389.7912902832, -9549.7939453125))
                        if game:GetService("ReplicatedStorage"):FindFirstChild("Longma [Lv. 2000] [Boss]") then
                            topos(game:GetService("ReplicatedStorage"):FindFirstChild("Longma [Lv. 2000] [Boss]").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                        else
                            if  _G.Autotushitahop then
                                Hop()
                            end
                        end
                    end
                end)
            end
        end
    end)

    Auto1:Label("Carvander")

    Auto1:Toggle("Auto Cavander", _G.AutoCarvender,function(value)
         _G.AutoCarvender = value
        StopTween( _G.AutoCarvender)
    end)
    
    Auto1:Toggle("Auto Carvander", _G.AutoCarvenderhop,function(value)
         _G.AutoCarvenderhop = value
    end)
    
    spawn(function()
        while wait() do
            if  _G.AutoCarvender and World3 then
                pcall(function()
                    if game:GetService("Workspace").Enemies:FindFirstChild("Beautiful Pirate [Lv. 1950] [Boss]") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Beautiful Pirate [Lv. 1950] [Boss]" then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat task.wait()
                                        AutoHaki()
                                        EquipWeapon(_G.SelectWeapon)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid.WalkSpeed = 0
                                        v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                        topos(v.HumanoidRootPart.CFrame * CFrame.new(2,40,2))
                                        game:GetService("VirtualUser"):CaptureController()
                                        game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
                                        sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
                                    until not  _G.AutoCarvender or not v.Parent or v.Humanoid.Health <= 0
                                end
                            end
                        end
                    else
                    topos(CFrame.new(5311.07421875, 426.0243835449219, 165.12762451171875))
                        if game:GetService("ReplicatedStorage"):FindFirstChild("Beautiful Pirate [Lv. 1950] [Boss]") then
                            topos(game:GetService("ReplicatedStorage"):FindFirstChild("Beautiful Pirate [Lv. 1950] [Boss]").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                        else
                            if  _G.AutoCavanderhop then
                                Hop()
                            end
                        end
                    end
                end)
            end
        end
    end)
    
    Auto2:Label("Twin Hook")
    
    Auto2:Toggle("Auto Twin Hook", _G.AutoTwinHook,function(value)
         _G.AutoTwinHook = value
        StopTween( _G.AutoTwinHook)
    end)
    
    Auto2:Toggle("Auto Twin Hook Hop", _G.AutoTwinHook_Hop,function(value)
         _G.AutoTwinHook_Hop = value
    end)
    
    spawn(function()
        while wait() do
            if  _G.AutoTwinHook and World3 then
                pcall(function()
                    if game:GetService("Workspace").Enemies:FindFirstChild("Captain Elephant [Lv. 1875] [Boss]") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Captain Elephant [Lv. 1875] [Boss]" then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat task.wait()
                                        AutoHaki()
                                        EquipWeapon(_G.SelectWeapon)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid.WalkSpeed = 0
                                        v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                        topos(v.HumanoidRootPart.CFrame * CFrame.new(2,40,2))
                                        game:GetService("VirtualUser"):CaptureController()
                                        game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
                                        sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
                                    until not  _G.AutoTwinHook or not v.Parent or v.Humanoid.Health <= 0
                                end
                            end
                        end
                    else
                    topos(CFrame.new(-13348.0654296875, 405.8904113769531, -8570.62890625))
                        if game:GetService("ReplicatedStorage"):FindFirstChild("Captain Elephant [Lv. 1875] [Boss]") then
                            topos(game:GetService("ReplicatedStorage"):FindFirstChild("Captain Elephant [Lv. 1875] [Boss]").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                        else
                            if  _G.AutoTwinHook_Hop then
                                Hop()
                            end
                        end
                    end
                end)
            end
        end
    end)
    
    Auto2:Label("Advance Dungeon")
    
    Auto2:Toggle("Auto Phoenix Dungeon",_G.AutoAdvanceDungeon,function(value)
        _G.AutoAdvanceDungeon = value
        StopTween(_G.AutoAdvanceDungeon)
    end)
    
    spawn(function()
        while wait() do
            if _G.AutoAdvanceDungeon then
                pcall(function()
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Bird-Bird: Phoenix") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bird-Bird: Phoenix") then
                        if game.Players.LocalPlayer.Backpack:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value) then
                            if game.Players.LocalPlayer.Backpack:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value).Level.Value >= 400 then
                                topos(CFrame.new(-2812.76708984375, 254.803466796875, -12595.560546875))
                                if (CFrame.new(-2812.76708984375, 254.803466796875, -12595.560546875).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10 then
                                    wait(1.5)
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SickScientist","Check")
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SickScientist","Heal")
                                end
                            end
                        elseif game.Players.LocalPlayer.Character:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value) then
                            if game.Players.LocalPlayer.Character:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value).Level.Value >= 400 then
                                topos(CFrame.new(-2812.76708984375, 254.803466796875, -12595.560546875))
                                if (CFrame.new(-2812.76708984375, 254.803466796875, -12595.560546875).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10 then
                                    wait(1.5)
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SickScientist","Check")
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SickScientist","Heal")
                                end
                            end
                        end
                    end
                end)
            end
        end
    end)
    
	Auto2:Label("Misc Law Sword")
    
	Auto2:Toggle("Auto Law Sword (New !)", _G.AutoOderSword,function(value)
     _G.AutoOderSword = value
    StopTween( _G.AutoOderSword)
    end)
    
    Auto2:Toggle("Auto Law Sword Hop (New !)", _G.AutoOderSwordHop,function(value)
         _G.AutoOderSwordHop = value
    end)
    
    spawn(function()
        while wait() do
            if  _G.AutoOderSword then
                pcall(function()
                    if game:GetService("Workspace").Enemies:FindFirstChild("Order [Lv. 1250] [Raid Boss]") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Order [Lv. 1250] [Raid Boss]" then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat task.wait()
                                        AutoHaki()
                                        EquipWeapon(_G.SelectWeapon)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid.WalkSpeed = 0
                                        v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                        topos(v.HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                                        game:GetService("VirtualUser"):CaptureController()
                                        game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
                                        sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
                                    until not  _G.AutoOderSword or not v.Parent or v.Humanoid.Health <= 0
                                end
                            end
                        end
                    else
                        if game:GetService("ReplicatedStorage"):FindFirstChild("Order [Lv. 1250] [Raid Boss]") then
                            topos(game:GetService("ReplicatedStorage"):FindFirstChild("Order [Lv. 1250] [Raid Boss]").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                        else
                            if  _G.AutoOderSwordHop then
                                Hop()
                            end
                        end
                    end
                end)
            end
        end
    end)
    
    Auto2:Button("Buy Microchip Lore Boss",function()
    local args = {
       [1] = "BlackbeardReward",
       [2] = "Microchip",
       [3] = "2"
    }
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end)

Auto2:Button("Start Go To Raid Lore Boss",function()
        if World2 then
            fireclickdetector(game:GetService("Workspace").Map.CircleIsland.RaidSummon.Button.Main.ClickDetector)
        end
    end)
    
    Auto2:Label("Misc Elite")
    
    local EliteProgress = Auto2:Label("")
    
    spawn(function()
        pcall(function()
            while wait() do
                EliteProgress:Change("Elite Progress : "..game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter","Progress"))
            end
        end)
    end)
    
    local Elite_Hunter_Status = Auto2:Label("Status")


	spawn(function()
		while wait() do
			pcall(function()
				if game:GetService("ReplicatedStorage"):FindFirstChild("Diablo [Lv. 1750]") or game:GetService("ReplicatedStorage"):FindFirstChild("Deandre [Lv. 1750]") or game:GetService("ReplicatedStorage"):FindFirstChild("Urban [Lv. 1750]") or game:GetService("Workspace").Enemies:FindFirstChild("Diablo [Lv. 1750]") or game:GetService("Workspace").Enemies:FindFirstChild("Deandre [Lv. 1750]") or game:GetService("Workspace").Enemies:FindFirstChild("Urban [Lv. 1750]") then
					Elite_Hunter_Status:Change("Status : Elite Spawn!")	
				else
					Elite_Hunter_Status:Change("Status : Elite Not Spawn")	
				end
			end)
		end
	end)
	
    Auto2:Toggle("Auto Elite Hunter",_G.AutoElitehunter,function(value)
        _G.AutoElitehunter = value
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
        StopTween(_G.AutoElitehunter)
    end)
    
    spawn(function()
        while wait() do
            if _G.AutoElitehunter and World3 then
                pcall(function()
                    local QuestTitle = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text
                    if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                        repeat  wait()
                            topos(CFrame.new(-5418.892578125, 313.74130249023, -2826.2260742188)) 
                        until not _G.AutoElitehunter or (Vector3.new(-5418.892578125, 313.74130249023, -2826.2260742188)-game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3
                        if (Vector3.new(-5418.892578125, 313.74130249023, -2826.2260742188)-game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 then
                            wait(1.1)
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter")
                            wait(0.5)
                        end
                    elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                        if string.find(QuestTitle,"Diablo") or string.find(QuestTitle,"Deandre") or string.find(QuestTitle,"Urban") then
                            if game:GetService("Workspace").Enemies:FindFirstChild("Diablo [Lv. 1750]") or game:GetService("Workspace").Enemies:FindFirstChild("Deandre [Lv. 1750]") or game:GetService("Workspace").Enemies:FindFirstChild("Urban [Lv. 1750]") then
                                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if v.Name == "Diablo [Lv. 1750]" or v.Name == "Deandre [Lv. 1750]" or v.Name == "Urban [Lv. 1750]" then
                                        if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                            repeat task.wait()
                                                AutoHaki()
                                                EquipWeapon(_G.SelectWeapon)
                                                v.HumanoidRootPart.CanCollide = false
                                                v.Humanoid.WalkSpeed = 0
                                                v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                                topos(v.HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                                                game:GetService("VirtualUser"):CaptureController()
                                                game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
                                                sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                                            until _G.AutoElitehunter == false or v.Humanoid.Health <= 0 or not v.Parent
                                        end
                                    end
                                end
                            else
                                if game:GetService("ReplicatedStorage"):FindFirstChild("Diablo [Lv. 1750]") then
                                    topos(game:GetService("ReplicatedStorage"):FindFirstChild("Diablo [Lv. 1750]").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                                elseif game:GetService("ReplicatedStorage"):FindFirstChild("Deandre [Lv. 1750]") then
                                    topos(game:GetService("ReplicatedStorage"):FindFirstChild("Deandre [Lv. 1750]").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                                elseif game:GetService("ReplicatedStorage"):FindFirstChild("Urban [Lv. 1750]") then
                                    topos(game:GetService("ReplicatedStorage"):FindFirstChild("Urban [Lv. 1750]").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                                else
                                    if _G.AutoEliteHunterHop then
                                        Hop()
                                    else
                                        topos(CFrame.new(-5418.892578125, 313.74130249023, -2826.2260742188))
                                    end
                                end
                            end                    
                        end
                    end
                end)
            end
        end
    end)
    
    Auto2:Toggle("Auto Elite Hunter Hop",_G.AutoEliteHunterHop,function(value)
        _G.AutoEliteHunterHop = value
    end)
    
    M:Label("Seperator Hallow Scythe")
    
    M:Toggle("Auto Hallow Scythe",_G.AutoFarmBossHallow,function(value)
        _G.AutoFarmBossHallow = value
        StopTween(_G.AutoFarmBossHallow)
    end)
    
    M:Toggle("Auto Hallow Scythe Hop",_G.AutoFarmBossHallowHop,function(value)
        _G.AutoFarmBossHallowHop = value
    end)
    
    spawn(function()
        while wait() do
            if _G.AutoFarmBossHallow then
                pcall(function()
                    if game:GetService("Workspace").Enemies:FindFirstChild("Soul Reaper [Lv. 2100] [Raid Boss]") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if string.find(v.Name , "Soul Reaper") then
                                repeat task.wait()
                                    EquipWeapon(_G.SelectWeapon)
                                    AutoHaki()
                                    v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                    topos(v.HumanoidRootPart.CFrame*CFrame.new(2,40,2))
                                    game:GetService("VirtualUser"):CaptureController()
                                    game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 670))
                                    v.HumanoidRootPart.Transparency = 1
                                    sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
                                until v.Humanoid.Health <= 0 or _G.AutoFarmBossHallow == false
                            end
                        end
                    elseif game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Hallow Essence") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Hallow Essence") then
                        repeat topos(CFrame.new(-8932.322265625, 146.83154296875, 6062.55078125)) wait() until (CFrame.new(-8932.322265625, 146.83154296875, 6062.55078125).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 8                        
                        EquipWeapon("Hallow Essence")
                    else
                        if game:GetService("ReplicatedStorage"):FindFirstChild("Soul Reaper [Lv. 2100] [Raid Boss]") then
                            topos(game:GetService("ReplicatedStorage"):FindFirstChild("Soul Reaper [Lv. 2100] [Raid Boss]").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                        else
                            if _G.AutoFarmBossHallowHop then
                                Hop()
                            end
                        end
                    end
                end)
            end
        end
    end)
    
    M:Label("Dark Dagger")
    
    M:Toggle("Auto Kill Admin Boss",_G.AutoDarkDagger,function(value)
        _G.AutoDarkDagger = value
        StopTween(_G.AutoDarkDagger)
    end)
        
    spawn(function()
        pcall(function()
            while wait() do
                if _G.AutoDarkDagger then
                    if game:GetService("Workspace").Enemies:FindFirstChild("rip_indra True Form [Lv. 5000] [Raid Boss]") or game:GetService("Workspace").Enemies:FindFirstChild("rip_indra [Lv. 5000] [Raid Boss]") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == ("rip_indra True Form [Lv. 5000] [Raid Boss]" or v.Name == "rip_indra [Lv. 5000] [Raid Boss]") and v.Humanoid.Health > 0 and v:IsA("Model") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
                                repeat task.wait()
                                    pcall(function()
                                        AutoHaki()
                                        EquipWeapon(_G.SelectWeapon)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                        topos(v.HumanoidRootPart.CFrame * CFrame.new(2,40,2))
                                        game:GetService("VirtualUser"):CaptureController()
                                        game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 670),workspace.CurrentCamera.CFrame)
                                    end)
                                until _G.AutoDarkDagger == false or v.Humanoid.Health <= 0
                            end
                        end
                    else
                        topos(CFrame.new(-5344.822265625, 423.98541259766, -2725.0930175781))
                    end
                end
            end
        end)
    end)
    
    M:Toggle("Auto Kill Admin Boss Hop",_G.AutoDarkDagger_Hop,function(value)
        _G.AutoDarkDagger_Hop = value
    end)
    
    spawn(function()
        pcall(function()
            while wait() do
                if (_G.AutoDarkDagger_Hop and _G.AutoDarkDagger) and World3 and not game:GetService("ReplicatedStorage"):FindFirstChild("rip_indra True Form [Lv. 5000] [Raid Boss]") and not game:GetService("Workspace").Enemies:FindFirstChild("rip_indra True Form [Lv. 5000] [Raid Boss]") then
                    Hop()
                end
            end
        end)
    end)
    
    M:Label(" Trident ")
	
	M:Toggle("Auto Dragon Trident", _G.Auto_Dragon_Trident,function(value)
         _G.Auto_Dragon_Trident = value
        StopTween(_G.Auto_Dragon_Trident)
    end)
    
    M:Toggle("Auto Dragon Trident Hop", _G.Auto_Dragon_Trident_Hop,function(value)
         _G.Auto_Dragon_Trident_Hop = value
    end)
    
    spawn(function()
        while wait() do
            if  _G.Auto_Dragon_Trident and World2 then
                pcall(function()
                    if game:GetService("Workspace").Enemies:FindFirstChild("Tide Keeper [Lv. 1475] [Boss]") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Tide Keeper [Lv. 1475] [Boss]" then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat task.wait()
                                        AutoHaki()
                                        EquipWeapon(_G.SelectWeapon)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid.WalkSpeed = 0
                                        v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                        topos(v.HumanoidRootPart.CFrame * CFrame.new(2,40,2))
                                        game:GetService("VirtualUser"):CaptureController()
                                        game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
                                        sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
                                    until not  _G.Auto_Dragon_Trident or not v.Parent or v.Humanoid.Health <= 0
                                end
                            end
                        end
                    else
                    topos(CFrame.new(-3914.830322265625, 123.29389190673828, -11516.8642578125))
                        if game:GetService("ReplicatedStorage"):FindFirstChild("Tide Keeper [Lv. 1475] [Boss]") then
                            topos(game:GetService("ReplicatedStorage"):FindFirstChild("Tide Keeper [Lv. 1475] [Boss]").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                        else
                            if  _G.Auto_Dragon_Trident_Hop then
                                Hop()
                            end
                        end
                    end
                end)
            end
        end
    end)

	M:Label(" Waden Sword ")
	
	M:Toggle("Auto Waden Sword", _G.Autowaden,function(value)
         _G.Autowaden = value
        StopTween( _G.Autowaden)
    end)
    
    M:Toggle("Auto Waden Sword Hop", _G.Autowadenhop,function(value)
         _G.Autowadenhop = value
    end)
    
    spawn(function()
        while wait() do
            if  _G.Autowaden and World1 then
                pcall(function()
                    if game:GetService("Workspace").Enemies:FindFirstChild("Chief Warden [Lv. 230] [Boss]") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Chief Warden [Lv. 230] [Boss]" then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat task.wait()
                                        AutoHaki()
                                        EquipWeapon(_G.SelectWeapon)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid.WalkSpeed = 0
                                        v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                        topos(v.HumanoidRootPart.CFrame * CFrame.new(2,40,2))
                                        game:GetService("VirtualUser"):CaptureController()
                                        game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
                                        sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
                                    until not  _G.Autowaden or not v.Parent or v.Humanoid.Health <= 0
                                end
                            end
                        end
                    else
                    topos(CFrame.new(5186.14697265625, 24.86684226989746, 832.1885375976562))
                        if game:GetService("ReplicatedStorage"):FindFirstChild("Chief Warden [Lv. 230] [Boss]") then
                            topos(game:GetService("ReplicatedStorage"):FindFirstChild("Chief Warden [Lv. 230] [Boss]").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                        else
                            if  _G.Autowadenhop then
                                Hop()
                            end
                        end
                    end
                end)
            end
        end
    end)
    
    M:Label(" Greybeard Boss ")
    
    M:Toggle("Auto Greybeard", _G.Autodoughking,function(value)
         _G.Autogay = value
        StopTween( _G.Autogay)
    end)
    
    M:Toggle("Auto Greybeard Hop", _G.AutodoughkingHop,function(value)
         _G.Autogayhop = value
    end)
    
    spawn(function()
        while wait() do
            if  _G.Autogay and World1 then
                pcall(function()
                    if game:GetService("Workspace").Enemies:FindFirstChild("Greybeard [Lv. 750] [Raid Boss]") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Greybeard [Lv. 750] [Raid Boss]" then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat task.wait()
                                        AutoHaki()
                                        EquipWeapon(_G.SelectWeapon)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid.WalkSpeed = 0
                                        v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                        topos(v.HumanoidRootPart.CFrame * CFrame.new(2,40,2))
                                        game:GetService("VirtualUser"):CaptureController()
                                        game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
                                        sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
                                    until not  _G.Autogay or not v.Parent or v.Humanoid.Health <= 0
                                end
                            end
                        end
                    else
                    topos(CFrame.new(-5023.38330078125, 28.65203285217285, 4332.3818359375))
                        if game:GetService("ReplicatedStorage"):FindFirstChild("Greybeard [Lv. 750] [Raid Boss]") then
                            topos(game:GetService("ReplicatedStorage"):FindFirstChild("Greybeard [Lv. 750] [Raid Boss]").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                        else
                            if  _G.Autogayhop then
                                Hop()
                            end
                        end
                    end
                end)
            end
        end
    end)
    
    M:Label(" Pole ")
    
    M:Toggle("Auto Pole v1", _G.Autodoughking,function(value)
         _G.Autopole = value
        StopTween( _G.Autopole)
    end)
    
    M:Toggle("Auto Pole v1 Hop", _G.AutodoughkingHop,function(value)
         _G.Autopolehop = value
    end)
    
    spawn(function()
        while wait() do
            if  _G.Autopole and World1 then
                pcall(function()
                    if game:GetService("Workspace").Enemies:FindFirstChild("Thunder God [Lv. 575] [Boss]") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Thunder God [Lv. 575] [Boss]" then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat task.wait()
                                        AutoHaki()
                                        EquipWeapon(_G.SelectWeapon)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid.WalkSpeed = 0
                                        v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                        topos(v.HumanoidRootPart.CFrame * CFrame.new(2,40,2))
                                        game:GetService("VirtualUser"):CaptureController()
                                        game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
                                        sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
                                    until not  _G.Autopole or not v.Parent or v.Humanoid.Health <= 0
                                end
                            end
                        end
                    else
                    topos(CFrame.new(-7748.0185546875, 5606.80615234375, -2305.898681640625))
                        if game:GetService("ReplicatedStorage"):FindFirstChild("Thunder God [Lv. 575] [Boss]") then
                            topos(game:GetService("ReplicatedStorage"):FindFirstChild("Thunder God [Lv. 575] [Boss]").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                        else
                            if  _G.Autopolehop then
                                Hop()
                            end
                        end
                    end
                end)
            end
        end
    end)
    
    M:Label("Misc Swan Glasses")
    
    M:Toggle("Auto Swan Glasses",_G.AutoFarmSwanGlasses,function(value)
        _G.AutoFarmSwanGlasses = value
        StopTween(_G.AutoFarmSwanGlasses)
    end)
    
    spawn(function()
        pcall(function()
            while wait() do
                if _G.AutoFarmSwanGlasses then
                    if game:GetService("Workspace").Enemies:FindFirstChild("Don Swan [Lv. 1000] [Boss]") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Don Swan [Lv. 1000] [Boss]" and v.Humanoid.Health > 0 and v:IsA("Model") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
                                repeat task.wait()
                                    pcall(function()
                                        AutoHaki()
                                        EquipWeapon(_G.SelectWeapon)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                        topos(v.HumanoidRootPart.CFrame * CFrame.new(2,40,2))
                                        game:GetService("VirtualUser"):CaptureController()
                                        game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 670))
                                        sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                                    end)
                                until _G.AutoFarmSwanGlasses == false or v.Humanoid.Health <= 0
                            end
                        end
                    else 
                        repeat task.wait()
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(2284.912109375, 15.537666320801, 905.48291015625)) 
                        until (CFrame.new(2284.912109375, 15.537666320801, 905.48291015625).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 4 or _G.AutoFarmSwanGlasses == false
                    end
                end
            end
        end)
    end)
    
    M:Toggle("Auto Swan Glasses Hop",_G.AutoFarmSwanGlasses_Hop,function(value)
        _G.AutoFarmSwanGlasses_Hop = value
    end)
    
    M:Label("Sharks Saw")
    
    M:Toggle("Auto Sharks saw", _G.Autodoughking,function(value)
         _G.Autosaw = value
        StopTween( _G.Autopole)
    end)
    
    M:Toggle("Auto Shark Saw Hop", _G.AutodoughkingHop,function(value)
         _G.Autosawhop = value
    end)
    
    spawn(function()
        while wait() do
            if  _G.Autosaw and World1 then
                pcall(function()
                    if game:GetService("Workspace").Enemies:FindFirstChild("The Saw [Lv. 100] [Boss]") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "The Saw [Lv. 100] [Boss]" then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat task.wait()
                                        AutoHaki()
                                        EquipWeapon(_G.SelectWeapon)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid.WalkSpeed = 0
                                        v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                        topos(v.HumanoidRootPart.CFrame * CFrame.new(2,40,2))
                                        game:GetService("VirtualUser"):CaptureController()
                                        game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
                                        sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
                                    until not  _G.Autosaw or not v.Parent or v.Humanoid.Health <= 0
                                end
                            end
                        end
                    else
                    topos(CFrame.new(-690.33081054688, 15.09425163269, 1582.2380371094))
                        if game:GetService("ReplicatedStorage"):FindFirstChild("The Saw [Lv. 100] [Boss]") then
                            topos(game:GetService("ReplicatedStorage"):FindFirstChild("The Saw [Lv. 100] [Boss]").HumanoidRootPart.CFrame * CFrame.new(2,40,2))
                        else
                            if  _G.Autosawhop then
                                Hop()
                            end
                        end
                    end
                end)
            end
        end
    end)
    
    
    spawn(function()
        pcall(function()
            while wait(.1) do
                if (_G.AutoFarmSwanGlasses and _G.AutoFarmSwanGlasses_Hop) and World2 and not game:GetService("ReplicatedStorage"):FindFirstChild("Don Swan [Lv. 1000] [Boss]") and not game:GetService("Workspace").Enemies:FindFirstChild("Don Swan [Lv. 1000] [Boss]") then
                    Hop()
                end
            end
        end)
    end)
    
    M:Label("Saber")
    
    M:Toggle("Auto Saber",_G.AutoSaber,function(value)
				_G.AutoSaber = value
			end)
			
			M:Toggle("Auto Saber Hop",_G.AutoSaberHop,function(value)
				_G.AutoSaberHop = value
			end)
			
 spawn(function()
            while wait() do
                if _G.AutoSaber then
                    if game.Players.localPlayer.Data.Level.Value < 200 then
                    else
                        if game.Workspace.Map.Jungle.Final.Part.CanCollide == false then
                            if _G.AutoSaber and game.ReplicatedStorage:FindFirstChild("Saber Expert [Lv. 200] [Boss]") or game.Workspace.Enemies:FindFirstChild("Saber Expert [Lv. 200] [Boss]") then
                                if game.Workspace.Enemies:FindFirstChild("Saber Expert [Lv. 200] [Boss]") then
                                    for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                                        if v.Name == "Saber Expert [Lv. 200] [Boss]" and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                                            repeat wait()
                                                if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 300 then
                                                    Farmtween = topos(v.HumanoidRootPart.Position,v.HumanoidRootPart.CFrame)
                                                elseif (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
                                                    if Farmtween then
                                                        Farmtween:Stop()
                                                    end
                                                    AutoHaki()
                                                    EquipWeapon(_G.SelectWeapon)
                                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0)
                                                    game:GetService'VirtualUser':CaptureController()
                                                    game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                                end
                                            until not _G.Auto_Saber or not v.Parent or v.Humanoid.Health <= 0
                                        end
                                    end
                                else
                                    Questtween = topos(CFrame.new(-1405.41956, 29.8519993, 5.62435055).Position,CFrame.new(-1405.41956, 29.8519993, 5.62435055))
                                    if (CFrame.new(-1405.41956, 29.8519993, 5.62435055).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
                                        if Questtween then
                                            Questtween:Stop()
                                        end
                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1405.41956, 29.8519993, 5.62435055, 0.885240912, 3.52892613e-08, 0.465132833, -6.60881128e-09, 1, -6.32913171e-08, -0.465132833, 5.29540891e-08, 0.885240912)
                                    end
                                end
                            else
                                if _G.AutoSaberHop then
                                    Hop()
                                end
                            end
                        elseif game.Players.LocalPlayer.Backpack:FindFirstChild("Relic") or game.Players.LocalPlayer.Character:FindFirstChild("Relic") and game.Players.localPlayer.Data.Level.Value >= 200 then
                            EquipWeapon("Relic")
                            wait(0.5)
                            Questtween = topos(CFrame.new(-1405.41956, 29.8519993, 5.62435055).Position,CFrame.new(-1405.41956, 29.8519993, 5.62435055))
                            if (CFrame.new(-1405.41956, 29.8519993, 5.62435055).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
                                if Questtween then
                                    Questtween:Stop()
                                end
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1405.41956, 29.8519993, 5.62435055, 0.885240912, 3.52892613e-08, 0.465132833, -6.60881128e-09, 1, -6.32913171e-08, -0.465132833, 5.29540891e-08, 0.885240912)
                            end
                        else
                            if Workspace.Map.Jungle.QuestPlates.Door.CanCollide == false then
                                if game.Workspace.Map.Desert.Burn.Part.CanCollide == false then
                                    if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","SickMan") == 0 then
                                        if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","RichSon") == 0 then
                                            if game.Workspace.Enemies:FindFirstChild("Mob Leader [Lv. 120] [Boss]") then
                                                for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                                                    if _G.AutoSaber and v:IsA("Model") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and v.Name == "Mob Leader [Lv. 120] [Boss]" then
                                                        repeat
                                                            pcall(function() wait() 
                                                                if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 300 then
                                                                    Farmtween = topos(v.HumanoidRootPart.Position,v.HumanoidRootPart.CFrame)
                                                                elseif (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
                                                                    if Farmtween then
                                                                        Farmtween:Stop()
                                                                    end
                                                                    AutoHaki()
                                                                    EquipWeapon(_G.SelectWeapon)
                                                                    if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                                                        local args = {
                                                                            [1] = "Buso"
                                                                        }
                                                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                                                    end
                                                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0)
                                                                    game:GetService'VirtualUser':CaptureController()
                                                                    game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                                                end
                                                            end)
                                                        until not _G.AutoSaber or not v.Parent or v.Humanoid.Health <= 0
                                                    end
                                                end
                                            else
                                                Questtween = topos(CFrame.new(-2848.59399, 7.4272871, 5342.44043).Position,CFrame.new(-2848.59399, 7.4272871, 5342.44043))
                                                if (CFrame.new(-2848.59399, 7.4272871, 5342.44043).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
                                                    if Questtween then
                                                        Questtween:Stop()
                                                    end
                                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2848.59399, 7.4272871, 5342.44043, -0.928248107, -8.7248246e-08, 0.371961564, -7.61816636e-08, 1, 4.44474857e-08, -0.371961564, 1.29216433e-08, -0.928248107)
                                                end
                                            end
                                        elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","RichSon") == 1 then
                                            if game.Players.LocalPlayer.Backpack:FindFirstChild("Relic") or game.Players.LocalPlayer.Character:FindFirstChild("Relic") then
                                                EquipWeapon("Relic")
                                                wait(0.5)
                                                Questtween = topos(CFrame.new(-1405.41956, 29.8519993, 5.62435055).Position,CFrame.new(-1405.41956, 29.8519993, 5.62435055))
                                                if (CFrame.new(-1405.41956, 29.8519993, 5.62435055).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
                                                    if Questtween then
                                                        Questtween:Stop()
                                                    end
                                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1405.41956, 29.8519993, 5.62435055)
                                                end
                                            else
                                                Questtween = topos(CFrame.new(-910.979736, 13.7520342, 4078.14624).Position,CFrame.new(-910.979736, 13.7520342, 4078.14624))
                                                if (CFrame.new(-910.979736, 13.7520342, 4078.14624).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
                                                    if Questtween then
                                                        Questtween:Stop()
                                                    end
                                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-910.979736, 13.7520342, 4078.14624, 0.00685182028, -1.53155766e-09, -0.999976516, 9.15205245e-09, 1, -1.46888401e-09, 0.999976516, -9.14177267e-09, 0.00685182028)
                                                    wait(.5)
                                                    local args = {
                                                        [1] = "ProQuestProgress",
                                                        [2] = "RichSon"
                                                    }
                                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                                end
                                            end
                                        else
                                            Questtween = topos(CFrame.new(-910.979736, 13.7520342, 4078.14624).Position,CFrame.new(-910.979736, 13.7520342, 4078.14624))
                                            if (CFrame.new(-910.979736, 13.7520342, 4078.14624).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
                                                if Questtween then
                                                    Questtween:Stop()
                                                end
                                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-910.979736, 13.7520342, 4078.14624)
                                                local args = {
                                                    [1] = "ProQuestProgress",
                                                    [2] = "RichSon"
                                                }
                                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                            end
                                        end
                                    else
                                        if game.Players.LocalPlayer.Backpack:FindFirstChild("Cup") or game.Players.LocalPlayer.Character:FindFirstChild("Cup") then
                                            EquipWeapon("Cup")
                                            if game.Players.LocalPlayer.Character.Cup.Handle:FindFirstChild("TouchInterest") then
                                                Questtween = topos(CFrame.new(1397.229, 37.3480148, -1320.85217).Position,CFrame.new(1397.229, 37.3480148, -1320.85217))
                                                if (CFrame.new(1397.229, 37.3480148, -1320.85217).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
                                                    if Questtween then
                                                        Questtween:Stop()
                                                    end
                                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1397.229, 37.3480148, -1320.85217, -0.11285457, 2.01368788e-08, 0.993611455, 1.91641178e-07, 1, 1.50028845e-09, -0.993611455, 1.90586206e-07, -0.11285457)
                                                end
                                            else
                                                wait(0.5)
                                                if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","SickMan") ~= 0 then
                                                    local args = {
                                                        [1] = "ProQuestProgress",
                                                        [2] = "SickMan"
                                                    }
                                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                                end
                                            end
                                        else
                                            Questtween = topos(game.Workspace.Map.Desert.Cup.Position,game.Workspace.Map.Desert.Cup.CFrame)
                                            if (game.Workspace.Map.Desert.Cup.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
                                                if Questtween then
                                                    Questtween:Stop()
                                                end
                                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.Map.Desert.Cup.CFrame
                                            end
                                            firetouchinterest(game.Workspace.Map.Desert.Cup.TouchInterest,game.Players.LocalPlayer.Character.Head, 1)
                                        end
                                    end
                                else
                                    if game.Players.LocalPlayer.Backpack:FindFirstChild("Torch") or game.Players.LocalPlayer.Character:FindFirstChild("Torch") then
                                        EquipWeapon("Torch")
                                        Questtween = topos(CFrame.new(1114.87708, 4.9214654, 4349.8501).Position,CFrame.new(1114.87708, 4.9214654, 4349.8501))
                                        if (CFrame.new(1114.87708, 4.9214654, 4349.8501).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
                                            if Questtween then
                                                Questtween:Stop()
                                            end
                                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1114.87708, 4.9214654, 4349.8501, -0.612586915, -9.68697833e-08, 0.790403247, -1.2634203e-07, 1, 2.4638446e-08, -0.790403247, -8.47679615e-08, -0.612586915)
                                        end
                                    else
                                        Questtween = topos(CFrame.new(-1610.00757, 11.5049858, 164.001587).Position,CFrame.new(-1610.00757, 11.5049858, 164.001587))
                                        if (CFrame.new(-1610.00757, 11.5049858, 164.001587).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
                                            if Questtween then
                                                Questtween:Stop()
                                            end
                                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1610.00757, 11.5049858, 164.001587, 0.984807551, -0.167722285, -0.0449818149, 0.17364943, 0.951244235, 0.254912198, 3.42372805e-05, -0.258850515, 0.965917408)
                                        end
                                    end
                                end
                            else
                                for i,v in pairs(Workspace.Map.Jungle.QuestPlates:GetChildren()) do
                                    if v:IsA("Model") then wait()
                                        if v.Button.BrickColor ~= BrickColor.new("Camo") then
                                            repeat wait()
                                                Questtween = topos(v.Button.Position,v.Button.CFrame)
                                                if (v.Button.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150 then
                                                    if Questtween then
                                                        Questtween:Stop()
                                                    end
                                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Button.CFrame
                                                end
                                            until not _G.AutoSaber or v.Button.BrickColor == BrickColor.new("Camo")
                                        end
                                    end
                                end    
                            end
                        end
                    end 
                end
            end
        end)
    
    M:Label("Legendary Sword")
    
    M:Toggle("Auto Legendary Sword",_G.AutoBuyLegendarySword,function(value)
        _G.AutoBuyLegendarySword = value
    end)
    
    spawn(function()
        while wait() do
            if _G.AutoBuyLegendarySword then
                pcall(function()
                    local args = {
                        [1] = "LegendarySwordDealer",
                        [2] = "1"
                    }
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                    local args = {
                        [1] = "LegendarySwordDealer",
                        [2] = "2"
                    }
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                    local args = {
                        [1] = "LegendarySwordDealer",
                        [2] = "3"
                    }
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                    if _G.AutoBuyLegendarySword_Hop and _G.AutoBuyLegendarySword and World2 then
                        wait(10)
                        Hop()
                    end
                end)
            end 
        end
    end)
    
    M:Toggle("Auto Legendary Sword Hop",_G.AutoBuyLegendarySword_Hop,function(value)
        _G.AutoBuyLegendarySword_Hop = value
    end)
    
    M:Label("Enchancement Colour")
    
    M:Toggle("Auto Enchancement Colour",_G.AutoBuyEnchancementColour,function(value)
        _G.AutoBuyEnchancementColour = value
    end)
    
    M:Toggle("Auto Enchancement Hop",_G.AutoBuyEnchancementColour_Hop,function(value)
        _G.AutoBuyEnchancementColour_Hop = value
    end)
    
    spawn(function()
        while wait() do
            if _G.AutoBuyEnchancementColour then
                local args = {
                    [1] = "ColorsDealer",
                    [2] = "2"
                }
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                if _G.AutoBuyEnchancementColour_Hop and _G.AutoBuyEnchancementColour and not World1 then
                    wait(10)
                    Hop()
                end
            end 
        end
    end)
   local a = create.bar("")
	
	spawn(function()
	    pcall(function()
	        while task.wait() do
	            a:loadbar()
	        end
	    end)
	end) 
return  create
