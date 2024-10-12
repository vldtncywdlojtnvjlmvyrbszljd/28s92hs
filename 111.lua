local Notif = {}

local CoreGUI = game:GetService("CoreGui")
local TS = game:GetService("TweenService")

local HIDEUI = get_hidden_gui or gethui
if syn and typeof(syn) == "table" and RenderWindow then syn.protect_gui = gethui; end
local function Hide_UI(gui)
    if HIDEUI then
        gui["Parent"] = HIDEUI()
    elseif (not is_sirhurt_closure) and (syn and syn.protect_gui) then
        syn.protect_gui(gui)
        gui["Parent"] = CoreGUI
    elseif CoreGUI:FindFirstChild('RobloxGui') then
        gui["Parent"] = CoreGUI.RobloxGui
    else
        gui["Parent"] = CoreGUI
    end
end

local screen_gui = Instance.new("ScreenGui")
Hide_UI(screen_gui)

local frame = Instance.new("Frame")
frame.AnchorPoint = Vector2.new(0.5, 0.949999988079071)
frame.BackgroundColor3 = Color3.new(1, 1, 1)
frame.BackgroundTransparency = 1
frame.BorderColor3 = Color3.new(0, 0, 0)
frame.BorderSizePixel = 0
frame.Position = UDim2.new(0.5, 0, 0.954999983, 0)
frame.Size = UDim2.new(0, 100, 0, 100)
frame.Visible = true
frame.Parent = screen_gui

local uilist_layout = Instance.new("UIListLayout")
uilist_layout.HorizontalAlignment = Enum.HorizontalAlignment.Center
uilist_layout.SortOrder = Enum.SortOrder.LayoutOrder
uilist_layout.VerticalAlignment = Enum.VerticalAlignment.Bottom
uilist_layout.Parent = frame
	
function Notif.New(text, timee)
    local frame_2 = Instance.new("Frame")
    frame_2.BackgroundColor3 = Color3.new(1, 1, 1)
    frame_2.BorderColor3 = Color3.new(0, 0, 0)
    frame_2.BorderSizePixel = 0
    frame_2.BackgroundTransparency = 1
    frame_2.Size = UDim2.new(0, 100, 0, 0)
    frame_2.Visible = true
    frame_2.Parent = frame
	
    -- Main Notification Frame
    local frame_3 = Instance.new("Frame")
    frame_3.AnchorPoint = Vector2.new(0.5, 1)
    frame_3.AutomaticSize = Enum.AutomaticSize.X
    frame_3.BackgroundColor3 = Color3.new(0.141176, 0.141176, 0.141176)
    frame_3.BackgroundTransparency = 0.20000000298023224
    frame_3.BorderColor3 = Color3.new(0, 0, 0)
    frame_3.Position = UDim2.new(0.5, 0, 1, 60)
    frame_3.Size = UDim2.new(0, 0, 0, 30)
    frame_3.Visible = true
    frame_3.Parent = frame_2

    local uicorner = Instance.new("UICorner")
    uicorner.CornerRadius = UDim.new(0, 6)
    uicorner.Parent = frame_3

    local uipadding = Instance.new("UIPadding")
    uipadding.PaddingBottom = UDim.new(0, 3)
    uipadding.PaddingLeft = UDim.new(0, 3)
    uipadding.PaddingRight = UDim.new(0, 3)
    uipadding.PaddingTop = UDim.new(0, 3)
    uipadding.Parent = frame_3

    local uistroke = Instance.new("UIStroke")
    uistroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
    uistroke.Color = Color3.new(0.0313726, 0.0313726, 0.0313726)
    uistroke.Parent = frame_3

    local text_label = Instance.new("TextLabel")
    text_label.Font = Enum.Font.Gotham
    text_label.Text = text
    text_label.TextColor3 = Color3.new(0.784314, 0.784314, 0.784314)
    text_label.TextSize = 14
    text_label.AutomaticSize = Enum.AutomaticSize.X
    text_label.BackgroundColor3 = Color3.new(1, 1, 1)
    text_label.BackgroundTransparency = 1
    text_label.BorderColor3 = Color3.new(0, 0, 0)
    text_label.BorderSizePixel = 0
    text_label.Size = UDim2.new(0, 0, 0, 24)
    text_label.Visible = true
    text_label.Parent = frame_3

    local uipadding_2 = Instance.new("UIPadding")
    uipadding_2.PaddingLeft = UDim.new(0, 5)
    uipadding_2.PaddingRight = UDim.new(0, 30)
    uipadding_2.Parent = text_label

    local text_button = Instance.new("TextButton")
    text_button.Font = Enum.Font.SourceSans
    text_button.Text = ""
    text_button.TextColor3 = Color3.new(0, 0, 0)
    text_button.TextSize = 14
    text_button.AnchorPoint = Vector2.new(1, 0.5)
    text_button.BackgroundColor3 = Color3.new(0, 0, 0)
    text_button.BackgroundTransparency = 1
    text_button.BorderColor3 = Color3.new(0, 0, 0)
    text_button.BorderSizePixel = 0
    text_button.Position = UDim2.new(1, 0, 0.5, 0)
    text_button.Size = UDim2.new(0, 24, 0, 24)
    text_button.Visible = true
    text_button.Parent = frame_3

    local uicorner_2 = Instance.new("UICorner")
    uicorner_2.CornerRadius = UDim.new(0, 5)
    uicorner_2.Parent = text_button

    local image_button = Instance.new("ImageButton") --logo button,toggle disini
    image_button.Image = "rbxassetid://107679910024355"
    image_button.ImageColor3 = Color3.new(0.784314, 0.784314, 0.784314)
    image_button.ImageRectOffset = Vector2.new(924, 724)
    image_button.ImageRectSize = Vector2.new(36, 36)
    image_button.AnchorPoint = Vector2.new(0.5, 0.5)
    image_button.BackgroundTransparency = 1
    image_button.LayoutOrder = 3
    image_button.Position = UDim2.new(0.5, 0, 0.5, 0)
    image_button.Size = UDim2.new(0, 18, 0, 18)
    image_button.Visible = true
    image_button.ZIndex = 2
    image_button.Parent = text_button

    --Animations
    TS:Create(frame_3, TweenInfo.new(0.2, Enum.EasingStyle.Quint), { Position = UDim2.new(0.5, 0, 1, 0) }):Play()
    TS:Create(frame_2, TweenInfo.new(0.2, Enum.EasingStyle.Quint), { Size = UDim2.new(0, 100, 0, 35) }):Play()

    -- Close Button
    local function close_notif()
        TS:Create(image_button, TweenInfo.new(0.15, Enum.EasingStyle.Quint), { ImageTransparency = 1 }):Play()
        TS:Create(text_button, TweenInfo.new(0.15, Enum.EasingStyle.Quint), { BackgroundTransparency = 1 }):Play()
        TS:Create(text_label, TweenInfo.new(0.15, Enum.EasingStyle.Quint), { TextTransparency = 1 }):Play()
        task.wait(.17)
        TS:Create(frame_3, TweenInfo.new(0.25, Enum.EasingStyle.Quint), { BackgroundTransparency = 1 }):Play()
        TS:Create(uistroke, TweenInfo.new(0.24, Enum.EasingStyle.Quint), { Transparency = 1 }):Play()
        task.wait(.05)
        TS:Create(frame_2, TweenInfo.new(0.2, Enum.EasingStyle.Quint), { Size = UDim2.new(0, 100, 0, 0) }):Play()
        task.wait(.2)
        frame_2:Destroy()
    end
    text_button.MouseEnter:Connect(function()
        TS:Create(text_button, TweenInfo.new(0.25, Enum.EasingStyle.Quint), { BackgroundTransparency = 0.8 }):Play()
        TS:Create(image_button, TweenInfo.new(0.3, Enum.EasingStyle.Quint),
            { ImageColor3 = Color3.new(0.890196, 0.054902, 0.054902) }):Play()
    end)

    text_button.MouseLeave:Connect(function()
        TS:Create(text_button, TweenInfo.new(0.25, Enum.EasingStyle.Quint), { BackgroundTransparency = 1 }):Play()
        TS:Create(image_button, TweenInfo.new(0.3, Enum.EasingStyle.Quint),
            { ImageColor3 = Color3.new(0.784314, 0.784314, 0.784314) }):Play()
    end)

    text_button.MouseButton1Click:Connect(function()
        TS:Create(image_button, TweenInfo.new(0.15, Enum.EasingStyle.Quint), { ImageTransparency = 1 }):Play()
        TS:Create(text_button, TweenInfo.new(0.15, Enum.EasingStyle.Quint), { BackgroundTransparency = 1 }):Play()
        TS:Create(text_label, TweenInfo.new(0.15, Enum.EasingStyle.Quint), { TextTransparency = 1 }):Play()
        task.wait(.17)
        TS:Create(frame_3, TweenInfo.new(0.25, Enum.EasingStyle.Quint), { BackgroundTransparency = 1 }):Play()
        TS:Create(uistroke, TweenInfo.new(0.24, Enum.EasingStyle.Quint), { Transparency = 1 }):Play()
        task.wait(.05)
        TS:Create(frame_2, TweenInfo.new(0.2, Enum.EasingStyle.Quint), { Size = UDim2.new(0, 100, 0, 0) }):Play()
        task.wait(.2)
        frame_2:Destroy()
    end)
    image_button.MouseButton1Click:Connect(close_notif)
    task.delay(tonumber(timee) and timee or 10, close_notif)
end

local ScreenGui1 = Instance.new("ScreenGui")
local ImageButton1 = Instance.new("ImageButton")
local UICorner = Instance.new("UICorner")
local UIGradient = Instance.new("UIGradient")
local UIStroke = Instance.new("UIStroke")
local ReplicatedStorage = game:GetService("ReplicatedStorage") --tambahan sound klik
local SoundService = game:GetService("SoundService")
local TweenService = game:GetService("TweenService")
local soundId = "rbxassetid://130785805" 
local sound = Instance.new("Sound")
    sound.Name = "ButtonClickSound"
    sound.SoundId = soundId
    sound.Parent = ReplicatedStorage
ScreenGui1.Name = "ImageButton"
ScreenGui1.Parent = game.CoreGui
ScreenGui1.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

ImageButton1.Parent = ScreenGui1
ImageButton1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageButton1.BorderSizePixel = 0
ImageButton1.Position = UDim2.new(0.011955559, 0, 0.1952890813, 0) --0.120833337, 0, 0.0952890813, 0
ImageButton1.Size = UDim2.new(0, 50, 0, 50)
ImageButton1.Draggable = true
ImageButton1.Image = "rbxassetid://107679910024355" --logo button close open
ImageButton1.MouseButton1Down:connect(function()
game:GetService("VirtualInputManager"):SendKeyEvent(true,305,false,game)
game:GetService("VirtualInputManager"):SendKeyEvent(false,305,false,game)
local clickSound = sound:Clone()
    clickSound.Parent = SoundService
    clickSound:Play()
end)
UICorner.Parent = ImageButton1
UIStroke.Color = Color3.fromRGB(255, 0, 0)--232, 0, 2)
UIStroke.Thickness = 1.5
UIStroke.Parent = ImageButton1
UIGradient.Color = ColorSequence.new{
	ColorSequenceKeypoint.new(0, Color3.fromRGB(20, 20, 20)),
	ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 0, 0))
}
UIGradient.Parent = UIStroke

if game:GetService("CoreGui"):FindFirstChild("BrutalityHubV4") then
    game:GetService("CoreGui"):FindFirstChild("BrutalityHubV4"):Destroy()
end

repeat wait(1) until game:IsLoaded()
local LocalPlayer = game:GetService("Players").LocalPlayer
local HttpService = game:GetService("HttpService")
local pfp
local user
local tag
local userinfo = {}

pcall(function()
    userinfo = HttpService:JSONDecode(readfile(""));
end)
 
pfp = userinfo["pfp"] or "https://www.roblox.com/headshot-thumbnail/image?userId=".. game.Players.LocalPlayer.UserId .."&width=420&height=420&format=png"
user =  userinfo["user"] or game.Players.LocalPlayer.Name
tag = userinfo["tag"] or tostring(math.random(1,10))

local function SaveInfo()
    userinfo["pfp"] = pfp
    userinfo["user"] = user
    userinfo["tag"] = tag
    writefile("", HttpService:JSONEncode(userinfo));
end


local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")

local function MakeDraggable(topbarobject, object)
    local Dragging = nil
    local DragInput = nil
    local DragStart = nil
    local StartPosition = nil
    
    local function Update(input)
        local Delta = input.Position - DragStart
        local pos = UDim2.new(StartPosition.X.Scale, StartPosition.X.Offset + Delta.X, StartPosition.Y.Scale, StartPosition.Y.Offset + Delta.Y)
        local Tween = TweenService:Create(object, TweenInfo.new(0.15), {
        Position = pos
        })
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

local Update = {}
local pfp = "https://www.roblox.com/headshot-thumbnail/image?userId=".. game.Players.LocalPlayer.UserId .."&width=420&height=420&format=png"

