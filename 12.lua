local GuiService = game:GetService("GuiService")
local TweenService = game:GetService("TweenService")
local player = game.Players.LocalPlayer

-- Membuat ScreenGui
local screenGui = Instance.new("ScreenGui", player:WaitForChild("PlayerGui"))
screenGui.Name = "LuxuryGui"
screenGui.IgnoreGuiInset = true

-- Membuat Frame Utama dengan sudut membulat dan bayangan
local mainFrame = Instance.new("Frame", screenGui)
mainFrame.Size = UDim2.new(0.3, 0, 0.4, 0)
mainFrame.Position = UDim2.new(0.35, 0, 0.3, 0)
mainFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
mainFrame.BorderSizePixel = 0
mainFrame.BackgroundTransparency = 0.1
mainFrame.ClipsDescendants = true

-- Membuat sudut membulat untuk Frame
local corner = Instance.new("UICorner", mainFrame)
corner.CornerRadius = UDim.new(0.05, 0)

-- Membuat bayangan untuk efek lebih mewah
local shadow = Instance.new("ImageLabel", mainFrame)
shadow.BackgroundTransparency = 1
shadow.Size = UDim2.new(1, 20, 1, 20)
shadow.Position = UDim2.new(0, -10, 0, -10)
shadow.Image = "rbxassetid://1316045217"
shadow.ImageTransparency = 0.6
shadow.ScaleType = Enum.ScaleType.Slice
shadow.SliceCenter = Rect.new(10, 10, 118, 118)

-- Membuat judul GUI dengan animasi transisi
local titleLabel = Instance.new("TextLabel", mainFrame)
titleLabel.Text = "Luxury GUI"
titleLabel.Size = UDim2.new(1, 0, 0.15, 0)
titleLabel.BackgroundTransparency = 1
titleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
titleLabel.Font = Enum.Font.GothamBold
titleLabel.TextScaled = true
titleLabel.TextTransparency = 1

-- Animasi kemunculan judul
TweenService:Create(titleLabel, TweenInfo.new(1), {TextTransparency = 0}):Play()

-- Membuat tombol dengan animasi hover
local function createButton(text, parent, callback)
    local button = Instance.new("TextButton", parent)
    button.Size = UDim2.new(0.8, 0, 0.15, 0)
    button.Position = UDim2.new(0.1, 0, 0.2, 0)
    button.Text = text
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.fromRGB(255, 255, 255)
    button.Font = Enum.Font.Gotham
    button.TextScaled = true
    button.AutoButtonColor = false

    local buttonCorner = Instance.new("UICorner", button)
    buttonCorner.CornerRadius = UDim.new(0.05, 0)

    -- Efek hover dengan tween
    button.MouseEnter:Connect(function()
        TweenService:Create(button, TweenInfo.new(0.2), {BackgroundColor3 = Color3.fromRGB(60, 60, 60)}):Play()
    end)

    button.MouseLeave:Connect(function()
        TweenService:Create(button, TweenInfo.new(0.2), {BackgroundColor3 = Color3.fromRGB(45, 45, 45)}):Play()
    end)

    -- Callback ketika tombol ditekan
    button.MouseButton1Click:Connect(callback)
end

-- Membuat beberapa tombol untuk fungsi
createButton("Play Music", mainFrame, function()
    print("Playing music...")
    -- Masukkan fungsi pemutaran musik di sini
end)

createButton("Stop Music", mainFrame, function()
    print("Stopping music...")
    -- Masukkan fungsi penghentian musik di sini
end)

createButton("Teleport Tool", mainFrame, function()
    print("Teleporting...")
    -- Masukkan fungsi teleportasi di sini
end)

createButton("Invisible", mainFrame, function()
    print("Character invisible...")
    -- Masukkan fungsi invisible di sini
end)

-- Mengatur posisi setiap tombol
local buttons = mainFrame:GetChildren()
for i, button in ipairs(buttons) do
    if button:IsA("TextButton") then
        button.Position = UDim2.new(0.1, 0, 0.2 + (i - 1) * 0.18, 0)
    end
end

-- Animasi kemunculan frame utama
mainFrame.BackgroundTransparency = 1
TweenService:Create(mainFrame, TweenInfo.new(0.5), {BackgroundTransparency = 0.1}):Play()
