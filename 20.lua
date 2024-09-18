function LoadFunction()

	TweenService:Create(
		game.Workspace.Camera,
		TweenInfo.new(.4, Enum.EasingStyle.Back, Enum.EasingDirection.InOut),
		{FieldOfView = 50}
	):Play()

	TweenService:Create(
		Blur,
		TweenInfo.new(.4, Enum.EasingStyle.Back, Enum.EasingDirection.InOut),
		{Size = 20}
	):Play()

	TweenService:Create(
		Load,
		TweenInfo.new(.4, Enum.EasingStyle.Back, Enum.EasingDirection.InOut),
		{Position = UDim2.new(0.5, 0, 0.5, 0)}
	):Play()
	TweenService:Create(
		Load,
		TweenInfo.new(.4, Enum.EasingStyle.Quart, Enum.EasingDirection.In),
		{BackgroundTransparency = 0}
	):Play()
	wait(.5)
	TweenService:Create(
		LoadButton,
		TweenInfo.new(.4, Enum.EasingStyle.Quart, Enum.EasingDirection.In),
		{ImageTransparency = 0}
	):Play()

	LoadButton.MouseEnter:Connect(function()
		TweenService:Create(
			LoadButton,
			TweenInfo.new(.2, Enum.EasingStyle.Back, Enum.EasingDirection.InOut),
			{Size = UDim2.new(0, 80, 0, 80)}
		):Play()
	end)

	LoadButton.MouseLeave:Connect(function()
		TweenService:Create(
			LoadButton,
			TweenInfo.new(.2, Enum.EasingStyle.Back, Enum.EasingDirection.InOut),
			{Size = UDim2.new(0, 70, 0, 70)}
		):Play()
	end)

	local LoadFocus = false

	LoadButton.MouseButton1Down:Connect(function()
		if LoadFocus == false then
			LoadFocus = true
			TweenService:Create(
				LoadButton,
				TweenInfo.new(.2, Enum.EasingStyle.Back, Enum.EasingDirection.InOut),
				{Rotation = 180}
			):Play()
			SoundClick:Play()
			TweenService:Create(
				LoadButton,
				TweenInfo.new(.4, Enum.EasingStyle.Quart, Enum.EasingDirection.In),
				{ImageTransparency = 1}
			):Play()
			wait(.5)
			LoadButton:Destroy()
			wait(.5)
			TweenService:Create(
				Load,
				TweenInfo.new(.4, Enum.EasingStyle.Back, Enum.EasingDirection.InOut),
				{Position = UDim2.new(0.5, 0, 0.025, 0)}
			):Play()
			TweenService:Create(
				Blur,
				TweenInfo.new(.4, Enum.EasingStyle.Back, Enum.EasingDirection.InOut),
				{Size = 0}
			):Play()
			TweenService:Create(
				game.Workspace.Camera,
				TweenInfo.new(.4, Enum.EasingStyle.Back, Enum.EasingDirection.InOut),
				{FieldOfView = 70}
			):Play()
			wait(.5)