function Update:Window(text,logo,keybind)
    local osfunc = {}
    local uihide = false
    local abc = false
    local currentpage = ""
    local keybind = keybind or Enum.KeyCode.RightControl
    local yoo = string.gsub(tostring(keybind),"Enum.KeyCode.","")

    local BRUTALITYHUB = Instance.new("ScreenGui")
    BRUTALITYHUB.Name = "BRUTALITYHUB"
    BRUTALITYHUB.Parent = game.CoreGui
    BRUTALITYHUB.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

    local Main = Instance.new("Frame")
    Main.Name = "Main"
    Main.Parent = BRUTALITYHUB
    Main.ClipsDescendants = true
    Main.AnchorPoint = Vector2.new(0.5,0.5)
    Main.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    Main.Position = UDim2.new(0.5, 0, 0.5, 0)
    Main.Size = UDim2.new(0, 0, 0, 0)

    Main:TweenSize(UDim2.new(0, 540, 0, 340),"Out","Quad",0.4,true)

    local BtnStroke = Instance.new("UIStroke")

    BtnStroke.Name = "BtnStroke"
    BtnStroke.Parent = Main
    BtnStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
    BtnStroke.Color = Color3.fromRGB(255, 0, 0) --warna samping tab
    BtnStroke.LineJoinMode = Enum.LineJoinMode.Round
    BtnStroke.Thickness = 1
    BtnStroke.Transparency = 0
    BtnStroke.Enabled = true
    BtnStroke.Archivable = true

    local MCNR = Instance.new("UICorner")
    MCNR.Name = "MCNR"
    MCNR.Parent = Main

    local Top = Instance.new("Frame")
    Top.Name = "Top"
    Top.Parent = Main
    Top.BackgroundColor3 = Color3.fromRGB(0, 0, 0) --warna tab diatas
    Top.Size = UDim2.new(0, 556, 0, 30)
    Top.BackgroundTransparency = 1.000
    local TCNR = Instance.new("UICorner")
    TCNR.Name = "TCNR"
    TCNR.Parent = Top
    TCNR.CornerRadius = UDim.new(0,5) 

    local ServerTime = Instance.new("TextLabel")
    ServerTime.Name = "ServerTime"
    ServerTime.Parent = Top
    ServerTime.BackgroundColor3 = Color3.fromRGB(255,255,255)
    ServerTime.BackgroundTransparency = 1.000
    ServerTime.Position = UDim2.new(0.68, 0,0.074, 0)
    ServerTime.Size = UDim2.new(0, 225, 0, 25)
    ServerTime.Font = Enum.Font.GothamSemibold
    ServerTime.Text = ""
    ServerTime.TextSize = 11.000
    ServerTime.TextColor3 = Color3.fromRGB(255,255,255)
    ServerTime.TextXAlignment = Enum.TextXAlignment.Left

    function osfunc:Set(textadd)
        ServerTime.Text = textadd
    end

    local Ping = Instance.new("TextLabel")
    Ping.Name = "Ping"
    Ping.Parent = Top
    Ping.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    Ping.BackgroundTransparency = 1.000
    Ping.Position = UDim2.new(0.28, 0,0.074, 0)
    Ping.Size = UDim2.new(0, 225, 0, 25)
    Ping.Font = Enum.Font.GothamSemibold
    Ping.Text = "BRUTALITY HUB V4 | by Medusa Script"
    Ping.TextColor3 = Color3.fromRGB(255, 255, 255)
    Ping.TextSize = 14.000
    Ping.TextXAlignment = Enum.TextXAlignment.Left



    local User = Instance.new("Frame")
    User.Name = "User"
    User.Parent = Top
    User.BackgroundColor3 = Color3.fromRGB(9, 255, 0)
    User.BackgroundTransparency = 1.000
    User.Position = UDim2.new(0, 0,0, 25)
    User.Size = UDim2.new(0, 125, 0, 40)
    
    local UserText = Instance.new("TextLabel")
    UserText.Name = "UserText"
    UserText.Parent = User
    UserText.BackgroundColor3 = Color3.fromRGB(9, 255, 0)
    UserText.BackgroundTransparency = 1.000
    UserText.Position = UDim2.new(0.3,7 ,0, -18)
    UserText.TextColor3 = Color3.fromRGB(9, 255, 0)
    UserText.Size = UDim2.new(0, 80, 0, 25)
    UserText.Font = Enum.Font.GothamSemibold
    UserText.Text = ""
    UserText.TextScaled = true
    UserText.TextSize = 17.000
    UserText.TextWrapped = true
    UserText.TextXAlignment = Enum.TextXAlignment.Left
    
    local UITextSizeConstraint = Instance.new("UITextSizeConstraint")
    UITextSizeConstraint.Parent = UserText
    UITextSizeConstraint.MaxTextSize = 17
    
    local UserImage = Instance.new("ImageLabel")
    UserImage.Name = "UserImage"
    UserImage.Parent = User
    UserImage.BackgroundTransparency = 0
  --  UserImage.BackgroundColor3 = Color3.fromRGB(225, 225, 225)
    local Logo = Instance.new("ImageLabel")
	Logo.Name = "Logo"
	Logo.Parent = Main
	Logo.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Logo.BackgroundTransparency = 1.000
	Logo.Position = UDim2.new(0, 5, 0, -1)
	Logo.Size = UDim2.new(0, 135, 0, 135)
	Logo.Image = "rbxassetid://107679910024355" --logo didalam tab
    local Tab = Instance.new("Frame")
    Tab.Name = "Tab"
    Tab.Parent = Main
    Tab.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    Tab.Position = UDim2.new(0, 5, 0, 135)
    Tab.Size = UDim2.new(0, 0, 0, 0)

    local TabCorner = Instance.new("UIListLayout")
    TabCorner.Name = "TabCorner"
    TabCorner.Parent = Tab
    TabCorner.SortOrder = Enum.SortOrder.LayoutOrder
    TabCorner.Padding = UDim.new(0,15)
    local BtnStroke = Instance.new("UIStroke")
    local ScrollTab = Instance.new("ScrollingFrame")
    local Crner = Instance.new("UICorner")
    ScrollTab.Name = "ScrollTab"
    ScrollTab.Parent = Tab
    ScrollTab.Active = true
    ScrollTab.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
    ScrollTab.BackgroundTransparency = 1.000
    ScrollTab.Size = UDim2.new(0, 133, 0, 203)
    ScrollTab.CanvasSize = UDim2.new(0, 0, 0, 0)
    ScrollTab.ScrollBarThickness = 0

    local PLL = Instance.new("UIListLayout")
    PLL.Name = "PLL"
    PLL.Parent = ScrollTab
    PLL.SortOrder = Enum.SortOrder.LayoutOrder
    PLL.Padding = UDim.new(0, 15)

    local PPD = Instance.new("UIPadding")
    PPD.Name = "PPD"
    PPD.Parent = ScrollTab
    PPD.PaddingLeft = UDim.new(0, 9)
    PPD.PaddingTop = UDim.new(0, 2)
    local BtnStroke = Instance.new("UIStroke")
    local Page = Instance.new("Frame")
    Page.Name = "Page"
    Page.Parent = Main
    Page.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    Page.Position = UDim2.new(0.255426834, 0, 0.086000003, 0)
    Page.Size = UDim2.new(0, 410, 0, 308)

    local PCNR = Instance.new("UICorner")
    PCNR.Parent = Page
    PCNR.CornerRadius = UDim.new(0,3)

    local MainPage = Instance.new("Frame")
    MainPage.Name = "MainPage"
    MainPage.Parent = Page
    MainPage.ClipsDescendants = true
    MainPage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    MainPage.BackgroundTransparency = 1.000
    MainPage.Size = UDim2.new(0, 410, 0, 308)

    local PageList = Instance.new("Folder")
    PageList.Name = "PageList"
    PageList.Parent = MainPage

    local UIPageLayout = Instance.new("UIPageLayout")

    UIPageLayout.Parent = PageList
    UIPageLayout.SortOrder = Enum.SortOrder.LayoutOrder
    UIPageLayout.EasingDirection = Enum.EasingDirection.InOut
    UIPageLayout.EasingStyle = Enum.EasingStyle.Quad
    UIPageLayout.FillDirection = Enum.FillDirection.Vertical
    UIPageLayout.Padding = UDim.new(0, 10)
    UIPageLayout.TweenTime = 0.400
    UIPageLayout.GamepadInputEnabled = false
    UIPageLayout.ScrollWheelInputEnabled = false
    UIPageLayout.TouchInputEnabled = false

    MakeDraggable(Top,Main)


    UserInputService.InputBegan:Connect(function(input)
        if input.KeyCode == Enum.KeyCode.RightControl then
            if uihide == false then
                uihide = true
                Main:TweenSize(UDim2.new(0, 0, 0, 0),"In","Quad",0.4,true)
            else
                uihide = false
                Main:TweenSize(UDim2.new(0, 540, 0, 340),"Out","Quad",0.5,true)
            end
        end
    end)

    local uitab = {}

    function uitab:AddTab(text,img)
        local BtnStroke = Instance.new("UIStroke")
        local bc = Instance.new("UICorner")
        local TabButton = Instance.new("TextButton")
        local title = Instance.new("TextLabel")
        local TUICorner = Instance.new("UICorner")
        local Title = Instance.new("TextLabel")
        TabButton.Parent = ScrollTab
        TabButton.Name = text.."Server"
        TabButton.Text = ""
        TabButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        TabButton.BackgroundTransparency = 1.000
        TabButton.Size = UDim2.new(0, 120, 0, 25)
        TabButton.Font = Enum.Font.GothamSemibold
        TabButton.TextColor3 = Color3.fromRGB(255, 255, 255)
        TabButton.TextSize = 12.000
        TabButton.TextTransparency = 0.5

        Title.Parent = TabButton
        Title.BackgroundColor3 = Color3.fromRGB(0, 170, 255)
        Title.BackgroundTransparency = 1.000
        Title.Position = UDim2.new(0, 25, 0, 0)
        Title.Size = UDim2.new(0, 100, 0, 25)
        Title.Font = Enum.Font.GothamSemibold
        Title.Text = text
        Title.TextColor3 = Color3.fromRGB(255, 255, 255)
        Title.TextSize = 15.000
        Title.TextXAlignment = Enum.TextXAlignment.Left 

        local IDK = Instance.new("ImageLabel")
        IDK.Name = "LogoIDK"
        IDK.Parent = TabButton
        IDK.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        IDK.BackgroundTransparency = 1.000
        IDK.Position = UDim2.new(0, 3, 0, 3)
        IDK.Size = UDim2.new(0, 20, 0, 20)
        IDK.Image = "rbxassetid://" .. tostring(img)
        TUICorner.CornerRadius = UDim.new(0, 3)
        TUICorner.Parent = TabButton

        BtnStroke.Name = "BtnStroke"
        BtnStroke.Parent = TabButton
        BtnStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
        BtnStroke.Color = Color3.fromRGB(255, 0, 0) --warna tab dibawah gambar
        BtnStroke.LineJoinMode = Enum.LineJoinMode.Round
        BtnStroke.Thickness = 1
        BtnStroke.Transparency = 0
        BtnStroke.Enabled = true
        BtnStroke.Archivable = true 

        local MainFramePage = Instance.new("ScrollingFrame")
        MainFramePage.Name = text.."_Page"
        MainFramePage.Parent = PageList
        MainFramePage.Active = true
        MainFramePage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        MainFramePage.BackgroundTransparency = 1.000
        MainFramePage.BorderSizePixel = 0
        MainFramePage.Size = UDim2.new(0, 400, 0, 308)
        MainFramePage.CanvasSize = UDim2.new(0, 0, 0, 0)
        MainFramePage.ScrollBarThickness = 0

        local UIPadding = Instance.new("UIPadding")
        local UIListLayout = Instance.new("UIListLayout")

        UIPadding.Parent = MainFramePage
        UIPadding.PaddingLeft = UDim.new(0, 10)
        UIPadding.PaddingTop = UDim.new(0, 5)

        UIListLayout.Padding = UDim.new(0,15)
        UIListLayout.Parent = MainFramePage
        UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder

        TabButton.MouseButton1Click:Connect(function()
            for i,v in next, ScrollTab:GetChildren() do
                if v:IsA("TextButton") then
                    TweenService:Create(
                    v,
                    TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                    {
                        TextTransparency = 0.5
                    }
                    ):Play()
                end
                    TweenService:Create(
                        TabButton,
                        TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                        {
                            TextTransparency = 0
                        }
                )   :Play()
            end

            for i,v in next, PageList:GetChildren() do
                currentpage = string.gsub(TabButton.Name,"Server","").."_Page"
                if v.Name == currentpage then
                    UIPageLayout:JumpTo(v)
                end
            end
        end)

        if abc == false then
            for i,v in next, ScrollTab:GetChildren() do     
                if v:IsA("TextButton") then
                    TweenService:Create(
                    v,
                    TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                    {
                        TextTransparency = 0.5
                    }
                    ):Play()
                end
                TweenService:Create(
                    TabButton,
                    TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                    {
                        TextTransparency = 0
                    }
                ):Play()
            end
            UIPageLayout:JumpToIndex(1)
            abc = true
        end

        game:GetService("RunService").Stepped:Connect(function()
            pcall(function()
                MainFramePage.CanvasSize = UDim2.new(0,0,0,UIListLayout.AbsoluteContentSize.Y + 20)
                ScrollTab.CanvasSize = UDim2.new(0,0,0,PLL.AbsoluteContentSize.Y + 20)
            end)
        end)

        function Update:AddNotification(textdesc)
        local NotificationHold = Instance.new("TextButton")
        local NotificationFrame = Instance.new("Frame")
        local OkayBtn = Instance.new("TextButton")
        local OkayBtnCorner = Instance.new("UICorner")
        local OkayBtnTitle = Instance.new("TextLabel")
        local NotificationTitle = Instance.new("TextLabel")
        local NotificationDesc = Instance.new("TextLabel")
        local NotifCorner = Instance.new("UICorner")
        local NotifHolderUIStroke = Instance.new("UIStroke")
        local Line = Instance.new("Frame")

        NotificationHold.Name = "NotificationHold"
        NotificationHold.Parent = Main
        NotificationHold.BackgroundColor3 = Color3.new(255, 0, 0)
        NotificationHold.BackgroundTransparency = 1
        NotificationHold.BorderSizePixel = 0
        NotificationHold.Size = UDim2.new(0, 589, 0, 378)
        NotificationHold.AutoButtonColor = false
        NotificationHold.Font = Enum.Font.SourceSans
        NotificationHold.Text = ""
        NotificationHold.TextColor3 = Color3.new(125,0,125)
        NotificationHold.TextSize = 13.000

        TweenService:Create(NotificationHold, TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
        BackgroundTransparency = 1
        }):Play()
        wait(0.4)

        NotificationFrame.Name = "NotificationFrame"
        NotificationFrame.Parent = NotificationHold
        NotificationFrame.AnchorPoint = Vector2.new(0.5, 0.5)
        NotificationFrame.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
        NotificationFrame.BorderColor3 = Color3.new(125,0,125)
        NotificationFrame.BorderSizePixel = 0
        NotificationFrame.Transparency = 0
        NotificationFrame.ClipsDescendants = true
        NotificationFrame.Position = UDim2.new(0, 295, 0, 190)
        NotificationFrame.Size = UDim2.new(0, 0, 0, 0)

        NotificationFrame:TweenSize(UDim2.new(0, 400, 0, 250), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, .6, true)

        NotifCorner.Name = "NotifCorner"
        NotifCorner.Parent = NotificationFrame
        NotifCorner.CornerRadius = UDim.new(0, 5)

        NotifHolderUIStroke.Name = "NotifHolderUIStroke"
        NotifHolderUIStroke.Parent = NotificationFrame
        NotifHolderUIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
        NotifHolderUIStroke.Color = Color3.new(125,0,125)
        NotifHolderUIStroke.LineJoinMode = Enum.LineJoinMode.Round
        NotifHolderUIStroke.Thickness = 2
        NotifHolderUIStroke.Transparency = 0
        NotifHolderUIStroke.Enabled = true
        NotifHolderUIStroke.Archivable = true

        OkayBtn.Name = "OkayBtn"
        OkayBtn.Parent = NotificationFrame
        OkayBtn.BackgroundColor3 = Color3.fromRGB(190, 190, 190)
        OkayBtn.BorderSizePixel = 2
        OkayBtn.BorderColor3 = Color3.new(125,0,125)
        OkayBtn.Position = UDim2.new(0, 125, 0, 190)
        OkayBtn.Size = UDim2.new(0, 150, 0, 30)
        OkayBtn.AutoButtonColor = true
        OkayBtn.Font = Enum.Font.SourceSans
        OkayBtn.Text = ""
        OkayBtn.TextColor3 = Color3.new(125,0,125)
        OkayBtn.TextSize = 13.000

        OkayBtnCorner.CornerRadius = UDim.new(0, 5)
        OkayBtnCorner.Name = "OkayBtnCorner"
        OkayBtnCorner.Parent = OkayBtn

        OkayBtnTitle.Name = "OkayBtnTitle"
        OkayBtnTitle.Parent = OkayBtn
        OkayBtnTitle.BackgroundColor3 = Color3.new(125,0,125)
        OkayBtnTitle.BackgroundTransparency = 1.000
        OkayBtnTitle.Size = UDim2.new(0, 150, 0, 30)
        OkayBtnTitle.Text = "OK"
        OkayBtnTitle.Font = Enum.Font.GothamSemibold
        OkayBtnTitle.TextColor3 = Color3.fromRGB(0, 0, 0)
        OkayBtnTitle.TextSize = 22.000

        NotificationTitle.Name = "NotificationTitle"
        NotificationTitle.Parent = NotificationFrame
        NotificationTitle.BackgroundColor3 = Color3.new(125,0,125)
        NotificationTitle.BackgroundTransparency = 1.000
        NotificationTitle.Position = UDim2.new(0, 0, 0, 10)
        NotificationTitle.Size = UDim2.new(0, 400, 0, 25)
        NotificationTitle.ZIndex = 3
        NotificationTitle.Font = Enum.Font.GothamSemibold
        NotificationTitle.Text = "Notification"
        NotificationTitle.TextColor3 = Color3.fromRGB(0, 255, 221)
        NotificationTitle.TextSize = 22.000

        Line.Name = "Line"
        Line.Parent = NotificationFrame
        Line.BackgroundColor3 = Color3.new(125,0,125)
        Line.BorderSizePixel = 0
        Line.Position = UDim2.new(0, 10, 0, 40)
        Line.Size = UDim2.new(0, 380, 0, 1)

        NotificationDesc.Name = "NotificationDesc"
        NotificationDesc.Parent = NotificationFrame
        NotificationDesc.BackgroundColor3 = _G.SectionColor
        NotificationDesc.BackgroundTransparency = 1.000
        NotificationDesc.Position = UDim2.new(0, 10, 0, 80)
        NotificationDesc.Size = UDim2.new(0, 380, 0, 200)
        NotificationDesc.Font = Enum.Font.GothamSemibold
        NotificationDesc.Text = textdesc
        NotificationDesc.TextScaled = false
        NotificationDesc.TextColor3 = Color3.new(125,0,125)
        NotificationDesc.TextSize = 16.000
        NotificationDesc.TextWrapped = true
        NotificationDesc.TextXAlignment = Enum.TextXAlignment.Center
        NotificationDesc.TextYAlignment = Enum.TextYAlignment.Top

        OkayBtn.MouseEnter:Connect(function()
            TweenService:Create(OkayBtn, TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
            BackgroundColor3 = Color3.fromRGB(34,34,34)}):Play()
        end)

        OkayBtn.MouseLeave:Connect(function()
            TweenService:Create(OkayBtn, TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
            BackgroundColor3 = Color3.fromRGB(25, 25, 25)}):Play()
        end)

        OkayBtn.MouseButton1Click:Connect(function()
            NotificationFrame:TweenSize(UDim2.new(0, 0, 0, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, .6, true)

            wait(0.4)
        
            TweenService:Create(NotificationHold, TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
            BackgroundTransparency = 1
            }):Play()
        
            wait(.3)
        
            NotificationHold:Destroy()
        end)
    end

    local main = {}
    function main:AddButton(text, callback)
        if logo == nil then
            logo = "15009422255"
        end
        local Button = Instance.new("Frame")
        local UICorner = Instance.new("UICorner")
        local TextBtn = Instance.new("TextButton")
        local ImageButton = Instance.new("ImageLabel")
        local UICorner_2 = Instance.new("UICorner")
        local Space = Instance.new("TextLabel")
        local Black = Instance.new("Frame")
        local UICorner_3 = Instance.new("UICorner")

        Button.Name = "Button"
        Button.Parent = MainFramePage
        Button.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
        Button.Size = UDim2.new(0, 387, 0, 31)

        UICorner.CornerRadius = UDim.new(0, 5)
        UICorner.Parent = Button

        TextBtn.Name = "TextBtn"
        TextBtn.Parent = Button
        TextBtn.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
        TextBtn.Position = UDim2.new(0, 1, 0, 1)
        TextBtn.Size = UDim2.new(0, 385, 0, 29)
        TextBtn.AutoButtonColor = false
        TextBtn.Font = Enum.Font.GothamSemibold
        TextBtn.Text = text
        TextBtn.TextColor3 = Color3.fromRGB(225, 225, 225)
        TextBtn.TextSize = 15.000

        ImageButton.Name = "ImageButton"
        ImageButton.Parent = Button
        ImageButton.BackgroundColor3 = Color3.fromRGB(150, 150, 150) -- warna ketika di klik
        ImageButton.BackgroundTransparency = 1.000
        ImageButton.BorderSizePixel = 0
        ImageButton.Position = UDim2.new(0, 350, 0, 6)
        ImageButton.Size = UDim2.new(0, 20, 0, 20)
        ImageButton.Image = "rbxassetid://107679910024355"
        ImageButton.ImageColor3 = Color3.fromRGB(255, 255, 255)

        UICorner_2.CornerRadius = UDim.new(0, 5)
        UICorner_2.Parent = TextBtn

        Space.Name = "Space"
        Space.Parent = Button
        Space.BackgroundColor3 = Color3.fromRGB(150, 150, 150) 
        Space.BackgroundTransparency = 1.000
        Space.Position = UDim2.new(0, 330, 0, 0)
        Space.Size = UDim2.new(0, 15, 0, 30)
        Space.Font = Enum.Font.GothamSemibold
        Space.Text = "|"
        Space.TextSize = 15.000
        Space.TextColor3 = Color3.fromRGB(255, 255, 255)
        Space.TextXAlignment = Enum.TextXAlignment.Right

        Black.Name = "Black"
        Black.Parent = Button
        Black.BackgroundColor3 = Color3.fromRGB(153, 3, 3) --warna tombol pas mau di klik
        Black.BackgroundTransparency = 1.000
        Black.BorderSizePixel = 0
        Black.Position = UDim2.new(0, 1, 0, 1)
        Black.Size = UDim2.new(0, 385, 0, 29)

        UICorner_3.CornerRadius = UDim.new(0, 5)
        UICorner_3.Parent = Black

        TextBtn.MouseEnter:Connect(
            function()
                TweenService:Create(
                    Black,
                    TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {BackgroundTransparency = 0.7}
                ):Play()
            end
        )
        TextBtn.MouseLeave:Connect(
            function()
                TweenService:Create(
                    Black,
                    TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {BackgroundTransparency = 1}
                ):Play()
            end
        )
        TextBtn.MouseButton1Click:Connect(
            function()
                TextBtn.TextSize = 0
                TweenService:Create(
                    TextBtn,
                    TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {TextSize = 15}
                ):Play()
                callback()
            end
        )
    end

    function main:AddToggle(TogInfo ,default, callback)
        local toggle = false
        if logo == nil then
            logo = "15009422255"
        end
        local CheckFrame = Instance.new("Frame")
        local CheckFrame2 = Instance.new("Frame")
        local UIStroke = Instance.new("UIStroke")
        local UIListLayout = Instance.new("UIListLayout")
        local UICorner = Instance.new("UICorner")
        local ImageLabel = Instance.new("ImageLabel")
        local Space = Instance.new("TextLabel")
        local Title = Instance.new("TextLabel")
        local ImageButton = Instance.new("ImageButton")

        -- Prop --
        CheckFrame.Name = TogInfo or "CheckFrame"
        CheckFrame.Parent = MainFramePage
        CheckFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
        CheckFrame.BackgroundTransparency = 1.000
        CheckFrame.BorderSizePixel = 0
        CheckFrame.Size = UDim2.new(0, 387, 0, 31)

        CheckFrame2.Name = "CheckFrame2"
        CheckFrame2.Parent = CheckFrame
        CheckFrame2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
        CheckFrame2.BorderSizePixel = 0
        CheckFrame2.Position = UDim2.new(0, 3, 0, 0)
        CheckFrame2.Size = UDim2.new(0, 381, 0, 30)

        UIStroke.Name = "UIStroke"
        UIStroke.Parent = CheckFrame2
        UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
        UIStroke.Color = Color3.fromRGB(255, 0, 0)
        UIStroke.LineJoinMode = Enum.LineJoinMode.Round
        UIStroke.Thickness = 1
        UIStroke.Transparency = 0
        UIStroke.Enabled = true
        UIStroke.Archivable = true

        UICorner.Parent = CheckFrame2
        UICorner.CornerRadius = UDim.new(0, 3)

        ImageLabel.Name = "ImageLabel"
        ImageLabel.Parent = CheckFrame2
        ImageLabel.BackgroundColor3 = Color3.fromRGB(255,255,255)
        ImageLabel.BackgroundTransparency = 1.000
        ImageLabel.BorderSizePixel = 0
        ImageLabel.Position = UDim2.new(0, 5, 0, 6)
        ImageLabel.Size = UDim2.new(0, 20, 0, 20)
        ImageLabel.Image = "rbxassetid://107679910024355"
        ImageLabel.ImageColor3 = Color3.fromRGB(255, 255, 255)

        Space.Name = "Space"
        Space.Parent = CheckFrame2
        Space.BackgroundColor3 = Color3.fromRGB(255,255,255)
        Space.BackgroundTransparency = 1.000
        Space.Position = UDim2.new(0, 30, 0, 0)
        Space.Size = UDim2.new(0, 15, 0, 30)
        Space.Font = Enum.Font.GothamSemibold
        Space.Text = "|"
        Space.TextSize = 15.000
        Space.TextColor3 = Color3.fromRGB(255, 255, 255)
        Space.TextXAlignment = Enum.TextXAlignment.Center

        Title.Name = "Title"
        Title.Parent = CheckFrame2
        Title.BackgroundColor3 = Color3.fromRGB(255,255,255)
        Title.BackgroundTransparency = 1.000
        Title.Position = UDim2.new(0, 50, 0, 0)
        Title.Size = UDim2.new(0, 280, 0, 30)
        Title.Font = Enum.Font.GothamSemibold
        Title.Text = TogInfo or "checkBox Title"
        Title.TextColor3 = Color3.fromRGB(255, 255, 255)
        Title.TextSize = 15.000
        Title.TextXAlignment = Enum.TextXAlignment.Left

        ImageButton.Name = "ImageButton"
        ImageButton.Parent = CheckFrame2
        ImageButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        ImageButton.BackgroundTransparency = 1.000
        ImageButton.Position = UDim2.new(0, 352, 0, 4)
        ImageButton.Size = UDim2.new(0, 23, 0, 23)
        ImageButton.ZIndex = 2
        ImageButton.Image = "rbxassetid://3926311105" --gambar kotak ceklis
        ImageButton.ImageColor3 = Color3.fromRGB(255, 255, 255)
        ImageButton.ImageRectOffset = Vector2.new(940, 784)
        ImageButton.ImageRectSize = Vector2.new(48, 48)

        -- Toggle Script --

        if default == true then
            ImageButton.ImageRectOffset = Vector2.new(4, 836)
            game.TweenService:Create(
                ImageButton,
                TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut),
                {ImageColor3 = Color3.fromRGB(255, 255, 255)}
            ):Play()
            toggle = not toggle
            pcall(callback, toggle)
        end

        ImageButton.MouseButton1Click:Connect(
            function()
                if toggle == false then
                    game.TweenService:Create(
                        ImageButton,
                        TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut),
                        {ImageColor3 = Color3.fromRGB(255, 255, 255)}
                    ):Play()
                    ImageButton.ImageRectOffset = Vector2.new(4, 836)
                else
                    game.TweenService:Create(
                        ImageButton,
                        TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut),
                        {ImageColor3 = Color3.fromRGB(255, 255, 255)}
                    ):Play()
                    ImageButton.ImageRectOffset = Vector2.new(940, 784)
                end
                toggle = not toggle
                pcall(callback, toggle)
            end
        )
    end

    function main:AddDropdown(text,option,callback)
        local isdropping = false
        local Dropdown = Instance.new("Frame")
        local UICorner = Instance.new("UICorner")
        local DropTitle = Instance.new("TextLabel")
        local DropScroll = Instance.new("ScrollingFrame")
        local UIListLayout = Instance.new("UIListLayout")
        local UIPadding = Instance.new("UIPadding")
        local DropButton = Instance.new("TextButton")
        local DropImage = Instance.new("ImageLabel")
        local UIStroke = Instance.new("UIStroke")

        Dropdown.Name = "Dropdown"
        Dropdown.Parent = MainFramePage
        Dropdown.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
        Dropdown.ClipsDescendants = true
        Dropdown.Size = UDim2.new(0, 387, 0, 31)

        UIStroke.Name = "UIStroke"
        UIStroke.Parent = Dropdown
        UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
        UIStroke.Color = Color3.fromRGB(255, 0, 0)
        UIStroke.LineJoinMode = Enum.LineJoinMode.Round
        UIStroke.Thickness = 1
        UIStroke.Transparency = 0
        UIStroke.Enabled = true
        UIStroke.Archivable = true

        UICorner.CornerRadius = UDim.new(0, 3)
        UICorner.Parent = Dropdown

        DropTitle.Name = "DropTitle"
        DropTitle.Parent = Dropdown
        DropTitle.BackgroundColor3 = Color3.fromRGB(255,255,255)
        DropTitle.BackgroundTransparency = 1.000
        DropTitle.Size = UDim2.new(0, 385, 0, 31)
        DropTitle.Font = Enum.Font.GothamSemibold
        DropTitle.Text = text.. " : "
        DropTitle.TextColor3 = Color3.fromRGB(255,255,255)
        DropTitle.TextSize = 15.000

        DropScroll.Name = "DropScroll"
        DropScroll.Parent = DropTitle
        DropScroll.Active = true
        DropScroll.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        DropScroll.BackgroundTransparency = 1.000
        DropScroll.BorderSizePixel = 0
        DropScroll.Position = UDim2.new(0, 0, 0, 31)
        DropScroll.Size = UDim2.new(0, 385, 0, 100)
        DropScroll.CanvasSize = UDim2.new(0, 0, 0, 0)
        DropScroll.ScrollBarThickness = 3

        UIListLayout.Parent = DropScroll
        UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
        UIListLayout.Padding = UDim.new(0, 5)

        UIPadding.Parent = DropScroll
        UIPadding.PaddingLeft = UDim.new(0, 5)
        UIPadding.PaddingTop = UDim.new(0, 5)

        DropButton.Name = "DropButton"
        DropButton.Parent = Dropdown
        DropButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        DropButton.BackgroundTransparency = 1.000
        DropButton.Size = UDim2.new(0, 385, 0, 31)
        DropButton.Font = Enum.Font.SourceSans
        DropButton.Text = ""
        DropButton.TextColor3 = Color3.fromRGB(0, 0, 0)
        DropButton.TextSize = 14.000

        DropImage.Name = "DropImage"
        DropImage.Parent = Dropdown
        DropImage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        DropImage.BackgroundTransparency = 1.000
        DropImage.Position = UDim2.new(0, 350, 0, 6)
        DropImage.Rotation = 180.000
        DropImage.Size = UDim2.new(0, 20, 0, 20)
        DropImage.Image = "rbxassetid://86307623642739"

        for i,v in next,option do
            local Item = Instance.new("TextButton")

            Item.Name = "Item"
            Item.Parent = DropScroll
            Item.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Item.BackgroundTransparency = 1.000
            Item.Size = UDim2.new(0, 385, 0, 26)
            Item.Font = Enum.Font.GothamSemibold
            Item.Text = tostring(v)
            Item.TextColor3 = Color3.fromRGB(255,255,255)
            Item.TextSize = 13.000
            Item.TextTransparency = 0.500

            Item.MouseEnter:Connect(function()
                TweenService:Create(
                    Item,
                    TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                    {
                        TextTransparency = 0
                    }
                ):Play()
            end)

            Item.MouseLeave:Connect(function()
                TweenService:Create(
                    Item,
                    TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                    {
                        TextTransparency = 0.5
                    }
                ):Play()
            end)

            Item.MouseButton1Click:Connect(function()
                isdropping = false
                Dropdown:TweenSize(UDim2.new(0,385,0,31),"Out","Quad",0.3,true)
                TweenService:Create(
                    DropImage,
                    TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                    {
                        Rotation = 180
                    }
                ):Play()
                callback(Item.Text)
                DropTitle.Text = text.." : "..Item.Text
            end)
        end

        DropScroll.CanvasSize = UDim2.new(0,0,0,UIListLayout.AbsoluteContentSize.Y + 10)

        DropButton.MouseButton1Click:Connect(function()
            if isdropping == false then
                isdropping = true
                Dropdown:TweenSize(UDim2.new(0,385,0,131),"Out","Quad",0.3,true)
                TweenService:Create(
                    DropImage,
                    TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                    {
                        Rotation = 0
                    }
                ):Play()
            else
                isdropping = false
                Dropdown:TweenSize(UDim2.new(0,385,0,31),"Out","Quad",0.3,true)
                TweenService:Create(
                    DropImage,
                    TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                    {
                        Rotation = 180
                    }
                ):Play()
            end
        end)

        local dropfunc = {}
        function dropfunc:Add(t)
            local Item = Instance.new("TextButton")
            Item.Name = "Item"
            Item.Parent = DropScroll
            Item.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Item.BackgroundTransparency = 1.000
            Item.Size = UDim2.new(0, 385, 0, 26)
            Item.Font = Enum.Font.GothamSemibold
            Item.Text = tostring(t)
            Item.TextColor3 = Color3.fromRGB(255,255,255)
            Item.TextSize = 13.000
            Item.TextTransparency = 0.500

            Item.MouseEnter:Connect(function()
                TweenService:Create(
                    Item,
                    TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                    {
                     TextTransparency = 0
                    }
                ):Play()
            end)

            Item.MouseLeave:Connect(function()
                TweenService:Create(
                    Item,
                    TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                    {
                     TextTransparency = 0.5
                    }
                ):Play()
            end)
        
            Item.MouseButton1Click:Connect(function()
                isdropping = false
                Dropdown:TweenSize(UDim2.new(0,387,0,31),"Out","Quad",0.3,true)
                TweenService:Create(
                    DropImage,
                    TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                    {
                     Rotation = 180
                    }
                ):Play()
                callback(Item.Text)
                DropTitle.Text = text.." : "..Item.Text
            end)
        end
        function dropfunc:Clear()
            DropTitle.Text = tostring(text).." : "
            isdropping = false
            Dropdown:TweenSize(UDim2.new(0,385,0,31),"Out","Quad",0.3,true)
            TweenService:Create(
                DropImage,
                TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                {
                 Rotation = 180
                }
            ):Play()
            for i,v in next, DropScroll:GetChildren() do
                if v:IsA("TextButton") then
                    v:Destroy()
                end
            end
        end
        return dropfunc
    end
  
    function main:AddSlider(text, min, max, start, callback)
        local sliderfunc = {}
        local SliderFrame = Instance.new("Frame")
        local SliderFrame_2 = Instance.new("Frame")
        local UIStroke = Instance.new("UIStroke")
        local UICorner = Instance.new("UICorner")
        local ImageLabel = Instance.new("ImageLabel")
        local Space = Instance.new("TextLabel")
        local Title = Instance.new("TextLabel")
        local SliderInput = Instance.new("Frame")
        local SliderButton = Instance.new("Frame")
        local SliderCount = Instance.new("Frame")
        local SliderCorner = Instance.new("UICorner")
        local SliderCorner2 = Instance.new("UICorner")
        local BoxFrame = Instance.new("Frame")
        local SliderBox = Instance.new("TextBox")
        local SliderStroke = Instance.new("UIStroke")
        local Title_2 = Instance.new("TextButton")
        local UICorner_2 = Instance.new("UICorner")
        local UICorner_3 = Instance.new("UICorner")
        
        -- Prop --
        SliderFrame.Name = slidertitle or "SliderFrame"
        SliderFrame.Parent = MainFramePage
        SliderFrame.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
        SliderFrame.BackgroundTransparency = 1.000
        SliderFrame.BorderSizePixel = 0
        SliderFrame.Size = UDim2.new(0, 387, 0, 60)
    
        SliderFrame_2.Name = "SliderFrame_2"
        SliderFrame_2.Parent = SliderFrame
        SliderFrame_2.BackgroundColor3 = Color3.fromRGB(0,0,0)
        SliderFrame_2.BackgroundTransparency = 0
        SliderFrame_2.BorderSizePixel = 0
        SliderFrame_2.Position = UDim2.new(0, 1, 0, 1)
        SliderFrame_2.Size = UDim2.new(0, 387, 0, 60)
        
        UIStroke.Name = "UIStroke"
        UIStroke.Parent = SliderFrame_2
        UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
        UIStroke.Color = Color3.fromRGB(255, 0, 0)
        UIStroke.LineJoinMode = Enum.LineJoinMode.Round
        UIStroke.Thickness = 1
        UIStroke.Transparency = 0
        UIStroke.Enabled = true
        UIStroke.Archivable = true
        
        UICorner.Parent = SliderFrame_2
        UICorner.CornerRadius = UDim.new(0, 3)
        
        ImageLabel.Name = "ImageLabel"
        ImageLabel.Parent = SliderFrame_2
        ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        ImageLabel.BackgroundTransparency = 1.000
        ImageLabel.BorderSizePixel = 0
        ImageLabel.Position = UDim2.new(0, 7.5, 0, 7.5)
        ImageLabel.Size = UDim2.new(0, 30, 0, 30)
        ImageLabel.Image = "rbxassetid://107679910024355" --gambar slider
            
        Title.Parent = SliderFrame_2
        Title.BackgroundColor3 = Color3.fromRGB(150, 150, 150)
        Title.BackgroundTransparency = 1.000
        Title.Position = UDim2.new(0, 45, 0, 5)
        Title.Size = UDim2.new(0, 280, 0, 30)
        Title.Font = Enum.Font.GothamSemibold
        Title.Text = "|  "..text
        Title.TextColor3 = Color3.fromRGB(255, 255, 255)
        Title.TextSize = 15.000
        Title.TextXAlignment = Enum.TextXAlignment.Left
                
        SliderInput.Name = "SliderInput"
        SliderInput.Parent = SliderFrame_2
        SliderInput.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        SliderInput.BackgroundTransparency = 0.7
        SliderInput.BorderSizePixel = 0
        SliderInput.Position = UDim2.new(0, 8, 0, 42)
        SliderInput.Size = UDim2.new(0, 365, 0, 6)
        
        SliderCorner2.CornerRadius = UDim.new(0, 100000)
        SliderCorner2.Parent = SliderInput
        
        SliderButton.Name = "SliderButton"
        SliderButton.Parent = SliderInput
        SliderButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        SliderButton.BackgroundTransparency = 1.000
        SliderButton.BorderSizePixel = 0
        SliderButton.Position = UDim2.new(0, 0, 0, -7)
        SliderButton.Size = UDim2.new(0, 346, 0, 25)
    
        SliderCount.Name = "SliderCount"
        SliderCount.Parent = SliderButton
        SliderCount.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        SliderCount.BackgroundTransparency = 0.3
        SliderCount.BorderSizePixel = 0
        SliderCount.Position = UDim2.new(0,start,0,0)
        SliderCount.Size = UDim2.new(0, 18, 0, 18)
    
        Title_2.Name = "Title_2"
        Title_2.Parent = SliderButton
        Title_2.AnchorPoint = Vector2.new(0, 0)
        Title_2.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
        Title_2.AutoButtonColor = false
        Title_2.BackgroundTransparency = 1.000
        Title_2.Position = UDim2.new(0,start,0,0)
        Title_2.Size = UDim2.new(0, 18, 0, 18)
        Title_2.Font = Enum.Font.GothamBold
        Title_2.Text = tostring(start and math.floor((start / max) * (max - min) + min) or 0)
        Title_2.TextColor3 = Color3.fromRGB(255, 255, 255)
        Title_2.TextSize = 8.000
        Title_2.TextXAlignment = Enum.TextXAlignment.Center
        
        UICorner_2.Parent = Title_2
        UICorner_2.CornerRadius = UDim.new(0, 100000)
        
        SliderCorner.CornerRadius = UDim.new(0, 100000)
        SliderCorner.Parent = SliderCount
        
        SliderStroke.Name = "SliderStroke"
        SliderStroke.Parent = BoxFrame
        SliderStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
        SliderStroke.Color = Color3.fromRGB(255, 0, 0)
        SliderStroke.LineJoinMode = Enum.LineJoinMode.Round
        SliderStroke.Thickness = 1
        SliderStroke.Transparency = 0.5
        SliderStroke.Enabled = true
        SliderStroke.Archivable = true
        
        BoxFrame.Name = "BoxFrame"
        BoxFrame.Parent = SliderFrame_2
        BoxFrame.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
        BoxFrame.BackgroundTransparency = 1.000
        BoxFrame.Size = UDim2.new(0, 50, 0, 15)
        BoxFrame.Position = UDim2.new(0, 323, 0, 8)
    
        SliderBox.Name = "SliderBox"
        SliderBox.Parent = BoxFrame
        SliderBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        SliderBox.BackgroundTransparency = 1.000
        SliderBox.Position = UDim2.new(0, 0, 0, 1.65)
        SliderBox.Size = UDim2.new(0, 50, 0, 15)
        SliderBox.ClearTextOnFocus = false
        SliderBox.Font = Enum.Font.Code
        SliderBox.Text = tostring(start and math.floor((start / max) * (max - min) + min) or 0)
        SliderBox.TextColor3 = Color3.fromRGB(255,255,255)
        SliderBox.TextSize = 10.000
        SliderBox.TextTransparency = 0
        SliderBox.TextXAlignment = Enum.TextXAlignment.Center
        SliderBox.TextEditable = true
        
        UICorner_3.Parent = BoxFrame
        UICorner_3.CornerRadius = UDim.new(0, 2)
        
        -- Slider Script --
        local dragging
        local SliderButtonStart
        local SliderButtonInput
        local slide = SliderButton
        
        local function slide(input)
            local slidein = UDim2.new(math.clamp((input.Position.X - SliderButton.AbsolutePosition.X) / SliderButton.AbsoluteSize.X, 0, 1), 0, 0, 0)
            SliderCount:TweenPosition(slidein, Enum.EasingDirection.InOut, Enum.EasingStyle.Linear, 0.08, true)
            Title_2:TweenPosition(slidein, Enum.EasingDirection.InOut, Enum.EasingStyle.Linear, 0.12, true)
            local Value = math.floor(((slidein.X.Scale * max) / max) * (max - min) + min)
            SliderBox.Text = tostring(Value)
            Title_2.Text = tostring(Value)
            pcall(callback, Value, slidein)
        end
    
        SliderButton.InputBegan:Connect(function(input)
            if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
                dragging = true
                SliderButtonInput = input
                SliderButtonStart = input.Position.X
                slidein = SliderButton.AbsolutePosition.X
                game.TweenService:Create(SliderCount, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {BackgroundTransparency = 0, Size = UDim2.new(0, 14, 0, 14)}):Play()
                game.TweenService:Create(Title_2, TweenInfo.new(0.12, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {AnchorPoint = Vector2.new(0.22, 0.8), TextSize = 13.000, BackgroundTransparency = 0, Size = UDim2.new(0, 25, 0, 25)}):Play()
                game.TweenService:Create(SliderBox, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {TextTransparency = 0}):Play()
                game.TweenService:Create(SliderInput, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {BackgroundTransparency = 0.5}):Play()
                game.TweenService:Create(SliderStroke, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {Transparency = 0}):Play()
            end
            input.Changed:Connect(function(input)
                if input.UserInputType == Enum.UserInputState.End then
                dragging = false
                
                end
            end)
        end)
        SliderButton.InputEnded:Connect(function(input)
            if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
                dragging = false
                SliderButtonInput = input
                game.TweenService:Create(SliderCount, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {BackgroundTransparency = 0.3, Size = UDim2.new(0, 18, 0, 18)}):Play()
                game.TweenService:Create(Title_2, TweenInfo.new(0.12, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {AnchorPoint = Vector2.new(0, 0), TextSize = 8.000, BackgroundTransparency = 1.000, Size = UDim2.new(0, 18, 0, 18)}):Play()
                game.TweenService:Create(SliderBox, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {TextTransparency = 0.5}):Play()
                game.TweenService:Create(SliderInput, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {BackgroundTransparency = 0.7}):Play()
                game.TweenService:Create(SliderStroke, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {Transparency = 0.5}):Play()
            end
        end)
        UserInputService.InputChanged:Connect(function(input)
            if input == SliderButtonInput and dragging then
                slide(input)
            end
        end)
        
        function set(property)
            if property == "Text" then
                if tonumber(SliderBox.Text) then 
                    if tonumber(SliderBox.Text) <= max then
                        Value = SliderBox.Text
                        Title_2.Text = SliderBox.Text
                        SliderCount:TweenPosition(UDim2.new(((tonumber(SliderBox.Text) or min) - min) / (max - min), 0, 0, 0), "InOut", "Linear", 0.08, true)
                        Title_2:TweenPosition(UDim2.new(((tonumber(SliderBox.Text) or min) - min) / (max - min), 0, 0, 0), "InOut", "Linear", 0.12, true)
                        pcall(function()
                            callback(Value)
                        end)
                    end
                    if tonumber(SliderBox.Text) > max then
                        SliderBox.Text = max
                        Title_2.Text = max
                        Value = max
                        SliderCount:TweenPosition(UDim2.new(((max or min) - min) / (max - min), 0, 0, 0), "InOut", "Linear", 0.08, true)
                        Title_2:TweenPosition(UDim2.new(((max or min) - min) / (max - min), 0, 0, 0), "InOut", "Linear", 0.12, true)
                        pcall(function()
                            callback(Value)
                        end)
                    end
                    if tonumber(SliderBox.Text) >= min then
                        Value = SliderBox.Text
                        Title_2.Text = SliderBox.Text
                        SliderCount:TweenPosition(UDim2.new(((tonumber(SliderBox.Text) or min) - min) / (max - min), 0, 0, 0), "InOut", "Linear", 0.08, true)
                        Title_2:TweenPosition(UDim2.new(((tonumber(SliderBox.Text) or min) - min) / (max - min), 0, 0, 0), "InOut", "Linear", 0.12, true)
                        pcall(function()
                            callback(Value)
                        end)
                    end
                    if tonumber(SliderBox.Text) < min then
                        Value = min
                        Title_2 = min
                        SliderCount.Position = UDim2.new(((min or min) - min) / (max - min), 0, 0, 0)
                        Title_2.Position = UDim2.new(((min or min) - min) / (max - min), 0, 0, 0)
                        pcall(function()
                            callback(Value)
                        end)
                    end
                else
                    SliderBox.Text = "" or Value
                    Title_2.Text = Value
                end
            end
        end
        
        SliderBox.Focused:Connect(function()
            SliderBox.Changed:Connect(set)
        end)
        
        SliderBox.FocusLost:Connect(function(enterP)
            if not enterP then
                if SliderBox.Text == "" then
                    SliderBox.Text = min
                    Title_2.Text = min
                    Value = min
                    SliderCount:TweenPosition(UDim2.new(((min) - min) / (max - min), 0, 0, 0), "InOut", "Linear", 0.08, true)
                    Title_2:TweenPosition(UDim2.new(((min) - min) / (max - min), 0, 0, 0), "InOut", "Linear", 0.12, true)
                    pcall(function()
                        callback(Value)
                    end)
                end
                if tonumber(SliderBox.Text) > tonumber(max) then
                    Value = max
                    SliderBox.Text = max
                    Title_2.Text = max
                    SliderCount:TweenPosition(UDim2.new(((max or min) - min) / (max - min), 0, 0, 0), "InOut", "Linear", 0.08, true)
                    Title_2:TweenPosition(UDim2.new(((max or min) - min) / (max - min), 0, 0, 0), "InOut", "Linear", 0.12, true)
                    pcall(function()
                        callback(Value)
                    end)
                else
                    Value = tonumber(SliderBox.Text)
                end
                if tonumber(SliderBox.Text) < min then
                    SliderBox.Text = min
                    Title_2.Text = min
                    Value = min
                    SliderCount:TweenPosition(UDim2.new(((min) - min) / (max - min), 0, 0, 0), "InOut", "Linear", 0.08, true)
                    Title_2:TweenPosition(UDim2.new(((min) - min) / (max - min), 0, 0, 0), "InOut", "Linear", 0.12, true)
                    pcall(function()
                        callback(Value)
                    end)
                else
                    Value = tonumber(SliderBox.Text)
                end
            end
            if tonumber(SliderBox.Text) > max then
                SliderBox.Text = max
                Title_2.Text = max
                Value = max
                SliderCount:TweenPosition(UDim2.new(((max or min) - min) / (max - min), 0, 0, 0), "InOut", "Linear", 0.08, true)
                Title_2:TweenPosition(UDim2.new(((max or min) - min) / (max - min), 0, 0, 0), "InOut", "Linear", 0.12, true)
                pcall(function()
                    callback(Value)
                end)
            else
                Value = tonumber(SliderBox.Text)
            end
            if tonumber(SliderBox.Text) < min then
                SliderBox.Text = min
                Title_2.Text = min
                Value = min
                SliderCount.Position = UDim2.new(((min) - min) / (max - min), 0, 0, 0)
                Title_2.Position = UDim2.new(((min) - min) / (max - min), 0, 0, 0)
                pcall(function()
                    callback(Value)
                end)
            else
                Value = tonumber(SliderBox.Text)
            end
            if SliderBox.Text == "" then
                SliderBox.Text = min
                Title_2.Text = min
                Value = min
                SliderCount:TweenPosition(UDim2.new(((min) - min) / (max - min), 0, 0, 0), "InOut", "Linear", 0.08, true)
                Title_2:TweenPosition(UDim2.new(((min) - min) / (max - min), 0, 0, 0), "InOut", "Linear", 0.12, true)
                pcall(function()
                    callback(Value)
                end)
            end
        end)
        return sliderfunc
    end

    function main:AddTextbox(text,disappear,callback)
        local Textbox = Instance.new("Frame")
        local TextboxCorner = Instance.new("UICorner")
        local Textboxx = Instance.new("Frame")
        local TextboxxCorner = Instance.new("UICorner")
        local TextboxLabel = Instance.new("TextLabel")
        local txtbtn = Instance.new("TextButton")
        local RealTextbox = Instance.new("TextBox")
        local UICorner = Instance.new("UICorner")

        Textbox.Name = "Textbox"
        Textbox.Parent = MainFramePage
        Textbox.BackgroundColor3 = Color3.new(255, 0, 0)
        Textbox.BackgroundTransparency = 0
        Textbox.Size = UDim2.new(0, 387, 0, 31)

        TextboxCorner.CornerRadius = UDim.new(0, 5)
        TextboxCorner.Name = "TextboxCorner"
        TextboxCorner.Parent = Textbox

        Textboxx.Name = "Textboxx"
        Textboxx.Parent = Textbox
        Textboxx.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
        Textboxx.Position = UDim2.new(0, 1, 0, 1)
        Textboxx.Size = UDim2.new(0, 385, 0, 29)

        TextboxxCorner.CornerRadius = UDim.new(0, 5)
        TextboxxCorner.Name = "TextboxxCorner"
        TextboxxCorner.Parent = Textboxx

        TextboxLabel.Name = "TextboxLabel"
        TextboxLabel.Parent = Textbox
        TextboxLabel.BackgroundColor3 = Color3.fromRGB(255, 128,0)
        TextboxLabel.BackgroundTransparency = 1.000
        TextboxLabel.Position = UDim2.new(0, 15, 0, 0)
        TextboxLabel.Text = text
        TextboxLabel.Size = UDim2.new(0, 145, 0, 31)
        TextboxLabel.Font = Enum.Font.GothamSemibold
        TextboxLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
        TextboxLabel.TextSize = 16.000
        TextboxLabel.TextTransparency = 0
        TextboxLabel.TextXAlignment = Enum.TextXAlignment.Left

        txtbtn.Name = "txtbtn"
        txtbtn.Parent = Textbox
        txtbtn.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        txtbtn.BackgroundTransparency = 1.000
        txtbtn.Position = UDim2.new(0, 1, 0, 1)
        txtbtn.Size = UDim2.new(0, 387, 0, 29)
        txtbtn.Font = Enum.Font.SourceSans
        txtbtn.Text = ""
        txtbtn.TextColor3 = Color3.fromRGB(0, 0, 0)
        txtbtn.TextSize = 14.000

        RealTextbox.Name = "RealTextbox"
        RealTextbox.Parent = Textbox
        RealTextbox.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
        RealTextbox.BackgroundTransparency = 0
        RealTextbox.Position = UDim2.new(0, 275, 0, 4)
        RealTextbox.Size = UDim2.new(0, 100, 0, 24)
        RealTextbox.Font = Enum.Font.GothamSemibold
        RealTextbox.Text = ""
        RealTextbox.TextColor3 = Color3.fromRGB(225, 225, 225)
        RealTextbox.TextSize = 11.000
        RealTextbox.TextTransparency = 0

        RealTextbox.FocusLost:Connect(function()
            callback(RealTextbox.Text)
            if disappear then
                RealTextbox.Text = ""
            end
        end)

        UICorner.CornerRadius = UDim.new(0, 5)
        UICorner.Parent = RealTextbox
    end

    function main:AddLabel(text)
        local Label = Instance.new("TextLabel")
        local PaddingLabel = Instance.new("UIPadding")
        local labelfunc = {}

        Label.Name = "Label"
        Label.Parent = MainFramePage
        Label.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Label.BackgroundTransparency = 1.000
        Label.Size = UDim2.new(0, 410, 0, 20)
        Label.Font = Enum.Font.GothamSemibold
        Label.TextColor3 = Color3.fromRGB(225, 225, 225)
        Label.TextSize = 16.000
        Label.Text = text
        Label.TextXAlignment = Enum.TextXAlignment.Left

        PaddingLabel.PaddingLeft = UDim.new(0,15)
        PaddingLabel.Parent = Label
        PaddingLabel.Name = "PaddingLabel"

        function labelfunc:Set(newtext)
            Label.Text = newtext
        end
        return labelfunc
    end

    function main:AddLabel1(text)
        local Label1 = Instance.new("TextLabel")
        local PaddingLabel1 = Instance.new("UIPadding")
        local Label1func = {}
        
        Label1.Name = "Label1"
        Label1.Parent = MainFramePage
        Label1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Label1.BackgroundTransparency = 1.000
        Label1.Size = UDim2.new(0, 410, 0, 20)
        Label1.Font = Enum.Font.GothamSemibold
        Label1.TextColor3 = Color3.fromRGB(255,255,255)
        Label1.TextSize = 15.000
        Label1.Text = text
        Label1.TextXAlignment = Enum.TextXAlignment.Left
        
        PaddingLabel1.PaddingLeft = UDim.new(0,15)
        PaddingLabel1.Parent = Label1
        PaddingLabel1.Name = "PaddingLabel1"
        function Label1func:Refresh(tochange)
        Label1.Text = tochange
        end
        
        return Label1func
    end    

    function main:AddTextbox(text,disappear,callback)
        local Textbox = Instance.new("Frame")
        local TextboxCorner = Instance.new("UICorner")
        local Textboxx = Instance.new("Frame")
        local TextboxxCorner = Instance.new("UICorner")
        local TextboxLabel = Instance.new("TextLabel")
        local txtbtn = Instance.new("TextButton")
        local RealTextbox = Instance.new("TextBox")
        local UICorner = Instance.new("UICorner")
        
        Textbox.Name = "Textbox"
        Textbox.Parent = MainFramePage
        Textbox.BackgroundColor3 = Color3.new(255, 0, 0)
        Textbox.BackgroundTransparency = 0
        Textbox.Size = UDim2.new(0, 387, 0, 31)
        
        TextboxCorner.CornerRadius = UDim.new(0, 5)
        TextboxCorner.Name = "TextboxCorner"
        TextboxCorner.Parent = Textbox
        
        Textboxx.Name = "Textboxx"
        Textboxx.Parent = Textbox
        Textboxx.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
        Textboxx.Position = UDim2.new(0, 1, 0, 1)
        Textboxx.Size = UDim2.new(0, 385, 0, 29)
        
        TextboxxCorner.CornerRadius = UDim.new(0, 3)
        TextboxxCorner.Name = "TextboxxCorner"
        TextboxxCorner.Parent = Textboxx
        
        TextboxLabel.Name = "TextboxLabel"
        TextboxLabel.Parent = Textbox
        TextboxLabel.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
        TextboxLabel.BackgroundTransparency = 1.000
        TextboxLabel.Position = UDim2.new(0, 15, 0, 0)
        TextboxLabel.Text = text
        TextboxLabel.Size = UDim2.new(0, 145, 0, 31)
        TextboxLabel.Font = Enum.Font.GothamSemibold
        TextboxLabel.TextColor3 = Color3.fromRGB(225, 225, 225)
        TextboxLabel.TextSize = 16.000
        TextboxLabel.TextTransparency = 0
        TextboxLabel.TextXAlignment = Enum.TextXAlignment.Left
        
        txtbtn.Name = "txtbtn"
        txtbtn.Parent = Textbox
        txtbtn.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        txtbtn.BackgroundTransparency = 1.000
        txtbtn.Position = UDim2.new(0, 1, 0, 1)
        txtbtn.Size = UDim2.new(0, 387, 0, 29)
        txtbtn.Font = Enum.Font.SourceSans
        txtbtn.Text = ""
        txtbtn.TextColor3 = Color3.fromRGB(0, 0, 0)
        txtbtn.TextSize = 14.000
        
        RealTextbox.Name = "RealTextbox"
        RealTextbox.Parent = Textbox
        RealTextbox.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
        RealTextbox.BackgroundTransparency = 0
        RealTextbox.Position = UDim2.new(0, 275, 0, 4)
        RealTextbox.Size = UDim2.new(0, 100, 0, 24)
        RealTextbox.Font = Enum.Font.GothamSemibold
        RealTextbox.Text = ""
        RealTextbox.TextColor3 = Color3.fromRGB(255, 0, 0)
        RealTextbox.TextSize = 11.000
        RealTextbox.TextTransparency = 0

        RealTextbox.FocusLost:Connect(function()
            callback(RealTextbox.Text)
            if disappear then
                RealTextbox.Text = ""
            end
        end)

        UICorner.CornerRadius = UDim.new(0, 3)
        UICorner.Parent = RealTextbox
    end
    
    function main:AddLabel(text)
        local Label = Instance.new("TextLabel")
        local PaddingLabel = Instance.new("UIPadding")
        local labelfunc = {}

        Label.Name = "Label"
        Label.Parent = MainFramePage
        Label.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Label.BackgroundTransparency = 1.000
        Label.Size = UDim2.new(0, 410, 0, 20)
        Label.Font = Enum.Font.GothamSemibold
        Label.TextColor3 = Color3.fromRGB(225, 225, 225)
        Label.TextSize = 16.000
        Label.Text = text
        Label.TextXAlignment = Enum.TextXAlignment.Left

        PaddingLabel.PaddingLeft = UDim.new(0,15)
        PaddingLabel.Parent = Label
        PaddingLabel.Name = "PaddingLabel"

        function labelfunc:Set(newtext)
            Label.Text = newtext
        end
        return labelfunc
    end

    function main:AddLabel1(text)
        local Label1 = Instance.new("TextLabel")
        local PaddingLabel1 = Instance.new("UIPadding")
        local Label1func = {}
        
        Label1.Name = "Label1"
        Label1.Parent = MainFramePage
        Label1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Label1.BackgroundTransparency = 1.000
        Label1.Size = UDim2.new(0, 410, 0, 20)
        Label1.Font = Enum.Font.GothamSemibold
        Label1.TextColor3 = Color3.fromRGB(255,255,255)
        Label1.TextSize = 15.000
        Label1.Text = text
        Label1.RichText = true
        Label1.TextXAlignment = Enum.TextXAlignment.Left
        
        PaddingLabel1.PaddingLeft = UDim.new(0,15)
        PaddingLabel1.Parent = Label1
        PaddingLabel1.Name = "PaddingLabel1"
        function Label1func:Refresh(tochange)
            Label1.Text = tochange
        end

        return Label1func
    end

    function main:Dis(text,display)
        local Label1 = Instance.new("TextLabel")
        local PaddingLabel1 = Instance.new("UIPadding")
        local Label1func = {}

        Label1.Name = "Label1"
        Label1.Parent = MainFramePage
        Label1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Label1.BackgroundTransparency = 1.000
        Label1.Size = UDim2.new(0, 410, 0, 20)
        Label1.Font = Enum.Font.GothamSemibold
        Label1.TextColor3 = Color3.fromRGB(255,255,255)
        Label1.TextSize = 15.000
        Label1.Text = text
        Label1.TextXAlignment = Enum.TextXAlignment.Left

        Labeld.Name = "Labeld"
        Labeld.Parent = MainFramePage
        Labeld.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Labeld.BackgroundTransparency = 1.000
        Labeld.Size = UDim2.new(0, 410, 0, 20)
        Labeld.Font = Enum.Font.GothamSemibold
        Labeld.TextColor3 = Color3.fromRGB(255, 255, 255)
        Labeld.TextSize = 15.000
        Labeld.Text = display or ""
        Labeld.TextXAlignment = Enum.TextXAlignment.Left

        PaddingLabel1.PaddingLeft = UDim.new(0,15)
        PaddingLabel1.Parent = Label1
        PaddingLabel1.Name = "PaddingLabel1"
        function Label1func:Refresh(tochange)
            Label1.Text = tochange
        end

        return Label1func
    end

    function main:AddSeperator(text)
        local Seperator = Instance.new("Frame")
        local Sep1 = Instance.new("Frame")
        local Sep2 = Instance.new("TextLabel")
        local Sep3 = Instance.new("Frame")

        Seperator.Name = "Seperator"
        Seperator.Parent = MainFramePage
        Seperator.BackgroundColor3 = Color3.fromRGB(255,255,255)
        Seperator.BackgroundTransparency = 1.000
        Seperator.Size = UDim2.new(0, 310, 0, 20)

        Sep1.Name = "Sep1"
        Sep1.Parent = Seperator
        Sep1.BackgroundColor3 = Color3.new(255, 0, 0)
        Sep1.BorderSizePixel = 0
        Sep1.Position = UDim2.new(0, 0, 0, 10)
        Sep1.Size = UDim2.new(0, 80, 0, 1)

        Sep2.Name = "Sep2"
        Sep2.Parent = Seperator
        Sep2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Sep2.BackgroundTransparency = 1.000
        Sep2.Position = UDim2.new(0, 140, 0, 0)
        Sep2.Size = UDim2.new(0, 100, 0, 20)
        Sep2.Font = Enum.Font.GothamSemibold
        Sep2.Text = text
        Sep2.TextColor3 = Color3.fromRGB(255,255,255)
        Sep2.TextSize = 14.000

        Sep3.Name = "Sep3"
        Sep3.Parent = Seperator
        Sep3.BackgroundColor3 = Color3.new(255, 0, 0)
        Sep3.BorderSizePixel = 0
        Sep3.Position = UDim2.new(0, 300, 0, 10)
        Sep3.Size = UDim2.new(0, 80, 0, 1)
    end

    function main:AddLine()
        local Linee = Instance.new("Frame")
        local Line = Instance.new("Frame")
        
        Linee.Name = "Linee"
        Linee.Parent = MainFramePage
        Linee.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Linee.BackgroundTransparency = 1.000
        Linee.Position = UDim2.new(0, 0, 0.119999997, 0)
        Linee.Size = UDim2.new(0, 310, 0, 20)
        
        Line.Name = "Line"
        Line.Parent = Linee
        Line.BackgroundColor3 = Color3.new(255, 0, 0)
        Line.BorderSizePixel = 0
        Line.Position = UDim2.new(0, 0, 0, 10)
        Line.Size = UDim2.new(0, 410, 0, 1)
    end

    return main
end
return uitab
end

function intiBrutalityHubV4() 
    _G.antiscan = true
    getgenv().A = require(game:GetService("ReplicatedStorage").CombatFramework.RigLib).wrapAttackAnimationAsync
    getgenv().B = require(game.Players.LocalPlayer.PlayerScripts.CombatFramework.Particle).play
    _G.setfflag = true
    end
    spawn(function()
        while wait() do
            if _G.setfflag then
                setfflag("AbuseReportScreenshot", "False")
                setfflag("AbuseReportScreenshotPercentage", "0")
            end
        end
    end)

local Library = Update:Window("Brutality Hub V4","WAIT UPDATE | IS UNDER CONSTRUCTION",Enum.KeyCode.RightControl);
local Rumah = Library:AddTab("Home","18797343654")
local Status = Library:AddTab("Status","78118444078057")
local Farming = Library:AddTab("Farming","18477352665")
local Quest = Library:AddTab("Quest Item","18477473610")
local RaceV4 = Library:AddTab("Race V4","18477916271")
local SeaEvent = Library:AddTab("Sea Event","18630756931")
local Bounty = Library:AddTab("Bounty","18492098759")
local Raid = Library:AddTab("Auto Raid","18491947999")
local Teleport = Library:AddTab("Teleport","18477347703")
local ShopDealer = Library:AddTab("Shop Dealer","18477410455")
local DevilFruit = Library:AddTab("Devil Fruit","18477363100")
local HopServer = Library:AddTab("Hop Server","104397992902189")
local Statistic = Library:AddTab("Statistic","18630736310")
local Setting = Library:AddTab("Setting","134210609072137")
local Misc = Library:AddTab("MISC","18477908150")

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
-----------------------------------------------------------------------------------------------------------------------------
-- Fitur Semua Script

if game.PlaceId == 2753915549 then
    World1 = true
elseif game.PlaceId == 4442272183 then
    World2 = true
elseif game.PlaceId == 7449423635 then
    World3 = true
end

function MoonTextureId()
    if World1 then
        return game:GetService("Lighting").FantasySky.MoonTextureId
    elseif World2 then
        return game:GetService("Lighting").FantasySky.MoonTextureId
    elseif World3 then
        return game:GetService("Lighting").Sky.MoonTextureId
    end
end

function CheckMoon()
    moon8 = "http://www.roblox.com/asset/?id=9709150401"
    moon7 = "http://www.roblox.com/asset/?id=9709150086"
    moon6 = "http://www.roblox.com/asset/?id=9709149680"
    moon5 = "http://www.roblox.com/asset/?id=9709149431"
    moon4 = "http://www.roblox.com/asset/?id=9709149052"
    moon3 = "http://www.roblox.com/asset/?id=9709143733"
    moon2 = "http://www.roblox.com/asset/?id=9709139597"
    moon1 = "http://www.roblox.com/asset/?id=9709135895"
    moonreal = MoonTextureId()
    cofullmoonkothangbeo = "Bad Moon"
    if moonreal == moon5 or moonreal == moon4 then
        if moonreal == moon5 then
            cofullmoonkothangbeo = "Full Moon"
        elseif moonreal == moon4 then
            cofullmoonkothangbeo = "Next Night"
        end
    end
    return cofullmoonkothangbeo
end

function function7()
    GameTime = "Error"
    local c = game.Lighting
    local ao = c.ClockTime
    if ao >= 18 or ao < 5 then
        GameTime = "Night"
    else
        GameTime = "Day"
    end
    return GameTime
end
function function6()
    return math.floor(game.Lighting.ClockTime)
end
function getServerTime()
    RealTime = tostring(math.floor(game.Lighting.ClockTime * 100) / 100)
    RealTime = tostring(game.Lighting.ClockTime)
    RealTimeTable = RealTime:split(".")
    Minute, Second = RealTimeTable[1], tonumber(0 + tonumber(RealTimeTable[2] / 100)) * 60
    return Minute, Second
end
function function8()
    local c = game.Lighting
    local ao = c.ClockTime
    if CheckMoon() == "Full Moon" and ao <= 5 then
        return tostring(function6()) .. " ( Moon In " .. math.floor(5 - ao) .. " Minutes )"
    elseif CheckMoon() == "Full Moon" and (ao > 5 and ao < 12) then
        return tostring(function6()) .. " ( Fake Moon )"
    elseif CheckMoon() == "Full Moon" and (ao > 12 and ao < 18) then
        return tostring(function6()) .. " ( Moon In " .. math.floor(18 - ao) .. " Minutes )"
    elseif CheckMoon() == "Full Moon" and (ao > 18 and ao <= 24) then
        return tostring(function6()) .. " ( Moon In " .. math.floor(24 + 6 - ao) .. " Minutes )"
    end
    if CheckMoon() == "Next Night" and ao < 12 then
        return tostring(function6()) .. " ( Moon In " .. math.floor(18 - ao) .. " Minutes )"
    elseif CheckMoon() == "Next Night" and ao > 12 then
        return tostring(function6()) .. " ( Moon In " .. math.floor(18 + 12 - ao) .. " Minutes )"
    end
    return tostring(function6())
end

function CheckAcientOneStatus()
    if not game.Players.LocalPlayer.Character:FindFirstChild("RaceTransformed") then
        return "You have yet to achieve greatness"
    end
    local v227 = nil
    local v228 = nil
    local v229 = nil
    v229, v228, v227 = game.ReplicatedStorage.Remotes.CommF_:InvokeServer("UpgradeRace", "Check")
    if v229 == 1 then
        return "Required Train More"
    elseif v229 == 2 or v229 == 4 or v229 == 7 then
        return "Can Buy Gear With " .. v227 .. " Fragments"
    elseif v229 == 3 then
        return "Required Train More"
    elseif v229 == 5 then
        return "You Are Done Your Race."
    elseif v229 == 6 then
        return "Upgrades completed: " .. v228 - 2 .. "/3, Need Trains More"
    end
    if v229 ~= 8 then
        if v229 == 0 then
            return "Ready For Trial"
        else
            return "You have yet to achieve greatness"
        end
    end
    return "Remaining " .. 10 - v228 .. " training sessions."
end

function CheckAcientOneStatusTrain()
    if not game.Players.LocalPlayer.Character:FindFirstChild("RaceTransformed") then
        return "You have yet to achieve greatness"
    end
    local v227 = nil
    local v228 = nil
    local v229 = nil
    v229, v228, v227 = game.ReplicatedStorage.Remotes.CommF_:InvokeServer("UpgradeRace", "Check")
    if v229 == 1 then
        return "Required Train More"
    elseif v229 == 2 or v229 == 4 or v229 == 7 then
        return "Can Buy Gear With " .. v227 .. " Fragments"
    elseif v229 == 3 then
        return "Required Train More"
    elseif v229 == 5 then
        return "You Are Done Your Race."
    elseif v229 == 6 then
        return "Upgrades completed: " .. v228 - 2 .. "/3, Need Trains More"
    end
    if v229 ~= 8 then
        if v229 == 0 then
            return "Ready For Trial"
        else
            return "You have yet to achieve greatness"
        end
    end
    return "Remaining " .. 10 - v228 .. " training sessions."
end

function CheckQuest() 
    MyLevel = game:GetService("Players").LocalPlayer.Data.Level.Value
    if World1 then
        if MyLevel == 1 or MyLevel <= 9 then
            Mon = "Bandit"
            LevelQuest = 1
            NameQuest = "BanditQuest1"
            NameMon = "Bandit"
            CFrameQuest = CFrame.new(1059.37195, 15.4495068, 1550.4231, 0.939700544, -0, -0.341998369, 0, 1, -0, 0.341998369, 0, 0.939700544)
            CFrameMon = CFrame.new(1045.962646484375, 27.00250816345215, 1560.8203125)
        elseif MyLevel == 10 or MyLevel <= 14 then
            Mon = "Monkey"
            LevelQuest = 1
            NameQuest = "JungleQuest"
            NameMon = "Monkey"
            CFrameQuest = CFrame.new(-1598.08911, 35.5501175, 153.377838, 0, 0, 1, 0, 1, -0, -1, 0, 0)
            CFrameMon = CFrame.new(-1448.51806640625, 67.85301208496094, 11.46579647064209)
        elseif MyLevel == 15 or MyLevel <= 29 then
            Mon = "Gorilla"
            LevelQuest = 2
            NameQuest = "JungleQuest"
            NameMon = "Gorilla"
            CFrameQuest = CFrame.new(-1598.08911, 35.5501175, 153.377838, 0, 0, 1, 0, 1, -0, -1, 0, 0)
            CFrameMon = CFrame.new(-1129.8836669921875, 40.46354675292969, -525.4237060546875)
        elseif MyLevel == 30 or MyLevel <= 39 then
            Mon = "Pirate"
            LevelQuest = 1
            NameQuest = "BuggyQuest1"
            NameMon = "Pirate"
            CFrameQuest = CFrame.new(-1141.07483, 4.10001802, 3831.5498, 0.965929627, -0, -0.258804798, 0, 1, -0, 0.258804798, 0, 0.965929627)
            CFrameMon = CFrame.new(-1103.513427734375, 13.752052307128906, 3896.091064453125)
        elseif MyLevel == 40 or MyLevel <= 59 then
            Mon = "Brute"
            LevelQuest = 2
            NameQuest = "BuggyQuest1"
            NameMon = "Brute"
            CFrameQuest = CFrame.new(-1141.07483, 4.10001802, 3831.5498, 0.965929627, -0, -0.258804798, 0, 1, -0, 0.258804798, 0, 0.965929627)
            CFrameMon = CFrame.new(-1140.083740234375, 14.809885025024414, 4322.92138671875)
        elseif MyLevel == 60 or MyLevel <= 74 then
            Mon = "Desert Bandit"
            LevelQuest = 1
            NameQuest = "DesertQuest"
            NameMon = "Desert Bandit"
            CFrameQuest = CFrame.new(894.488647, 5.14000702, 4392.43359, 0.819155693, -0, -0.573571265, 0, 1, -0, 0.573571265, 0, 0.819155693)
            CFrameMon = CFrame.new(924.7998046875, 6.44867467880249, 4481.5859375)
        elseif MyLevel == 75 or MyLevel <= 89 then
            Mon = "Desert Officer"
            LevelQuest = 2
            NameQuest = "DesertQuest"
            NameMon = "Desert Officer"
            CFrameQuest = CFrame.new(894.488647, 5.14000702, 4392.43359, 0.819155693, -0, -0.573571265, 0, 1, -0, 0.573571265, 0, 0.819155693)
            CFrameMon = CFrame.new(1608.2822265625, 8.614224433898926, 4371.00732421875)
        elseif MyLevel == 90 or MyLevel <= 99 then
            Mon = "Snow Bandit"
            LevelQuest = 1
            NameQuest = "SnowQuest"
            NameMon = "Snow Bandit"
            CFrameQuest = CFrame.new(1389.74451, 88.1519318, -1298.90796, -0.342042685, 0, 0.939684391, 0, 1, 0, -0.939684391, 0, -0.342042685)
            CFrameMon = CFrame.new(1354.347900390625, 87.27277374267578, -1393.946533203125)
        elseif MyLevel == 100 or MyLevel <= 119 then
            Mon = "Snowman"
            LevelQuest = 2
            NameQuest = "SnowQuest"
            NameMon = "Snowman"
            CFrameQuest = CFrame.new(1389.74451, 88.1519318, -1298.90796, -0.342042685, 0, 0.939684391, 0, 1, 0, -0.939684391, 0, -0.342042685)
            CFrameMon = CFrame.new(1201.6412353515625, 144.57958984375, -1550.0670166015625)
        elseif MyLevel == 120 or MyLevel <= 149 then
            Mon = "Chief Petty Officer"
            LevelQuest = 1
            NameQuest = "MarineQuest2"
            NameMon = "Chief Petty Officer"
            CFrameQuest = CFrame.new(-5039.58643, 27.3500385, 4324.68018, 0, 0, -1, 0, 1, 0, 1, 0, 0)
            CFrameMon = CFrame.new(-4881.23095703125, 22.65204429626465, 4273.75244140625)
        elseif MyLevel == 150 or MyLevel <= 174 then
            Mon = "Sky Bandit"
            LevelQuest = 1
            NameQuest = "SkyQuest"
            NameMon = "Sky Bandit"
            CFrameQuest = CFrame.new(-4839.53027, 716.368591, -2619.44165, 0.866007268, 0, 0.500031412, 0, 1, 0, -0.500031412, 0, 0.866007268)
            CFrameMon = CFrame.new(-4953.20703125, 295.74420166015625, -2899.22900390625)
        elseif MyLevel == 175 or MyLevel <= 189 then
            Mon = "Dark Master"
            LevelQuest = 2
            NameQuest = "SkyQuest"
            NameMon = "Dark Master"
            CFrameQuest = CFrame.new(-4839.53027, 716.368591, -2619.44165, 0.866007268, 0, 0.500031412, 0, 1, 0, -0.500031412, 0, 0.866007268)
            CFrameMon = CFrame.new(-5259.8447265625, 391.3976745605469, -2229.035400390625)
        elseif MyLevel == 190 or MyLevel <= 209 then
            Mon = "Prisoner"
            LevelQuest = 1
            NameQuest = "PrisonerQuest"
            NameMon = "Prisoner"
            CFrameQuest = CFrame.new(5308.93115, 1.65517521, 475.120514, -0.0894274712, -5.00292918e-09, -0.995993316, 1.60817859e-09, 1, -5.16744869e-09, 0.995993316, -2.06384709e-09, -0.0894274712)
            CFrameMon = CFrame.new(5098.9736328125, -0.3204058110713959, 474.2373352050781)
        elseif MyLevel == 210 or MyLevel <= 249 then
            Mon = "Dangerous Prisoner"
            LevelQuest = 2
            NameQuest = "PrisonerQuest"
            NameMon = "Dangerous Prisoner"
            CFrameQuest = CFrame.new(5308.93115, 1.65517521, 475.120514, -0.0894274712, -5.00292918e-09, -0.995993316, 1.60817859e-09, 1, -5.16744869e-09, 0.995993316, -2.06384709e-09, -0.0894274712)
            CFrameMon = CFrame.new(5654.5634765625, 15.633401870727539, 866.2991943359375)
        elseif MyLevel == 250 or MyLevel <= 274 then
            Mon = "Toga Warrior"
            LevelQuest = 1
            NameQuest = "ColosseumQuest"
            NameMon = "Toga Warrior"
            CFrameQuest = CFrame.new(-1580.04663, 6.35000277, -2986.47534, -0.515037298, 0, -0.857167721, 0, 1, 0, 0.857167721, 0, -0.515037298)
            CFrameMon = CFrame.new(-1820.21484375, 51.68385696411133, -2740.6650390625)
        elseif MyLevel == 275 or MyLevel <= 299 then
            Mon = "Gladiator"
            LevelQuest = 2
            NameQuest = "ColosseumQuest"
            NameMon = "Gladiator"
            CFrameQuest = CFrame.new(-1580.04663, 6.35000277, -2986.47534, -0.515037298, 0, -0.857167721, 0, 1, 0, 0.857167721, 0, -0.515037298)
            CFrameMon = CFrame.new(-1292.838134765625, 56.380882263183594, -3339.031494140625)
        elseif MyLevel == 300 or MyLevel <= 324 then
            Mon = "Military Soldier"
            LevelQuest = 1
            NameQuest = "MagmaQuest"
            NameMon = "Military Soldier"
            CFrameQuest = CFrame.new(-5313.37012, 10.9500084, 8515.29395, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469)
            CFrameMon = CFrame.new(-5411.16455078125, 11.081554412841797, 8454.29296875)
        elseif MyLevel == 325 or MyLevel <= 374 then
            Mon = "Military Spy"
            LevelQuest = 2
            NameQuest = "MagmaQuest"
            NameMon = "Military Spy"
            CFrameQuest = CFrame.new(-5313.37012, 10.9500084, 8515.29395, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469)
            CFrameMon = CFrame.new(-5802.8681640625, 86.26241302490234, 8828.859375)
        elseif MyLevel == 375 or MyLevel <= 399 then
            Mon = "Fishman Warrior"
            LevelQuest = 1
            NameQuest = "FishmanQuest"
            NameMon = "Fishman Warrior"
            CFrameQuest = CFrame.new(61122.65234375, 18.497442245483, 1569.3997802734)
            CFrameMon = CFrame.new(60878.30078125, 18.482830047607422, 1543.7574462890625)
            if _G.AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
            end
        elseif MyLevel == 400 or MyLevel <= 449 then
            Mon = "Fishman Commando"
            LevelQuest = 2
            NameQuest = "FishmanQuest"
            NameMon = "Fishman Commando"
            CFrameQuest = CFrame.new(61122.65234375, 18.497442245483, 1569.3997802734)
            CFrameMon = CFrame.new(61922.6328125, 18.482830047607422, 1493.934326171875)
            if _G.AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
            end
        elseif MyLevel == 450 or MyLevel <= 474 then
            Mon = "God's Guard"
            LevelQuest = 1
            NameQuest = "SkyExp1Quest"
            NameMon = "God's Guard"
            CFrameQuest = CFrame.new(-4721.88867, 843.874695, -1949.96643, 0.996191859, -0, -0.0871884301, 0, 1, -0, 0.0871884301, 0, 0.996191859)
            CFrameMon = CFrame.new(-4710.04296875, 845.2769775390625, -1927.3079833984375)
            if _G.AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-4607.82275, 872.54248, -1667.55688))
            end
        elseif MyLevel == 475 or MyLevel <= 524 then
            Mon = "Shanda"
            LevelQuest = 2
            NameQuest = "SkyExp1Quest"
            NameMon = "Shanda"
            CFrameQuest = CFrame.new(-7859.09814, 5544.19043, -381.476196, -0.422592998, 0, 0.906319618, 0, 1, 0, -0.906319618, 0, -0.422592998)
            CFrameMon = CFrame.new(-7678.48974609375, 5566.40380859375, -497.2156066894531)
            if _G.AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047))
            end
        elseif MyLevel == 525 or MyLevel <= 549 then
            Mon = "Royal Squad"
            LevelQuest = 1
            NameQuest = "SkyExp2Quest"
            NameMon = "Royal Squad"
            CFrameQuest = CFrame.new(-7906.81592, 5634.6626, -1411.99194, 0, 0, -1, 0, 1, 0, 1, 0, 0)
            CFrameMon = CFrame.new(-7624.25244140625, 5658.13330078125, -1467.354248046875)
        elseif MyLevel == 550 or MyLevel <= 624 then
            Mon = "Royal Soldier"
            LevelQuest = 2
            NameQuest = "SkyExp2Quest"
            NameMon = "Royal Soldier"
            CFrameQuest = CFrame.new(-7906.81592, 5634.6626, -1411.99194, 0, 0, -1, 0, 1, 0, 1, 0, 0)
            CFrameMon = CFrame.new(-7836.75341796875, 5645.6640625, -1790.6236572265625)
        elseif MyLevel == 625 or MyLevel <= 649 then
            Mon = "Galley Pirate"
            LevelQuest = 1
            NameQuest = "FountainQuest"
            NameMon = "Galley Pirate"
            CFrameQuest = CFrame.new(5259.81982, 37.3500175, 4050.0293, 0.087131381, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, 0.087131381)
            CFrameMon = CFrame.new(5551.02197265625, 78.90135192871094, 3930.412841796875)
        elseif MyLevel >= 650 then
            Mon = "Galley Captain"
            LevelQuest = 2
            NameQuest = "FountainQuest"
            NameMon = "Galley Captain"
            CFrameQuest = CFrame.new(5259.81982, 37.3500175, 4050.0293, 0.087131381, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, 0.087131381)
            CFrameMon = CFrame.new(5441.95166015625, 42.50205993652344, 4950.09375)
        end
    elseif World2 then
        if MyLevel == 700 or MyLevel <= 724 then
            Mon = "Raider"
            LevelQuest = 1
            NameQuest = "Area1Quest"
            NameMon = "Raider"
            CFrameQuest = CFrame.new(-429.543518, 71.7699966, 1836.18188, -0.22495985, 0, -0.974368095, 0, 1, 0, 0.974368095, 0, -0.22495985)
            CFrameMon = CFrame.new(-728.3267211914062, 52.779319763183594, 2345.7705078125)
        elseif MyLevel == 725 or MyLevel <= 774 then
            Mon = "Mercenary"
            LevelQuest = 2
            NameQuest = "Area1Quest"
            NameMon = "Mercenary"
            CFrameQuest = CFrame.new(-429.543518, 71.7699966, 1836.18188, -0.22495985, 0, -0.974368095, 0, 1, 0, 0.974368095, 0, -0.22495985)
            CFrameMon = CFrame.new(-1004.3244018554688, 80.15886688232422, 1424.619384765625)
        elseif MyLevel == 775 or MyLevel <= 799 then
            Mon = "Swan Pirate"
            LevelQuest = 1
            NameQuest = "Area2Quest"
            NameMon = "Swan Pirate"
            CFrameQuest = CFrame.new(638.43811, 71.769989, 918.282898, 0.139203906, 0, 0.99026376, 0, 1, 0, -0.99026376, 0, 0.139203906)
            CFrameMon = CFrame.new(1068.664306640625, 137.61428833007812, 1322.1060791015625)
        elseif MyLevel == 800 or MyLevel <= 874 then
            Mon = "Factory Staff"
            NameQuest = "Area2Quest"
            LevelQuest = 2
            NameMon = "Factory Staff"
            CFrameQuest = CFrame.new(632.698608, 73.1055908, 918.666321, -0.0319722369, 8.96074881e-10, -0.999488771, 1.36326533e-10, 1, 8.92172336e-10, 0.999488771, -1.07732087e-10, -0.0319722369)
            CFrameMon = CFrame.new(73.07867431640625, 81.86344146728516, -27.470672607421875)
        elseif MyLevel == 875 or MyLevel <= 899 then
            Mon = "Marine Lieutenant"
            LevelQuest = 1
            NameQuest = "MarineQuest3"
            NameMon = "Marine Lieutenant"
            CFrameQuest = CFrame.new(-2440.79639, 71.7140732, -3216.06812, 0.866007268, 0, 0.500031412, 0, 1, 0, -0.500031412, 0, 0.866007268)
            CFrameMon = CFrame.new(-2821.372314453125, 75.89727783203125, -3070.089111328125)
        elseif MyLevel == 900 or MyLevel <= 949 then
            Mon = "Marine Captain"
            LevelQuest = 2
            NameQuest = "MarineQuest3"
            NameMon = "Marine Captain"
            CFrameQuest = CFrame.new(-2440.79639, 71.7140732, -3216.06812, 0.866007268, 0, 0.500031412, 0, 1, 0, -0.500031412, 0, 0.866007268)
            CFrameMon = CFrame.new(-1861.2310791015625, 80.17658233642578, -3254.697509765625)
        elseif MyLevel == 950 or MyLevel <= 974 then
            Mon = "Zombie"
            LevelQuest = 1
            NameQuest = "ZombieQuest"
            NameMon = "Zombie"
            CFrameQuest = CFrame.new(-5497.06152, 47.5923004, -795.237061, -0.29242146, 0, -0.95628953, 0, 1, 0, 0.95628953, 0, -0.29242146)
            CFrameMon = CFrame.new(-5657.77685546875, 78.96973419189453, -928.68701171875)
        elseif MyLevel == 975 or MyLevel <= 999 then
            Mon = "Vampire"
            LevelQuest = 2
            NameQuest = "ZombieQuest"
            NameMon = "Vampire"
            CFrameQuest = CFrame.new(-5497.06152, 47.5923004, -795.237061, -0.29242146, 0, -0.95628953, 0, 1, 0, 0.95628953, 0, -0.29242146)
            CFrameMon = CFrame.new(-6037.66796875, 32.18463897705078, -1340.6597900390625)
        elseif MyLevel == 1000 or MyLevel <= 1049 then
            Mon = "Snow Trooper"
            LevelQuest = 1
            NameQuest = "SnowMountainQuest"
            NameMon = "Snow Trooper"
            CFrameQuest = CFrame.new(609.858826, 400.119904, -5372.25928, -0.374604106, 0, 0.92718488, 0, 1, 0, -0.92718488, 0, -0.374604106)
            CFrameMon = CFrame.new(549.1473388671875, 427.3870544433594, -5563.69873046875)
        elseif MyLevel == 1050 or MyLevel <= 1099 then
            Mon = "Winter Warrior"
            LevelQuest = 2
            NameQuest = "SnowMountainQuest"
            NameMon = "Winter Warrior"
            CFrameQuest = CFrame.new(609.858826, 400.119904, -5372.25928, -0.374604106, 0, 0.92718488, 0, 1, 0, -0.92718488, 0, -0.374604106)
            CFrameMon = CFrame.new(1142.7451171875, 475.6398010253906, -5199.41650390625)
        elseif MyLevel == 1100 or MyLevel <= 1124 then
            Mon = "Lab Subordinate"
            LevelQuest = 1
            NameQuest = "IceSideQuest"
            NameMon = "Lab Subordinate"
            CFrameQuest = CFrame.new(-6064.06885, 15.2422857, -4902.97852, 0.453972578, -0, -0.891015649, 0, 1, -0, 0.891015649, 0, 0.453972578)
            CFrameMon = CFrame.new(-5707.4716796875, 15.951709747314453, -4513.39208984375)
        elseif MyLevel == 1125 or MyLevel <= 1174 then
            Mon = "Horned Warrior"
            LevelQuest = 2
            NameQuest = "IceSideQuest"
            NameMon = "Horned Warrior"
            CFrameQuest = CFrame.new(-6064.06885, 15.2422857, -4902.97852, 0.453972578, -0, -0.891015649, 0, 1, -0, 0.891015649, 0, 0.453972578)
            CFrameMon = CFrame.new(-6341.36669921875, 15.951770782470703, -5723.162109375)
        elseif MyLevel == 1175 or MyLevel <= 1199 then
            Mon = "Magma Ninja"
            LevelQuest = 1
            NameQuest = "FireSideQuest"
            NameMon = "Magma Ninja"
            CFrameQuest = CFrame.new(-5428.03174, 15.0622921, -5299.43457, -0.882952213, 0, 0.469463557, 0, 1, 0, -0.469463557, 0, -0.882952213)
            CFrameMon = CFrame.new(-5449.6728515625, 76.65874481201172, -5808.20068359375)
        elseif MyLevel == 1200 or MyLevel <= 1249 then
            Mon = "Lava Pirate"
            LevelQuest = 2
            NameQuest = "FireSideQuest"
            NameMon = "Lava Pirate"
            CFrameQuest = CFrame.new(-5428.03174, 15.0622921, -5299.43457, -0.882952213, 0, 0.469463557, 0, 1, 0, -0.469463557, 0, -0.882952213)
            CFrameMon = CFrame.new(-5213.33154296875, 49.73788070678711, -4701.451171875)
        elseif MyLevel == 1250 or MyLevel <= 1274 then
            Mon = "Ship Deckhand"
            LevelQuest = 1
            NameQuest = "ShipQuest1"
            NameMon = "Ship Deckhand"
            CFrameQuest = CFrame.new(1037.80127, 125.092171, 32911.6016)         
            CFrameMon = CFrame.new(1212.0111083984375, 150.79205322265625, 33059.24609375)    
            if _G.AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
            end
        elseif MyLevel == 1275 or MyLevel <= 1299 then
            Mon = "Ship Engineer"
            LevelQuest = 2
            NameQuest = "ShipQuest1"
            NameMon = "Ship Engineer"
            CFrameQuest = CFrame.new(1037.80127, 125.092171, 32911.6016)   
            CFrameMon = CFrame.new(919.4786376953125, 43.54401397705078, 32779.96875)   
            if _G.AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
            end             
        elseif MyLevel == 1300 or MyLevel <= 1324 then
            Mon = "Ship Steward"
            LevelQuest = 1
            NameQuest = "ShipQuest2"
            NameMon = "Ship Steward"
            CFrameQuest = CFrame.new(968.80957, 125.092171, 33244.125)         
            CFrameMon = CFrame.new(919.4385375976562, 129.55599975585938, 33436.03515625)      
            if _G.AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
            end
        elseif MyLevel == 1325 or MyLevel <= 1349 then
            Mon = "Ship Officer"
            LevelQuest = 2
            NameQuest = "ShipQuest2"
            NameMon = "Ship Officer"
            CFrameQuest = CFrame.new(968.80957, 125.092171, 33244.125)
            CFrameMon = CFrame.new(1036.0179443359375, 181.4390411376953, 33315.7265625)
            if _G.AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
            end
        elseif MyLevel == 1350 or MyLevel <= 1374 then
            Mon = "Arctic Warrior"
            LevelQuest = 1
            NameQuest = "FrostQuest"
            NameMon = "Arctic Warrior"
            CFrameQuest = CFrame.new(5667.6582, 26.7997818, -6486.08984, -0.933587909, 0, -0.358349502, 0, 1, 0, 0.358349502, 0, -0.933587909)
            CFrameMon = CFrame.new(5966.24609375, 62.97002029418945, -6179.3828125)
            if _G.AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-6508.5581054688, 5000.034996032715, -132.83953857422))
            end
        elseif MyLevel == 1375 or MyLevel <= 1424 then
            Mon = "Snow Lurker"
            LevelQuest = 2
            NameQuest = "FrostQuest"
            NameMon = "Snow Lurker"
            CFrameQuest = CFrame.new(5667.6582, 26.7997818, -6486.08984, -0.933587909, 0, -0.358349502, 0, 1, 0, 0.358349502, 0, -0.933587909)
            CFrameMon = CFrame.new(5407.07373046875, 69.19437408447266, -6880.88037109375)
        elseif MyLevel == 1425 or MyLevel <= 1449 then
            Mon = "Sea Soldier"
            LevelQuest = 1
            NameQuest = "ForgottenQuest"
            NameMon = "Sea Soldier"
            CFrameQuest = CFrame.new(-3054.44458, 235.544281, -10142.8193, 0.990270376, -0, -0.13915664, 0, 1, -0, 0.13915664, 0, 0.990270376)
            CFrameMon = CFrame.new(-3028.2236328125, 64.67451477050781, -9775.4267578125)
        elseif MyLevel >= 1450 then
            Mon = "Water Fighter"
            LevelQuest = 2
            NameQuest = "ForgottenQuest"
            NameMon = "Water Fighter"
            CFrameQuest = CFrame.new(-3054.44458, 235.544281, -10142.8193, 0.990270376, -0, -0.13915664, 0, 1, -0, 0.13915664, 0, 0.990270376)
            CFrameMon = CFrame.new(-3352.9013671875, 285.01556396484375, -10534.841796875)
        end
    elseif World3 then
        if MyLevel == 1500 or MyLevel <= 1524 then
            Mon = "Pirate Millionaire"
            LevelQuest = 1
            NameQuest = "PiratePortQuest"
            NameMon = "Pirate Millionaire"
            CFrameQuest = CFrame.new(-290.074677, 42.9034653, 5581.58984, 0.965929627, -0, -0.258804798, 0, 1, -0, 0.258804798, 0, 0.965929627)
            CFrameMon = CFrame.new(-245.9963836669922, 47.30615234375, 5584.1005859375)
        elseif MyLevel == 1525 or MyLevel <= 1574 then
            Mon = "Pistol Billionaire"
            LevelQuest = 2
            NameQuest = "PiratePortQuest"
            NameMon = "Pistol Billionaire"
            CFrameQuest = CFrame.new(-290.074677, 42.9034653, 5581.58984, 0.965929627, -0, -0.258804798, 0, 1, -0, 0.258804798, 0, 0.965929627)
            CFrameMon = CFrame.new(-187.3301544189453, 86.23987579345703, 6013.513671875)
        elseif MyLevel == 1575 or MyLevel <= 1599 then
            Mon = "Dragon Crew Warrior"
            LevelQuest = 1
            NameQuest = "AmazonQuest"
            NameMon = "Dragon Crew Warrior"
            CFrameQuest = CFrame.new(5832.83594, 51.6806107, -1101.51563, 0.898790359, -0, -0.438378751, 0, 1, -0, 0.438378751, 0, 0.898790359)
            CFrameMon = CFrame.new(6141.140625, 51.35136413574219, -1340.738525390625)
        elseif MyLevel == 1600 or MyLevel <= 1624 then 
            Mon = "Dragon Crew Archer"
            NameQuest = "AmazonQuest"
            LevelQuest = 2
            NameMon = "Dragon Crew Archer"
            CFrameQuest = CFrame.new(5833.1147460938, 51.60498046875, -1103.0693359375)
            CFrameMon = CFrame.new(6616.41748046875, 441.7670593261719, 446.0469970703125)
        elseif MyLevel == 1625 or MyLevel <= 1649 then
            Mon = "Female Islander"
            NameQuest = "AmazonQuest2"
            LevelQuest = 1
            NameMon = "Female Islander"
            CFrameQuest = CFrame.new(5446.8793945313, 601.62945556641, 749.45672607422)
            CFrameMon = CFrame.new(4685.25830078125, 735.8078002929688, 815.3425903320312)
        elseif MyLevel == 1650 or MyLevel <= 1699 then 
            Mon = "Giant Islander"
            NameQuest = "AmazonQuest2"
            LevelQuest = 2
            NameMon = "Giant Islander"
            CFrameQuest = CFrame.new(5446.8793945313, 601.62945556641, 749.45672607422)
            CFrameMon = CFrame.new(4729.09423828125, 590.436767578125, -36.97627639770508)
        elseif MyLevel == 1700 or MyLevel <= 1724 then
            Mon = "Marine Commodore"
            LevelQuest = 1
            NameQuest = "MarineTreeIsland"
            NameMon = "Marine Commodore"
            CFrameQuest = CFrame.new(2180.54126, 27.8156815, -6741.5498, -0.965929747, 0, 0.258804798, 0, 1, 0, -0.258804798, 0, -0.965929747)
            CFrameMon = CFrame.new(2286.0078125, 73.13391876220703, -7159.80908203125)
        elseif MyLevel == 1725 or MyLevel <= 1774 then
            Mon = "Marine Rear Admiral"
            NameMon = "Marine Rear Admiral"
            NameQuest = "MarineTreeIsland"
            LevelQuest = 2
            CFrameQuest = CFrame.new(2179.98828125, 28.731239318848, -6740.0551757813)
            CFrameMon = CFrame.new(3656.773681640625, 160.52406311035156, -7001.5986328125)
        elseif MyLevel == 1775 or MyLevel <= 1799 then
            Mon = "Fishman Raider"
            LevelQuest = 1
            NameQuest = "DeepForestIsland3"
            NameMon = "Fishman Raider"
            CFrameQuest = CFrame.new(-10581.6563, 330.872955, -8761.18652, -0.882952213, 0, 0.469463557, 0, 1, 0, -0.469463557, 0, -0.882952213)   
            CFrameMon = CFrame.new(-10407.5263671875, 331.76263427734375, -8368.5166015625)
        elseif MyLevel == 1800 or MyLevel <= 1824 then
            Mon = "Fishman Captain"
            LevelQuest = 2
            NameQuest = "DeepForestIsland3"
            NameMon = "Fishman Captain"
            CFrameQuest = CFrame.new(-10581.6563, 330.872955, -8761.18652, -0.882952213, 0, 0.469463557, 0, 1, 0, -0.469463557, 0, -0.882952213)   
            CFrameMon = CFrame.new(-10994.701171875, 352.38140869140625, -9002.1103515625) 
        elseif MyLevel == 1825 or MyLevel <= 1849 then
            Mon = "Forest Pirate"
            LevelQuest = 1
            NameQuest = "DeepForestIsland"
            NameMon = "Forest Pirate"
            CFrameQuest = CFrame.new(-13234.04, 331.488495, -7625.40137, 0.707134247, -0, -0.707079291, 0, 1, -0, 0.707079291, 0, 0.707134247)
            CFrameMon = CFrame.new(-13274.478515625, 332.3781433105469, -7769.58056640625)
        elseif MyLevel == 1850 or MyLevel <= 1899 then
            Mon = "Mythological Pirate"
            LevelQuest = 2
            NameQuest = "DeepForestIsland"
            NameMon = "Mythological Pirate"
            CFrameQuest = CFrame.new(-13234.04, 331.488495, -7625.40137, 0.707134247, -0, -0.707079291, 0, 1, -0, 0.707079291, 0, 0.707134247)   
            CFrameMon = CFrame.new(-13680.607421875, 501.08154296875, -6991.189453125)
        elseif MyLevel == 1900 or MyLevel <= 1924 then
            Mon = "Jungle Pirate"
            LevelQuest = 1
            NameQuest = "DeepForestIsland2"
            NameMon = "Jungle Pirate"
            CFrameQuest = CFrame.new(-12680.3818, 389.971039, -9902.01953, -0.0871315002, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, -0.0871315002)
            CFrameMon = CFrame.new(-12256.16015625, 331.73828125, -10485.8369140625)
        elseif MyLevel == 1925 or MyLevel <= 1974 then
            Mon = "Musketeer Pirate"
            LevelQuest = 2
            NameQuest = "DeepForestIsland2"
            NameMon = "Musketeer Pirate"
            CFrameQuest = CFrame.new(-12680.3818, 389.971039, -9902.01953, -0.0871315002, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, -0.0871315002)
            CFrameMon = CFrame.new(-13457.904296875, 391.545654296875, -9859.177734375)
        elseif MyLevel == 1975 or MyLevel <= 1999 then
            Mon = "Reborn Skeleton"
            LevelQuest = 1
            NameQuest = "HauntedQuest1"
            NameMon = "Reborn Skeleton"
            CFrameQuest = CFrame.new(-9479.2168, 141.215088, 5566.09277, 0, 0, 1, 0, 1, -0, -1, 0, 0)
            CFrameMon = CFrame.new(-8763.7236328125, 165.72299194335938, 6159.86181640625)
        elseif MyLevel == 2000 or MyLevel <= 2024 then
            Mon = "Living Zombie"
            LevelQuest = 2
            NameQuest = "HauntedQuest1"
            NameMon = "Living Zombie"
            CFrameQuest = CFrame.new(-9479.2168, 141.215088, 5566.09277, 0, 0, 1, 0, 1, -0, -1, 0, 0)
            CFrameMon = CFrame.new(-10144.1318359375, 138.62667846679688, 5838.0888671875)
        elseif MyLevel == 2025 or MyLevel <= 2049 then
            Mon = "Demonic Soul"
            LevelQuest = 1
            NameQuest = "HauntedQuest2"
            NameMon = "Demonic Soul"
            CFrameQuest = CFrame.new(-9516.99316, 172.017181, 6078.46533, 0, 0, -1, 0, 1, 0, 1, 0, 0) 
            CFrameMon = CFrame.new(-9505.8720703125, 172.10482788085938, 6158.9931640625)
        elseif MyLevel == 2050 or MyLevel <= 2074 then
            Mon = "Posessed Mummy"
            LevelQuest = 2
            NameQuest = "HauntedQuest2"
            NameMon = "Posessed Mummy"
            CFrameQuest = CFrame.new(-9516.99316, 172.017181, 6078.46533, 0, 0, -1, 0, 1, 0, 1, 0, 0)
            CFrameMon = CFrame.new(-9582.0224609375, 6.251527309417725, 6205.478515625)
        elseif MyLevel == 2075 or MyLevel <= 2099 then
            Mon = "Peanut Scout"
            LevelQuest = 1
            NameQuest = "NutsIslandQuest"
            NameMon = "Peanut Scout"
            CFrameQuest = CFrame.new(-2104.3908691406, 38.104167938232, -10194.21875, 0, 0, -1, 0, 1, 0, 1, 0, 0)
            CFrameMon = CFrame.new(-2143.241943359375, 47.72198486328125, -10029.9951171875)
        elseif MyLevel == 2100 or MyLevel <= 2124 then
            Mon = "Peanut President"
            LevelQuest = 2
            NameQuest = "NutsIslandQuest"
            NameMon = "Peanut President"
            CFrameQuest = CFrame.new(-2104.3908691406, 38.104167938232, -10194.21875, 0, 0, -1, 0, 1, 0, 1, 0, 0)
            CFrameMon = CFrame.new(-1859.35400390625, 38.10316848754883, -10422.4296875)
        elseif MyLevel == 2125 or MyLevel <= 2149 then
            Mon = "Ice Cream Chef"
            LevelQuest = 1
            NameQuest = "IceCreamIslandQuest"
            NameMon = "Ice Cream Chef"
            CFrameQuest = CFrame.new(-820.64825439453, 65.819526672363, -10965.795898438, 0, 0, -1, 0, 1, 0, 1, 0, 0)
            CFrameMon = CFrame.new(-872.24658203125, 65.81957244873047, -10919.95703125)
        elseif MyLevel == 2150 or MyLevel <= 2199 then
            Mon = "Ice Cream Commander"
            LevelQuest = 2
            NameQuest = "IceCreamIslandQuest"
            NameMon = "Ice Cream Commander"
            CFrameQuest = CFrame.new(-820.64825439453, 65.819526672363, -10965.795898438, 0, 0, -1, 0, 1, 0, 1, 0, 0)
            CFrameMon = CFrame.new(-558.06103515625, 112.04895782470703, -11290.7744140625)
        elseif MyLevel == 2200 or MyLevel <= 2224 then
            Mon = "Cookie Crafter"
            LevelQuest = 1
            NameQuest = "CakeQuest1"
            NameMon = "Cookie Crafter"
            CFrameQuest = CFrame.new(-2021.32007, 37.7982254, -12028.7295, 0.957576931, -8.80302053e-08, 0.288177818, 6.9301187e-08, 1, 7.51931211e-08, -0.288177818, -5.2032135e-08, 0.957576931)
            CFrameMon = CFrame.new(-2374.13671875, 37.79826354980469, -12125.30859375)
        elseif MyLevel == 2225 or MyLevel <= 2249 then
            Mon = "Cake Guard"
            LevelQuest = 2
            NameQuest = "CakeQuest1"
            NameMon = "Cake Guard"
            CFrameQuest = CFrame.new(-2021.32007, 37.7982254, -12028.7295, 0.957576931, -8.80302053e-08, 0.288177818, 6.9301187e-08, 1, 7.51931211e-08, -0.288177818, -5.2032135e-08, 0.957576931)
            CFrameMon = CFrame.new(-1598.3070068359375, 43.773197174072266, -12244.5810546875)
        elseif MyLevel == 2250 or MyLevel <= 2274 then
            Mon = "Baking Staff"
            LevelQuest = 1
            NameQuest = "CakeQuest2"
            NameMon = "Baking Staff"
            CFrameQuest = CFrame.new(-1927.91602, 37.7981339, -12842.5391, -0.96804446, 4.22142143e-08, 0.250778586, 4.74911062e-08, 1, 1.49904711e-08, -0.250778586, 2.64211941e-08, -0.96804446)
            CFrameMon = CFrame.new(-1887.8099365234375, 77.6185073852539, -12998.3505859375)
        elseif MyLevel == 2275 or MyLevel <= 2299 then
            Mon = "Head Baker"
            LevelQuest = 2
            NameQuest = "CakeQuest2"
            NameMon = "Head Baker"
            CFrameQuest = CFrame.new(-1927.91602, 37.7981339, -12842.5391, -0.96804446, 4.22142143e-08, 0.250778586, 4.74911062e-08, 1, 1.49904711e-08, -0.250778586, 2.64211941e-08, -0.96804446)
            CFrameMon = CFrame.new(-2216.188232421875, 82.884521484375, -12869.2939453125)
        elseif MyLevel == 2300 or MyLevel <= 2324 then
            Mon = "Cocoa Warrior"
            LevelQuest = 1
            NameQuest = "ChocQuest1"
            NameMon = "Cocoa Warrior"
            CFrameQuest = CFrame.new(233.22836303710938, 29.876001358032227, -12201.2333984375)
            CFrameMon = CFrame.new(-21.55328369140625, 80.57499694824219, -12352.3876953125)
        elseif MyLevel == 2325 or MyLevel <= 2349 then
            Mon = "Chocolate Bar Battler"
            LevelQuest = 2
            NameQuest = "ChocQuest1"
            NameMon = "Chocolate Bar Battler"
            CFrameQuest = CFrame.new(233.22836303710938, 29.876001358032227, -12201.2333984375)
            CFrameMon = CFrame.new(582.590576171875, 77.18809509277344, -12463.162109375)
        elseif MyLevel == 2350 or MyLevel <= 2374 then
            Mon = "Sweet Thief"
            LevelQuest = 1
            NameQuest = "ChocQuest2"
            NameMon = "Sweet Thief"
            CFrameQuest = CFrame.new(150.5066375732422, 30.693693161010742, -12774.5029296875)
            CFrameMon = CFrame.new(165.1884765625, 76.05885314941406, -12600.8369140625)
        elseif MyLevel == 2375 or MyLevel <= 2399 then
            Mon = "Candy Rebel"
            LevelQuest = 2
            NameQuest = "ChocQuest2"
            NameMon = "Candy Rebel"
            CFrameQuest = CFrame.new(150.5066375732422, 30.693693161010742, -12774.5029296875)
            CFrameMon = CFrame.new(134.86563110351562, 77.2476806640625, -12876.5478515625)
        elseif MyLevel == 2400 or MyLevel <= 2449 then
            Mon = "Candy Pirate"
            LevelQuest = 1
            NameQuest = "CandyQuest1"
            NameMon = "Candy Pirate"
            CFrameQuest = CFrame.new(-1150.0400390625, 20.378934860229492, -14446.3349609375)
            CFrameMon = CFrame.new(-1310.5003662109375, 26.016523361206055, -14562.404296875)
        elseif MyLevel == 2450 or MyLevel <= 2474 then
            Mon = "Isle Outlaw"
            LevelQuest = 1
            NameQuest = "TikiQuest1"
            NameMon = "Isle Outlaw"
            CFrameQuest = CFrame.new(-16548.8164, 55.6059914, -172.8125, 0.213092566, -0, -0.977032006, 0, 1, -0, 0.977032006, 0, 0.213092566)
            CFrameMon = CFrame.new(-16479.900390625, 226.6117401123047, -300.3114318847656)
        elseif MyLevel == 2475 or MyLevel <= 2499 then
            Mon = "Island Boy"
            LevelQuest = 2
            NameQuest = "TikiQuest1"
            NameMon = "Island Boy"
            CFrameQuest = CFrame.new(-16548.8164, 55.6059914, -172.8125, 0.213092566, -0, -0.977032006, 0, 1, -0, 0.977032006, 0, 0.213092566)
            CFrameMon = CFrame.new(-16849.396484375, 192.86505126953125, -150.7853240966797)
        elseif MyLevel == 2500 or MyLevel <= 2524 then
            Mon = "Sun-kissed Warrior"
            LevelQuest = 1
            NameQuest = "TikiQuest2"
            NameMon = "kissed Warrior"
            CFrameMon = CFrame.new(-16347, 64, 984)
            CFrameQuest = CFrame.new(-16538, 55, 1049)
        elseif MyLevel >= 2525 then
            Mon = "Isle Champion"
            LevelQuest = 2
            NameQuest = "TikiQuest2"
            NameMon = "Isle Champion"
            CFrameQuest = CFrame.new(-16541.0215, 57.3082275, 1051.46118, 0.0410757065, -0, -0.999156058, 0, 1, -0, 0.999156058, 0, 0.0410757065) 
            CFrameMon = CFrame.new(-16602.1015625, 130.38734436035156, 1087.24560546875) 
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
                        name.TextColor3 = Color3.fromRGB(255, 255, 255)
                    else
                        v['NameEsp'].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
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
                    name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Character.Head.Position).Magnitude/3) ..' Distance')
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
                    v.Character.Head['NameEsp'..Number].TextLabel.Text = (v.Name ..' | '.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Character.Head.Position).Magnitude/3) ..' Distance\nHealth : ' .. round(v.Character.Humanoid.Health*100/v.Character.Humanoid.MaxHealth) .. '%')
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
function UpdateIslandKitsuneESP()
for i, v in pairs(game:GetService("Workspace").Map.KitsuneIsland.ShrineActive:GetChildren()) do
    pcall(function()
        if IslandKitsuneESP then
            if v.Name ~= "NeonShrinePart" then
                if not v:FindFirstChild('IslandESP') then
                    local bill = Instance.new('BillboardGui', v)
                    bill.Name = 'IslandESP'
                    bill.ExtentsOffset = Vector3.new(0, 1, 0)
                    bill.Size = UDim2.new(1, 200, 1, 30)
                    bill.Adornee = v
                    bill.AlwaysOnTop = true
                    local name = Instance.new('TextLabel', bill)
                    name.Font = "Code"
                    name.FontSize = "Size14"
                    name.TextWrapped = true
                    name.Size = UDim2.new(1, 0, 1, 0)
                    name.TextYAlignment = 'Top'
                    name.BackgroundTransparency = 1
                    name.TextStrokeTransparency = 0.5
                    name.TextColor3 = Color3.fromRGB(80, 245, 245)
                    -- Thay Ä‘á»•i vÄƒn báº£n hiá»ƒn thá»‹ thĂ nh "123"
                    name.Text = "Kitsune Island"
                else
                    v['IslandESP'].TextLabel.Text = "Kitsune Island"
                end
            end
        else
            if v:FindFirstChild('IslandESP') then
                v:FindFirstChild('IslandESP'):Destroy()
            end
        end
    end)
end
end
function UpdateIslandMirageESP() 
for i,v in pairs(game:GetService("Workspace")["_WorldOrigin"].Locations:GetChildren()) do
    pcall(function()
        if MirageIslandESP then 
            if v.Name == "Mirage Island" then
                if not v:FindFirstChild('NameEsp') then
                    local bill = Instance.new('BillboardGui',v)
                    bill.Name = 'NameEsp'
                    bill.ExtentsOffset = Vector3.new(0, 1, 0)
                    bill.Size = UDim2.new(1,200,1,30)
                    bill.Adornee = v
                    bill.AlwaysOnTop = true
                    local name = Instance.new('TextLabel',bill)
                    name.Font = "Code"
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
                            name.Text = ("Chest 1" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
                        end
                        if v.Name == "Chest2" then
                            name.TextColor3 = Color3.fromRGB(173, 158, 21)
                            name.Text = ("Chest 2" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
                        end
                        if v.Name == "Chest3" then
                            name.TextColor3 = Color3.fromRGB(85, 255, 255)
                            name.Text = ("Chest 3" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
                        end
                    else
                        v['NameEsp'..Number].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
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
                    name.TextColor3 = Color3.fromRGB(255, 255, 255)
                    name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
                else
                    v.Handle['NameEsp'..Number].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
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
                    name.TextColor3 = Color3.fromRGB(0, 94, 255)
                    if v.Name == "Flower1" then 
                        name.Text = ("Blue Flower" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
                        name.TextColor3 = Color3.fromRGB(0, 0, 255)
                    end
                    if v.Name == "Flower2" then
                        name.Text = ("Red Flower" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
                        name.TextColor3 = Color3.fromRGB(255, 0, 0)
                    end
                else
                    v['NameEsp'..Number].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
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
                name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
            else
                v.Handle['NameEsp'..Number].TextLabel.Text = (v.Name ..' '.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
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
                name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
            else
                v.Handle['NameEsp'..Number].TextLabel.Text = (v.Name ..' '.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
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
                name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
            else
                v.Handle['NameEsp'..Number].TextLabel.Text = (v.Name ..' '.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
            end
        else
            if v.Handle:FindFirstChild('NameEsp'..Number) then
                v.Handle:FindFirstChild('NameEsp'..Number):Destroy()
            end
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
                        name.TextColor3 = Color3.fromRGB(255, 255, 255)
                    else
                        v['NameEsp'].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
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
                    name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Character.Head.Position).Magnitude/3) ..' Distance')
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
                    v.Character.Head['NameEsp'..Number].TextLabel.Text = (v.Name ..' | '.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Character.Head.Position).Magnitude/3) ..' Distance\nHealth : ' .. round(v.Character.Humanoid.Health*100/v.Character.Humanoid.MaxHealth) .. '%')
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
                            name.Text = ("Chest 1" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
                        end
                        if v.Name == "Chest2" then
                            name.TextColor3 = Color3.fromRGB(173, 158, 21)
                            name.Text = ("Chest 2" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
                        end
                        if v.Name == "Chest3" then
                            name.TextColor3 = Color3.fromRGB(85, 255, 255)
                            name.Text = ("Chest 3" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
                        end
                    else
                        v['NameEsp'..Number].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
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
                    name.TextColor3 = Color3.fromRGB(255, 255, 255)
                    name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
                else
                    v.Handle['NameEsp'..Number].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
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
                    name.TextColor3 = Color3.fromRGB(0, 94, 255)
                    if v.Name == "Flower1" then 
                        name.Text = ("Blue Flower" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
                        name.TextColor3 = Color3.fromRGB(0, 0, 255)
                    end
                    if v.Name == "Flower2" then
                        name.Text = ("Red Flower" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
                        name.TextColor3 = Color3.fromRGB(255, 0, 0)
                    end
                else
                    v['NameEsp'..Number].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
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
                name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
            else
                v.Handle['NameEsp'..Number].TextLabel.Text = (v.Name ..' '.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
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
                name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
            else
                v.Handle['NameEsp'..Number].TextLabel.Text = (v.Name ..' '.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
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
                name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
            else
                v.Handle['NameEsp'..Number].TextLabel.Text = (v.Name ..' '.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
            end
        else
            if v.Handle:FindFirstChild('NameEsp'..Number) then
                v.Handle:FindFirstChild('NameEsp'..Number):Destroy()
            end
        end 
    end
end
end

spawn(function()
while wait() do
    pcall(function()
        if MobESP then
            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                if v:FindFirstChild('HumanoidRootPart') then
                    if not v:FindFirstChild("MobEap") then
                        local BillboardGui = Instance.new("BillboardGui")
                        local TextLabel = Instance.new("TextLabel")

                        BillboardGui.Parent = v
                        BillboardGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
                        BillboardGui.Active = true
                        BillboardGui.Name = "MobEap"
                        BillboardGui.AlwaysOnTop = true
                        BillboardGui.LightInfluence = 1.000
                        BillboardGui.Size = UDim2.new(0, 200, 0, 50)
                        BillboardGui.StudsOffset = Vector3.new(0, 2.5, 0)

                        TextLabel.Parent = BillboardGui
                        TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                        TextLabel.BackgroundTransparency = 1.000
                        TextLabel.Size = UDim2.new(0, 200, 0, 50)
                        TextLabel.Font = Enum.Font.GothamBold
                        TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
                        TextLabel.Text.Size = 35
                    end
                    local Dis = math.floor((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.HumanoidRootPart.Position).Magnitude)
                    v.MobEap.TextLabel.Text = v.Name.." - "..Dis.." Distance"
                end
            end
        else
            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                if v:FindFirstChild("MobEap") then
                    v.MobEap:Destroy()
                end
            end
        end
    end)
end
end)

spawn(function()
while wait() do
    pcall(function()
        if SeaESP then
            for i,v in pairs(game:GetService("Workspace").SeaBeasts:GetChildren()) do
                if v:FindFirstChild('HumanoidRootPart') then
                    if not v:FindFirstChild("Seaesps") then
                        local BillboardGui = Instance.new("BillboardGui")
                        local TextLabel = Instance.new("TextLabel")

                        BillboardGui.Parent = v
                        BillboardGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
                        BillboardGui.Active = true
                        BillboardGui.Name = "Seaesps"
                        BillboardGui.AlwaysOnTop = true
                        BillboardGui.LightInfluence = 1.000
                        BillboardGui.Size = UDim2.new(0, 200, 0, 50)
                        BillboardGui.StudsOffset = Vector3.new(0, 2.5, 0)

                        TextLabel.Parent = BillboardGui
                        TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                        TextLabel.BackgroundTransparency = 1.000
                        TextLabel.Size = UDim2.new(0, 200, 0, 50)
                        TextLabel.Font = Enum.Font.GothamBold
                        TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
                        TextLabel.Text.Size = 35
                    end
                    local Dis = math.floor((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.HumanoidRootPart.Position).Magnitude)
                    v.Seaesps.TextLabel.Text = v.Name.." - "..Dis.." Distance"
                end
            end
        else
            for i,v in pairs (game:GetService("Workspace").SeaBeasts:GetChildren()) do
                if v:FindFirstChild("Seaesps") then
                    v.Seaesps:Destroy()
                end
            end
        end
    end)
end
end)

spawn(function()
while wait() do
    pcall(function()
        if NpcESP then
            for i,v in pairs(game:GetService("Workspace").NPCs:GetChildren()) do
                if v:FindFirstChild('HumanoidRootPart') then
                    if not v:FindFirstChild("NpcEspes") then
                        local BillboardGui = Instance.new("BillboardGui")
                        local TextLabel = Instance.new("TextLabel")

                        BillboardGui.Parent = v
                        BillboardGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
                        BillboardGui.Active = true
                        BillboardGui.Name = "NpcEspes"
                        BillboardGui.AlwaysOnTop = true
                        BillboardGui.LightInfluence = 1.000
                        BillboardGui.Size = UDim2.new(0, 200, 0, 50)
                        BillboardGui.StudsOffset = Vector3.new(0, 2.5, 0)

                        TextLabel.Parent = BillboardGui
                        TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                        TextLabel.BackgroundTransparency = 1.000
                        TextLabel.Size = UDim2.new(0, 200, 0, 50)
                        TextLabel.Font = Enum.Font.GothamBold
                        TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
                        TextLabel.Text.Size = 35
                    end
                    local Dis = math.floor((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.HumanoidRootPart.Position).Magnitude)
                    v.NpcEspes.TextLabel.Text = v.Name.." - "..Dis.." Distance"
                end
            end
        else
            for i,v in pairs (game:GetService("Workspace").NPCs:GetChildren()) do
                if v:FindFirstChild("NpcEspes") then
                    v.NpcEspes:Destroy()
                end
            end
        end
    end)
end
end)


function InfAb()
    if InfAbility then
        if not game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("Agility") then
            local inf = Instance.new("ParticleEmitter")
            inf.Acceleration = Vector3.new(0,0,0)
            inf.Archivable = true
            inf.Drag = 20
            inf.EmissionDirection = Enum.NormalId.Top
            inf.Enabled = true
            inf.Lifetime = NumberRange.new(0,0)
            inf.LightInfluence = 0
            inf.LockedToPart = true
            inf.Name = "Agility"
            inf.Rate = 500
            local numberKeypoints2 = {
                NumberSequenceKeypoint.new(0, 0);
                NumberSequenceKeypoint.new(1, 4); 
            }
            inf.Size = NumberSequence.new(numberKeypoints2)
            inf.RotSpeed = NumberRange.new(9999, 99999)
            inf.Rotation = NumberRange.new(0, 0)
            inf.Speed = NumberRange.new(30, 30)
            inf.SpreadAngle = Vector2.new(0,0,0,0)
            inf.Texture = ""
            inf.VelocityInheritance = 0
            inf.ZOffset = 2
            inf.Transparency = NumberSequence.new(0)
            inf.Color = ColorSequence.new(Color3.fromRGB(0,0,0),Color3.fromRGB(0,0,0))
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
        while wait(.1) do
            if InfiniteEnergy then
                wait(0.1)
                originalstam = LocalPlayer.Character.Energy.Value
                infinitestam()
            end
        end
    end)
end)

function NoDodgeCool()
    if nododgecool then
        for i,v in next, getgc() do
            if game:GetService("Players").LocalPlayer.Character.Dodge then
                if typeof(v) == "function" and getfenv(v).script == game:GetService("Players").LocalPlayer.Character.Dodge then
                    for i2,v2 in next, getupvalues(v) do
                        if tostring(v2) == "0.1" then
                        repeat wait(.1)
                            setupvalue(v,i2,0)
                        until not nododgecool
                        end
                    end
                end
            end
        end
    end
end


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

spawn(function()
while wait() do
    for i,v in pairs(game:GetService("Workspace")["_WorldOrigin"]:GetChildren()) do
        pcall(function()
            if v.Name == ("CurvedRing") or v.Name == ("SlashHit") or v.Name == ("SwordSlash") or v.Name == ("SlashTail") or v.Name == ("Sounds") then
                v:Destroy()
            end
        end)
    end
end
end)

function GetDistance(target)
    return math.floor((target.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude)
end

function BTP(P)
repeat wait(1)
    game.Players.LocalPlayer.Character.Humanoid:ChangeState(15)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = P
    task.wait()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = P
until (P.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 1500
end

function TelePPlayer(P)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = P
end

function TP(Pos)
Distance = (Pos.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
if Distance < 25 then
    Speed = 10000
elseif Distance < 50 then
    Speed = 2000
elseif Distance < 150 then
    Speed = 800
elseif Distance < 250 then
    Speed = 600
elseif Distance < 500 then
    Speed = 400
elseif Distance < 750 then
    Speed = 250
elseif Distance >= 1000 then
    Speed = 200
end
game:GetService("TweenService"):Create(
    game.Players.LocalPlayer.Character.HumanoidRootPart,
    TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear),
    {CFrame = Pos}
):Play()
end

function TP1(Pos)
    Distance = (Pos.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
    if Distance < 25 then
        Speed = 5000
    elseif Distance < 50 then
        Speed = 2000
    elseif Distance < 150 then
        Speed = 800
    elseif Distance < 250 then
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

function topos(Pos)
    Distance = (Pos.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
    if Distance < 25 then
        Speed = 5000
    elseif Distance < 50 then
        Speed = 2000
    elseif Distance < 150 then
        Speed = 800
    elseif Distance < 250 then
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

function HyperCahaya(Pos)
    Distance = (Pos.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
    if Distance < 10 then
        Speed = 20
    elseif Distance < 25 then
        Speed = 5050
    elseif Distance < 50 then
        Speed = 2040
    elseif Distance < 150 then
        Speed = 830
    elseif Distance < 250 then
        Speed = 620
    elseif Distance < 500 then
        Speed = 410
    elseif Distance < 750 then
        Speed = 370
    elseif Distance >= 1000 then
        Speed = 320
    end
    game:GetService("TweenService"):Create(
        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart,
        TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear),
        {CFrame = Pos}
    ):Play()
end

function BTP(P1)
game.Players.LocalPlayer.Character.Head:Destroy()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = P1
wait(1)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = P1
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
end

getgenv().HyperCahayas = function(p)
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


spawn(function()
game:GetService("RunService").Heartbeat:Connect(function()
    if _G.CollectAzure or _G.SafeMode or _G.AutoKillLeviathan or _G.AutoAdvanceDungeon or _G.AutoDoughtBoss or _G.Auto_DungeonMobAura or _G.AutoFarmChest or _G.AutoFarmBossHallow or _G.AutoFarmSwanGlasses or _G.AutoLongSword or _G.AutoBlackSpikeycoat or _G.AutoElectricClaw or _G.AutoFarmGunMastery or _G.AutoHolyTorch or _G.AutoLawRaid or _G.AutoFarmBoss or _G.AutoTwinHooks or _G.AutoOpenSwanDoor or _G.AutoDragon_Trident or _G.AutoSaber or _G.NOCLIP or _G.AutoFarmFruitMastery or _G.AutoFarmGunMastery or _G.TeleportIsland or _G.Auto_EvoRace or _G.AutoFarmAllMsBypassType or _G.AutoObservationv2 or _G.AutoMusketeerHat or _G.AutoEctoplasm or _G.AutoRengoku or _G.Auto_Rainbow_Haki or _G.AutoObservation or _G.AutoDarkDagger or _G.AutoSpawnRip or _G.Safe_Mode or _G.MasteryFruit or _G.AutoBudySword or _G.AutoOderSword or _G.AutoBounty or _G.AutoAllBoss or _G.Auto_Bounty or _G.AutoSharkman or _G.Auto_Mastery_Fruit or _G.Auto_Mastery_Gun or _G.Auto_Dungeon or _G.Auto_Cavender or _G.Auto_Pole or _G.Auto_Kill_Ply or _G.Auto_Factory or _G.AutoSecondSea or _G.TeleportPly or _G.AutoBartilo or _G.Auto_DarkBoss or _G.GrabChest or _G.AutoFarmBounty or _G.Holy_Torch or _G.AutoFarm or _G.Clip or _G.AutoElitehunter or _G.AutoThirdSea or _G.Auto_Bone or _G.Autoheart or _G.Autodoughking or _G.AutoFarmMaterial or _G.AutoNevaSoulGuitar or _G.Auto_Dragon_Trident or _G.Autotushita or _G.d or _G.Autowaden or _G.Autogay or _G.Autopole or _G.Autosaw or _G.AutoObservationHakiV2 or _G.AutoFarmNearest or AutoFarmChest or _G.AutoCarvender or _G.AutoTwinHook or AutoMobAura or _G.Tweenfruit or _G.AutoKai or _G.TeleportNPC or _G.Leather or _G.Auto_Wing or _G.Umm or _G.Terrorshark or _G.Piranha or _G.Shark or _G.Makori_gay or Radioactive or Fish or Gunpowder or Dragon_Scale or Cocoafarm or Scrap or MiniHee or _G.AutoFarmSeabaest or Auto_Cursed_Dual_Katana or _G.AutoFarmMob or _G.AutoMysticIsland or _G.AutoFarmDungeon or _G.AutoRaidPirate or _G.AutoQuestRace or _G.TweenMGear or getgenv().AutoFarm or _G.AutoPlayerHunter or _G.AutoFactory or Grab_Chest or _G.KillAfterTrials or _G.FishBoat then
        if not game:GetService("Workspace"):FindFirstChild("LOL") then
            local LOL = Instance.new("Part")
            LOL.Name = "LOL"
            LOL.Parent = game.Workspace
            LOL.Anchored = true
            LOL.Transparency = 1
            LOL.Size = Vector3.new(30,-0.5,30)
        elseif game:GetService("Workspace"):FindFirstChild("LOL") then
            game.Workspace["LOL"].CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, -3.6, 0)
        end
    else
        if game:GetService("Workspace"):FindFirstChild("LOL") then
            game:GetService("Workspace"):FindFirstChild("LOL"):Destroy()
        end
    end
end)
end)

spawn(function()
    pcall(function()
        while wait() do
            if _G.CollectAzure or _G.AutoKillLeviathan or _G.SafeMode or _G.AutoAdvanceDungeon or _G.AutoDoughtBoss or _G.Auto_DungeonMobAura or _G.AutoFarmChest or _G.AutoFarmBossHallow or _G.AutoFarmSwanGlasses or _G.AutoLongSword or _G.AutoBlackSpikeycoat or _G.AutoElectricClaw or _G.AutoFarmGunMastery or _G.AutoHolyTorch or _G.AutoLawRaid or _G.AutoFarmBoss or _G.AutoTwinHooks or _G.AutoOpenSwanDoor or _G.AutoDragon_Trident or _G.AutoSaber or _G.AutoFarmFruitMastery or _G.AutoFarmGunMastery or _G.TeleportIsland or _G.Auto_EvoRace or _G.AutoFarmAllMsBypassType or _G.AutoObservationv2 or _G.AutoMusketeerHat or _G.AutoEctoplasm or _G.AutoRengoku or _G.Auto_Rainbow_Haki or _G.AutoObservation or _G.AutoSpawnRip or _G.AutoDarkDagger or _G.Safe_Mode or _G.MasteryFruit or _G.AutoBudySword or _G.AutoOderSword or _G.AutoBounty or _G.AutoAllBoss or _G.Auto_Bounty or _G.AutoSharkman or _G.Auto_Mastery_Fruit or _G.Auto_Mastery_Gun or _G.Auto_Dungeon or _G.Auto_Cavender or _G.Auto_Pole or _G.Auto_Kill_Ply or _G.Auto_Factory or _G.AutoSecondSea or _G.TeleportPly or _G.AutoBartilo or _G.Auto_DarkBoss or _G.GrabChest or _G.AutoFarmBounty or _G.Holy_Torch or _G.AutoFarm or _G.Clip or FarmBoss or _G.AutoElitehunter or _G.AutoThirdSea or _G.Auto_Bone or _G.Autoheart or _G.Autodoughking or _G.AutoFarmMaterial or _G.AutoNevaSoulGuitar or _G.Auto_Dragon_Trident or _G.Autotushita or _G.d or _G.Autowaden or _G.Autogay or _G.Autopole or _G.Autosaw or _G.AutoObservationHakiV2 or _G.AutoFarmNearest or AutoFarmChest or _G.AutoCarvender or _G.AutoTwinHook or AutoMobAura or _G.Tweenfruit or _G.TeleportNPC or _G.Leather or _G.Auto_Wing or _G.Umm or _G.Terrorshark or _G.Piranha or _G.Shark or _G.Makori_gay or Radioactive or Fish or Gunpowder or Dragon_Scale or Cocoafarm or Scrap or MiniHee or _G.AutoFarmSeabaest or Auto_Cursed_Dual_Katana or _G.AutoFarmMob or _G.AutoMysticIsland or _G.AutoFarmDungeon or _G.AutoRaidPirate or _G.AutoQuestRace or _G.TweenMGear or getgenv().AutoFarm or _G.AutoPlayerHunter or _G.AutoFactory or Grab_Chest == true or _G.KillAfterTrials or _G.AutoSeaBest or _G.KillGhostShip or _G.AutoAlternatif or _G.dao or _G.FishBoat or _G.GhostShipRaidbruh or _G.BiirTrax or _G.BiirAnchor or _G.Anchor or _G.AutoFarm then
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
            if _G.CollectAzure or _G.SafeMode or _G.AutoKillLeviathan or _G.AutoAdvanceDungeon or _G.AutoDoughtBoss or _G.Auto_DungeonMobAura or _G.AutoFarmChest or _G.AutoFarmBossHallow or _G.AutoFarmSwanGlasses or _G.AutoLongSword or _G.AutoBlackSpikeycoat or _G.AutoElectricClaw or _G.AutoFarmGunMastery or _G.AutoHolyTorch or _G.AutoLawRaid or _G.AutoFarmBoss or _G.AutoTwinHooks or _G.AutoOpenSwanDoor or _G.AutoDragon_Trident or _G.AutoSaber or _G.NOCLIP or _G.AutoFarmFruitMastery or _G.AutoFarmGunMastery or _G.TeleportIsland or _G.Auto_EvoRace or _G.AutoFarmAllMsBypassType or _G.AutoObservationv2 or _G.AutoMusketeerHat or _G.AutoEctoplasm or _G.AutoRengoku or _G.Auto_Rainbow_Haki or _G.AutoObservation or _G.AutoSpawnRip or _G.AutoDarkDagger or _G.Safe_Mode or _G.MasteryFruit or _G.AutoBudySword or _G.AutoOderSword or _G.AutoBounty or _G.AutoAllBoss or _G.Auto_Bounty or _G.AutoSharkman or _G.Auto_Mastery_Fruit or _G.Auto_Mastery_Gun or _G.Auto_Dungeon or _G.Auto_Cavender or _G.Auto_Pole or _G.Auto_Kill_Ply or _G.Auto_Factory or _G.AutoSecondSea or _G.TeleportPly or _G.AutoBartilo or _G.Auto_DarkBoss or _G.GrabChest or _G.AutoFarmBounty or _G.Holy_Torch or _G.AutoFarm or _G.Clip or _G.AutoElitehunter or _G.AutoThirdSea or _G.Auto_Bone or _G.Autoheart or _G.Autodoughking or _G.AutoFarmMaterial or _G.AutoNevaSoulGuitar or _G.Auto_Dragon_Trident or _G.Autotushita or _G.Autowaden or _G.Autogay or _G.Autopole or _G.Autosaw or _G.AutoObservationHakiV2 or _G.AutoFarmNearest or AutoFarmChest or _G.AutoCarvender or _G.AutoTwinHook or AutoMobAura or _G.Tweenfruit or _G.TeleportNPC or _G.AutoKai or _G.Leather or _G.Auto_Wing or _G.Umm or _G.Terrorshark or _G.Piranha or _G.Shark or _G.Makori_gay or Radioactive or Fish or Gunpowder or Dragon_Scale or Cocoafarm or Scrap or MiniHee or _G.AutoFarmSeabaest or Auto_Cursed_Dual_Katana or _G.AutoFarmMob or _G.AutoMysticIsland or _G.AutoFarmDungeon or _G.AutoRaidPirate or _G.AutoQuestRace or _G.TweenMGear or getgenv().AutoFarm or _G.AutoPlayerHunter or _G.AutoFactory or Grab_Chest == true or _G.KillAfterTrials or _G.AutoSeaBest or _G.KillGhostShip or _G.AutoAlternatif or _G.dao or _G.FishBoat or _G.GhostShipRaidbruh or _G.BiirTrax or _G.BiirAnchor or _G.Anchor or _G.AutoFarm then
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
        if _G.CollectAzure or _G.SafeMode or _G.AutoKillLeviathan or _G.AutoDoughtBoss or _G.Auto_DungeonMobAura or _G.AutoFarmChest or _G.AutoFarmBossHallow or _G.AutoFarmSwanGlasses or _G.AutoLongSword or _G.AutoBlackSpikeycoat or _G.AutoElectricClaw or _G.AutoFarmGunMastery or _G.AutoHolyTorch or _G.AutoLawRaid or _G.AutoFarmBoss or _G.AutoTwinHooks or _G.AutoOpenSwanDoor or _G.AutoDragon_Trident or _G.AutoSaber or _G.NOCLIP or _G.AutoFarmFruitMastery or _G.AutoFarmGunMastery or _G.TeleportIsland or _G.Auto_EvoRace or _G.AutoFarmAllMsBypassType or _G.AutoObservationv2 or _G.AutoMusketeerHat or _G.AutoEctoplasm or _G.AutoRengoku or _G.Auto_Rainbow_Haki or _G.AutoObservation or _G.AutoSpawnRip or _G.AutoDarkDagger or _G.Safe_Mode or _G.MasteryFruit or _G.AutoBudySword or _G.AutoOderSword or _G.AutoAllBoss or _G.Auto_Bounty or _G.AutoSharkman or _G.Auto_Mastery_Fruit or _G.Auto_Mastery_Gun or _G.Auto_Dungeon or _G.Auto_Cavender or _G.Auto_Pole or _G.Auto_Kill_Ply or _G.Auto_Factory or _G.AutoSecondSea or _G.TeleportPly or _G.AutoBartilo or _G.Auto_DarkBoss or _G.AutoFarm or _G.Clip or _G.AutoElitehunter or _G.AutoThirdSea or _G.Auto_Bone or _G.Autoheart or _G.Autodoughking or _G.d or _G.Autowaden or _G.Autogay or _G.AutoObservationHakiV2 or _G.AutoFarmMaterial or _G.AutoFarmNearest or _G.AutoCarvender or _G.AutoTwinHook or AutoMobAura or _G.Leather or _G.Auto_Wing or _G.Umm or _G.Terrorshark or _G.Piranha or _G.Shark or _G.Makori_gay or Radioactive or Fish or Gunpowder or Dragon_Scale or Cocoafarm or Scrap or MiniHee or _G.AutoFarmSeabaest or Auto_Cursed_Dual_Katana or _G.AutoFarmMob or _G.AutoRaidPirate or getgenv().AutoFarm or _G.AutoPlayerHunter or _G.AutoFactory == true or _G.AutoSeaBest or _G.KillGhostShip or _G.AutoAlternatif or _G.dao or _G.FishBoat or _G.GhostShipRaidbruh or _G.BiirTrax or _G.BiirAnchor or _G.Anchor or _G.AutoFarm then
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
        HyperCahaya(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
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

-- Batas fitur semua script
-----------------------------------------------------------------------------------------------------------------------------
-- Fitur Status
Status:AddSeperator("Status Fruits Spawn")

-- Menambahkan label untuk status Fruits Spawn
FruitStatus = Status:AddLabel("Fruits Spawn : ")

-- Fungsi untuk mengecek status buah
spawn(function()
    while wait(0.1) do
        local fruitFound = false
        for i, v in pairs(game.Workspace:GetChildren()) do
            if string.find(v.Name, "Fruit") then
                FruitStatus:Set("Fruits Spawn : " .. v.Name)
                fruitFound = true
                break
            end
        end
        if not fruitFound then
            FruitStatus:Set("Fruits Spawn : 🔴")
        end
    end
end)



Status:AddSeperator("Status Acient One")

local bL = Status:AddLabel("Ancient One : " .. tostring(CheckAcientOneStatus()))
local bPl = Status:AddLabel("Train v4 Status : " .. tostring(CheckAcientOneStatusTrain()))

Status:AddSeperator("Status Island")
if World3 then
    spawn(function()
        pcall(function()
            while wait() do
    if game.Workspace._WorldOrigin.Locations:FindFirstChild('Mirage Island') then
    Mirragech3ck:Set('Mirage Island : 🟢')
    else
      Mirragech3ck:Set('Mirage Island : 🔴' )end
            end
        end)
    end)
    end
    Mirragech3ck = Status:AddLabel("Mirage Island : Only Third Sea")

if World3 then
spawn(function()
    pcall(function()
        while wait() do
            if game.Workspace._WorldOrigin.Locations:FindFirstChild('Kitsune Island') then
                Kitsunech3ck:Set('Kitsune Island : 🟢')
            else
                Kitsunech3ck:Set('Kitsune Island : 🔴') 
            end
        end
    end)
end)
end
Kitsunech3ck = Status:AddLabel("Kitsune Island : Only Third Sea")

if World3 then
spawn(function()
    pcall(function()
    while wait() do
        if game.Workspace._WorldOrigin.Locations:FindFirstChild('Frozen Dimension') then
            Froz3nIsland:Set('Frozen Dimension : 🟢')
        else
            Froz3nIsland:Set('Frozen Dimension : 🔴')
        end
    end
    end)
    end)
end
    Froz3nIsland = Status:AddLabel("Frozen Island : Only Third Sea")

    Status:AddSeperator("Status Moon")
local FMz = Status:AddLabel("Full Moon Phase : ")
 if World3 or world2 then
 task.spawn(function()
         while task.wait() do
             pcall(function()
                 if game:GetService("Lighting").Sky.MoonTextureId=="http://www.roblox.com/asset/?id=9709149431" then
                     FMz:Set("Full Moon Phase : 🌕 | 100%")
                 elseif game:GetService("Lighting").Sky.MoonTextureId=="http://www.roblox.com/asset/?id=9709149052" then
                     FMz:Set("Full Moon Phase : 🌖 | 75%")
                 elseif game:GetService("Lighting").Sky.MoonTextureId=="http://www.roblox.com/asset/?id=9709143733" then
                     FMz:Set("Full Moon Phase : 🌗 | 50%")
                 elseif game:GetService("Lighting").Sky.MoonTextureId=="http://www.roblox.com/asset/?id=9709150401" then
                     FMz:Set("Full Moon Phase : 🌘 | 25%")
                 elseif game:GetService("Lighting").Sky.MoonTextureId=="http://www.roblox.com/asset/?id=9709149680" then
                     FMz:Set("Full Moon Phase : 🌘 | 15%")
                 else
                     FMz:Set("Full Moon Phase : 🌙 | 0%")
                 end
             end)
         end
 end)
end
local FullM00n = Status:AddLabel("Time : " .. function8() .. " | ".. CheckMoon() .. " | " .. function7())

spawn(function()
        while wait() do
            FullM00n:Set("Time : " .. function8() .. " | ".. CheckMoon() .. " | " .. function7())
                end
            end)

Status:AddSeperator("Legendary Item")

local function IsItemHeldByPlayer(itemName)
    for _, player in pairs(game.Players:GetPlayers()) do
        local character = player.Character
        if character and character:FindFirstChild(itemName) then
            return true
        end
    end
    return false
end

spawn(function()
    while wait(5) do
        if IsItemHeldByPlayer("God's Chalice") then
            NotifyItemFound_Chalice:Set("God's Chalice : 🟢")
        else
            NotifyItemFound_Chalice:Set("God's Chalice : 🔴")
        end

        if IsItemHeldByPlayer("Fish of Darkness") then
            NotifyItemFound_Fish:Set("Fish of Darkness : 🟢")
        else
            NotifyItemFound_Fish:Set("Fish of Darkness : 🔴")
        end
    end
end)

    NotifyItemFound_Chalice = Status:AddLabel("God's Chalice : ")
    NotifyItemFound_Fish = Status:AddLabel("Fish of Darkness : ")

    spawn(function()
        pcall(function()
            while wait() do
                if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LegendarySwordDealer", "1") then
                    LegendSwords:Set("Legendary Sword : Shisui")
                elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LegendarySwordDealer","2") then
                    LegendSwords:Set("Legendary Sword : Wando")
                elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LegendarySwordDealer","3") then
                    LegendSwords:Set("Legendary Sword : Saddi")
                else
                    LegendSwords:Set("Sword Not Ready : 🔴")
                end
            end
        end)
       end)
       
       LegendSwords = Status:AddLabel("Sword Not Ready : 🔴")

-----------------------------------------------------------------------------------------------------------------------------
-- Fitur Farming

Farming:AddSeperator("Redeem Codes")
    
    local x2Code = {
        "KITTGAMING",
        "ENYU_IS_PRO",
        "FUDD10",
        "BIGNEWS",
        "THEGREATACE",
        "SUB2GAMERROBOT_EXP1",
        "STRAWHATMAIME",
        "SUB2OFFICIALNOOBIE",
        "SUB2NOOBMASTER123",
        "SUB2DAIGROCK",
        "AXIORE",
        "TANTAIGAMIMG",
        "STRAWHATMAINE",
        "JCWK",
        "FUDD10_V2",
        "SUB2FER999",
        "MAGICBIS",
        "TY_FOR_WATCHING",
        "STARCODEHEO",
        "UPD16", --baru
        "2BILLION",
        "UPD15",
        "StrawHatMaine",
        "Sub2OfficialNoobie",
        "SUB2NOOBMASTER123",
        "Sub2Daigrock",
        "Axiore",
        "TantaiGaming",
        "STRAWHATMAINE",
        "GAMERROBOT_YT",
        "EXP_5B",
        "RESET_5B",
        "KittGaming",
        "Enyu_is_Pro",
        "Sub2Fer999",
        "Bluxxy",
        "Magicbus",
        "fudd10_v2 ",
        "Starcodeheo",
        "3BVISITS",
        "1MLIKES_RESET",
        "2BILLION"
    }
    
    Farming:AddButton("Redeem All Codes",function()
        function RedeemCode(value)
            game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer(value)
        end
        for i,v in pairs(x2Code) do
            RedeemCode(v)
        end
    end)
    
    Farming:AddDropdown("Selected Codes Reset stat",{"NOOB_REFUND","SUB2GAMERROBOT_RESET1","Sub2UncleKizaru"},function(value)
        _G.CodeSelect = value
    end)
    
    Farming:AddButton("Redeem Code (Selected Codes)",function()
        game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer(_G.CodeSelect)
    end)
    Farming:AddSeperator("Farm Settings")

local WeaponList = {"Melee","Sword","Fruit","Gun"}
_G.SelectWeapon = "Melee"
Farming:AddDropdown("Select Weapon",WeaponList,function(value)
_G.SelectWeapon = value
end)

task.spawn(function()
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
			elseif _G.SelectWeapon == "Gun" then
				for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
					if v.ToolTip == "Gun" then
						if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
							_G.SelectWeapon = v.Name
						end
					end
				end
			elseif _G.SelectWeapon == "Fruit" then
				for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
					if v.ToolTip == "Blox Fruit" then
						if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
							_G.SelectWeapon = v.Name
						end
					end
				end
			end
		end)
	end
    end)

local AttackList = {"0", "0.1", "0.15", "0.155", "0.16", "0.165", "0.17", "0.175", "0.18", "0.185"}
_G.FastAttackDelay = "0.18"
Farming:AddDropdown("Fast Attack Delay", AttackList,function(MakoGay)
    _G.FastAttackDelay = MakoGay
end)
spawn(function()
    while wait(.1) do
        if _G.FastAttackDelay then
            pcall(function()
                if _G.FastAttackDelay == "0" then
                    _G.FastAttackDelay = 0
                elseif _G.FastAttackDelay == "0.1" then
                    _G.FastAttackDelay = 0.1
                elseif _G.FastAttackDelay == "0.15" then
                    _G.FastAttackDelay = 0.15
                elseif _G.FastAttackDelay == "0.155" then
                    _G.FastAttackDelay = 0.155
                elseif _G.FastAttackDelay == "0.16" then
                    _G.FastAttackDelay = 0.16
                elseif _G.FastAttackDelay == "0.165" then
                    _G.FastAttackDelay = 0.165
                elseif _G.FastAttackDelay == "0.17" then
                    _G.FastAttackDelay = 0.17
                elseif _G.FastAttackDelay == "0.175" then
                    _G.FastAttackDelay = 0.175
                elseif _G.FastAttackDelay == "0.18" then
                    _G.FastAttackDelay = 0.18
                elseif _G.FastAttackDelay == "0.185" then
                    _G.FastAttackDelay = 0.185
                elseif _G.FastAttackDelay == "0.09" then
                    _G.FastAttackDelay = 0.09
                end
            end)
        end
    end
end)

local Client = game.Players.LocalPlayer
local STOP = require(Client.PlayerScripts.CombatFramework.Particle)
local STOPRL = require(game:GetService("ReplicatedStorage").CombatFramework.RigLib)
spawn(function()
    while task.wait() do
        pcall(function()
            if not shared.orl then shared.orl = STOPRL.wrapAttackAnimationAsync end
            if not shared.cpc then shared.cpc = STOP.play end
                STOPRL.wrapAttackAnimationAsync = function(a,b,c,d,func)
                local Hits = STOPRL.getBladeHits(b,c,d)
                if Hits then
                    if _G.FastAttack or _G.HyperSonic then
                        STOP.play = function() end
                        a:Play(0.01,0.01,0.01)
                        func(Hits)
                        STOP.play = shared.cpc
                        wait(a.length * 0.7)
                        a:Stop()
                    else
                        a:Play()
                    end
                end
            end
        end)
    end
end)

function GetBladeHit()
local CombatFrameworkLib = debug.getupvalues(require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework))
local CmrFwLib = CombatFrameworkLib[2]
local p13 = CmrFwLib.activeController
local weapon = p13.blades[1]
if not weapon then 
    return weapon
end
while weapon.Parent ~= game.Players.LocalPlayer.Character do
    weapon = weapon.Parent 
end
return weapon
end
function AttackHit()
local CombatFrameworkLib = debug.getupvalues(require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework))
local CmrFwLib = CombatFrameworkLib[2]
local plr = game.Players.LocalPlayer
for i = 1, 1 do
    local bladehit = require(game.ReplicatedStorage.CombatFramework.RigLib).getBladeHits(plr.Character,{plr.Character.HumanoidRootPart},60)
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
        pcall(function()
            CmrFwLib.activeController.timeToNextAttack = -1
            CmrFwLib.activeController.attacking = false
            CmrFwLib.activeController.blocking = false
            CmrFwLib.activeController.timeToNextBlock = 0
            CmrFwLib.activeController.increment = 1 + 1 + math.huge
            CmrFwLib.activeController.hitboxMagnitude = 200
            CmrFwLib.activeController.focusStart = 0
            game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("weaponChange",tostring(GetBladeHit()))
            game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("hit", bladehit, 2, "")
        end)
    end
end
end


spawn(function()
while wait(.1) do
    if _G.FastAttack then
        pcall(function()
            repeat task.wait(_G.FastAttackDelay)
                AttackHit()
            until not _G.FastAttack
        end)
    end
end
end)

Farming:AddToggle("Bypass TP",BypassTP,function(value)
        BypassTP = value
    end)
    
    Farming:AddToggle("Turn On V4 Race",false,function(value)
        AutoAwakeningRace = value
       end)
 
       spawn(function()
           while wait() do
		       pcall(function()
			       if AutoAwakeningRace then
				       game:GetService("VirtualInputManager"):SendKeyEvent(true,"Y",false,game)
				       wait(0.1)
                       game:GetService("VirtualInputManager"):SendKeyEvent(false,"Y",false,game)
			       end
		       end)
           end
       end)
       
       Farming:AddToggle("Set Spawn Point",true,function(value)
    _G.Set = value
end)

spawn(function()
   while wait() do
      if _G.Set then
         pcall(function()
         local args = {
         [1] = "SetSpawnPoint"
         }
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
      end)
    end
  end
end)

Farming:AddToggle("Aura Attack Npc",true,function(value)
        _G.FastAttack = value
    end)      

    Farming:AddSeperator("Farm Level")

    Farming:AddToggle("Auto Farm Kaitun",false,function(value)
    _G.AutoFarm = value
    _G.SelectWeapon = "Combat"
    _G.SelectWeapon = "Melee"
    _G.Auto_Stats_Kaitun = value
    _G.AutoSuperhuman = value
    _G.AutoSecondSea = value
    _G.AutoThirdSea = value
    _G.AutoBuyLegendarySword = value
    _G.AutoStoreFruit = value
    _G.Random_Auto = value
    _G.BuyAllAib = value
    _G.BuyAllSword = value
    function RedeemCode(value)
        game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer(value)
    end
    for i,v in pairs(x2Code) do
        RedeemCode(v)
   StopTween(_G.AutoFarm)
    end
 end)
 
 spawn(function()
     while wait() do
         if _G.BuyAllSword then
             pcall(function()
                 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Cutlass")
                 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Katana")
                 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Iron Mace")
                 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Duel Katana")
                 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Triple Katana")
                 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Pipe")
                 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Bisento")
                 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Dual-Headed Blade")
                 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Soul Cane")
                 if _G.BuyHop then
                     wait(10)
                     Hop()
                 end
             end)
         end 
     end
 end)
 
 spawn(function()
     while wait() do
         if _G.BuyAllAib then
             pcall(function()
                 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("KenTalk","Buy")
                 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki","Geppo")
                 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki","Buso")
                 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki","Soru")
                 if _G.HopBuy then
                     wait(10)
                     Hop()
                 end
             end)
         end 
     end
 end)
 
if World1 then
 tableMon = {"Bandit","Monkey","Gorilla","Pirate","Brute","Desert Bandit","Desert Officer","Snow Bandit","Snowman","Chief Petty Officer","Sky Bandit","Dark Master","Toga Warrior","Gladiator","Military Soldier","Military Spy","Fishman Warrior","Fishman Commando","God's Guard","Shanda","Royal Squad","Royal Soldier","Galley Pirate","Galley Captain"}
elseif World2 then
 tableMon = {"Raider","Mercenary","Swan Pirate","Factory Staff","Marine Lieutenant","Marine Captain","Zombie","Vampire","Snow Trooper","Winter Warrior","Lab Subordinate","Horned Warrior","Magma Ninja","Lava Pirate","Ship Deckhand","Ship Engineer","Ship Steward","Ship Officer","Arctic Warrior","Snow Lurker","Sea Soldier","Water Fighter"}
elseif World3 then
 tableMon = {"Pirate Millionaire","Dragon Crew Warrior","Dragon Crew Archer","Female Islander","Giant Islander","Marine Commodore","Marine Rear Admiral","Fishman Raider","Fishman Captain","Forest Pirate","Mythological Pirate","Jungle Pirate","Musketeer Pirate","Reborn Skeleton","Living Zombie","Demonic Soul","Posessed Mummy","Peanut Scout","Peanut President","Ice Cream Chef","Ice Cream Commander","Cookie Crafter","Cake Guard","Baking Staff","Head Baker","Cocoa Warrior","Chocolate Bar Battler","Sweet Thief","Candy Rebel","Candy Pirate","Snow Demon","Isle Outlaw","Island Boy","Sun-kissed Warrior","Isle Champion"}
end
   
Farming:AddToggle("Auto Farm Level",_G.AutoFarm,function(value)
        _G.AutoFarm = value
        StopTween(_G.AutoFarm)
        saveSettings()
    end)
    
    spawn(function()
        while wait() do
            if _G.AutoFarm then
                pcall(function()
                    local QuestTitle = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text
                    CheckQuest()
                    if not string.find(QuestTitle, NameMon) then
                        StartMagnet = false
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                    end
                    if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                        StartMagnet = false
                        if BypassTP then
                        if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameQuest.Position).Magnitude > 1500 then
						BTP(CFrameQuest)
						elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameQuest.Position).Magnitude < 1500 then
						TP1(CFrameQuest)
						end
					else
						TP1(CFrameQuest)
					end
					if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameQuest.Position).Magnitude <= 20 then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest",NameQuest,LevelQuest)
                    end
                    elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                        -- Sun-Kissed Warrior Function Farm Level
                        if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "kissed") then
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if string.find(v.Name,"kissed Warrior") then
                                    if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                                        if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) then
                                            repeat task.wait()
                                                EquipWeapon(_G.SelectWeapon)
                                                AutoHaki()                                            
                                                PosMon = v.HumanoidRootPart.CFrame
                                                TP1(v.HumanoidRootPart.CFrame * CFrame.new(PosX,PosY,PosZ))
                                                v.HumanoidRootPart.CanCollide = false
                                                v.Humanoid.WalkSpeed = 2
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
                                elseif string.find(v.Name,"kissed Warrior") == nil then
                                    TP1(CFrameMon)
                                    StartMagnet = false
                                    if game:GetService("ReplicatedStorage"):FindFirstChild(Mon) then
                                        TP1(game:GetService("ReplicatedStorage"):FindFirstChild(Mon).HumanoidRootPart.CFrame * CFrame.new(0,20,0))
                                    end
                                end
                            end
                        else
                            -- For Other Farm Level Except Sun Kissed Warrior
                            if game:GetService("Workspace").Enemies:FindFirstChild(Mon) then
                                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                                        if v.Name == Mon then
                                            if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) then
                                                repeat task.wait()
                                                    EquipWeapon(_G.SelectWeapon)
                                                    AutoHaki()                                            
                                                    PosMon = v.HumanoidRootPart.CFrame
                                                    TP1(v.HumanoidRootPart.CFrame * CFrame.new(PosX,PosY,PosZ))
                                                    v.HumanoidRootPart.CanCollide = false
                                                    v.Humanoid.WalkSpeed = 2
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
                                TP1(CFrameMon)
                                StartMagnet = false
                                if game:GetService("ReplicatedStorage"):FindFirstChild(Mon) then
                                    TP1(game:GetService("ReplicatedStorage"):FindFirstChild(Mon).HumanoidRootPart.CFrame * CFrame.new(0,20,0))
                                end
                            end
                        end
                    end
                end)
            end
        end
    end)

    Farming:AddToggle("Auto Farm Nearest ",_G.AutoFarmNearest,function(value)
   _G.AutoFarmNearest = value
   StopTween(_G.AutoFarmNearest)
 end)
   
spawn(function()
	while wait() do
		if _G.AutoFarmNearest then
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
			                HyperCahaya(v.HumanoidRootPart.CFrame * CFrame.new(PosX,PosY,PosZ))
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

Farming:AddSeperator("Farm Level Mastery")

    
    Farming:AddToggle("Blox Fruit Mastery",_G.AutoFarmFruitMastery,function(value)
        _G.AutoFarmFruitMastery = value
        StopTween(_G.AutoFarmFruitMastery)
        if _G.AutoFarmFruitMastery == false then
            UseSkill = false 
        end
    end)
    
    spawn(function()
        while wait() do
            if _G.AutoFarmFruitMastery then
                pcall(function()
                    local QuestTitle = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text
                    if not string.find(QuestTitle, NameMon) then
                        Magnet = false
                        UseSkill = false
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                    end
                    if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                        StartMasteryFruitMagnet = false
                        UseSkill = false
                        CheckQuest()
                        repeat wait()
                            TP1(CFrameQuest)
                        until (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 or not _G.AutoFarmFruitMastery
                        if (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 5 then
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
                                            HealthMs = v.Humanoid.MaxHealth * _G.Kill_At/100
                                            repeat task.wait()
                                                if v.Humanoid.Health <= HealthMs then
                                                    AutoHaki()
                                                    EquipWeapon(game:GetService("Players").LocalPlayer.Data.DevilFruit.Value)
                                                    TP1(v.HumanoidRootPart.CFrame * CFrame.new(0,10,0))
                                                    v.HumanoidRootPart.CanCollide = false
                                                    PosMonMasteryFruit = v.HumanoidRootPart.CFrame
                                                    v.Humanoid.WalkSpeed = 2
                                                    v.Head.CanCollide = false
                                                    UseSkill = true
                                                else           
                                                    UseSkill = false 
                                                    AutoHaki()
                                                    EquipWeapon(_G.SelectWeapon)
                                                    TP1(v.HumanoidRootPart.CFrame * CFrame.new(PosX,PosY,PosZ))
                                                    v.HumanoidRootPart.CanCollide = false
                                                    v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                                    PosMonMasteryFruit = v.HumanoidRootPart.CFrame
                                                    v.Humanoid.WalkSpeed = 2
                                                    v.Head.CanCollide = false
                                                end
                                                StartMasteryFruitMagnet = true
                                                game:GetService'VirtualUser':CaptureController()
                                                game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                            until not _G.AutoFarmFruitMastery or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                        else
                                            UseSkill = false
                                            StartMasteryFruitMagnet = false
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                                        end
                                    end
                                end
                            end
                        else
                            TP1(CFrameMon)
                            StartMasteryFruitMagnet = false   
                            UseSkill = false 
                            local Mob = game:GetService("ReplicatedStorage"):FindFirstChild(Mon) 
                            if Mob then
                                TP1(Mob.HumanoidRootPart.CFrame * CFrame.new(0,0,10))
                            else
                                if game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame.Y <= 1 then
                                    game:GetService("Players").LocalPlayer.Character.Humanoid.Jump = true
                                    task.wait()
                                    game:GetService("Players").LocalPlayer.Character.Humanoid.Jump = false
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
            if UseSkill then
                pcall(function()
                    CheckQuest()
                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if game:GetService("Players").LocalPlayer.Character:FindFirstChild(game:GetService("Players").LocalPlayer.Data.DevilFruit.Value) then
                            MasBF = game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Data.DevilFruit.Value].Level.Value
                        elseif game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(game:GetService("Players").LocalPlayer.Data.DevilFruit.Value) then
                            MasBF = game:GetService("Players").LocalPlayer.Backpack[game:GetService("Players").LocalPlayer.Data.DevilFruit.Value].Level.Value
                        end
                        if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon-Dragon") then                      
                            if _G.SkillZ then
                                local args = {
                                    [1] = PosMonMasteryFruit.Position
                                }
                                game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(args))                        
                                game:GetService("VirtualInputManager"):SendKeyEvent(true,"Z",false,game)
                                game:GetService("VirtualInputManager"):SendKeyEvent(false,"Z",false,game)
                            end
                            if _G.SkillX then          
                                local args = {
                                    [1] = PosMonMasteryFruit.Position
                                }
                                game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(args))               
                                game:GetService("VirtualInputManager"):SendKeyEvent(true,"X",false,game)
                                game:GetService("VirtualInputManager"):SendKeyEvent(false,"X",false,game)
                            end
                            if _G.SkillC then
                                local args = {
                                    [1] = PosMonMasteryFruit.Position
                                }
                                game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(args))                          
                                game:GetService("VirtualInputManager"):SendKeyEvent(true,"C",false,game)
                                wait(2)
                                game:GetService("VirtualInputManager"):SendKeyEvent(false,"C",false,game)
                            end
                        elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Venom-Venom") then   
                            if _G.SkillZ then
                                local args = {
                                    [1] = PosMonMasteryFruit.Position
                                }
                                game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(args))                        
                                game:GetService("VirtualInputManager"):SendKeyEvent(true,"Z",false,game)
                                game:GetService("VirtualInputManager"):SendKeyEvent(false,"Z",false,game)
                            end
                            if _G.SkillX then        
                                local args = {
                                    [1] = PosMonMasteryFruit.Position
                                }
                                game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(args))               
                                game:GetService("VirtualInputManager"):SendKeyEvent(true,"X",false,game)
                                game:GetService("VirtualInputManager"):SendKeyEvent(false,"X",false,game)
                            end
                            if _G.SkillC then 
                                local args = {
                                    [1] = PosMonMasteryFruit.Position
                                }
                                game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(args))                          
                                game:GetService("VirtualInputManager"):SendKeyEvent(true,"C",false,game)
                                wait(2)
                                game:GetService("VirtualInputManager"):SendKeyEvent(false,"C",false,game)
                            end
                        elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Human-Human: Buddha") then
                            if _G.SkillZ and game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Size == Vector3.new(2, 2.0199999809265, 1) then
                                local args = {
                                    [1] = PosMonMasteryFruit.Position
                                }
                                game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(args))                         
                                game:GetService("VirtualInputManager"):SendKeyEvent(true,"Z",false,game)
                                game:GetService("VirtualInputManager"):SendKeyEvent(false,"Z",false,game)
                            end
                            if _G.SkillX then
                                local args = {
                                    [1] = PosMonMasteryFruit.Position
                                }
                                game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(args))                           
                                game:GetService("VirtualInputManager"):SendKeyEvent(true,"X",false,game)
                                game:GetService("VirtualInputManager"):SendKeyEvent(false,"X",false,game)
                            end
                            if _G.SkillC then
                                local args = {
                                    [1] = PosMonMasteryFruit.Position
                                }
                                game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(args))                           
                                game:GetService("VirtualInputManager"):SendKeyEvent(true,"C",false,game)
                                game:GetService("VirtualInputManager"):SendKeyEvent(false,"C",false,game)
                            end
                            if _G.SkillV then
                                local args = {
                                    [1] = PosMonMasteryFruit.Position
                                }
                                game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(args))
                                game:GetService("VirtualInputManager"):SendKeyEvent(true,"V",false,game)
                                game:GetService("VirtualInputManager"):SendKeyEvent(false,"V",false,game)
                            end
                        elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild(game:GetService("Players").LocalPlayer.Data.DevilFruit.Value) then
                            if _G.SkillZ then 
                                local args = {
                                    [1] = PosMonMasteryFruit.Position
                                }
                                game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(args))                         
                                game:GetService("VirtualInputManager"):SendKeyEvent(true,"Z",false,game)
                                game:GetService("VirtualInputManager"):SendKeyEvent(false,"Z",false,game)
                            end
                            if _G.SkillX then
                                local args = {
                                    [1] = PosMonMasteryFruit.Position
                                }
                                game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(args))                           
                                game:GetService("VirtualInputManager"):SendKeyEvent(true,"X",false,game)
                                game:GetService("VirtualInputManager"):SendKeyEvent(false,"X",false,game)
                            end
                            if _G.SkillC then
                                local args = {
                                    [1] = PosMonMasteryFruit.Position
                                }
                                game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(args))                           
                                game:GetService("VirtualInputManager"):SendKeyEvent(true,"C",false,game)
                                game:GetService("VirtualInputManager"):SendKeyEvent(false,"C",false,game)
                            end
                            if _G.SkillV then
                                local args = {
                                    [1] = PosMonMasteryFruit.Position
                                }
                                game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(args))
                                game:GetService("VirtualInputManager"):SendKeyEvent(true,"V",false,game)
                                game:GetService("VirtualInputManager"):SendKeyEvent(false,"V",false,game)
                            end
                        end
                    end
                end)
            end
        end
    end)
    
    spawn(function()
        game:GetService("RunService").RenderStepped:Connect(function()
            pcall(function()
                if UseSkill then
                    for i,v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Notifications:GetChildren()) do
                        if v.Name == "NotificationTemplate" then
                            if string.find(v.Text,"Skill locked!") then
                                v:Destroy()
                            end
                        end
                    end
                end
            end)
        end)
    end)
    
    spawn(function()
        pcall(function()
            game:GetService("RunService").RenderStepped:Connect(function()
                if UseSkill then
                    local args = {
                        [1] = PosMonMasteryFruit.Position
                    }
                    game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Data.DevilFruit.Value].RemoteEvent:FireServer(unpack(args))
                end
            end)
        end)
    end)
    
    Farming:AddToggle("Auto Farm Gun Mastery",_G.AutoFarmGunMastery,function(value)
        _G.AutoFarmGunMastery = value
        StopTween(_G.AutoFarmGunMastery)
        if _G.AutoFarmGunMastery == false then
            UseSkill = false 
        end
    end)
    
    spawn(function()
        while wait() do
            if _G.AutoFarmGunMastery then
                pcall(function()
                    local QuestTitle = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text
                    if not string.find(QuestTitle, NameMon) then
                        Magnet = false
                        UseSkill = false
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                    end
                    if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                        StartMasteryGunMagnet = false
                        UseSkill = false
                        CheckQuest()
                        repeat wait()
                            TP1(CFrameQuest)
                        until (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 or not _G.AutoFarmGunMastery
                        if (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 5 then
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
                                            HealthMs = v.Humanoid.MaxHealth * _G.Kill_At/100
                                            repeat task.wait()
                                                if v.Humanoid.Health <= HealthMs then
                                                    AutoHaki()
                                                    EquipWeapon(SelectWeaponGun)
                                                    TP1(v.HumanoidRootPart.CFrame * CFrame.new(0,10,0))
                                                    v.HumanoidRootPart.CanCollide = false
                                                    PosMonMasteryGun = v.HumanoidRootPart.CFrame
                                                    v.Humanoid.WalkSpeed = 2
                                                    v.Head.CanCollide = false
                                                    UseSkill = true
                                                else           
                                                    UseSkill = false 
                                                    AutoHaki()
                                                    EquipWeapon(_G.SelectWeapon)
                                                    TP1(v.HumanoidRootPart.CFrame * CFrame.new(PosX,PosY,PosZ))
                                                    v.HumanoidRootPart.CanCollide = false
                                                    v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                                    PosMonMasteryGun= v.HumanoidRootPart.CFrame
                                                    v.Humanoid.WalkSpeed = 2
                                                    v.Head.CanCollide = false
                                                end
                                                StartMasteryGunMagnet = true
                                                game:GetService'VirtualUser':CaptureController()
                                                game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                            until not _G.AutoFarmGunMastery or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                        else
                                            UseSkill = false
                                            StartMasteryGunMagnet = false
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                                        end
                                    end
                                end
                            end
                        else
                            TP1(CFrameMon)
                            StartMasteryGunMagnet = false   
                            UseSkill = false 
                            local Mob = game:GetService("ReplicatedStorage"):FindFirstChild(Mon) 
                            if Mob then
                                TP1(Mob.HumanoidRootPart.CFrame * CFrame.new(0,0,10))
                            else
                                if game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame.Y <= 1 then
                                    game:GetService("Players").LocalPlayer.Character.Humanoid.Jump = true
                                    task.wait()
                                    game:GetService("Players").LocalPlayer.Character.Humanoid.Jump = false
                                end
                            end
                        end
                    end
                end)
            end
        end
    end) --logika ini untuk hit npc
    
    spawn(function()
        while wait() do
            if UseSkill then
                pcall(function()
                    CheckQuest()
                    -- Mengecek apakah ada gun yang sedang dilengkapi oleh karakter pemain
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool") then
                        local equippedGun = game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool")
                        if equippedGun:IsA("Tool") and (equippedGun.ToolTip == "Gun" or equippedGun.Name == "Slingshot" or 
                            equippedGun.Name == "Flintlock" or equippedGun.Name == "Musket" or 
                            equippedGun.Name == "Acidum Rifle" or equippedGun.Name == "Bizarre Rifle" or 
                            equippedGun.Name == "Cannon" or equippedGun.Name == "Refined Flintlock" or 
                            equippedGun.Name == "Refined Musket" or equippedGun.Name == "Refined Slingshot" or 
                            equippedGun.Name == "Bazooka" or equippedGun.Name == "Kabucha" or 
                            equippedGun.Name == "Serpent Bow" or equippedGun.Name == "Soul Guitar") then
    
                            -- Pastikan ada target yang valid
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and 
                                   v.Humanoid.Health > 0 and v.Name == Mon then
                                    
                                    -- Gunakan variabel PosMonMasteryGun yang sudah ada di kode sebelumnya
                                    if _G.GunSkillZ then
                                        local args = {
                                            [1] = PosMonMasteryGun.Position
                                        }
                                        equippedGun.RemoteEvent:FireServer(unpack(args))
                                        game:GetService("VirtualInputManager"):SendKeyEvent(true,"Z",false,game)
                                        game:GetService("VirtualInputManager"):SendKeyEvent(false,"Z",false,game)
                                    end
                                    wait(0.1)
                                    
                                    if _G.GunSkillX then          
                                        local args = {
                                            [1] = PosMonMasteryGun.Position
                                        }
                                        equippedGun.RemoteEvent:FireServer(unpack(args))
                                        game:GetService("VirtualInputManager"):SendKeyEvent(true,"X",false,game)
                                        game:GetService("VirtualInputManager"):SendKeyEvent(false,"X",false,game)
                                    end
                                    wait(0.1)
                                    break -- Keluar dari loop setelah menggunakan skill pada satu target
                                end
                            end
                        end
                    end
                end)
            end
        end
    end)

    
    spawn(function()
        game:GetService("RunService").RenderStepped:Connect(function()
            pcall(function()
                if UseSkill then
                    for i,v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Notifications:GetChildren()) do
                        if v.Name == "NotificationTemplate" then
                            if string.find(v.Text,"Skill locked!") then
                                v:Destroy()
                            end
                        end
                    end
                end
            end)
        end)
    end)  

    Farming:AddSeperator("Chest Farm")

    Farming:AddToggle("Auto Stop Legendary Items",_G.StopItemsChest,function(vu)
    _G.StopItemsChest = vu
end)
    
    spawn(function()
        while wait() do
            pcall(function()
                if _G.StopItemsChest or not AutoFarmChest then
                    if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("God's Chalice") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Fist of Darkness") then
                        _G.ChestBypass = false
                        AutoFarmChest = false
                        topos(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
                    end
                end
            end)
        end
    end)
    
    Farming:AddToggle("Auto Farm Chest | Safe ",false,function(value)
 AutoFarmChest = value
 _G.StopItemsChest = value
 StopTween(AutoFarmChest or _G.StopItemsChest)
 end)
 
 _G.MagnitudeAdd = 0
spawn(function()
	while wait() do 
		if AutoFarmChest then
			for i,v in pairs(game:GetService("Workspace"):GetChildren()) do 
				if v.Name:find("Chest") then
					if game:GetService("Workspace"):FindFirstChild(v.Name) then
						if (v.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 5000+_G.MagnitudeAdd then
							repeat wait()
								if game:GetService("Workspace"):FindFirstChild(v.Name) then
									HyperCahaya(v.CFrame)
								end
							until AutoFarmChest == false or not v.Parent
							HyperCahaya(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
							_G.MagnitudeAdd = _G.MagnitudeAdd+1500
							break
						end
					end
				end
			end
		end
	end
end)

Farming:AddToggle("Farm Chest Bypass | 75% Kick",false,function(vu)
	_G.ChestBypass = vu
    _G.StopItemsChest = vu
end)

spawn(function()
while wait() do
if _G.ChestBypass then
pcall(function()
for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
      if string.find(v.Name, "Chest") then
          print(v.Name)
          game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
          wait(.15)
      end
  end
  game.Players.LocalPlayer.Character.Head:Destroy()
  for _,v in pairs(game:GetService("Workspace"):GetDescendants()) do
   if string.find(v.Name, "Chest") and v:IsA("TouchTransmitter") then
   firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Parent, 0) --0 is touch
   wait()
   firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Parent, 1) -- 1 is untouch
   end
   end
  end)
    end
  end
end)

spawn(function()
while task.wait() do
if _G.ChestBypass then
        local ohString1 = "SetTeam"
        local ohString2 = "Pirates"
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(ohString1, ohString2)
     end
end
end)

Farming:AddSeperator("Dough Boss")
    
        local MobKilled = Farming:AddLabel("Killed")
    
    spawn(function()
        while wait() do
            pcall(function()
                if string.len(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")) == 88 then
                    MobKilled:Set("Defeat Npc : "..string.sub(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"),39,41))
                elseif string.len(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")) == 87 then
                    MobKilled:Set("Defeat Npc : "..string.sub(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"),39,40))
                elseif string.len(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")) == 86 then
                    MobKilled:Set("Defeat Npc : "..string.sub(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"),39,39))
                else
                    MobKilled:Set("Boss Is Spawning")
                end
            end)
        end
    end)

    Farming:AddButton("Bypass Cake Island Teleport",function()
        if BypassTP then
            local cakepos = CFrame.new(-2077, 252, -12373)
            BTP(cakepos)
            wait(.1)
            game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2077, 252, -12373)
            wait(.1)
            game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2077, 252, -12373)
            wait(.1)
            game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2077, 252, -12373)
        end
    end)
    
    Farming:AddToggle("Farm Cake Prince",_G.AutoDoughtBoss,function(value)
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
                    if game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Cake Prince" then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat task.wait()
                                        AutoHaki()
                                        EquipWeapon(_G.SelectWeapon)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid.WalkSpeed = 2
                                        v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                        HyperCahaya(v.HumanoidRootPart.CFrame * CFrame.new(PosX,PosY,PosZ))
                                        game:GetService("VirtualUser"):CaptureController()
                                        game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
                                        sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
                                    until not _G.AutoDoughtBoss or not v.Parent or v.Humanoid.Health <= 0
                                end
                            end
                        end
                    else
                        if game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince") then
                            HyperCahaya(game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                        else
                            if KillMob == 0 then
                            end                    
                            if game:GetService("Workspace").Map.CakeLoaf.BigMirror.Other.Transparency == 1 then
                                if game:GetService("Workspace").Enemies:FindFirstChild("Cookie Crafter") or game:GetService("Workspace").Enemies:FindFirstChild("Cake Guard") or game:GetService("Workspace").Enemies:FindFirstChild("Baking Staff") or game:GetService("Workspace").Enemies:FindFirstChild("Head Baker") then
                                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                        if v.Name == "Cookie Crafter" or v.Name == "Cake Guard" or v.Name == "Baking Staff" or v.Name == "Head Baker" then
                                            if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                                repeat task.wait()
                                                    AutoHaki()
                                                    EquipWeapon(_G.SelectWeapon)
                                                    v.HumanoidRootPart.CanCollide = false
                                                    v.Humanoid.WalkSpeed = 2
                                                    v.Head.CanCollide = false 
                                                    v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                                    MagnetDought = true
                                                    PosMonDoughtOpenDoor = v.HumanoidRootPart.CFrame
                                                    HyperCahaya(v.HumanoidRootPart.CFrame * CFrame.new(PosX,PosY,PosZ))
                                                    game:GetService("VirtualUser"):CaptureController()
                                                    game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
                                                until not _G.AutoDoughtBoss or not v.Parent or v.Humanoid.Health <= 0 or game:GetService("Workspace").Map.CakeLoaf.BigMirror.Other.Transparency == 0 or game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince") or game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince") or KillMob == 0
                                            end
                                        end
                                    end
                                else
                                    MagnetDought = false
                                    HyperCahaya(CFrame.new(-2091.911865234375, 70.00884246826172, -12142.8359375))
                                    if game:GetService("ReplicatedStorage"):FindFirstChild("Cookie Crafter") then
                                        HyperCahaya(game:GetService("ReplicatedStorage"):FindFirstChild("Cookie Crafter").HumanoidRootPart.CFrame * CFrame.new(2,20,2)) 
                                    else
                                        if game:GetService("ReplicatedStorage"):FindFirstChild("Cake Guard") then
                                            HyperCahaya(game:GetService("ReplicatedStorage"):FindFirstChild("Cake Guard").HumanoidRootPart.CFrame * CFrame.new(2,20,2)) 
                                        else
                                            if game:GetService("ReplicatedStorage"):FindFirstChild("Baking Staff") then
                                                HyperCahaya(game:GetService("ReplicatedStorage"):FindFirstChild("Baking Staff").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                                            else
                                                if game:GetService("ReplicatedStorage"):FindFirstChild("Head Baker") then
                                                    HyperCahaya(game:GetService("ReplicatedStorage"):FindFirstChild("Head Baker").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                                                end
                                            end
                                        end
                                    end                       
                                end
                            else
                                if game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince") then
                                    HyperCahaya(game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                                else
                                    if game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince") then
                                        HyperCahaya(game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                                    end
                                end
                            end
                        end
                    end
                end)
            end
        end
    end)    
    
    Farming:AddToggle("Spawn Cake Prince",true,function(value)
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner",value)
    end)
    
    Farming:AddToggle("Farm Dough King", _G.Autodoughking,function(value)
         _G.Autodoughking = value
        StopTween( _G.Autodoughking)
    end)
    
    Farming:AddToggle("Farm Dough King Hop", _G.AutodoughkingHop,function(value)
         _G.AutodoughkingHop = value
    end)
    
    spawn(function()
        while wait() do
            if  _G.Autodoughking and World3 then
                pcall(function()
                    if game:GetService("Workspace").Enemies:FindFirstChild("Dough King") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Dough King" then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat task.wait()
                                        AutoHaki()
                                        EquipWeapon(_G.SelectWeapon)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid.WalkSpeed = 2
                                        v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                        HyperCahaya(v.HumanoidRootPart.CFrame * CFrame.new(PosX,PosY,PosZ))
                                        game:GetService("VirtualUser"):CaptureController()
                                        game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
                                        sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
                                    until not  _G.Autodoughking or not v.Parent or v.Humanoid.Health <= 0
                                end
                            end
                        end
                    else
                    HyperCahaya(CFrame.new(-2662.818603515625, 1062.3480224609375, -11853.6953125))
                        if game:GetService("ReplicatedStorage"):FindFirstChild("Dough King") then
                            HyperCahaya(game:GetService("ReplicatedStorage"):FindFirstChild("Dough King").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
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
   
    
    Farming:AddSeperator("Boss")
    
    

local Boss = {}

for i, v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
    if string.find(v.Name, "Boss") then
        if v.Name == "Ice Admiral" then
            else
            table.insert(Boss, v.Name)
        end
    end
end

local bossCheck = {}
local bossNames = { "The Gorilla King", "Bobby", "The Saw", "Yeti", "Mob Leader", "Vice Admiral", "Warden", "Chief Warden", "Swan", "Saber Expert", "Magma Admiral", "Fishman Lord", "Wysper", "Thunder God", "Cyborg", "Greybeard", "Diamond", "Jeremy", "Fajita", "Don Swan", "Smoke Admiral", "Awakened Ice Admiral", "Tide Keeper", "Order", "Darkbeard", "Cursed Captain", "Stone", "Island Empress", "Kilo Admiral", "Captain Elephant", "Beautiful Pirate", "Longma", "Cake Queen", "Soul Reaper", "Rip_Indra", "Cake Prince", "Dough King" }


if World1 or World2 or World3 then
    for _, bossName in pairs(bossNames) do
        if game:GetService("ReplicatedStorage"):FindFirstChild(bossName) then
            table.insert(bossCheck, bossName)
        end
    end
end

-- Menggabungkan kedua daftar nama bos
for _, name in pairs(Boss) do
    table.insert(bossCheck, name)
end


local BossName = Farming:AddDropdown("Select Boss", bossCheck, function(value)
    _G.SelectBoss = value
end)

Farming:AddButton("Refresh Boss", function()
BossName:Clear()
wait(0.1)
for i, v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
    if (v.Name == "rip_indra" or v.Name == "Ice Admiral")
                        or (v.Name == "Saber Expert" or v.Name == "The Saw" or v.Name == "Greybeard" or v.Name == "Mob Leader" or v.Name == "The Gorilla King" or v.Name == "Bobby" or v.Name == "Yeti" or v.Name == "Vice Admiral" or v.Name == "Warden" or v.Name == "Chief Warden" or v.Name == "Swan" or v.Name == "Magma Admiral" or v.Name == "Fishman Lord" or v.Name == "Wysper" or v.Name == "Thunder God" or v.Name == "Cyborg")
                        or (v.Name == "Don Swan" or v.Name == "Diamond" or v.Name == "Jeremy" or v.Name == "Fajita" or v.Name == "Smoke Admiral" or v.Name == "Awakened Ice Admiral" or v.Name == "Tide Keeper" or v.Name == "Order" or v.Name == "Darkbeard")
                        or (v.Name == "Stone" or v.Name == "Island Empress" or v.Name == "Kilo Admiral" or v.Name == "Captain Elephant" or v.Name == "Beautiful Pirate" or v.Name == "Cake Queen" or v.Name == "rip_indra True Form" or v.Name == "Longma" or v.Name == "Soul Reaper" or v.Name == "Cake Prince" or v.Name == "Dough King") then
        BossName:Add(v.Name)
    end
end
end)






    
Farming:AddToggle("Farm Boss",_G.AutoFarmBoss,function(value)
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
        _G.AutoFarmBoss = value
        StopTween(_G.AutoFarmBoss)
    end)
    
    spawn(function()
        while wait() do
            if _G.AutoFarmBoss then
                pcall(function()
                    if game:GetService("Workspace").Enemies:FindFirstChild(_G.SelectBoss) then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == _G.SelectBoss then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat task.wait()
                                        AutoHaki()
                                        EquipWeapon(_G.SelectWeapon)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid.WalkSpeed = 2
                                        v.HumanoidRootPart.Size = Vector3.new(80,80,80)                             
                                        HyperCahaya(v.HumanoidRootPart.CFrame * CFrame.new(PosX,PosY,PosZ))
                                        game:GetService("VirtualUser"):CaptureController()
                                        game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
                                        sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                                    until not _G.AutoFarmBoss or not v.Parent or v.Humanoid.Health <= 0
                                end
                            end
                        end
                    else
                        if game:GetService("ReplicatedStorage"):FindFirstChild(_G.SelectBoss) then
                            HyperCahaya(game:GetService("ReplicatedStorage"):FindFirstChild(_G.SelectBoss).HumanoidRootPart.CFrame * CFrame.new(5,10,2))
                        end
                    end
                end)
            end
        end
    end)
    
    Farming:AddToggle("Farm All Boss",_G.AutoAllBoss,function(value)
        _G.AutoAllBoss = value
        StopTween(_G.AutoAllBoss)
    end)
    
    Farming:AddToggle("Quest Boss(Beta)",false,function(value)
    _G.Auto_Quest_Boss = value
    end)
    
    Farming:AddToggle("Farm All Boss Hop",_G.AutoAllBossHop,function(value)
        _G.AutoAllBossHop = value
    end)
    
spawn(function()
    while wait() do
        if _G.AutoAllBoss then
            pcall(function()
                for i,v in pairs(game.ReplicatedStorage:GetChildren()) do
                    if (v.Name == "rip_indra" or v.Name == "Ice Admiral")
                        or (v.Name == "Saber Expert" or v.Name == "The Saw" or v.Name == "Greybeard" or v.Name == "Mob Leader" or v.Name == "The Gorilla King" or v.Name == "Bobby" or v.Name == "Yeti" or v.Name == "Vice Admiral" or v.Name == "Warden" or v.Name == "Chief Warden" or v.Name == "Swan" or v.Name == "Magma Admiral" or v.Name == "Fishman Lord" or v.Name == "Wysper" or v.Name == "Thunder God" or v.Name == "Cyborg")
                        or (v.Name == "Don Swan" or v.Name == "Diamond" or v.Name == "Jeremy" or v.Name == "Fajita" or v.Name == "Smoke Admiral" or v.Name == "Awakened Ice Admiral" or v.Name == "Tide Keeper" or v.Name == "Order" or v.Name == "Darkbeard")
                        or (v.Name == "Stone" or v.Name == "Island Empress" or v.Name == "Kilo Admiral" or v.Name == "Captain Elephant" or v.Name == "Beautiful Pirate" or v.Name == "Cake Queen" or v.Name == "rip_indra True Form" or v.Name == "Longma" or v.Name == "Soul Reaper" or v.Name == "Cake Prince" or v.Name == "Dough King") then
                        if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 17000 then
                            repeat
                                task.wait()
                                AutoHaki()
                                EquipWeapon(_G.SelectWeapon)
                                v.Humanoid.WalkSpeed = 2
                                v.HumanoidRootPart.CanCollide = false
                                v.Head.CanCollide = false
                                v.HumanoidRootPart.Size = Vector3.new(80,80,80)
                                HyperCahaya(v.HumanoidRootPart.CFrame*CFrame.new(PosX, PosY, PosZ))
                                game:GetService'VirtualUser':CaptureController()
                                game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                            until v.Humanoid.Health <= 0 or _G.AutoAllBoss == false or not v.Parent
                        end
                    else
                        if _G.AutoAllBossHop then
                            Hop()
                        end
                    end
                end
            end)
        end
    end
end)


    
Farming:AddSeperator("Setting Farm 2")
    
Farming:AddToggle("Bring Mob",true,function(Mag)
    _G.BringMonster = Mag
    end)
    spawn(function()
        while task.wait() do
            pcall(function()
                if _G.BringMonster then
                    CheckQuest()
                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if _G.AutoFarm and StartMagnet and v.Name == Mon and (Mon == "Factory Staff" or Mon == "Monkey" or Mon == "Dragon Crew Warrior" or Mon == "Dragon Crew Archer") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and (v.HumanoidRootPart.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 220 then
                            v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                            v.HumanoidRootPart.CFrame = PosMon
                            v.Humanoid:ChangeState(14)
                            v.HumanoidRootPart.CanCollide = false
                            v.Head.CanCollide = false
                            if v.Humanoid:FindFirstChild("Animator") then
                                v.Humanoid.Animator:Destroy()
                            end
                            sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                        elseif _G.AutoFarm and StartMagnet and v.Name == Mon and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and (v.HumanoidRootPart.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= _G.BringMode then
                            v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                            v.HumanoidRootPart.CFrame = PosMon
                            v.Humanoid:ChangeState(14)
                            v.HumanoidRootPart.CanCollide = false
                            v.Head.CanCollide = false
                            if v.Humanoid:FindFirstChild("Animator") then
                                v.Humanoid.Animator:Destroy()
                            end
                            sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                        end
                    end
                end
            end)
        end
    end)
    
local Bring = {"Low", "Normal", "Super Bring"}
_G.BringMode = "Normal"
Farming:AddDropdown("Bring Mob Mode", Bring,function(value)
    _G.BringMode = value
end)
spawn(function()
    while wait(.1) do
        if _G.BringMode then
            pcall(function()
                if _G.BringMode == "Low" then
                    _G.BringMode = 250
                elseif _G.BringMode == "Normal" then
                    _G.BringMode = 300
                elseif _G.BringMode == "Super Bring" then
                    _G.BringMode = 350
                end
            end)
        end
    end
end)
    
Farming:AddToggle("Buso Haki",true,function(value)
_G.AUTOHAKI = value
end)
spawn(function()
    while wait(.1) do
        if _G.AUTOHAKI then 
            if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                local args = {
                    [1] = "Buso"
                }
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
            end
        end
    end
end)

Farming:AddToggle("HyperSonic [ SUPER OP ]",false,function(value)
       _G.HyperSonic = value
    end)      
    
local CameraShaker = require(game.ReplicatedStorage.Util.CameraShaker)
CombatFrameworkR = require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework)
y = debug.getupvalues(CombatFrameworkR)[2]
spawn(function()
    game:GetService("RunService").RenderStepped:Connect(function()
        if _G.FastAttack or _G.HyperSonic then
            if typeof(y) == "table" then
                pcall(function()
                    CameraShaker:Stop()
                    y.activeController.timeToNextAttack = (math.huge^math.huge^math.huge)
                    y.activeController.timeToNextAttack = 0
                    y.activeController.hitboxMagnitude = 60
                    y.activeController.active = false
                    y.activeController.timeToNextBlock = 0
                    y.activeController.focusStart = 1655503339.0980349
                    y.activeController.increment = 1
                    y.activeController.blocking = false
                    y.activeController.attacking = false
                    y.activeController.humanoid.AutoRotate = true
                end)
            end
        end
    end)
end)
spawn(function()
    game:GetService("RunService").RenderStepped:Connect(function()
        if _G.FastAttack == true or _G.HyperSonic == true then
            game.Players.LocalPlayer.Character.Stun.Value = 0
            game.Players.LocalPlayer.Character.Busy.Value = false        
        end
    end)
end)
    
spawn(function()
    while wait(.1) do
        if _G.HyperSonic then
            pcall(function()
                repeat task.wait(_G.FastAttackDelay)
                    AttackHit()
                until not _G.FastAttack
            end)
        end
    end
    end)   
    
    Farming:AddToggle("Auto Click",false,function(value)
_G.AutoClick = value
end)

Farming:AddToggle("Remove Notifications Text",false,function(NamfonGay)
_G.Remove_trct = NamfonGay
end)

spawn(function()
    game:GetService("RunService").RenderStepped:Connect(function()
        if _G.Remove_trct == true then
            game:GetService("ReplicatedStorage").Notification:Destroy()        
        end
    end)
end)

Farming:AddToggle("Remove Hit Sound And Level Up",false,function(Remo)
_G.RemoveHit = Remo
end)

spawn(function()
    game:GetService("RunService").RenderStepped:Connect(function()
        if _G.RemoveHit == true then
            game:GetService("ReplicatedStorage").Effect.Container.LevelUp:Destroy()
            game:GetService("ReplicatedStorage").Util.Sound:Destroy()
            game:GetService("ReplicatedStorage").Util.Sound.Storage.Other:FindFirstChild("LevelUp_Proxy"):Destroy()
            game:GetService("ReplicatedStorage").Util.Sound.Storage.Other:FindFirstChild("LevelUp"):Destroy()
            game:GetService("ReplicatedStorage").Effect.Container.Respawn:Destroy()        
        end
    end)
end)


Farming:AddToggle("Remove Attack",false,function(value)
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
    
Farming:AddToggle("White Screen",_G.WhiteScreen,function(value)
    _G.WhiteScreen = value
if _G.WhiteScreen == true then
    game:GetService("RunService"):Set3dRenderingEnabled(false)
elseif _G.WhiteScreen == false then
    game:GetService("RunService"):Set3dRenderingEnabled(true)
end
end)

Farming:AddToggle("Invisible Monsters",_G.inv,function(value)
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

-----------------------------------------------------------------------------------------------------------------------------
-- Fitur Quest Item

-----------------------------------------------------------------------------------------------------------------------------
-- Fitur Race V4

-----------------------------------------------------------------------------------------------------------------------------
-- Fitur Sea Event

-----------------------------------------------------------------------------------------------------------------------------
-- Fitur Bounty

-----------------------------------------------------------------------------------------------------------------------------
-- Fitur Auto Raid

-----------------------------------------------------------------------------------------------------------------------------
-- Fitur Teleport

-----------------------------------------------------------------------------------------------------------------------------
-- Fitur Shop Dealer

-----------------------------------------------------------------------------------------------------------------------------
-- Fitur Devil Fruits

-----------------------------------------------------------------------------------------------------------------------------
-- Fitur Hop Server

-----------------------------------------------------------------------------------------------------------------------------
-- Fitur Statistic

-----------------------------------------------------------------------------------------------------------------------------
-- Fitur Setting

-----------------------------------------------------------------------------------------------------------------------------
-- Fitur MISC
