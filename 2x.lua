
-- Load Roblox LocalizationService
local LocalizationService = game:GetService(translateText("LocalizationService"))
local playerLocale = LocalizationService.RobloxLocaleId -- Get the playertranslateText('s locale ID

-- Function to translate text based on user')s language
local function translateText(text)
    -- Example translation table (expand this with more languages)
    local translations = {
        [translateText("en-us")] = {
            [translateText("Welcome")] = translateText("Welcome"),
            [translateText("Exit")] = translateText("Exit"
        )},
        [translateText("es-es")] = {
            [translateText("Welcome")] = translateText("Bienvenido"),
            [translateText("Exit")] = translateText("Salir"
        )},
        -- Add more languages here
    }

    -- Return the translated text or the original if no translation is available
    if translations[playerLocale] and translations[playerLocale][text] then
        return translations[playerLocale][text]
    else
        return text
    end
end

local Notif = {}

local CoreGUI = game:GetService(translateText("CoreGui"))
local TS = game:GetService(translateText("TweenService"))

local HIDEUI = get_hidden_gui or gethui
if syn and typeof(syn) == translateText("table" )and RenderWindow then syn.protect_gui = gethui; end
local function Hide_UI(gui)
    if HIDEUI then
        gui[translateText("Parent")] = HIDEUI()
    elseif (not is_sirhurt_closure) and (syn and syn.protect_gui) then
        syn.protect_gui(gui)
        gui[translateText("Parent")] = CoreGUI
    elseif CoreGUI:FindFirstChild(translateText('RobloxGui')) then
        gui[translateText("Parent")] = CoreGUI.RobloxGui
    else
        gui[translateText("Parent")] = CoreGUI
    end
end

local screen_gui = Instance.new(translateText("ScreenGui"))
Hide_UI(screen_gui)

local frame = Instance.new(translateText("Frame"))
frame.AnchorPoint = Vector2.new(0.5, 0.949999988079071)
frame.BackgroundColor3 = Color3.new(1, 1, 1)
frame.BackgroundTransparency = 1
frame.BorderColor3 = Color3.new(0, 0, 0)
frame.BorderSizePixel = 0
frame.Position = UDim2.new(0.5, 0, 0.954999983, 0)
frame.Size = UDim2.new(0, 100, 0, 100)
frame.Visible = true
frame.Parent = screen_gui

local uilist_layout = Instance.new(translateText("UIListLayout"))
uilist_layout.HorizontalAlignment = Enum.HorizontalAlignment.Center
uilist_layout.SortOrder = Enum.SortOrder.LayoutOrder
uilist_layout.VerticalAlignment = Enum.VerticalAlignment.Bottom
uilist_layout.Parent = frame
	
function Notif.New(text, timee)
    local frame_2 = Instance.new(translateText("Frame"))
    frame_2.BackgroundColor3 = Color3.new(1, 1, 1)
    frame_2.BorderColor3 = Color3.new(0, 0, 0)
    frame_2.BorderSizePixel = 0
    frame_2.BackgroundTransparency = 1
    frame_2.Size = UDim2.new(0, 100, 0, 0)
    frame_2.Visible = true
    frame_2.Parent = frame
	
    -- Main Notification Frame
    local frame_3 = Instance.new(translateText("Frame"))
    frame_3.AnchorPoint = Vector2.new(0.5, 1)
    frame_3.AutomaticSize = Enum.AutomaticSize.X
    frame_3.BackgroundColor3 = Color3.new(0.141176, 0.141176, 0.141176)
    frame_3.BackgroundTransparency = 0.20000000298023224
    frame_3.BorderColor3 = Color3.new(0, 0, 0)
    frame_3.Position = UDim2.new(0.5, 0, 1, 60)
    frame_3.Size = UDim2.new(0, 0, 0, 30)
    frame_3.Visible = true
    frame_3.Parent = frame_2

    local uicorner = Instance.new(translateText("UICorner"))
    uicorner.CornerRadius = UDim.new(0, 6)
    uicorner.Parent = frame_3

    local uipadding = Instance.new(translateText("UIPadding"))
    uipadding.PaddingBottom = UDim.new(0, 3)
    uipadding.PaddingLeft = UDim.new(0, 3)
    uipadding.PaddingRight = UDim.new(0, 3)
    uipadding.PaddingTop = UDim.new(0, 3)
    uipadding.Parent = frame_3

    local uistroke = Instance.new(translateText("UIStroke"))
    uistroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
    uistroke.Color = Color3.new(0.0313726, 0.0313726, 0.0313726)
    uistroke.Parent = frame_3

    local text_label = Instance.new(translateText("TextLabel"))
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

    local uipadding_2 = Instance.new(translateText("UIPadding"))
    uipadding_2.PaddingLeft = UDim.new(0, 5)
    uipadding_2.PaddingRight = UDim.new(0, 30)
    uipadding_2.Parent = text_label

    local text_button = Instance.new(translateText("TextButton"))
    text_button.Font = Enum.Font.SourceSans
    text_button.Text = translateText(""
    )text_button.TextColor3 = Color3.new(0, 0, 0)
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

    local uicorner_2 = Instance.new(translateText("UICorner"))
    uicorner_2.CornerRadius = UDim.new(0, 5)
    uicorner_2.Parent = text_button

    local image_button = Instance.new(translateText("ImageButton")) --logo button,toggle disini
    image_button.Image = translateText("rbxassetid://107679910024355"
    )image_button.ImageColor3 = Color3.new(0.784314, 0.784314, 0.784314)
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

local ScreenGui1 = Instance.new(translateText("ScreenGui"))
local ImageButton1 = Instance.new(translateText("ImageButton"))
local UICorner = Instance.new(translateText("UICorner"))
local UIGradient = Instance.new(translateText("UIGradient"))
local UIStroke = Instance.new(translateText("UIStroke"))
local ReplicatedStorage = game:GetService(translateText("ReplicatedStorage")) --tambahan sound klik
local SoundService = game:GetService(translateText("SoundService"))
local TweenService = game:GetService(translateText("TweenService"))
local soundId = translateText("rbxassetid://130785805" 
)local sound = Instance.new(translateText("Sound"))
    sound.Name = translateText("ButtonClickSound"
    )sound.SoundId = soundId
    sound.Parent = ReplicatedStorage
ScreenGui1.Name = translateText("ImageButton"
)ScreenGui1.Parent = game.CoreGui
ScreenGui1.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

ImageButton1.Parent = ScreenGui1
ImageButton1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageButton1.BorderSizePixel = 0
ImageButton1.Position = UDim2.new(0.011955559, 0, 0.1952890813, 0) --0.120833337, 0, 0.0952890813, 0
ImageButton1.Size = UDim2.new(0, 50, 0, 50)
ImageButton1.Draggable = true
ImageButton1.Image = translateText("rbxassetid://107679910024355" )--logo button close open
ImageButton1.MouseButton1Down:connect(function()
game:GetService(translateText("VirtualInputManager")):SendKeyEvent(true,305,false,game)
game:GetService(translateText("VirtualInputManager")):SendKeyEvent(false,305,false,game)
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

if game:GetService(translateText("CoreGui")):FindFirstChild(translateText("BrutalityHub")) then
    game:GetService(translateText("CoreGui")):FindFirstChild(translateText("BrutalityHub")):Destroy()
end

repeat wait(1) until game:IsLoaded()
local LocalPlayer = game:GetService(translateText("Players")).LocalPlayer
local HttpService = game:GetService(translateText("HttpService"))
local pfp
local user
local tag
local userinfo = {}

pcall(function()
    userinfo = HttpService:JSONDecode(readfile(translateText("")));
end)
 
pfp = userinfo[translateText("pfp")] or translateText("https://www.roblox.com/headshot-thumbnail/image?userId=").. game.Players.LocalPlayer.UserId ..translateText("&width=420&height=420&format=png"
)user =  userinfo[translateText("user")] or game.Players.LocalPlayer.Name
tag = userinfo[translateText("tag")] or tostring(math.random(1,10))

local function SaveInfo()
    userinfo[translateText("pfp")] = pfp
    userinfo[translateText("user")] = user
    userinfo[translateText("tag")] = tag
    writefile(translateText(""), HttpService:JSONEncode(userinfo));
end


local UserInputService = game:GetService(translateText("UserInputService"))
local TweenService = game:GetService(translateText("TweenService"))

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
local pfp = translateText("https://www.roblox.com/headshot-thumbnail/image?userId=").. game.Players.LocalPlayer.UserId ..translateText("&width=420&height=420&format=png"

)function Update:Window(text,logo,keybind)
    local osfunc = {}
    local uihide = false
    local abc = false
    local currentpage = translateText(""
    )local keybind = keybind or Enum.KeyCode.RightControl
    local yoo = string.gsub(tostring(keybind),translateText("Enum.KeyCode."),translateText(""))

    local BRUTALITYHUB = Instance.new(translateText("ScreenGui"))
    BRUTALITYHUB.Name = translateText("BRUTALITYHUB"
    )BRUTALITYHUB.Parent = game.CoreGui
    BRUTALITYHUB.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

    local Main = Instance.new(translateText("Frame"))
    Main.Name = translateText("Main"
    )Main.Parent = BRUTALITYHUB
    Main.ClipsDescendants = true
    Main.AnchorPoint = Vector2.new(0.5,0.5)
    Main.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    Main.Position = UDim2.new(0.5, 0, 0.5, 0)
    Main.Size = UDim2.new(0, 0, 0, 0)

    Main:TweenSize(UDim2.new(0, 540, 0, 340),translateText("Out"),translateText("Quad"),0.4,true)

    local BtnStroke = Instance.new(translateText("UIStroke"))

    BtnStroke.Name = translateText("BtnStroke"
    )BtnStroke.Parent = Main
    BtnStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
    BtnStroke.Color = Color3.fromRGB(255, 0, 0) --warna samping tab
    BtnStroke.LineJoinMode = Enum.LineJoinMode.Round
    BtnStroke.Thickness = 1
    BtnStroke.Transparency = 0
    BtnStroke.Enabled = true
    BtnStroke.Archivable = true

    local MCNR = Instance.new(translateText("UICorner"))
    MCNR.Name = translateText("MCNR"
    )MCNR.Parent = Main

    local Top = Instance.new(translateText("Frame"))
    Top.Name = translateText("Top"
    )Top.Parent = Main
    Top.BackgroundColor3 = Color3.fromRGB(0, 0, 0) --warna tab diatas
    Top.Size = UDim2.new(0, 556, 0, 30)
    Top.BackgroundTransparency = 1.000
    local TCNR = Instance.new(translateText("UICorner"))
    TCNR.Name = translateText("TCNR"
    )TCNR.Parent = Top
    TCNR.CornerRadius = UDim.new(0,5) 

    local ServerTime = Instance.new(translateText("TextLabel"))
    ServerTime.Name = translateText("ServerTime"
    )ServerTime.Parent = Top
    ServerTime.BackgroundColor3 = Color3.fromRGB(255,255,255)
    ServerTime.BackgroundTransparency = 1.000
    ServerTime.Position = UDim2.new(0.68, 0,0.074, 0)
    ServerTime.Size = UDim2.new(0, 225, 0, 25)
    ServerTime.Font = Enum.Font.GothamSemibold
    ServerTime.Text = translateText(""
    )ServerTime.TextSize = 11.000
    ServerTime.TextColor3 = Color3.fromRGB(255,255,255)
    ServerTime.TextXAlignment = Enum.TextXAlignment.Left

    function osfunc:Set(textadd)
        ServerTime.Text = textadd
    end

    local Ping = Instance.new(translateText("TextLabel"))
    Ping.Name = translateText("Ping"
    )Ping.Parent = Top
    Ping.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    Ping.BackgroundTransparency = 1.000
    Ping.Position = UDim2.new(0.28, 0,0.074, 0)
    Ping.Size = UDim2.new(0, 225, 0, 25)
    Ping.Font = Enum.Font.GothamSemibold
    Ping.Text = translateText("BRUTALITY HUB V4 | by Medusa Script"
    )Ping.TextColor3 = Color3.fromRGB(255, 255, 255)
    Ping.TextSize = 14.000
    Ping.TextXAlignment = Enum.TextXAlignment.Left



    local User = Instance.new(translateText("Frame"))
    User.Name = translateText("User"
    )User.Parent = Top
    User.BackgroundColor3 = Color3.fromRGB(9, 255, 0)
    User.BackgroundTransparency = 1.000
    User.Position = UDim2.new(0, 0,0, 25)
    User.Size = UDim2.new(0, 125, 0, 40)
    
    local UserText = Instance.new(translateText("TextLabel"))
    UserText.Name = translateText("UserText"
    )UserText.Parent = User
    UserText.BackgroundColor3 = Color3.fromRGB(9, 255, 0)
    UserText.BackgroundTransparency = 1.000
    UserText.Position = UDim2.new(0.3,7 ,0, -18)
    UserText.TextColor3 = Color3.fromRGB(9, 255, 0)
    UserText.Size = UDim2.new(0, 80, 0, 25)
    UserText.Font = Enum.Font.GothamSemibold
    UserText.Text = translateText(""
    )UserText.TextScaled = true
    UserText.TextSize = 17.000
    UserText.TextWrapped = true
    UserText.TextXAlignment = Enum.TextXAlignment.Left
    
    local UITextSizeConstraint = Instance.new(translateText("UITextSizeConstraint"))
    UITextSizeConstraint.Parent = UserText
    UITextSizeConstraint.MaxTextSize = 17
    
    local UserImage = Instance.new(translateText("ImageLabel"))
    UserImage.Name = translateText("UserImage"
    )UserImage.Parent = User
    UserImage.BackgroundTransparency = 0
  --  UserImage.BackgroundColor3 = Color3.fromRGB(225, 225, 225)
    local Logo = Instance.new(translateText("ImageLabel"))
	Logo.Name = translateText("Logo"
	)Logo.Parent = Main
	Logo.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Logo.BackgroundTransparency = 1.000
	Logo.Position = UDim2.new(0, 5, 0, -1)
	Logo.Size = UDim2.new(0, 135, 0, 135)
	Logo.Image = translateText("rbxassetid://107679910024355" )--logo didalam tab
    local Tab = Instance.new(translateText("Frame"))
    Tab.Name = translateText("Tab"
    )Tab.Parent = Main
    Tab.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    Tab.Position = UDim2.new(0, 5, 0, 135)
    Tab.Size = UDim2.new(0, 0, 0, 0)

    local TabCorner = Instance.new(translateText("UIListLayout"))
    TabCorner.Name = translateText("TabCorner"
    )TabCorner.Parent = Tab
    TabCorner.SortOrder = Enum.SortOrder.LayoutOrder
    TabCorner.Padding = UDim.new(0,15)
    local BtnStroke = Instance.new(translateText("UIStroke"))
    local ScrollTab = Instance.new(translateText("ScrollingFrame"))
    local Crner = Instance.new(translateText("UICorner"))
    ScrollTab.Name = translateText("ScrollTab"
    )ScrollTab.Parent = Tab
    ScrollTab.Active = true
    ScrollTab.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
    ScrollTab.BackgroundTransparency = 1.000
    ScrollTab.Size = UDim2.new(0, 133, 0, 203)
    ScrollTab.CanvasSize = UDim2.new(0, 0, 0, 0)
    ScrollTab.ScrollBarThickness = 0

    local PLL = Instance.new(translateText("UIListLayout"))
    PLL.Name = translateText("PLL"
    )PLL.Parent = ScrollTab
    PLL.SortOrder = Enum.SortOrder.LayoutOrder
    PLL.Padding = UDim.new(0, 15)

    local PPD = Instance.new(translateText("UIPadding"))
    PPD.Name = translateText("PPD"
    )PPD.Parent = ScrollTab
    PPD.PaddingLeft = UDim.new(0, 9)
    PPD.PaddingTop = UDim.new(0, 2)
    local BtnStroke = Instance.new(translateText("UIStroke"))
    local Page = Instance.new(translateText("Frame"))
    Page.Name = translateText("Page"
    )Page.Parent = Main
    Page.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    Page.Position = UDim2.new(0.255426834, 0, 0.086000003, 0)
    Page.Size = UDim2.new(0, 410, 0, 308)

    local PCNR = Instance.new(translateText("UICorner"))
    PCNR.Parent = Page
    PCNR.CornerRadius = UDim.new(0,3)

    local MainPage = Instance.new(translateText("Frame"))
    MainPage.Name = translateText("MainPage"
    )MainPage.Parent = Page
    MainPage.ClipsDescendants = true
    MainPage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    MainPage.BackgroundTransparency = 1.000
    MainPage.Size = UDim2.new(0, 410, 0, 308)

    local PageList = Instance.new(translateText("Folder"))
    PageList.Name = translateText("PageList"
    )PageList.Parent = MainPage

    local UIPageLayout = Instance.new(translateText("UIPageLayout"))

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
                Main:TweenSize(UDim2.new(0, 0, 0, 0),translateText("In"),translateText("Quad"),0.4,true)
            else
                uihide = false
                Main:TweenSize(UDim2.new(0, 540, 0, 340),translateText("Out"),translateText("Quad"),0.5,true)
            end
        end
    end)

    local uitab = {}

    function uitab:AddTab(text,img)
        local BtnStroke = Instance.new(translateText("UIStroke"))
        local bc = Instance.new(translateText("UICorner"))
        local TabButton = Instance.new(translateText("TextButton"))
        local title = Instance.new(translateText("TextLabel"))
        local TUICorner = Instance.new(translateText("UICorner"))
        local Title = Instance.new(translateText("TextLabel"))
        TabButton.Parent = ScrollTab
        TabButton.Name = text..translateText("Server"
        )TabButton.Text = translateText(""
        )TabButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
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

        local IDK = Instance.new(translateText("ImageLabel"))
        IDK.Name = translateText("LogoIDK"
        )IDK.Parent = TabButton
        IDK.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        IDK.BackgroundTransparency = 1.000
        IDK.Position = UDim2.new(0, 3, 0, 3)
        IDK.Size = UDim2.new(0, 20, 0, 20)
        IDK.Image = translateText("rbxassetid://" ).. tostring(img)
        TUICorner.CornerRadius = UDim.new(0, 3)
        TUICorner.Parent = TabButton

        BtnStroke.Name = translateText("BtnStroke"
        )BtnStroke.Parent = TabButton
        BtnStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
        BtnStroke.Color = Color3.fromRGB(255, 0, 0) --warna tab dibawah gambar
        BtnStroke.LineJoinMode = Enum.LineJoinMode.Round
        BtnStroke.Thickness = 1
        BtnStroke.Transparency = 0
        BtnStroke.Enabled = true
        BtnStroke.Archivable = true 

        local MainFramePage = Instance.new(translateText("ScrollingFrame"))
        MainFramePage.Name = text..translateText("_Page"
        )MainFramePage.Parent = PageList
        MainFramePage.Active = true
        MainFramePage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        MainFramePage.BackgroundTransparency = 1.000
        MainFramePage.BorderSizePixel = 0
        MainFramePage.Size = UDim2.new(0, 400, 0, 308)
        MainFramePage.CanvasSize = UDim2.new(0, 0, 0, 0)
        MainFramePage.ScrollBarThickness = 0

        local UIPadding = Instance.new(translateText("UIPadding"))
        local UIListLayout = Instance.new(translateText("UIListLayout"))

        UIPadding.Parent = MainFramePage
        UIPadding.PaddingLeft = UDim.new(0, 10)
        UIPadding.PaddingTop = UDim.new(0, 5)

        UIListLayout.Padding = UDim.new(0,15)
        UIListLayout.Parent = MainFramePage
        UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder

        TabButton.MouseButton1Click:Connect(function()
            for i,v in next, ScrollTab:GetChildren() do
                if v:IsA(translateText("TextButton")) then
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
                currentpage = string.gsub(TabButton.Name,translateText("Server"),translateText(""))..translateText("_Page"
                )if v.Name == currentpage then
                    UIPageLayout:JumpTo(v)
                end
            end
        end)

        if abc == false then
            for i,v in next, ScrollTab:GetChildren() do     
                if v:IsA(translateText("TextButton")) then
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

        game:GetService(translateText("RunService")).Stepped:Connect(function()
            pcall(function()
                MainFramePage.CanvasSize = UDim2.new(0,0,0,UIListLayout.AbsoluteContentSize.Y + 20)
                ScrollTab.CanvasSize = UDim2.new(0,0,0,PLL.AbsoluteContentSize.Y + 20)
            end)
        end)

        function Update:AddNotification(textdesc)
        local NotificationHold = Instance.new(translateText("TextButton"))
        local NotificationFrame = Instance.new(translateText("Frame"))
        local OkayBtn = Instance.new(translateText("TextButton"))
        local OkayBtnCorner = Instance.new(translateText("UICorner"))
        local OkayBtnTitle = Instance.new(translateText("TextLabel"))
        local NotificationTitle = Instance.new(translateText("TextLabel"))
        local NotificationDesc = Instance.new(translateText("TextLabel"))
        local NotifCorner = Instance.new(translateText("UICorner"))
        local NotifHolderUIStroke = Instance.new(translateText("UIStroke"))
        local Line = Instance.new(translateText("Frame"))

        NotificationHold.Name = translateText("NotificationHold"
        )NotificationHold.Parent = Main
        NotificationHold.BackgroundColor3 = Color3.new(255, 0, 0)
        NotificationHold.BackgroundTransparency = 1
        NotificationHold.BorderSizePixel = 0
        NotificationHold.Size = UDim2.new(0, 589, 0, 378)
        NotificationHold.AutoButtonColor = false
        NotificationHold.Font = Enum.Font.SourceSans
        NotificationHold.Text = translateText(""
        )NotificationHold.TextColor3 = Color3.new(125,0,125)
        NotificationHold.TextSize = 13.000

        TweenService:Create(NotificationHold, TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
        BackgroundTransparency = 1
        }):Play()
        wait(0.4)

        NotificationFrame.Name = translateText("NotificationFrame"
        )NotificationFrame.Parent = NotificationHold
        NotificationFrame.AnchorPoint = Vector2.new(0.5, 0.5)
        NotificationFrame.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
        NotificationFrame.BorderColor3 = Color3.new(125,0,125)
        NotificationFrame.BorderSizePixel = 0
        NotificationFrame.Transparency = 0
        NotificationFrame.ClipsDescendants = true
        NotificationFrame.Position = UDim2.new(0, 295, 0, 190)
        NotificationFrame.Size = UDim2.new(0, 0, 0, 0)

        NotificationFrame:TweenSize(UDim2.new(0, 400, 0, 250), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, .6, true)

        NotifCorner.Name = translateText("NotifCorner"
        )NotifCorner.Parent = NotificationFrame
        NotifCorner.CornerRadius = UDim.new(0, 5)

        NotifHolderUIStroke.Name = translateText("NotifHolderUIStroke"
        )NotifHolderUIStroke.Parent = NotificationFrame
        NotifHolderUIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
        NotifHolderUIStroke.Color = Color3.new(125,0,125)
        NotifHolderUIStroke.LineJoinMode = Enum.LineJoinMode.Round
        NotifHolderUIStroke.Thickness = 2
        NotifHolderUIStroke.Transparency = 0
        NotifHolderUIStroke.Enabled = true
        NotifHolderUIStroke.Archivable = true

        OkayBtn.Name = translateText("OkayBtn"
        )OkayBtn.Parent = NotificationFrame
        OkayBtn.BackgroundColor3 = Color3.fromRGB(190, 190, 190)
        OkayBtn.BorderSizePixel = 2
        OkayBtn.BorderColor3 = Color3.new(125,0,125)
        OkayBtn.Position = UDim2.new(0, 125, 0, 190)
        OkayBtn.Size = UDim2.new(0, 150, 0, 30)
        OkayBtn.AutoButtonColor = true
        OkayBtn.Font = Enum.Font.SourceSans
        OkayBtn.Text = translateText(""
        )OkayBtn.TextColor3 = Color3.new(125,0,125)
        OkayBtn.TextSize = 13.000

        OkayBtnCorner.CornerRadius = UDim.new(0, 5)
        OkayBtnCorner.Name = translateText("OkayBtnCorner"
        )OkayBtnCorner.Parent = OkayBtn

        OkayBtnTitle.Name = translateText("OkayBtnTitle"
        )OkayBtnTitle.Parent = OkayBtn
        OkayBtnTitle.BackgroundColor3 = Color3.new(125,0,125)
        OkayBtnTitle.BackgroundTransparency = 1.000
        OkayBtnTitle.Size = UDim2.new(0, 150, 0, 30)
        OkayBtnTitle.Text = translateText("OK"
        )OkayBtnTitle.Font = Enum.Font.GothamSemibold
        OkayBtnTitle.TextColor3 = Color3.fromRGB(0, 0, 0)
        OkayBtnTitle.TextSize = 22.000

        NotificationTitle.Name = translateText("NotificationTitle"
        )NotificationTitle.Parent = NotificationFrame
        NotificationTitle.BackgroundColor3 = Color3.new(125,0,125)
        NotificationTitle.BackgroundTransparency = 1.000
        NotificationTitle.Position = UDim2.new(0, 0, 0, 10)
        NotificationTitle.Size = UDim2.new(0, 400, 0, 25)
        NotificationTitle.ZIndex = 3
        NotificationTitle.Font = Enum.Font.GothamSemibold
        NotificationTitle.Text = translateText("Notification"
        )NotificationTitle.TextColor3 = Color3.fromRGB(0, 255, 221)
        NotificationTitle.TextSize = 22.000

        Line.Name = translateText("Line"
        )Line.Parent = NotificationFrame
        Line.BackgroundColor3 = Color3.new(125,0,125)
        Line.BorderSizePixel = 0
        Line.Position = UDim2.new(0, 10, 0, 40)
        Line.Size = UDim2.new(0, 380, 0, 1)

        NotificationDesc.Name = translateText("NotificationDesc"
        )NotificationDesc.Parent = NotificationFrame
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
            logo = translateText("15009422255"
        )end
        local Button = Instance.new(translateText("Frame"))
        local UICorner = Instance.new(translateText("UICorner"))
        local TextBtn = Instance.new(translateText("TextButton"))
        local ImageButton = Instance.new(translateText("ImageLabel"))
        local UICorner_2 = Instance.new(translateText("UICorner"))
        local Space = Instance.new(translateText("TextLabel"))
        local Black = Instance.new(translateText("Frame"))
        local UICorner_3 = Instance.new(translateText("UICorner"))

        Button.Name = translateText("Button"
        )Button.Parent = MainFramePage
        Button.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
        Button.Size = UDim2.new(0, 387, 0, 31)

        UICorner.CornerRadius = UDim.new(0, 5)
        UICorner.Parent = Button

        TextBtn.Name = translateText("TextBtn"
        )TextBtn.Parent = Button
        TextBtn.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
        TextBtn.Position = UDim2.new(0, 1, 0, 1)
        TextBtn.Size = UDim2.new(0, 385, 0, 29)
        TextBtn.AutoButtonColor = false
        TextBtn.Font = Enum.Font.GothamSemibold
        TextBtn.Text = text
        TextBtn.TextColor3 = Color3.fromRGB(225, 225, 225)
        TextBtn.TextSize = 15.000

        ImageButton.Name = translateText("ImageButton"
        )ImageButton.Parent = Button
        ImageButton.BackgroundColor3 = Color3.fromRGB(150, 150, 150) -- warna ketika di klik
        ImageButton.BackgroundTransparency = 1.000
        ImageButton.BorderSizePixel = 0
        ImageButton.Position = UDim2.new(0, 350, 0, 6)
        ImageButton.Size = UDim2.new(0, 20, 0, 20)
        ImageButton.Image = translateText("rbxassetid://107679910024355"
        )ImageButton.ImageColor3 = Color3.fromRGB(255, 255, 255)

        UICorner_2.CornerRadius = UDim.new(0, 5)
        UICorner_2.Parent = TextBtn

        Space.Name = translateText("Space"
        )Space.Parent = Button
        Space.BackgroundColor3 = Color3.fromRGB(150, 150, 150) 
        Space.BackgroundTransparency = 1.000
        Space.Position = UDim2.new(0, 330, 0, 0)
        Space.Size = UDim2.new(0, 15, 0, 30)
        Space.Font = Enum.Font.GothamSemibold
        Space.Text = translateText("|"
        )Space.TextSize = 15.000
        Space.TextColor3 = Color3.fromRGB(255, 255, 255)
        Space.TextXAlignment = Enum.TextXAlignment.Right

        Black.Name = translateText("Black"
        )Black.Parent = Button
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
            logo = translateText("15009422255"
        )end
        local CheckFrame = Instance.new(translateText("Frame"))
        local CheckFrame2 = Instance.new(translateText("Frame"))
        local UIStroke = Instance.new(translateText("UIStroke"))
        local UIListLayout = Instance.new(translateText("UIListLayout"))
        local UICorner = Instance.new(translateText("UICorner"))
        local ImageLabel = Instance.new(translateText("ImageLabel"))
        local Space = Instance.new(translateText("TextLabel"))
        local Title = Instance.new(translateText("TextLabel"))
        local ImageButton = Instance.new(translateText("ImageButton"))

        -- Prop --
        CheckFrame.Name = TogInfo or translateText("CheckFrame"
        )CheckFrame.Parent = MainFramePage
        CheckFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
        CheckFrame.BackgroundTransparency = 1.000
        CheckFrame.BorderSizePixel = 0
        CheckFrame.Size = UDim2.new(0, 387, 0, 31)

        CheckFrame2.Name = translateText("CheckFrame2"
        )CheckFrame2.Parent = CheckFrame
        CheckFrame2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
        CheckFrame2.BorderSizePixel = 0
        CheckFrame2.Position = UDim2.new(0, 3, 0, 0)
        CheckFrame2.Size = UDim2.new(0, 381, 0, 30)

        UIStroke.Name = translateText("UIStroke"
        )UIStroke.Parent = CheckFrame2
        UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
        UIStroke.Color = Color3.fromRGB(255, 0, 0)
        UIStroke.LineJoinMode = Enum.LineJoinMode.Round
        UIStroke.Thickness = 1
        UIStroke.Transparency = 0
        UIStroke.Enabled = true
        UIStroke.Archivable = true

        UICorner.Parent = CheckFrame2
        UICorner.CornerRadius = UDim.new(0, 3)

        ImageLabel.Name = translateText("ImageLabel"
        )ImageLabel.Parent = CheckFrame2
        ImageLabel.BackgroundColor3 = Color3.fromRGB(255,255,255)
        ImageLabel.BackgroundTransparency = 1.000
        ImageLabel.BorderSizePixel = 0
        ImageLabel.Position = UDim2.new(0, 5, 0, 6)
        ImageLabel.Size = UDim2.new(0, 20, 0, 20)
        ImageLabel.Image = translateText("rbxassetid://107679910024355"
        )ImageLabel.ImageColor3 = Color3.fromRGB(255, 255, 255)

        Space.Name = translateText("Space"
        )Space.Parent = CheckFrame2
        Space.BackgroundColor3 = Color3.fromRGB(255,255,255)
        Space.BackgroundTransparency = 1.000
        Space.Position = UDim2.new(0, 30, 0, 0)
        Space.Size = UDim2.new(0, 15, 0, 30)
        Space.Font = Enum.Font.GothamSemibold
        Space.Text = translateText("|"
        )Space.TextSize = 15.000
        Space.TextColor3 = Color3.fromRGB(255, 255, 255)
        Space.TextXAlignment = Enum.TextXAlignment.Center

        Title.Name = translateText("Title"
        )Title.Parent = CheckFrame2
        Title.BackgroundColor3 = Color3.fromRGB(255,255,255)
        Title.BackgroundTransparency = 1.000
        Title.Position = UDim2.new(0, 50, 0, 0)
        Title.Size = UDim2.new(0, 280, 0, 30)
        Title.Font = Enum.Font.GothamSemibold
        Title.Text = TogInfo or translateText("checkBox Title"
        )Title.TextColor3 = Color3.fromRGB(255, 255, 255)
        Title.TextSize = 15.000
        Title.TextXAlignment = Enum.TextXAlignment.Left

        ImageButton.Name = translateText("ImageButton"
        )ImageButton.Parent = CheckFrame2
        ImageButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        ImageButton.BackgroundTransparency = 1.000
        ImageButton.Position = UDim2.new(0, 352, 0, 4)
        ImageButton.Size = UDim2.new(0, 23, 0, 23)
        ImageButton.ZIndex = 2
        ImageButton.Image = translateText("rbxassetid://3926311105" )--gambar kotak ceklis
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
        local Dropdown = Instance.new(translateText("Frame"))
        local UICorner = Instance.new(translateText("UICorner"))
        local DropTitle = Instance.new(translateText("TextLabel"))
        local DropScroll = Instance.new(translateText("ScrollingFrame"))
        local UIListLayout = Instance.new(translateText("UIListLayout"))
        local UIPadding = Instance.new(translateText("UIPadding"))
        local DropButton = Instance.new(translateText("TextButton"))
        local DropImage = Instance.new(translateText("ImageLabel"))
        local UIStroke = Instance.new(translateText("UIStroke"))

        Dropdown.Name = translateText("Dropdown"
        )Dropdown.Parent = MainFramePage
        Dropdown.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
        Dropdown.ClipsDescendants = true
        Dropdown.Size = UDim2.new(0, 387, 0, 31)

        UIStroke.Name = translateText("UIStroke"
        )UIStroke.Parent = Dropdown
        UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
        UIStroke.Color = Color3.fromRGB(255, 0, 0)
        UIStroke.LineJoinMode = Enum.LineJoinMode.Round
        UIStroke.Thickness = 1
        UIStroke.Transparency = 0
        UIStroke.Enabled = true
        UIStroke.Archivable = true

        UICorner.CornerRadius = UDim.new(0, 3)
        UICorner.Parent = Dropdown

        DropTitle.Name = translateText("DropTitle"
        )DropTitle.Parent = Dropdown
        DropTitle.BackgroundColor3 = Color3.fromRGB(255,255,255)
        DropTitle.BackgroundTransparency = 1.000
        DropTitle.Size = UDim2.new(0, 385, 0, 31)
        DropTitle.Font = Enum.Font.GothamSemibold
        DropTitle.Text = text.. translateText(" : "
        )DropTitle.TextColor3 = Color3.fromRGB(255,255,255)
        DropTitle.TextSize = 15.000

        DropScroll.Name = translateText("DropScroll"
        )DropScroll.Parent = DropTitle
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

        DropButton.Name = translateText("DropButton"
        )DropButton.Parent = Dropdown
        DropButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        DropButton.BackgroundTransparency = 1.000
        DropButton.Size = UDim2.new(0, 385, 0, 31)
        DropButton.Font = Enum.Font.SourceSans
        DropButton.Text = translateText(""
        )DropButton.TextColor3 = Color3.fromRGB(0, 0, 0)
        DropButton.TextSize = 14.000

        DropImage.Name = translateText("DropImage"
        )DropImage.Parent = Dropdown
        DropImage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        DropImage.BackgroundTransparency = 1.000
        DropImage.Position = UDim2.new(0, 350, 0, 6)
        DropImage.Rotation = 180.000
        DropImage.Size = UDim2.new(0, 20, 0, 20)
        DropImage.Image = translateText("rbxassetid://86307623642739"

        )for i,v in next,option do
            local Item = Instance.new(translateText("TextButton"))

            Item.Name = translateText("Item"
            )Item.Parent = DropScroll
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
                Dropdown:TweenSize(UDim2.new(0,385,0,31),translateText("Out"),translateText("Quad"),0.3,true)
                TweenService:Create(
                    DropImage,
                    TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                    {
                        Rotation = 180
                    }
                ):Play()
                callback(Item.Text)
                DropTitle.Text = text..translateText(" : ")..Item.Text
            end)
        end

        DropScroll.CanvasSize = UDim2.new(0,0,0,UIListLayout.AbsoluteContentSize.Y + 10)

        DropButton.MouseButton1Click:Connect(function()
            if isdropping == false then
                isdropping = true
                Dropdown:TweenSize(UDim2.new(0,385,0,131),translateText("Out"),translateText("Quad"),0.3,true)
                TweenService:Create(
                    DropImage,
                    TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                    {
                        Rotation = 0
                    }
                ):Play()
            else
                isdropping = false
                Dropdown:TweenSize(UDim2.new(0,385,0,31),translateText("Out"),translateText("Quad"),0.3,true)
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
            local Item = Instance.new(translateText("TextButton"))
            Item.Name = translateText("Item"
            )Item.Parent = DropScroll
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
                Dropdown:TweenSize(UDim2.new(0,387,0,31),translateText("Out"),translateText("Quad"),0.3,true)
                TweenService:Create(
                    DropImage,
                    TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                    {
                     Rotation = 180
                    }
                ):Play()
                callback(Item.Text)
                DropTitle.Text = text..translateText(" : ")..Item.Text
            end)
        end
        function dropfunc:Clear()
            DropTitle.Text = tostring(text)..translateText(" : "
            )isdropping = false
            Dropdown:TweenSize(UDim2.new(0,385,0,31),translateText("Out"),translateText("Quad"),0.3,true)
            TweenService:Create(
                DropImage,
                TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                {
                 Rotation = 180
                }
            ):Play()
            for i,v in next, DropScroll:GetChildren() do
                if v:IsA(translateText("TextButton")) then
                    v:Destroy()
                end
            end
        end
        return dropfunc
    end
  
    function main:AddSlider(text, min, max, start, callback)
        local sliderfunc = {}
        local SliderFrame = Instance.new(translateText("Frame"))
        local SliderFrame_2 = Instance.new(translateText("Frame"))
        local UIStroke = Instance.new(translateText("UIStroke"))
        local UICorner = Instance.new(translateText("UICorner"))
        local ImageLabel = Instance.new(translateText("ImageLabel"))
        local Space = Instance.new(translateText("TextLabel"))
        local Title = Instance.new(translateText("TextLabel"))
        local SliderInput = Instance.new(translateText("Frame"))
        local SliderButton = Instance.new(translateText("Frame"))
        local SliderCount = Instance.new(translateText("Frame"))
        local SliderCorner = Instance.new(translateText("UICorner"))
        local SliderCorner2 = Instance.new(translateText("UICorner"))
        local BoxFrame = Instance.new(translateText("Frame"))
        local SliderBox = Instance.new(translateText("TextBox"))
        local SliderStroke = Instance.new(translateText("UIStroke"))
        local Title_2 = Instance.new(translateText("TextButton"))
        local UICorner_2 = Instance.new(translateText("UICorner"))
        local UICorner_3 = Instance.new(translateText("UICorner"))
        
        -- Prop --
        SliderFrame.Name = slidertitle or translateText("SliderFrame"
        )SliderFrame.Parent = MainFramePage
        SliderFrame.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
        SliderFrame.BackgroundTransparency = 1.000
        SliderFrame.BorderSizePixel = 0
        SliderFrame.Size = UDim2.new(0, 387, 0, 60)
    
        SliderFrame_2.Name = translateText("SliderFrame_2"
        )SliderFrame_2.Parent = SliderFrame
        SliderFrame_2.BackgroundColor3 = Color3.fromRGB(0,0,0)
        SliderFrame_2.BackgroundTransparency = 0
        SliderFrame_2.BorderSizePixel = 0
        SliderFrame_2.Position = UDim2.new(0, 1, 0, 1)
        SliderFrame_2.Size = UDim2.new(0, 387, 0, 60)
        
        UIStroke.Name = translateText("UIStroke"
        )UIStroke.Parent = SliderFrame_2
        UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
        UIStroke.Color = Color3.fromRGB(255, 0, 0)
        UIStroke.LineJoinMode = Enum.LineJoinMode.Round
        UIStroke.Thickness = 1
        UIStroke.Transparency = 0
        UIStroke.Enabled = true
        UIStroke.Archivable = true
        
        UICorner.Parent = SliderFrame_2
        UICorner.CornerRadius = UDim.new(0, 3)
        
        ImageLabel.Name = translateText("ImageLabel"
        )ImageLabel.Parent = SliderFrame_2
        ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        ImageLabel.BackgroundTransparency = 1.000
        ImageLabel.BorderSizePixel = 0
        ImageLabel.Position = UDim2.new(0, 7.5, 0, 7.5)
        ImageLabel.Size = UDim2.new(0, 30, 0, 30)
        ImageLabel.Image = translateText("rbxassetid://107679910024355" )--gambar slider
            
        Title.Parent = SliderFrame_2
        Title.BackgroundColor3 = Color3.fromRGB(150, 150, 150)
        Title.BackgroundTransparency = 1.000
        Title.Position = UDim2.new(0, 45, 0, 5)
        Title.Size = UDim2.new(0, 280, 0, 30)
        Title.Font = Enum.Font.GothamSemibold
        Title.Text = translateText("|  ")..text
        Title.TextColor3 = Color3.fromRGB(255, 255, 255)
        Title.TextSize = 15.000
        Title.TextXAlignment = Enum.TextXAlignment.Left
                
        SliderInput.Name = translateText("SliderInput"
        )SliderInput.Parent = SliderFrame_2
        SliderInput.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        SliderInput.BackgroundTransparency = 0.7
        SliderInput.BorderSizePixel = 0
        SliderInput.Position = UDim2.new(0, 8, 0, 42)
        SliderInput.Size = UDim2.new(0, 365, 0, 6)
        
        SliderCorner2.CornerRadius = UDim.new(0, 100000)
        SliderCorner2.Parent = SliderInput
        
        SliderButton.Name = translateText("SliderButton"
        )SliderButton.Parent = SliderInput
        SliderButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        SliderButton.BackgroundTransparency = 1.000
        SliderButton.BorderSizePixel = 0
        SliderButton.Position = UDim2.new(0, 0, 0, -7)
        SliderButton.Size = UDim2.new(0, 346, 0, 25)
    
        SliderCount.Name = translateText("SliderCount"
        )SliderCount.Parent = SliderButton
        SliderCount.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        SliderCount.BackgroundTransparency = 0.3
        SliderCount.BorderSizePixel = 0
        SliderCount.Position = UDim2.new(0,start,0,0)
        SliderCount.Size = UDim2.new(0, 18, 0, 18)
    
        Title_2.Name = translateText("Title_2"
        )Title_2.Parent = SliderButton
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
        
        SliderStroke.Name = translateText("SliderStroke"
        )SliderStroke.Parent = BoxFrame
        SliderStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
        SliderStroke.Color = Color3.fromRGB(255, 0, 0)
        SliderStroke.LineJoinMode = Enum.LineJoinMode.Round
        SliderStroke.Thickness = 1
        SliderStroke.Transparency = 0.5
        SliderStroke.Enabled = true
        SliderStroke.Archivable = true
        
        BoxFrame.Name = translateText("BoxFrame"
        )BoxFrame.Parent = SliderFrame_2
        BoxFrame.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
        BoxFrame.BackgroundTransparency = 1.000
        BoxFrame.Size = UDim2.new(0, 50, 0, 15)
        BoxFrame.Position = UDim2.new(0, 323, 0, 8)
    
        SliderBox.Name = translateText("SliderBox"
        )SliderBox.Parent = BoxFrame
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
            if property == translateText("Text" )then
                if tonumber(SliderBox.Text) then 
                    if tonumber(SliderBox.Text) <= max then
                        Value = SliderBox.Text
                        Title_2.Text = SliderBox.Text
                        SliderCount:TweenPosition(UDim2.new(((tonumber(SliderBox.Text) or min) - min) / (max - min), 0, 0, 0), translateText("InOut"), translateText("Linear"), 0.08, true)
                        Title_2:TweenPosition(UDim2.new(((tonumber(SliderBox.Text) or min) - min) / (max - min), 0, 0, 0), translateText("InOut"), translateText("Linear"), 0.12, true)
                        pcall(function()
                            callback(Value)
                        end)
                    end
                    if tonumber(SliderBox.Text) > max then
                        SliderBox.Text = max
                        Title_2.Text = max
                        Value = max
                        SliderCount:TweenPosition(UDim2.new(((max or min) - min) / (max - min), 0, 0, 0), translateText("InOut"), translateText("Linear"), 0.08, true)
                        Title_2:TweenPosition(UDim2.new(((max or min) - min) / (max - min), 0, 0, 0), translateText("InOut"), translateText("Linear"), 0.12, true)
                        pcall(function()
                            callback(Value)
                        end)
                    end
                    if tonumber(SliderBox.Text) >= min then
                        Value = SliderBox.Text
                        Title_2.Text = SliderBox.Text
                        SliderCount:TweenPosition(UDim2.new(((tonumber(SliderBox.Text) or min) - min) / (max - min), 0, 0, 0), translateText("InOut"), translateText("Linear"), 0.08, true)
                        Title_2:TweenPosition(UDim2.new(((tonumber(SliderBox.Text) or min) - min) / (max - min), 0, 0, 0), translateText("InOut"), translateText("Linear"), 0.12, true)
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
                    SliderBox.Text = translateText("" )or Value
                    Title_2.Text = Value
                end
            end
        end
        
        SliderBox.Focused:Connect(function()
            SliderBox.Changed:Connect(set)
        end)
        
        SliderBox.FocusLost:Connect(function(enterP)
            if not enterP then
                if SliderBox.Text == translateText("" )then
                    SliderBox.Text = min
                    Title_2.Text = min
                    Value = min
                    SliderCount:TweenPosition(UDim2.new(((min) - min) / (max - min), 0, 0, 0), translateText("InOut"), translateText("Linear"), 0.08, true)
                    Title_2:TweenPosition(UDim2.new(((min) - min) / (max - min), 0, 0, 0), translateText("InOut"), translateText("Linear"), 0.12, true)
                    pcall(function()
                        callback(Value)
                    end)
                end
                if tonumber(SliderBox.Text) > tonumber(max) then
                    Value = max
                    SliderBox.Text = max
                    Title_2.Text = max
                    SliderCount:TweenPosition(UDim2.new(((max or min) - min) / (max - min), 0, 0, 0), translateText("InOut"), translateText("Linear"), 0.08, true)
                    Title_2:TweenPosition(UDim2.new(((max or min) - min) / (max - min), 0, 0, 0), translateText("InOut"), translateText("Linear"), 0.12, true)
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
                    SliderCount:TweenPosition(UDim2.new(((min) - min) / (max - min), 0, 0, 0), translateText("InOut"), translateText("Linear"), 0.08, true)
                    Title_2:TweenPosition(UDim2.new(((min) - min) / (max - min), 0, 0, 0), translateText("InOut"), translateText("Linear"), 0.12, true)
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
                SliderCount:TweenPosition(UDim2.new(((max or min) - min) / (max - min), 0, 0, 0), translateText("InOut"), translateText("Linear"), 0.08, true)
                Title_2:TweenPosition(UDim2.new(((max or min) - min) / (max - min), 0, 0, 0), translateText("InOut"), translateText("Linear"), 0.12, true)
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
            if SliderBox.Text == translateText("" )then
                SliderBox.Text = min
                Title_2.Text = min
                Value = min
                SliderCount:TweenPosition(UDim2.new(((min) - min) / (max - min), 0, 0, 0), translateText("InOut"), translateText("Linear"), 0.08, true)
                Title_2:TweenPosition(UDim2.new(((min) - min) / (max - min), 0, 0, 0), translateText("InOut"), translateText("Linear"), 0.12, true)
                pcall(function()
                    callback(Value)
                end)
            end
        end)
        return sliderfunc
    end

    function main:AddTextbox(text,disappear,callback)
        local Textbox = Instance.new(translateText("Frame"))
        local TextboxCorner = Instance.new(translateText("UICorner"))
        local Textboxx = Instance.new(translateText("Frame"))
        local TextboxxCorner = Instance.new(translateText("UICorner"))
        local TextboxLabel = Instance.new(translateText("TextLabel"))
        local txtbtn = Instance.new(translateText("TextButton"))
        local RealTextbox = Instance.new(translateText("TextBox"))
        local UICorner = Instance.new(translateText("UICorner"))

        Textbox.Name = translateText("Textbox"
        )Textbox.Parent = MainFramePage
        Textbox.BackgroundColor3 = Color3.new(255, 0, 0)
        Textbox.BackgroundTransparency = 0
        Textbox.Size = UDim2.new(0, 387, 0, 31)

        TextboxCorner.CornerRadius = UDim.new(0, 5)
        TextboxCorner.Name = translateText("TextboxCorner"
        )TextboxCorner.Parent = Textbox

        Textboxx.Name = translateText("Textboxx"
        )Textboxx.Parent = Textbox
        Textboxx.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
        Textboxx.Position = UDim2.new(0, 1, 0, 1)
        Textboxx.Size = UDim2.new(0, 385, 0, 29)

        TextboxxCorner.CornerRadius = UDim.new(0, 5)
        TextboxxCorner.Name = translateText("TextboxxCorner"
        )TextboxxCorner.Parent = Textboxx

        TextboxLabel.Name = translateText("TextboxLabel"
        )TextboxLabel.Parent = Textbox
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

        txtbtn.Name = translateText("txtbtn"
        )txtbtn.Parent = Textbox
        txtbtn.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        txtbtn.BackgroundTransparency = 1.000
        txtbtn.Position = UDim2.new(0, 1, 0, 1)
        txtbtn.Size = UDim2.new(0, 387, 0, 29)
        txtbtn.Font = Enum.Font.SourceSans
        txtbtn.Text = translateText(""
        )txtbtn.TextColor3 = Color3.fromRGB(0, 0, 0)
        txtbtn.TextSize = 14.000

        RealTextbox.Name = translateText("RealTextbox"
        )RealTextbox.Parent = Textbox
        RealTextbox.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
        RealTextbox.BackgroundTransparency = 0
        RealTextbox.Position = UDim2.new(0, 275, 0, 4)
        RealTextbox.Size = UDim2.new(0, 100, 0, 24)
        RealTextbox.Font = Enum.Font.GothamSemibold
        RealTextbox.Text = translateText(""
        )RealTextbox.TextColor3 = Color3.fromRGB(225, 225, 225)
        RealTextbox.TextSize = 11.000
        RealTextbox.TextTransparency = 0

        RealTextbox.FocusLost:Connect(function()
            callback(RealTextbox.Text)
            if disappear then
                RealTextbox.Text = translateText(""
            )end
        end)

        UICorner.CornerRadius = UDim.new(0, 5)
        UICorner.Parent = RealTextbox
    end

    function main:AddLabel(text)
        local Label = Instance.new(translateText("TextLabel"))
        local PaddingLabel = Instance.new(translateText("UIPadding"))
        local labelfunc = {}

        Label.Name = translateText("Label"
        )Label.Parent = MainFramePage
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
        PaddingLabel.Name = translateText("PaddingLabel"

        )function labelfunc:Set(newtext)
            Label.Text = newtext
        end
        return labelfunc
    end

    function main:AddLabel1(text)
        local Label1 = Instance.new(translateText("TextLabel"))
        local PaddingLabel1 = Instance.new(translateText("UIPadding"))
        local Label1func = {}
        
        Label1.Name = translateText("Label1"
        )Label1.Parent = MainFramePage
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
        PaddingLabel1.Name = translateText("PaddingLabel1"
        )function Label1func:Refresh(tochange)
        Label1.Text = tochange
        end
        
        return Label1func
    end    

    function main:AddTextbox(text,disappear,callback)
        local Textbox = Instance.new(translateText("Frame"))
        local TextboxCorner = Instance.new(translateText("UICorner"))
        local Textboxx = Instance.new(translateText("Frame"))
        local TextboxxCorner = Instance.new(translateText("UICorner"))
        local TextboxLabel = Instance.new(translateText("TextLabel"))
        local txtbtn = Instance.new(translateText("TextButton"))
        local RealTextbox = Instance.new(translateText("TextBox"))
        local UICorner = Instance.new(translateText("UICorner"))
        
        Textbox.Name = translateText("Textbox"
        )Textbox.Parent = MainFramePage
        Textbox.BackgroundColor3 = Color3.new(255, 0, 0)
        Textbox.BackgroundTransparency = 0
        Textbox.Size = UDim2.new(0, 387, 0, 31)
        
        TextboxCorner.CornerRadius = UDim.new(0, 5)
        TextboxCorner.Name = translateText("TextboxCorner"
        )TextboxCorner.Parent = Textbox
        
        Textboxx.Name = translateText("Textboxx"
        )Textboxx.Parent = Textbox
        Textboxx.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
        Textboxx.Position = UDim2.new(0, 1, 0, 1)
        Textboxx.Size = UDim2.new(0, 385, 0, 29)
        
        TextboxxCorner.CornerRadius = UDim.new(0, 3)
        TextboxxCorner.Name = translateText("TextboxxCorner"
        )TextboxxCorner.Parent = Textboxx
        
        TextboxLabel.Name = translateText("TextboxLabel"
        )TextboxLabel.Parent = Textbox
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
        
        txtbtn.Name = translateText("txtbtn"
        )txtbtn.Parent = Textbox
        txtbtn.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        txtbtn.BackgroundTransparency = 1.000
        txtbtn.Position = UDim2.new(0, 1, 0, 1)
        txtbtn.Size = UDim2.new(0, 387, 0, 29)
        txtbtn.Font = Enum.Font.SourceSans
        txtbtn.Text = translateText(""
        )txtbtn.TextColor3 = Color3.fromRGB(0, 0, 0)
        txtbtn.TextSize = 14.000
        
        RealTextbox.Name = translateText("RealTextbox"
        )RealTextbox.Parent = Textbox
        RealTextbox.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
        RealTextbox.BackgroundTransparency = 0
        RealTextbox.Position = UDim2.new(0, 275, 0, 4)
        RealTextbox.Size = UDim2.new(0, 100, 0, 24)
        RealTextbox.Font = Enum.Font.GothamSemibold
        RealTextbox.Text = translateText(""
        )RealTextbox.TextColor3 = Color3.fromRGB(255, 0, 0)
        RealTextbox.TextSize = 11.000
        RealTextbox.TextTransparency = 0

        RealTextbox.FocusLost:Connect(function()
            callback(RealTextbox.Text)
            if disappear then
                RealTextbox.Text = translateText(""
            )end
        end)

        UICorner.CornerRadius = UDim.new(0, 3)
        UICorner.Parent = RealTextbox
    end
    
    function main:AddLabel(text)
        local Label = Instance.new(translateText("TextLabel"))
        local PaddingLabel = Instance.new(translateText("UIPadding"))
        local labelfunc = {}

        Label.Name = translateText("Label"
        )Label.Parent = MainFramePage
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
        PaddingLabel.Name = translateText("PaddingLabel"

        )function labelfunc:Set(newtext)
            Label.Text = newtext
        end
        return labelfunc
    end

    function main:AddLabel1(text)
        local Label1 = Instance.new(translateText("TextLabel"))
        local PaddingLabel1 = Instance.new(translateText("UIPadding"))
        local Label1func = {}
        
        Label1.Name = translateText("Label1"
        )Label1.Parent = MainFramePage
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
        PaddingLabel1.Name = translateText("PaddingLabel1"
        )function Label1func:Refresh(tochange)
            Label1.Text = tochange
        end

        return Label1func
    end

    function main:Dis(text,display)
        local Label1 = Instance.new(translateText("TextLabel"))
        local PaddingLabel1 = Instance.new(translateText("UIPadding"))
        local Label1func = {}

        Label1.Name = translateText("Label1"
        )Label1.Parent = MainFramePage
        Label1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Label1.BackgroundTransparency = 1.000
        Label1.Size = UDim2.new(0, 410, 0, 20)
        Label1.Font = Enum.Font.GothamSemibold
        Label1.TextColor3 = Color3.fromRGB(255,255,255)
        Label1.TextSize = 15.000
        Label1.Text = text
        Label1.TextXAlignment = Enum.TextXAlignment.Left

        Labeld.Name = translateText("Labeld"
        )Labeld.Parent = MainFramePage
        Labeld.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Labeld.BackgroundTransparency = 1.000
        Labeld.Size = UDim2.new(0, 410, 0, 20)
        Labeld.Font = Enum.Font.GothamSemibold
        Labeld.TextColor3 = Color3.fromRGB(255, 255, 255)
        Labeld.TextSize = 15.000
        Labeld.Text = display or translateText(""
        )Labeld.TextXAlignment = Enum.TextXAlignment.Left

        PaddingLabel1.PaddingLeft = UDim.new(0,15)
        PaddingLabel1.Parent = Label1
        PaddingLabel1.Name = translateText("PaddingLabel1"
        )function Label1func:Refresh(tochange)
            Label1.Text = tochange
        end

        return Label1func
    end

    function main:AddSeperator(text)
        local Seperator = Instance.new(translateText("Frame"))
        local Sep1 = Instance.new(translateText("Frame"))
        local Sep2 = Instance.new(translateText("TextLabel"))
        local Sep3 = Instance.new(translateText("Frame"))

        Seperator.Name = translateText("Seperator"
        )Seperator.Parent = MainFramePage
        Seperator.BackgroundColor3 = Color3.fromRGB(255,255,255)
        Seperator.BackgroundTransparency = 1.000
        Seperator.Size = UDim2.new(0, 310, 0, 20)

        Sep1.Name = translateText("Sep1"
        )Sep1.Parent = Seperator
        Sep1.BackgroundColor3 = Color3.new(255, 0, 0)
        Sep1.BorderSizePixel = 0
        Sep1.Position = UDim2.new(0, 0, 0, 10)
        Sep1.Size = UDim2.new(0, 80, 0, 1)

        Sep2.Name = translateText("Sep2"
        )Sep2.Parent = Seperator
        Sep2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Sep2.BackgroundTransparency = 1.000
        Sep2.Position = UDim2.new(0, 140, 0, 0)
        Sep2.Size = UDim2.new(0, 100, 0, 20)
        Sep2.Font = Enum.Font.GothamSemibold
        Sep2.Text = text
        Sep2.TextColor3 = Color3.fromRGB(255,255,255)
        Sep2.TextSize = 14.000

        Sep3.Name = translateText("Sep3"
        )Sep3.Parent = Seperator
        Sep3.BackgroundColor3 = Color3.new(255, 0, 0)
        Sep3.BorderSizePixel = 0
        Sep3.Position = UDim2.new(0, 300, 0, 10)
        Sep3.Size = UDim2.new(0, 80, 0, 1)
    end

    function main:AddLine()
        local Linee = Instance.new(translateText("Frame"))
        local Line = Instance.new(translateText("Frame"))
        
        Linee.Name = translateText("Linee"
        )Linee.Parent = MainFramePage
        Linee.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Linee.BackgroundTransparency = 1.000
        Linee.Position = UDim2.new(0, 0, 0.119999997, 0)
        Linee.Size = UDim2.new(0, 310, 0, 20)
        
        Line.Name = translateText("Line"
        )Line.Parent = Linee
        Line.BackgroundColor3 = Color3.new(255, 0, 0)
        Line.BorderSizePixel = 0
        Line.Position = UDim2.new(0, 0, 0, 10)
        Line.Size = UDim2.new(0, 410, 0, 1)
    end

    return main
end
return uitab
end

function intiBrutalityHub() 
    _G.antiscan = true
    getgenv().A = require(game:GetService(translateText("ReplicatedStorage")).CombatFramework.RigLib).wrapAttackAnimationAsync
    getgenv().B = require(game.Players.LocalPlayer.PlayerScripts.CombatFramework.Particle).play
    _G.setfflag = true
    end
    spawn(function()
        while wait() do
            if _G.setfflag then
                setfflag(translateText("AbuseReportScreenshot"), translateText("False"))
                setfflag(translateText("AbuseReportScreenshotPercentage"), translateText("0"))
            end
        end
    end)

local Library = Update:Window(translateText("Brutality Hub V4"),translateText("WAIT UPDATE | IS UNDER CONSTRUCTION"),Enum.KeyCode.RightControl);
local Rumah = Library:AddTab(translateText("Home"),translateText("18797343654"))
local Status = Library:AddTab(translateText("Status"),translateText("78118444078057"))
local Main = Library:AddTab(translateText("Farming"),translateText("18477352665"))
local Quest = Library:AddTab(translateText("Quest Item"),translateText("18477473610"))
local RaceV4 = Library:AddTab(translateText("Race V4"),translateText("18477916271"))
local SeaEvent = Library:AddTab(translateText("Sea Event"),translateText("18630756931"))
local Bounty = Library:AddTab(translateText("Bounty"),translateText("18492098759"))
local Raid = Library:AddTab(translateText("Auto Raid"),translateText("18491947999"))
local Teleport = Library:AddTab(translateText("Teleport"),translateText("18477347703"))
local ShopDealer = Library:AddTab(translateText("Shop Dealer"),translateText("18477410455"))
local DevilFruit = Library:AddTab(translateText("Devil Fruit"),translateText("18477363100"))
local HopServer = Library:AddTab(translateText("Hop Server"),translateText("104397992902189"))
local Statistic = Library:AddTab(translateText("Statistic"),translateText("18630736310"))
local Setting = Library:AddTab(translateText("Setting"),translateText("134210609072137"))
local Misc = Library:AddTab(translateText("MISC"),translateText("18477908150"))

Rumah:AddSeperator(translateText("Status New Update"))

Rumah:AddLabel(translateText("Visual 4k : 🟢"))
Rumah:AddLabel(translateText("Leviathan : 🟠"))
Rumah:AddLabel(translateText("Play Music : 🟢"))
Rumah:AddLabel(translateText("Add Notify : 🟢"))
Rumah:AddLabel(translateText("Hop Server : 🟢"))
Rumah:AddLabel(translateText("Farm Kaitun : 🟢"))
Rumah:AddLabel(translateText("Sail Rough Sea : 🟠"))
Rumah:AddLabel(translateText("Farm Gun Mastery : 🟢"))
Rumah:AddLabel(translateText("Farm Fruit Mastery : 🟢"))
Rumah:AddLabel(translateText("Anti Detect System : 🟢"))

Rumah:AddSeperator(translateText("Nice To Meet You"))

Rumah:AddLabel(translateText("Webhook Notify : Join My Discord Server"))
Rumah:AddLabel(translateText("Ready Bot Bypass : Bypass Executor And Link"))
Rumah:AddLabel(translateText("Support Games : Blox Fruit | Blade Ball | Slap Battle \n                            | Prison Life | MemeSea "))

Rumah:AddSeperator(translateText("Developer"))

Rumah:AddLabel(translateText("Country : Indonesian"))
Rumah:AddLabel(translateText("Design Gui : BOTUNA"))
Rumah:AddLabel(translateText("Support Code : Bocah Tua Nakal"))
Rumah:AddLabel(translateText("Subscribe YouTube : Medusa Script Roblox"))

Rumah:AddSeperator(translateText("B-Team Community"))
Rumah:AddButton(translateText("Discord Server"),function()
setclipboard(translateText("https://discord.gg/brutality-hub-1182005198206545941"))
Notif.New(translateText("Copying To Clipboard Done"), 3)
end)
Rumah:AddButton(translateText("YouTube Medusa Script"),function()
setclipboard(translateText("www.youtube.com/@medusascriptroblox"))
Notif.New(translateText("Copying To Clipboard Done"), 3)
end)
Rumah:AddButton(translateText("Instagram Official Owner"),function()
setclipboard(translateText("https://www.instagram.com/medusafrzly/"))
Notif.New(translateText("Copying To Clipboard Done"), 3)
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
        return game:GetService(translateText("Lighting")).FantasySky.MoonTextureId
    elseif World2 then
        return game:GetService(translateText("Lighting")).FantasySky.MoonTextureId
    elseif World3 then
        return game:GetService(translateText("Lighting")).Sky.MoonTextureId
    end
end

function CheckMoon()
    moon8 = translateText("http://www.roblox.com/asset/?id=9709150401"
    )moon7 = translateText("http://www.roblox.com/asset/?id=9709150086"
    )moon6 = translateText("http://www.roblox.com/asset/?id=9709149680"
    )moon5 = translateText("http://www.roblox.com/asset/?id=9709149431"
    )moon4 = translateText("http://www.roblox.com/asset/?id=9709149052"
    )moon3 = translateText("http://www.roblox.com/asset/?id=9709143733"
    )moon2 = translateText("http://www.roblox.com/asset/?id=9709139597"
    )moon1 = translateText("http://www.roblox.com/asset/?id=9709135895"
    )moonreal = MoonTextureId()
    cofullmoonkothangbeo = translateText("Bad Moon"
    )if moonreal == moon5 or moonreal == moon4 then
        if moonreal == moon5 then
            cofullmoonkothangbeo = translateText("Full Moon"
        )elseif moonreal == moon4 then
            cofullmoonkothangbeo = translateText("Next Night"
        )end
    end
    return cofullmoonkothangbeo
end

function function7()
    GameTime = translateText("Error"
    )local c = game.Lighting
    local ao = c.ClockTime
    if ao >= 18 or ao < 5 then
        GameTime = translateText("Night"
    )else
        GameTime = translateText("Day"
    )end
    return GameTime
end
function function6()
    return math.floor(game.Lighting.ClockTime)
end
function getServerTime()
    RealTime = tostring(math.floor(game.Lighting.ClockTime * 100) / 100)
    RealTime = tostring(game.Lighting.ClockTime)
    RealTimeTable = RealTime:split(translateText("."))
    Minute, Second = RealTimeTable[1], tonumber(0 + tonumber(RealTimeTable[2] / 100)) * 60
    return Minute, Second
end
function function8()
    local c = game.Lighting
    local ao = c.ClockTime
    if CheckMoon() == translateText("Full Moon" )and ao <= 5 then
        return tostring(function6()) .. translateText(" ( Moon In " ).. math.floor(5 - ao) .. translateText(" Minutes )"
    )elseif CheckMoon() == translateText("Full Moon" )and (ao > 5 and ao < 12) then
        return tostring(function6()) .. translateText(" ( Fake Moon )"
    )elseif CheckMoon() == translateText("Full Moon" )and (ao > 12 and ao < 18) then
        return tostring(function6()) .. translateText(" ( Moon In " ).. math.floor(18 - ao) .. translateText(" Minutes )"
    )elseif CheckMoon() == translateText("Full Moon" )and (ao > 18 and ao <= 24) then
        return tostring(function6()) .. translateText(" ( Moon In " ).. math.floor(24 + 6 - ao) .. translateText(" Minutes )"
    )end
    if CheckMoon() == translateText("Next Night" )and ao < 12 then
        return tostring(function6()) .. translateText(" ( Moon In " ).. math.floor(18 - ao) .. translateText(" Minutes )"
    )elseif CheckMoon() == translateText("Next Night" )and ao > 12 then
        return tostring(function6()) .. translateText(" ( Moon In " ).. math.floor(18 + 12 - ao) .. translateText(" Minutes )"
    )end
    return tostring(function6())
end

function CheckAcientOneStatus()
    if not game.Players.LocalPlayer.Character:FindFirstChild(translateText("RaceTransformed")) then
        return translateText("You have yet to achieve greatness"
    )end
    local v227 = nil
    local v228 = nil
    local v229 = nil
    v229, v228, v227 = game.ReplicatedStorage.Remotes.CommF_:InvokeServer(translateText("UpgradeRace"), translateText("Check"))
    if v229 == 1 then
        return translateText("Required Train More"
    )elseif v229 == 2 or v229 == 4 or v229 == 7 then
        return translateText("Can Buy Gear With " ).. v227 .. translateText(" Fragments"
    )elseif v229 == 3 then
        return translateText("Required Train More"
    )elseif v229 == 5 then
        return translateText("You Are Done Your Race."
    )elseif v229 == 6 then
        return translateText("Upgrades completed: " ).. v228 - 2 .. translateText("/3, Need Trains More"
    )end
    if v229 ~= 8 then
        if v229 == 0 then
            return translateText("Ready For Trial"
        )else
            return translateText("You have yet to achieve greatness"
        )end
    end
    return translateText("Remaining " ).. 10 - v228 .. translateText(" training sessions."
)end

function CheckAcientOneStatusTrain()
    if not game.Players.LocalPlayer.Character:FindFirstChild(translateText("RaceTransformed")) then
        return translateText("You have yet to achieve greatness"
    )end
    local v227 = nil
    local v228 = nil
    local v229 = nil
    v229, v228, v227 = game.ReplicatedStorage.Remotes.CommF_:InvokeServer(translateText("UpgradeRace"), translateText("Check"))
    if v229 == 1 then
        return translateText("Required Train More"
    )elseif v229 == 2 or v229 == 4 or v229 == 7 then
        return translateText("Can Buy Gear With " ).. v227 .. translateText(" Fragments"
    )elseif v229 == 3 then
        return translateText("Required Train More"
    )elseif v229 == 5 then
        return translateText("You Are Done Your Race."
    )elseif v229 == 6 then
        return translateText("Upgrades completed: " ).. v228 - 2 .. translateText("/3, Need Trains More"
    )end
    if v229 ~= 8 then
        if v229 == 0 then
            return translateText("Ready For Trial"
        )else
            return translateText("You have yet to achieve greatness"
        )end
    end
    return translateText("Remaining " ).. 10 - v228 .. translateText(" training sessions."
)end

function CheckQuest() 
    MyLevel = game:GetService(translateText("Players")).LocalPlayer.Data.Level.Value
    if World1 then
        if MyLevel == 1 or MyLevel <= 9 then
            Mon = translateText("Bandit"
            )LevelQuest = 1
            NameQuest = translateText("BanditQuest1"
            )NameMon = translateText("Bandit"
            )CFrameQuest = CFrame.new(1059.37195, 15.4495068, 1550.4231, 0.939700544, -0, -0.341998369, 0, 1, -0, 0.341998369, 0, 0.939700544)
            CFrameMon = CFrame.new(1045.962646484375, 27.00250816345215, 1560.8203125)
        elseif MyLevel == 10 or MyLevel <= 14 then
            Mon = translateText("Monkey"
            )LevelQuest = 1
            NameQuest = translateText("JungleQuest"
            )NameMon = translateText("Monkey"
            )CFrameQuest = CFrame.new(-1598.08911, 35.5501175, 153.377838, 0, 0, 1, 0, 1, -0, -1, 0, 0)
            CFrameMon = CFrame.new(-1448.51806640625, 67.85301208496094, 11.46579647064209)
        elseif MyLevel == 15 or MyLevel <= 29 then
            Mon = translateText("Gorilla"
            )LevelQuest = 2
            NameQuest = translateText("JungleQuest"
            )NameMon = translateText("Gorilla"
            )CFrameQuest = CFrame.new(-1598.08911, 35.5501175, 153.377838, 0, 0, 1, 0, 1, -0, -1, 0, 0)
            CFrameMon = CFrame.new(-1129.8836669921875, 40.46354675292969, -525.4237060546875)
        elseif MyLevel == 30 or MyLevel <= 39 then
            Mon = translateText("Pirate"
            )LevelQuest = 1
            NameQuest = translateText("BuggyQuest1"
            )NameMon = translateText("Pirate"
            )CFrameQuest = CFrame.new(-1141.07483, 4.10001802, 3831.5498, 0.965929627, -0, -0.258804798, 0, 1, -0, 0.258804798, 0, 0.965929627)
            CFrameMon = CFrame.new(-1103.513427734375, 13.752052307128906, 3896.091064453125)
        elseif MyLevel == 40 or MyLevel <= 59 then
            Mon = translateText("Brute"
            )LevelQuest = 2
            NameQuest = translateText("BuggyQuest1"
            )NameMon = translateText("Brute"
            )CFrameQuest = CFrame.new(-1141.07483, 4.10001802, 3831.5498, 0.965929627, -0, -0.258804798, 0, 1, -0, 0.258804798, 0, 0.965929627)
            CFrameMon = CFrame.new(-1140.083740234375, 14.809885025024414, 4322.92138671875)
        elseif MyLevel == 60 or MyLevel <= 74 then
            Mon = translateText("Desert Bandit"
            )LevelQuest = 1
            NameQuest = translateText("DesertQuest"
            )NameMon = translateText("Desert Bandit"
            )CFrameQuest = CFrame.new(894.488647, 5.14000702, 4392.43359, 0.819155693, -0, -0.573571265, 0, 1, -0, 0.573571265, 0, 0.819155693)
            CFrameMon = CFrame.new(924.7998046875, 6.44867467880249, 4481.5859375)
        elseif MyLevel == 75 or MyLevel <= 89 then
            Mon = translateText("Desert Officer"
            )LevelQuest = 2
            NameQuest = translateText("DesertQuest"
            )NameMon = translateText("Desert Officer"
            )CFrameQuest = CFrame.new(894.488647, 5.14000702, 4392.43359, 0.819155693, -0, -0.573571265, 0, 1, -0, 0.573571265, 0, 0.819155693)
            CFrameMon = CFrame.new(1608.2822265625, 8.614224433898926, 4371.00732421875)
        elseif MyLevel == 90 or MyLevel <= 99 then
            Mon = translateText("Snow Bandit"
            )LevelQuest = 1
            NameQuest = translateText("SnowQuest"
            )NameMon = translateText("Snow Bandit"
            )CFrameQuest = CFrame.new(1389.74451, 88.1519318, -1298.90796, -0.342042685, 0, 0.939684391, 0, 1, 0, -0.939684391, 0, -0.342042685)
            CFrameMon = CFrame.new(1354.347900390625, 87.27277374267578, -1393.946533203125)
        elseif MyLevel == 100 or MyLevel <= 119 then
            Mon = translateText("Snowman"
            )LevelQuest = 2
            NameQuest = translateText("SnowQuest"
            )NameMon = translateText("Snowman"
            )CFrameQuest = CFrame.new(1389.74451, 88.1519318, -1298.90796, -0.342042685, 0, 0.939684391, 0, 1, 0, -0.939684391, 0, -0.342042685)
            CFrameMon = CFrame.new(1201.6412353515625, 144.57958984375, -1550.0670166015625)
        elseif MyLevel == 120 or MyLevel <= 149 then
            Mon = translateText("Chief Petty Officer"
            )LevelQuest = 1
            NameQuest = translateText("MarineQuest2"
            )NameMon = translateText("Chief Petty Officer"
            )CFrameQuest = CFrame.new(-5039.58643, 27.3500385, 4324.68018, 0, 0, -1, 0, 1, 0, 1, 0, 0)
            CFrameMon = CFrame.new(-4881.23095703125, 22.65204429626465, 4273.75244140625)
        elseif MyLevel == 150 or MyLevel <= 174 then
            Mon = translateText("Sky Bandit"
            )LevelQuest = 1
            NameQuest = translateText("SkyQuest"
            )NameMon = translateText("Sky Bandit"
            )CFrameQuest = CFrame.new(-4839.53027, 716.368591, -2619.44165, 0.866007268, 0, 0.500031412, 0, 1, 0, -0.500031412, 0, 0.866007268)
            CFrameMon = CFrame.new(-4953.20703125, 295.74420166015625, -2899.22900390625)
        elseif MyLevel == 175 or MyLevel <= 189 then
            Mon = translateText("Dark Master"
            )LevelQuest = 2
            NameQuest = translateText("SkyQuest"
            )NameMon = translateText("Dark Master"
            )CFrameQuest = CFrame.new(-4839.53027, 716.368591, -2619.44165, 0.866007268, 0, 0.500031412, 0, 1, 0, -0.500031412, 0, 0.866007268)
            CFrameMon = CFrame.new(-5259.8447265625, 391.3976745605469, -2229.035400390625)
        elseif MyLevel == 190 or MyLevel <= 209 then
            Mon = translateText("Prisoner"
            )LevelQuest = 1
            NameQuest = translateText("PrisonerQuest"
            )NameMon = translateText("Prisoner"
            )CFrameQuest = CFrame.new(5308.93115, 1.65517521, 475.120514, -0.0894274712, -5.00292918e-09, -0.995993316, 1.60817859e-09, 1, -5.16744869e-09, 0.995993316, -2.06384709e-09, -0.0894274712)
            CFrameMon = CFrame.new(5098.9736328125, -0.3204058110713959, 474.2373352050781)
        elseif MyLevel == 210 or MyLevel <= 249 then
            Mon = translateText("Dangerous Prisoner"
            )LevelQuest = 2
            NameQuest = translateText("PrisonerQuest"
            )NameMon = translateText("Dangerous Prisoner"
            )CFrameQuest = CFrame.new(5308.93115, 1.65517521, 475.120514, -0.0894274712, -5.00292918e-09, -0.995993316, 1.60817859e-09, 1, -5.16744869e-09, 0.995993316, -2.06384709e-09, -0.0894274712)
            CFrameMon = CFrame.new(5654.5634765625, 15.633401870727539, 866.2991943359375)
        elseif MyLevel == 250 or MyLevel <= 274 then
            Mon = translateText("Toga Warrior"
            )LevelQuest = 1
            NameQuest = translateText("ColosseumQuest"
            )NameMon = translateText("Toga Warrior"
            )CFrameQuest = CFrame.new(-1580.04663, 6.35000277, -2986.47534, -0.515037298, 0, -0.857167721, 0, 1, 0, 0.857167721, 0, -0.515037298)
            CFrameMon = CFrame.new(-1820.21484375, 51.68385696411133, -2740.6650390625)
        elseif MyLevel == 275 or MyLevel <= 299 then
            Mon = translateText("Gladiator"
            )LevelQuest = 2
            NameQuest = translateText("ColosseumQuest"
            )NameMon = translateText("Gladiator"
            )CFrameQuest = CFrame.new(-1580.04663, 6.35000277, -2986.47534, -0.515037298, 0, -0.857167721, 0, 1, 0, 0.857167721, 0, -0.515037298)
            CFrameMon = CFrame.new(-1292.838134765625, 56.380882263183594, -3339.031494140625)
        elseif MyLevel == 300 or MyLevel <= 324 then
            Mon = translateText("Military Soldier"
            )LevelQuest = 1
            NameQuest = translateText("MagmaQuest"
            )NameMon = translateText("Military Soldier"
            )CFrameQuest = CFrame.new(-5313.37012, 10.9500084, 8515.29395, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469)
            CFrameMon = CFrame.new(-5411.16455078125, 11.081554412841797, 8454.29296875)
        elseif MyLevel == 325 or MyLevel <= 374 then
            Mon = translateText("Military Spy"
            )LevelQuest = 2
            NameQuest = translateText("MagmaQuest"
            )NameMon = translateText("Military Spy"
            )CFrameQuest = CFrame.new(-5313.37012, 10.9500084, 8515.29395, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469)
            CFrameMon = CFrame.new(-5802.8681640625, 86.26241302490234, 8828.859375)
        elseif MyLevel == 375 or MyLevel <= 399 then
            Mon = translateText("Fishman Warrior"
            )LevelQuest = 1
            NameQuest = translateText("FishmanQuest"
            )NameMon = translateText("Fishman Warrior"
            )CFrameQuest = CFrame.new(61122.65234375, 18.497442245483, 1569.3997802734)
            CFrameMon = CFrame.new(60878.30078125, 18.482830047607422, 1543.7574462890625)
            if _G.AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                game:GetService(translateText("ReplicatedStorage")).Remotes.CommF_:InvokeServer(translateText("requestEntrance"),Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
            end
        elseif MyLevel == 400 or MyLevel <= 449 then
            Mon = translateText("Fishman Commando"
            )LevelQuest = 2
            NameQuest = translateText("FishmanQuest"
            )NameMon = translateText("Fishman Commando"
            )CFrameQuest = CFrame.new(61122.65234375, 18.497442245483, 1569.3997802734)
            CFrameMon = CFrame.new(61922.6328125, 18.482830047607422, 1493.934326171875)
            if _G.AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                game:GetService(translateText("ReplicatedStorage")).Remotes.CommF_:InvokeServer(translateText("requestEntrance"),Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
            end
        elseif MyLevel == 450 or MyLevel <= 474 then
            Mon = "God's GuardtranslateText("
            LevelQuest = 1
            NameQuest = ")SkyExp1QuesttranslateText("
            NameMon = ")God's GuardtranslateText("
            CFrameQuest = CFrame.new(-4721.88867, 843.874695, -1949.96643, 0.996191859, -0, -0.0871884301, 0, 1, -0, 0.0871884301, 0, 0.996191859)
            CFrameMon = CFrame.new(-4710.04296875, 845.2769775390625, -1927.3079833984375)
            if _G.AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                game:GetService(")ReplicatedStoragetranslateText(").Remotes.CommF_:InvokeServer(")requestEntrancetranslateText(",Vector3.new(-4607.82275, 872.54248, -1667.55688))
            end
        elseif MyLevel == 475 or MyLevel <= 524 then
            Mon = ")ShandatranslateText("
            LevelQuest = 2
            NameQuest = ")SkyExp1QuesttranslateText("
            NameMon = ")ShandatranslateText("
            CFrameQuest = CFrame.new(-7859.09814, 5544.19043, -381.476196, -0.422592998, 0, 0.906319618, 0, 1, 0, -0.906319618, 0, -0.422592998)
            CFrameMon = CFrame.new(-7678.48974609375, 5566.40380859375, -497.2156066894531)
            if _G.AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                game:GetService(")ReplicatedStoragetranslateText(").Remotes.CommF_:InvokeServer(")requestEntrancetranslateText(",Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047))
            end
        elseif MyLevel == 525 or MyLevel <= 549 then
            Mon = ")Royal SquadtranslateText("
            LevelQuest = 1
            NameQuest = ")SkyExp2QuesttranslateText("
            NameMon = ")Royal SquadtranslateText("
            CFrameQuest = CFrame.new(-7906.81592, 5634.6626, -1411.99194, 0, 0, -1, 0, 1, 0, 1, 0, 0)
            CFrameMon = CFrame.new(-7624.25244140625, 5658.13330078125, -1467.354248046875)
        elseif MyLevel == 550 or MyLevel <= 624 then
            Mon = ")Royal SoldiertranslateText("
            LevelQuest = 2
            NameQuest = ")SkyExp2QuesttranslateText("
            NameMon = ")Royal SoldiertranslateText("
            CFrameQuest = CFrame.new(-7906.81592, 5634.6626, -1411.99194, 0, 0, -1, 0, 1, 0, 1, 0, 0)
            CFrameMon = CFrame.new(-7836.75341796875, 5645.6640625, -1790.6236572265625)
        elseif MyLevel == 625 or MyLevel <= 649 then
            Mon = ")Galley PiratetranslateText("
            LevelQuest = 1
            NameQuest = ")FountainQuesttranslateText("
            NameMon = ")Galley PiratetranslateText("
            CFrameQuest = CFrame.new(5259.81982, 37.3500175, 4050.0293, 0.087131381, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, 0.087131381)
            CFrameMon = CFrame.new(5551.02197265625, 78.90135192871094, 3930.412841796875)
        elseif MyLevel >= 650 then
            Mon = ")Galley CaptaintranslateText("
            LevelQuest = 2
            NameQuest = ")FountainQuesttranslateText("
            NameMon = ")Galley CaptaintranslateText("
            CFrameQuest = CFrame.new(5259.81982, 37.3500175, 4050.0293, 0.087131381, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, 0.087131381)
            CFrameMon = CFrame.new(5441.95166015625, 42.50205993652344, 4950.09375)
        end
    elseif World2 then
        if MyLevel == 700 or MyLevel <= 724 then
            Mon = ")RaidertranslateText("
            LevelQuest = 1
            NameQuest = ")Area1QuesttranslateText("
            NameMon = ")RaidertranslateText("
            CFrameQuest = CFrame.new(-429.543518, 71.7699966, 1836.18188, -0.22495985, 0, -0.974368095, 0, 1, 0, 0.974368095, 0, -0.22495985)
            CFrameMon = CFrame.new(-728.3267211914062, 52.779319763183594, 2345.7705078125)
        elseif MyLevel == 725 or MyLevel <= 774 then
            Mon = ")MercenarytranslateText("
            LevelQuest = 2
            NameQuest = ")Area1QuesttranslateText("
            NameMon = ")MercenarytranslateText("
            CFrameQuest = CFrame.new(-429.543518, 71.7699966, 1836.18188, -0.22495985, 0, -0.974368095, 0, 1, 0, 0.974368095, 0, -0.22495985)
            CFrameMon = CFrame.new(-1004.3244018554688, 80.15886688232422, 1424.619384765625)
        elseif MyLevel == 775 or MyLevel <= 799 then
            Mon = ")Swan PiratetranslateText("
            LevelQuest = 1
            NameQuest = ")Area2QuesttranslateText("
            NameMon = ")Swan PiratetranslateText("
            CFrameQuest = CFrame.new(638.43811, 71.769989, 918.282898, 0.139203906, 0, 0.99026376, 0, 1, 0, -0.99026376, 0, 0.139203906)
            CFrameMon = CFrame.new(1068.664306640625, 137.61428833007812, 1322.1060791015625)
        elseif MyLevel == 800 or MyLevel <= 874 then
            Mon = ")Factory StafftranslateText("
            NameQuest = ")Area2QuesttranslateText("
            LevelQuest = 2
            NameMon = ")Factory StafftranslateText("
            CFrameQuest = CFrame.new(632.698608, 73.1055908, 918.666321, -0.0319722369, 8.96074881e-10, -0.999488771, 1.36326533e-10, 1, 8.92172336e-10, 0.999488771, -1.07732087e-10, -0.0319722369)
            CFrameMon = CFrame.new(73.07867431640625, 81.86344146728516, -27.470672607421875)
        elseif MyLevel == 875 or MyLevel <= 899 then
            Mon = ")Marine LieutenanttranslateText("
            LevelQuest = 1
            NameQuest = ")MarineQuest3translateText("
            NameMon = ")Marine LieutenanttranslateText("
            CFrameQuest = CFrame.new(-2440.79639, 71.7140732, -3216.06812, 0.866007268, 0, 0.500031412, 0, 1, 0, -0.500031412, 0, 0.866007268)
            CFrameMon = CFrame.new(-2821.372314453125, 75.89727783203125, -3070.089111328125)
        elseif MyLevel == 900 or MyLevel <= 949 then
            Mon = ")Marine CaptaintranslateText("
            LevelQuest = 2
            NameQuest = ")MarineQuest3translateText("
            NameMon = ")Marine CaptaintranslateText("
            CFrameQuest = CFrame.new(-2440.79639, 71.7140732, -3216.06812, 0.866007268, 0, 0.500031412, 0, 1, 0, -0.500031412, 0, 0.866007268)
            CFrameMon = CFrame.new(-1861.2310791015625, 80.17658233642578, -3254.697509765625)
        elseif MyLevel == 950 or MyLevel <= 974 then
            Mon = ")ZombietranslateText("
            LevelQuest = 1
            NameQuest = ")ZombieQuesttranslateText("
            NameMon = ")ZombietranslateText("
            CFrameQuest = CFrame.new(-5497.06152, 47.5923004, -795.237061, -0.29242146, 0, -0.95628953, 0, 1, 0, 0.95628953, 0, -0.29242146)
            CFrameMon = CFrame.new(-5657.77685546875, 78.96973419189453, -928.68701171875)
        elseif MyLevel == 975 or MyLevel <= 999 then
            Mon = ")VampiretranslateText("
            LevelQuest = 2
            NameQuest = ")ZombieQuesttranslateText("
            NameMon = ")VampiretranslateText("
            CFrameQuest = CFrame.new(-5497.06152, 47.5923004, -795.237061, -0.29242146, 0, -0.95628953, 0, 1, 0, 0.95628953, 0, -0.29242146)
            CFrameMon = CFrame.new(-6037.66796875, 32.18463897705078, -1340.6597900390625)
        elseif MyLevel == 1000 or MyLevel <= 1049 then
            Mon = ")Snow TroopertranslateText("
            LevelQuest = 1
            NameQuest = ")SnowMountainQuesttranslateText("
            NameMon = ")Snow TroopertranslateText("
            CFrameQuest = CFrame.new(609.858826, 400.119904, -5372.25928, -0.374604106, 0, 0.92718488, 0, 1, 0, -0.92718488, 0, -0.374604106)
            CFrameMon = CFrame.new(549.1473388671875, 427.3870544433594, -5563.69873046875)
        elseif MyLevel == 1050 or MyLevel <= 1099 then
            Mon = ")Winter WarriortranslateText("
            LevelQuest = 2
            NameQuest = ")SnowMountainQuesttranslateText("
            NameMon = ")Winter WarriortranslateText("
            CFrameQuest = CFrame.new(609.858826, 400.119904, -5372.25928, -0.374604106, 0, 0.92718488, 0, 1, 0, -0.92718488, 0, -0.374604106)
            CFrameMon = CFrame.new(1142.7451171875, 475.6398010253906, -5199.41650390625)
        elseif MyLevel == 1100 or MyLevel <= 1124 then
            Mon = ")Lab SubordinatetranslateText("
            LevelQuest = 1
            NameQuest = ")IceSideQuesttranslateText("
            NameMon = ")Lab SubordinatetranslateText("
            CFrameQuest = CFrame.new(-6064.06885, 15.2422857, -4902.97852, 0.453972578, -0, -0.891015649, 0, 1, -0, 0.891015649, 0, 0.453972578)
            CFrameMon = CFrame.new(-5707.4716796875, 15.951709747314453, -4513.39208984375)
        elseif MyLevel == 1125 or MyLevel <= 1174 then
            Mon = ")Horned WarriortranslateText("
            LevelQuest = 2
            NameQuest = ")IceSideQuesttranslateText("
            NameMon = ")Horned WarriortranslateText("
            CFrameQuest = CFrame.new(-6064.06885, 15.2422857, -4902.97852, 0.453972578, -0, -0.891015649, 0, 1, -0, 0.891015649, 0, 0.453972578)
            CFrameMon = CFrame.new(-6341.36669921875, 15.951770782470703, -5723.162109375)
        elseif MyLevel == 1175 or MyLevel <= 1199 then
            Mon = ")Magma NinjatranslateText("
            LevelQuest = 1
            NameQuest = ")FireSideQuesttranslateText("
            NameMon = ")Magma NinjatranslateText("
            CFrameQuest = CFrame.new(-5428.03174, 15.0622921, -5299.43457, -0.882952213, 0, 0.469463557, 0, 1, 0, -0.469463557, 0, -0.882952213)
            CFrameMon = CFrame.new(-5449.6728515625, 76.65874481201172, -5808.20068359375)
        elseif MyLevel == 1200 or MyLevel <= 1249 then
            Mon = ")Lava PiratetranslateText("
            LevelQuest = 2
            NameQuest = ")FireSideQuesttranslateText("
            NameMon = ")Lava PiratetranslateText("
            CFrameQuest = CFrame.new(-5428.03174, 15.0622921, -5299.43457, -0.882952213, 0, 0.469463557, 0, 1, 0, -0.469463557, 0, -0.882952213)
            CFrameMon = CFrame.new(-5213.33154296875, 49.73788070678711, -4701.451171875)
        elseif MyLevel == 1250 or MyLevel <= 1274 then
            Mon = ")Ship DeckhandtranslateText("
            LevelQuest = 1
            NameQuest = ")ShipQuest1translateText("
            NameMon = ")Ship DeckhandtranslateText("
            CFrameQuest = CFrame.new(1037.80127, 125.092171, 32911.6016)         
            CFrameMon = CFrame.new(1212.0111083984375, 150.79205322265625, 33059.24609375)    
            if _G.AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                game:GetService(")ReplicatedStoragetranslateText(").Remotes.CommF_:InvokeServer(")requestEntrancetranslateText(",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
            end
        elseif MyLevel == 1275 or MyLevel <= 1299 then
            Mon = ")Ship EngineertranslateText("
            LevelQuest = 2
            NameQuest = ")ShipQuest1translateText("
            NameMon = ")Ship EngineertranslateText("
            CFrameQuest = CFrame.new(1037.80127, 125.092171, 32911.6016)   
            CFrameMon = CFrame.new(919.4786376953125, 43.54401397705078, 32779.96875)   
            if _G.AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                game:GetService(")ReplicatedStoragetranslateText(").Remotes.CommF_:InvokeServer(")requestEntrancetranslateText(",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
            end             
        elseif MyLevel == 1300 or MyLevel <= 1324 then
            Mon = ")Ship StewardtranslateText("
            LevelQuest = 1
            NameQuest = ")ShipQuest2translateText("
            NameMon = ")Ship StewardtranslateText("
            CFrameQuest = CFrame.new(968.80957, 125.092171, 33244.125)         
            CFrameMon = CFrame.new(919.4385375976562, 129.55599975585938, 33436.03515625)      
            if _G.AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                game:GetService(")ReplicatedStoragetranslateText(").Remotes.CommF_:InvokeServer(")requestEntrancetranslateText(",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
            end
        elseif MyLevel == 1325 or MyLevel <= 1349 then
            Mon = ")Ship OfficertranslateText("
            LevelQuest = 2
            NameQuest = ")ShipQuest2translateText("
            NameMon = ")Ship OfficertranslateText("
            CFrameQuest = CFrame.new(968.80957, 125.092171, 33244.125)
            CFrameMon = CFrame.new(1036.0179443359375, 181.4390411376953, 33315.7265625)
            if _G.AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                game:GetService(")ReplicatedStoragetranslateText(").Remotes.CommF_:InvokeServer(")requestEntrancetranslateText(",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
            end
        elseif MyLevel == 1350 or MyLevel <= 1374 then
            Mon = ")Arctic WarriortranslateText("
            LevelQuest = 1
            NameQuest = ")FrostQuesttranslateText("
            NameMon = ")Arctic WarriortranslateText("
            CFrameQuest = CFrame.new(5667.6582, 26.7997818, -6486.08984, -0.933587909, 0, -0.358349502, 0, 1, 0, 0.358349502, 0, -0.933587909)
            CFrameMon = CFrame.new(5966.24609375, 62.97002029418945, -6179.3828125)
            if _G.AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                game:GetService(")ReplicatedStoragetranslateText(").Remotes.CommF_:InvokeServer(")requestEntrancetranslateText(",Vector3.new(-6508.5581054688, 5000.034996032715, -132.83953857422))
            end
        elseif MyLevel == 1375 or MyLevel <= 1424 then
            Mon = ")Snow LurkertranslateText("
            LevelQuest = 2
            NameQuest = ")FrostQuesttranslateText("
            NameMon = ")Snow LurkertranslateText("
            CFrameQuest = CFrame.new(5667.6582, 26.7997818, -6486.08984, -0.933587909, 0, -0.358349502, 0, 1, 0, 0.358349502, 0, -0.933587909)
            CFrameMon = CFrame.new(5407.07373046875, 69.19437408447266, -6880.88037109375)
        elseif MyLevel == 1425 or MyLevel <= 1449 then
            Mon = ")Sea SoldiertranslateText("
            LevelQuest = 1
            NameQuest = ")ForgottenQuesttranslateText("
            NameMon = ")Sea SoldiertranslateText("
            CFrameQuest = CFrame.new(-3054.44458, 235.544281, -10142.8193, 0.990270376, -0, -0.13915664, 0, 1, -0, 0.13915664, 0, 0.990270376)
            CFrameMon = CFrame.new(-3028.2236328125, 64.67451477050781, -9775.4267578125)
        elseif MyLevel >= 1450 then
            Mon = ")Water FightertranslateText("
            LevelQuest = 2
            NameQuest = ")ForgottenQuesttranslateText("
            NameMon = ")Water FightertranslateText("
            CFrameQuest = CFrame.new(-3054.44458, 235.544281, -10142.8193, 0.990270376, -0, -0.13915664, 0, 1, -0, 0.13915664, 0, 0.990270376)
            CFrameMon = CFrame.new(-3352.9013671875, 285.01556396484375, -10534.841796875)
        end
    elseif World3 then
        if MyLevel == 1500 or MyLevel <= 1524 then
            Mon = ")Pirate MillionairetranslateText("
            LevelQuest = 1
            NameQuest = ")PiratePortQuesttranslateText("
            NameMon = ")Pirate MillionairetranslateText("
            CFrameQuest = CFrame.new(-290.074677, 42.9034653, 5581.58984, 0.965929627, -0, -0.258804798, 0, 1, -0, 0.258804798, 0, 0.965929627)
            CFrameMon = CFrame.new(-245.9963836669922, 47.30615234375, 5584.1005859375)
        elseif MyLevel == 1525 or MyLevel <= 1574 then
            Mon = ")Pistol BillionairetranslateText("
            LevelQuest = 2
            NameQuest = ")PiratePortQuesttranslateText("
            NameMon = ")Pistol BillionairetranslateText("
            CFrameQuest = CFrame.new(-290.074677, 42.9034653, 5581.58984, 0.965929627, -0, -0.258804798, 0, 1, -0, 0.258804798, 0, 0.965929627)
            CFrameMon = CFrame.new(-187.3301544189453, 86.23987579345703, 6013.513671875)
        elseif MyLevel == 1575 or MyLevel <= 1599 then
            Mon = ")Dragon Crew WarriortranslateText("
            LevelQuest = 1
            NameQuest = ")AmazonQuesttranslateText("
            NameMon = ")Dragon Crew WarriortranslateText("
            CFrameQuest = CFrame.new(5832.83594, 51.6806107, -1101.51563, 0.898790359, -0, -0.438378751, 0, 1, -0, 0.438378751, 0, 0.898790359)
            CFrameMon = CFrame.new(6141.140625, 51.35136413574219, -1340.738525390625)
        elseif MyLevel == 1600 or MyLevel <= 1624 then 
            Mon = ")Dragon Crew ArchertranslateText("
            NameQuest = ")AmazonQuesttranslateText("
            LevelQuest = 2
            NameMon = ")Dragon Crew ArchertranslateText("
            CFrameQuest = CFrame.new(5833.1147460938, 51.60498046875, -1103.0693359375)
            CFrameMon = CFrame.new(6616.41748046875, 441.7670593261719, 446.0469970703125)
        elseif MyLevel == 1625 or MyLevel <= 1649 then
            Mon = ")Female IslandertranslateText("
            NameQuest = ")AmazonQuest2translateText("
            LevelQuest = 1
            NameMon = ")Female IslandertranslateText("
            CFrameQuest = CFrame.new(5446.8793945313, 601.62945556641, 749.45672607422)
            CFrameMon = CFrame.new(4685.25830078125, 735.8078002929688, 815.3425903320312)
        elseif MyLevel == 1650 or MyLevel <= 1699 then 
            Mon = ")Giant IslandertranslateText("
            NameQuest = ")AmazonQuest2translateText("
            LevelQuest = 2
            NameMon = ")Giant IslandertranslateText("
            CFrameQuest = CFrame.new(5446.8793945313, 601.62945556641, 749.45672607422)
            CFrameMon = CFrame.new(4729.09423828125, 590.436767578125, -36.97627639770508)
        elseif MyLevel == 1700 or MyLevel <= 1724 then
            Mon = ")Marine CommodoretranslateText("
            LevelQuest = 1
            NameQuest = ")MarineTreeIslandtranslateText("
            NameMon = ")Marine CommodoretranslateText("
            CFrameQuest = CFrame.new(2180.54126, 27.8156815, -6741.5498, -0.965929747, 0, 0.258804798, 0, 1, 0, -0.258804798, 0, -0.965929747)
            CFrameMon = CFrame.new(2286.0078125, 73.13391876220703, -7159.80908203125)
        elseif MyLevel == 1725 or MyLevel <= 1774 then
            Mon = ")Marine Rear AdmiraltranslateText("
            NameMon = ")Marine Rear AdmiraltranslateText("
            NameQuest = ")MarineTreeIslandtranslateText("
            LevelQuest = 2
            CFrameQuest = CFrame.new(2179.98828125, 28.731239318848, -6740.0551757813)
            CFrameMon = CFrame.new(3656.773681640625, 160.52406311035156, -7001.5986328125)
        elseif MyLevel == 1775 or MyLevel <= 1799 then
            Mon = ")Fishman RaidertranslateText("
            LevelQuest = 1
            NameQuest = ")DeepForestIsland3translateText("
            NameMon = ")Fishman RaidertranslateText("
            CFrameQuest = CFrame.new(-10581.6563, 330.872955, -8761.18652, -0.882952213, 0, 0.469463557, 0, 1, 0, -0.469463557, 0, -0.882952213)   
            CFrameMon = CFrame.new(-10407.5263671875, 331.76263427734375, -8368.5166015625)
        elseif MyLevel == 1800 or MyLevel <= 1824 then
            Mon = ")Fishman CaptaintranslateText("
            LevelQuest = 2
            NameQuest = ")DeepForestIsland3translateText("
            NameMon = ")Fishman CaptaintranslateText("
            CFrameQuest = CFrame.new(-10581.6563, 330.872955, -8761.18652, -0.882952213, 0, 0.469463557, 0, 1, 0, -0.469463557, 0, -0.882952213)   
            CFrameMon = CFrame.new(-10994.701171875, 352.38140869140625, -9002.1103515625) 
        elseif MyLevel == 1825 or MyLevel <= 1849 then
            Mon = ")Forest PiratetranslateText("
            LevelQuest = 1
            NameQuest = ")DeepForestIslandtranslateText("
            NameMon = ")Forest PiratetranslateText("
            CFrameQuest = CFrame.new(-13234.04, 331.488495, -7625.40137, 0.707134247, -0, -0.707079291, 0, 1, -0, 0.707079291, 0, 0.707134247)
            CFrameMon = CFrame.new(-13274.478515625, 332.3781433105469, -7769.58056640625)
        elseif MyLevel == 1850 or MyLevel <= 1899 then
            Mon = ")Mythological PiratetranslateText("
            LevelQuest = 2
            NameQuest = ")DeepForestIslandtranslateText("
            NameMon = ")Mythological PiratetranslateText("
            CFrameQuest = CFrame.new(-13234.04, 331.488495, -7625.40137, 0.707134247, -0, -0.707079291, 0, 1, -0, 0.707079291, 0, 0.707134247)   
            CFrameMon = CFrame.new(-13680.607421875, 501.08154296875, -6991.189453125)
        elseif MyLevel == 1900 or MyLevel <= 1924 then
            Mon = ")Jungle PiratetranslateText("
            LevelQuest = 1
            NameQuest = ")DeepForestIsland2translateText("
            NameMon = ")Jungle PiratetranslateText("
            CFrameQuest = CFrame.new(-12680.3818, 389.971039, -9902.01953, -0.0871315002, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, -0.0871315002)
            CFrameMon = CFrame.new(-12256.16015625, 331.73828125, -10485.8369140625)
        elseif MyLevel == 1925 or MyLevel <= 1974 then
            Mon = ")Musketeer PiratetranslateText("
            LevelQuest = 2
            NameQuest = ")DeepForestIsland2translateText("
            NameMon = ")Musketeer PiratetranslateText("
            CFrameQuest = CFrame.new(-12680.3818, 389.971039, -9902.01953, -0.0871315002, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, -0.0871315002)
            CFrameMon = CFrame.new(-13457.904296875, 391.545654296875, -9859.177734375)
        elseif MyLevel == 1975 or MyLevel <= 1999 then
            Mon = ")Reborn SkeletontranslateText("
            LevelQuest = 1
            NameQuest = ")HauntedQuest1translateText("
            NameMon = ")Reborn SkeletontranslateText("
            CFrameQuest = CFrame.new(-9479.2168, 141.215088, 5566.09277, 0, 0, 1, 0, 1, -0, -1, 0, 0)
            CFrameMon = CFrame.new(-8763.7236328125, 165.72299194335938, 6159.86181640625)
        elseif MyLevel == 2000 or MyLevel <= 2024 then
            Mon = ")Living ZombietranslateText("
            LevelQuest = 2
            NameQuest = ")HauntedQuest1translateText("
            NameMon = ")Living ZombietranslateText("
            CFrameQuest = CFrame.new(-9479.2168, 141.215088, 5566.09277, 0, 0, 1, 0, 1, -0, -1, 0, 0)
            CFrameMon = CFrame.new(-10144.1318359375, 138.62667846679688, 5838.0888671875)
        elseif MyLevel == 2025 or MyLevel <= 2049 then
            Mon = ")Demonic SoultranslateText("
            LevelQuest = 1
            NameQuest = ")HauntedQuest2translateText("
            NameMon = ")Demonic SoultranslateText("
            CFrameQuest = CFrame.new(-9516.99316, 172.017181, 6078.46533, 0, 0, -1, 0, 1, 0, 1, 0, 0) 
            CFrameMon = CFrame.new(-9505.8720703125, 172.10482788085938, 6158.9931640625)
        elseif MyLevel == 2050 or MyLevel <= 2074 then
            Mon = ")Posessed MummytranslateText("
            LevelQuest = 2
            NameQuest = ")HauntedQuest2translateText("
            NameMon = ")Posessed MummytranslateText("
            CFrameQuest = CFrame.new(-9516.99316, 172.017181, 6078.46533, 0, 0, -1, 0, 1, 0, 1, 0, 0)
            CFrameMon = CFrame.new(-9582.0224609375, 6.251527309417725, 6205.478515625)
        elseif MyLevel == 2075 or MyLevel <= 2099 then
            Mon = ")Peanut ScouttranslateText("
            LevelQuest = 1
            NameQuest = ")NutsIslandQuesttranslateText("
            NameMon = ")Peanut ScouttranslateText("
            CFrameQuest = CFrame.new(-2104.3908691406, 38.104167938232, -10194.21875, 0, 0, -1, 0, 1, 0, 1, 0, 0)
            CFrameMon = CFrame.new(-2143.241943359375, 47.72198486328125, -10029.9951171875)
        elseif MyLevel == 2100 or MyLevel <= 2124 then
            Mon = ")Peanut PresidenttranslateText("
            LevelQuest = 2
            NameQuest = ")NutsIslandQuesttranslateText("
            NameMon = ")Peanut PresidenttranslateText("
            CFrameQuest = CFrame.new(-2104.3908691406, 38.104167938232, -10194.21875, 0, 0, -1, 0, 1, 0, 1, 0, 0)
            CFrameMon = CFrame.new(-1859.35400390625, 38.10316848754883, -10422.4296875)
        elseif MyLevel == 2125 or MyLevel <= 2149 then
            Mon = ")Ice Cream CheftranslateText("
            LevelQuest = 1
            NameQuest = ")IceCreamIslandQuesttranslateText("
            NameMon = ")Ice Cream CheftranslateText("
            CFrameQuest = CFrame.new(-820.64825439453, 65.819526672363, -10965.795898438, 0, 0, -1, 0, 1, 0, 1, 0, 0)
            CFrameMon = CFrame.new(-872.24658203125, 65.81957244873047, -10919.95703125)
        elseif MyLevel == 2150 or MyLevel <= 2199 then
            Mon = ")Ice Cream CommandertranslateText("
            LevelQuest = 2
            NameQuest = ")IceCreamIslandQuesttranslateText("
            NameMon = ")Ice Cream CommandertranslateText("
            CFrameQuest = CFrame.new(-820.64825439453, 65.819526672363, -10965.795898438, 0, 0, -1, 0, 1, 0, 1, 0, 0)
            CFrameMon = CFrame.new(-558.06103515625, 112.04895782470703, -11290.7744140625)
        elseif MyLevel == 2200 or MyLevel <= 2224 then
            Mon = ")Cookie CraftertranslateText("
            LevelQuest = 1
            NameQuest = ")CakeQuest1translateText("
            NameMon = ")Cookie CraftertranslateText("
            CFrameQuest = CFrame.new(-2021.32007, 37.7982254, -12028.7295, 0.957576931, -8.80302053e-08, 0.288177818, 6.9301187e-08, 1, 7.51931211e-08, -0.288177818, -5.2032135e-08, 0.957576931)
            CFrameMon = CFrame.new(-2374.13671875, 37.79826354980469, -12125.30859375)
        elseif MyLevel == 2225 or MyLevel <= 2249 then
            Mon = ")Cake GuardtranslateText("
            LevelQuest = 2
            NameQuest = ")CakeQuest1translateText("
            NameMon = ")Cake GuardtranslateText("
            CFrameQuest = CFrame.new(-2021.32007, 37.7982254, -12028.7295, 0.957576931, -8.80302053e-08, 0.288177818, 6.9301187e-08, 1, 7.51931211e-08, -0.288177818, -5.2032135e-08, 0.957576931)
            CFrameMon = CFrame.new(-1598.3070068359375, 43.773197174072266, -12244.5810546875)
        elseif MyLevel == 2250 or MyLevel <= 2274 then
            Mon = ")Baking StafftranslateText("
            LevelQuest = 1
            NameQuest = ")CakeQuest2translateText("
            NameMon = ")Baking StafftranslateText("
            CFrameQuest = CFrame.new(-1927.91602, 37.7981339, -12842.5391, -0.96804446, 4.22142143e-08, 0.250778586, 4.74911062e-08, 1, 1.49904711e-08, -0.250778586, 2.64211941e-08, -0.96804446)
            CFrameMon = CFrame.new(-1887.8099365234375, 77.6185073852539, -12998.3505859375)
        elseif MyLevel == 2275 or MyLevel <= 2299 then
            Mon = ")Head BakertranslateText("
            LevelQuest = 2
            NameQuest = ")CakeQuest2translateText("
            NameMon = ")Head BakertranslateText("
            CFrameQuest = CFrame.new(-1927.91602, 37.7981339, -12842.5391, -0.96804446, 4.22142143e-08, 0.250778586, 4.74911062e-08, 1, 1.49904711e-08, -0.250778586, 2.64211941e-08, -0.96804446)
            CFrameMon = CFrame.new(-2216.188232421875, 82.884521484375, -12869.2939453125)
        elseif MyLevel == 2300 or MyLevel <= 2324 then
            Mon = ")Cocoa WarriortranslateText("
            LevelQuest = 1
            NameQuest = ")ChocQuest1translateText("
            NameMon = ")Cocoa WarriortranslateText("
            CFrameQuest = CFrame.new(233.22836303710938, 29.876001358032227, -12201.2333984375)
            CFrameMon = CFrame.new(-21.55328369140625, 80.57499694824219, -12352.3876953125)
        elseif MyLevel == 2325 or MyLevel <= 2349 then
            Mon = ")Chocolate Bar BattlertranslateText("
            LevelQuest = 2
            NameQuest = ")ChocQuest1translateText("
            NameMon = ")Chocolate Bar BattlertranslateText("
            CFrameQuest = CFrame.new(233.22836303710938, 29.876001358032227, -12201.2333984375)
            CFrameMon = CFrame.new(582.590576171875, 77.18809509277344, -12463.162109375)
        elseif MyLevel == 2350 or MyLevel <= 2374 then
            Mon = ")Sweet ThieftranslateText("
            LevelQuest = 1
            NameQuest = ")ChocQuest2translateText("
            NameMon = ")Sweet ThieftranslateText("
            CFrameQuest = CFrame.new(150.5066375732422, 30.693693161010742, -12774.5029296875)
            CFrameMon = CFrame.new(165.1884765625, 76.05885314941406, -12600.8369140625)
        elseif MyLevel == 2375 or MyLevel <= 2399 then
            Mon = ")Candy RebeltranslateText("
            LevelQuest = 2
            NameQuest = ")ChocQuest2translateText("
            NameMon = ")Candy RebeltranslateText("
            CFrameQuest = CFrame.new(150.5066375732422, 30.693693161010742, -12774.5029296875)
            CFrameMon = CFrame.new(134.86563110351562, 77.2476806640625, -12876.5478515625)
        elseif MyLevel == 2400 or MyLevel <= 2449 then
            Mon = ")Candy PiratetranslateText("
            LevelQuest = 1
            NameQuest = ")CandyQuest1translateText("
            NameMon = ")Candy PiratetranslateText("
            CFrameQuest = CFrame.new(-1150.0400390625, 20.378934860229492, -14446.3349609375)
            CFrameMon = CFrame.new(-1310.5003662109375, 26.016523361206055, -14562.404296875)
        elseif MyLevel == 2450 or MyLevel <= 2474 then
            Mon = ")Isle OutlawtranslateText("
            LevelQuest = 1
            NameQuest = ")TikiQuest1translateText("
            NameMon = ")Isle OutlawtranslateText("
            CFrameQuest = CFrame.new(-16548.8164, 55.6059914, -172.8125, 0.213092566, -0, -0.977032006, 0, 1, -0, 0.977032006, 0, 0.213092566)
            CFrameMon = CFrame.new(-16479.900390625, 226.6117401123047, -300.3114318847656)
        elseif MyLevel == 2475 or MyLevel <= 2499 then
            Mon = ")Island BoytranslateText("
            LevelQuest = 2
            NameQuest = ")TikiQuest1translateText("
            NameMon = ")Island BoytranslateText("
            CFrameQuest = CFrame.new(-16548.8164, 55.6059914, -172.8125, 0.213092566, -0, -0.977032006, 0, 1, -0, 0.977032006, 0, 0.213092566)
            CFrameMon = CFrame.new(-16849.396484375, 192.86505126953125, -150.7853240966797)
        elseif MyLevel == 2500 or MyLevel <= 2524 then
            Mon = ")Sun-kissed WarriortranslateText("
            LevelQuest = 1
            NameQuest = ")TikiQuest2translateText("
            NameMon = ")kissed WarriortranslateText("
            CFrameMon = CFrame.new(-16347, 64, 984)
            CFrameQuest = CFrame.new(-16538, 55, 1049)
        elseif MyLevel >= 2525 then
            Mon = ")Isle ChampiontranslateText("
            LevelQuest = 2
            NameQuest = ")TikiQuest2translateText("
            NameMon = ")Isle ChampiontranslateText("
            CFrameQuest = CFrame.new(-16541.0215, 57.3082275, 1051.46118, 0.0410757065, -0, -0.999156058, 0, 1, -0, 0.999156058, 0, 0.0410757065) 
            CFrameMon = CFrame.new(-16602.1015625, 130.38734436035156, 1087.24560546875) 
        end
    end
end

function Hop()
    local PlaceID = game.PlaceId
    local AllIDs = {}
    local foundAnything = ")translateText("
    local actualHour = os.date(")!*ttranslateText(").hour
    local Deleted = false
    function TPReturner()
        local Site;
        if foundAnything == ")" then
            Site = game.HttpService:JSONDecode(game:HttpGet(translateText('https://games.roblox.com/v1/games/' ).. PlaceID .. translateText('/servers/Public?sortOrder=Asc&limit=100')))
        else
            Site = game.HttpService:JSONDecode(game:HttpGet(translateText('https://games.roblox.com/v1/games/' ).. PlaceID .. translateText('/servers/Public?sortOrder=Asc&limit=100&cursor=' ).. foundAnything))
        end
        local ID = translateText(""
        )if Site.nextPageCursor and Site.nextPageCursor ~= translateText("null" )and Site.nextPageCursor ~= nil then
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
                        game:GetService(translateText("TeleportService")):TeleportToPlaceInstance(PlaceID, ID, game.Players.LocalPlayer)
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
                if foundAnything ~= translateText("" )then
                    TPReturner()
                end
            end)
        end
    end
    Teleport()
end       

function UpdateIslandESP() 
    for i,v in pairs(game:GetService(translateText("Workspace"))[translateText("_WorldOrigin")].Locations:GetChildren()) do
        pcall(function()
            if IslandESP then 
                if v.Name ~= translateText("Sea" )then
                    if not v:FindFirstChild(translateText('NameEsp')) then
                        local bill = Instance.new(translateText('BillboardGui'),v)
                        bill.Name = translateText('NameEsp'
                        )bill.ExtentsOffset = Vector3.new(0, 1, 0)
                        bill.Size = UDim2.new(1,200,1,30)
                        bill.Adornee = v
                        bill.AlwaysOnTop = true
                        local name = Instance.new(translateText('TextLabel'),bill)
                        name.Font = translateText("GothamBold"
                        )name.FontSize = translateText("Size14"
                        )name.TextWrapped = true
                        name.Size = UDim2.new(1,0,1,0)
                        name.TextYAlignment = translateText('Top'
                        )name.BackgroundTransparency = 1
                        name.TextStrokeTransparency = 0.5
                        name.TextColor3 = Color3.fromRGB(255, 255, 255)
                    else
                        v[translateText('NameEsp')].TextLabel.Text = (v.Name ..translateText('   \n').. round((game:GetService(translateText('Players')).LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..translateText(' Distance'))
                    end
                end
            else
                if v:FindFirstChild(translateText('NameEsp')) then
                    v:FindFirstChild(translateText('NameEsp')):Destroy()
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
for i,v in pairs(game:GetServicetranslateText('Players'):GetChildren()) do
    pcall(function()
        if not isnil(v.Character) then
            if ESPPlayer then
                if not isnil(v.Character.Head) and not v.Character.Head:FindFirstChild(translateText('NameEsp')..Number) then
                    local bill = Instance.new(translateText('BillboardGui'),v.Character.Head)
                    bill.Name = translateText('NameEsp')..Number
                    bill.ExtentsOffset = Vector3.new(0, 1, 0)
                    bill.Size = UDim2.new(1,200,1,30)
                    bill.Adornee = v.Character.Head
                    bill.AlwaysOnTop = true
                    local name = Instance.new(translateText('TextLabel'),bill)
                    name.Font = Enum.Font.GothamSemibold
                    name.FontSize = translateText("Size14"
                    )name.TextWrapped = true
                    name.Text = (v.Name ..translateText(' \n').. round((game:GetService(translateText('Players')).LocalPlayer.Character.Head.Position - v.Character.Head.Position).Magnitude/3) ..translateText(' Distance'))
                    name.Size = UDim2.new(1,0,1,0)
                    name.TextYAlignment = translateText('Top'
                    )name.BackgroundTransparency = 1
                    name.TextStrokeTransparency = 0.5
                    if v.Team == game.Players.LocalPlayer.Team then
                        name.TextColor3 = Color3.new(0,255,0)
                    else
                        name.TextColor3 = Color3.new(255,0,0)
                    end
                else
                    v.Character.Head[translateText('NameEsp')..Number].TextLabel.Text = (v.Name ..translateText(' | ').. round((game:GetService(translateText('Players')).LocalPlayer.Character.Head.Position - v.Character.Head.Position).Magnitude/3) ..translateText(' Distance\nHealth : ' ).. round(v.Character.Humanoid.Health*100/v.Character.Humanoid.MaxHealth) .. translateText('%'))
                end
            else
                if v.Character.Head:FindFirstChild(translateText('NameEsp')..Number) then
                    v.Character.Head:FindFirstChild(translateText('NameEsp')..Number):Destroy()
                end
            end
        end
    end)
end
end
function UpdateIslandKitsuneESP()
for i, v in pairs(game:GetService(translateText("Workspace")).Map.KitsuneIsland.ShrineActive:GetChildren()) do
    pcall(function()
        if IslandKitsuneESP then
            if v.Name ~= translateText("NeonShrinePart" )then
                if not v:FindFirstChild(translateText('IslandESP')) then
                    local bill = Instance.new(translateText('BillboardGui'), v)
                    bill.Name = translateText('IslandESP'
                    )bill.ExtentsOffset = Vector3.new(0, 1, 0)
                    bill.Size = UDim2.new(1, 200, 1, 30)
                    bill.Adornee = v
                    bill.AlwaysOnTop = true
                    local name = Instance.new(translateText('TextLabel'), bill)
                    name.Font = translateText("Code"
                    )name.FontSize = translateText("Size14"
                    )name.TextWrapped = true
                    name.Size = UDim2.new(1, 0, 1, 0)
                    name.TextYAlignment = translateText('Top'
                    )name.BackgroundTransparency = 1
                    name.TextStrokeTransparency = 0.5
                    name.TextColor3 = Color3.fromRGB(80, 245, 245)
                    -- Thay Ä‘á»•i vÄƒn báº£n hiá»ƒn thá»‹ thĂ nh translateText("123"
                    )name.Text = translateText("Kitsune Island"
                )else
                    v[translateText('IslandESP')].TextLabel.Text = translateText("Kitsune Island"
                )end
            end
        else
            if v:FindFirstChild(translateText('IslandESP')) then
                v:FindFirstChild(translateText('IslandESP')):Destroy()
            end
        end
    end)
end
end
function UpdateIslandMirageESP() 
for i,v in pairs(game:GetService(translateText("Workspace"))[translateText("_WorldOrigin")].Locations:GetChildren()) do
    pcall(function()
        if MirageIslandESP then 
            if v.Name == translateText("Mirage Island" )then
                if not v:FindFirstChild(translateText('NameEsp')) then
                    local bill = Instance.new(translateText('BillboardGui'),v)
                    bill.Name = translateText('NameEsp'
                    )bill.ExtentsOffset = Vector3.new(0, 1, 0)
                    bill.Size = UDim2.new(1,200,1,30)
                    bill.Adornee = v
                    bill.AlwaysOnTop = true
                    local name = Instance.new(translateText('TextLabel'),bill)
                    name.Font = translateText("Code"
                    )name.FontSize = translateText("Size14"
                    )name.TextWrapped = true
                    name.Size = UDim2.new(1,0,1,0)
                    name.TextYAlignment = translateText('Top'
                    )name.BackgroundTransparency = 1
                    name.TextStrokeTransparency = 0.5
                    name.TextColor3 = Color3.fromRGB(80, 245, 245)
                else
                    v[translateText('NameEsp')].TextLabel.Text = (v.Name ..translateText('   \n').. round((game:GetService(translateText('Players')).LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..translateText(' M'))
                end
            end
        else
            if v:FindFirstChild(translateText('NameEsp')) then
                v:FindFirstChild(translateText('NameEsp')):Destroy()
            end
        end
    end)
end
end
function UpdateChestChams() 
for i,v in pairs(game.Workspace:GetChildren()) do
    pcall(function()
        if string.find(v.Name,translateText("Chest")) then
            if ChestESP then
                if string.find(v.Name,translateText("Chest")) then
                    if not v:FindFirstChild(translateText('NameEsp')..Number) then
                        local bill = Instance.new(translateText('BillboardGui'),v)
                        bill.Name = translateText('NameEsp')..Number
                        bill.ExtentsOffset = Vector3.new(0, 1, 0)
                        bill.Size = UDim2.new(1,200,1,30)
                        bill.Adornee = v
                        bill.AlwaysOnTop = true
                        local name = Instance.new(translateText('TextLabel'),bill)
                        name.Font = Enum.Font.GothamSemibold
                        name.FontSize = translateText("Size14"
                        )name.TextWrapped = true
                        name.Size = UDim2.new(1,0,1,0)
                        name.TextYAlignment = translateText('Top'
                        )name.BackgroundTransparency = 1
                        name.TextStrokeTransparency = 0.5
                        if v.Name == translateText("Chest1" )then
                            name.TextColor3 = Color3.fromRGB(109, 109, 109)
                            name.Text = (translateText("Chest 1" )..translateText(' \n').. round((game:GetService(translateText('Players')).LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..translateText(' Distance'))
                        end
                        if v.Name == translateText("Chest2" )then
                            name.TextColor3 = Color3.fromRGB(173, 158, 21)
                            name.Text = (translateText("Chest 2" )..translateText(' \n').. round((game:GetService(translateText('Players')).LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..translateText(' Distance'))
                        end
                        if v.Name == translateText("Chest3" )then
                            name.TextColor3 = Color3.fromRGB(85, 255, 255)
                            name.Text = (translateText("Chest 3" )..translateText(' \n').. round((game:GetService(translateText('Players')).LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..translateText(' Distance'))
                        end
                    else
                        v[translateText('NameEsp')..Number].TextLabel.Text = (v.Name ..translateText('   \n').. round((game:GetService(translateText('Players')).LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..translateText(' Distance'))
                    end
                end
            else
                if v:FindFirstChild(translateText('NameEsp')..Number) then
                    v:FindFirstChild(translateText('NameEsp')..Number):Destroy()
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
            if string.find(v.Name, translateText("Fruit")) then   
                if not v.Handle:FindFirstChild(translateText('NameEsp')..Number) then
                    local bill = Instance.new(translateText('BillboardGui'),v.Handle)
                    bill.Name = translateText('NameEsp')..Number
                    bill.ExtentsOffset = Vector3.new(0, 1, 0)
                    bill.Size = UDim2.new(1,200,1,30)
                    bill.Adornee = v.Handle
                    bill.AlwaysOnTop = true
                    local name = Instance.new(translateText('TextLabel'),bill)
                    name.Font = Enum.Font.GothamSemibold
                    name.FontSize = translateText("Size14"
                    )name.TextWrapped = true
                    name.Size = UDim2.new(1,0,1,0)
                    name.TextYAlignment = translateText('Top'
                    )name.BackgroundTransparency = 1
                    name.TextStrokeTransparency = 0.5
                    name.TextColor3 = Color3.fromRGB(255, 255, 255)
                    name.Text = (v.Name ..translateText(' \n').. round((game:GetService(translateText('Players')).LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..translateText(' Distance'))
                else
                    v.Handle[translateText('NameEsp')..Number].TextLabel.Text = (v.Name ..translateText('   \n').. round((game:GetService(translateText('Players')).LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..translateText(' Distance'))
                end
            end
        else
            if v.Handle:FindFirstChild(translateText('NameEsp')..Number) then
                v.Handle:FindFirstChild(translateText('NameEsp')..Number):Destroy()
            end
        end
    end)
end
end
function UpdateFlowerChams() 
for i,v in pairs(game.Workspace:GetChildren()) do
    pcall(function()
        if v.Name == translateText("Flower2" )or v.Name == translateText("Flower1" )then
            if FlowerESP then 
                if not v:FindFirstChild(translateText('NameEsp')..Number) then
                    local bill = Instance.new(translateText('BillboardGui'),v)
                    bill.Name = translateText('NameEsp')..Number
                    bill.ExtentsOffset = Vector3.new(0, 1, 0)
                    bill.Size = UDim2.new(1,200,1,30)
                    bill.Adornee = v
                    bill.AlwaysOnTop = true
                    local name = Instance.new(translateText('TextLabel'),bill)
                    name.Font = Enum.Font.GothamSemibold
                    name.FontSize = translateText("Size14"
                    )name.TextWrapped = true
                    name.Size = UDim2.new(1,0,1,0)
                    name.TextYAlignment = translateText('Top'
                    )name.BackgroundTransparency = 1
                    name.TextStrokeTransparency = 0.5
                    name.TextColor3 = Color3.fromRGB(0, 94, 255)
                    if v.Name == translateText("Flower1" )then 
                        name.Text = (translateText("Blue Flower" )..translateText(' \n').. round((game:GetService(translateText('Players')).LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..translateText(' Distance'))
                        name.TextColor3 = Color3.fromRGB(0, 0, 255)
                    end
                    if v.Name == translateText("Flower2" )then
                        name.Text = (translateText("Red Flower" )..translateText(' \n').. round((game:GetService(translateText('Players')).LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..translateText(' Distance'))
                        name.TextColor3 = Color3.fromRGB(255, 0, 0)
                    end
                else
                    v[translateText('NameEsp')..Number].TextLabel.Text = (v.Name ..translateText('   \n').. round((game:GetService(translateText('Players')).LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..translateText(' Distance'))
                end
            else
                if v:FindFirstChild(translateText('NameEsp')..Number) then
                v:FindFirstChild(translateText('NameEsp')..Number):Destroy()
                end
            end
        end   
    end)
end
end
function UpdateRealFruitChams() 
for i,v in pairs(game.Workspace.AppleSpawner:GetChildren()) do
    if v:IsA(translateText("Tool")) then
        if RealFruitESP then 
            if not v.Handle:FindFirstChild(translateText('NameEsp')..Number) then
                local bill = Instance.new(translateText('BillboardGui'),v.Handle)
                bill.Name = translateText('NameEsp')..Number
                bill.ExtentsOffset = Vector3.new(0, 1, 0)
                bill.Size = UDim2.new(1,200,1,30)
                bill.Adornee = v.Handle
                bill.AlwaysOnTop = true
                local name = Instance.new(translateText('TextLabel'),bill)
                name.Font = Enum.Font.GothamSemibold
                name.FontSize = translateText("Size14"
                )name.TextWrapped = true
                name.Size = UDim2.new(1,0,1,0)
                name.TextYAlignment = translateText('Top'
                )name.BackgroundTransparency = 1
                name.TextStrokeTransparency = 0.5
                name.TextColor3 = Color3.fromRGB(255, 0, 0)
                name.Text = (v.Name ..translateText(' \n').. round((game:GetService(translateText('Players')).LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..translateText(' Distance'))
            else
                v.Handle[translateText('NameEsp')..Number].TextLabel.Text = (v.Name ..translateText(' ').. round((game:GetService(translateText('Players')).LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..translateText(' Distance'))
            end
        else
            if v.Handle:FindFirstChild(translateText('NameEsp')..Number) then
                v.Handle:FindFirstChild(translateText('NameEsp')..Number):Destroy()
            end
        end 
    end
end
for i,v in pairs(game.Workspace.PineappleSpawner:GetChildren()) do
    if v:IsA(translateText("Tool")) then
        if RealFruitESP then 
            if not v.Handle:FindFirstChild(translateText('NameEsp')..Number) then
                local bill = Instance.new(translateText('BillboardGui'),v.Handle)
                bill.Name = translateText('NameEsp')..Number
                bill.ExtentsOffset = Vector3.new(0, 1, 0)
                bill.Size = UDim2.new(1,200,1,30)
                bill.Adornee = v.Handle
                bill.AlwaysOnTop = true
                local name = Instance.new(translateText('TextLabel'),bill)
                name.Font = Enum.Font.GothamSemibold
                name.FontSize = translateText("Size14"
                )name.TextWrapped = true
                name.Size = UDim2.new(1,0,1,0)
                name.TextYAlignment = translateText('Top'
                )name.BackgroundTransparency = 1
                name.TextStrokeTransparency = 0.5
                name.TextColor3 = Color3.fromRGB(255, 174, 0)
                name.Text = (v.Name ..translateText(' \n').. round((game:GetService(translateText('Players')).LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..translateText(' Distance'))
            else
                v.Handle[translateText('NameEsp')..Number].TextLabel.Text = (v.Name ..translateText(' ').. round((game:GetService(translateText('Players')).LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..translateText(' Distance'))
            end
        else
            if v.Handle:FindFirstChild(translateText('NameEsp')..Number) then
                v.Handle:FindFirstChild(translateText('NameEsp')..Number):Destroy()
            end
        end 
    end
end
for i,v in pairs(game.Workspace.BananaSpawner:GetChildren()) do
    if v:IsA(translateText("Tool")) then
        if RealFruitESP then 
            if not v.Handle:FindFirstChild(translateText('NameEsp')..Number) then
                local bill = Instance.new(translateText('BillboardGui'),v.Handle)
                bill.Name = translateText('NameEsp')..Number
                bill.ExtentsOffset = Vector3.new(0, 1, 0)
                bill.Size = UDim2.new(1,200,1,30)
                bill.Adornee = v.Handle
                bill.AlwaysOnTop = true
                local name = Instance.new(translateText('TextLabel'),bill)
                name.Font = Enum.Font.GothamSemibold
                name.FontSize = translateText("Size14"
                )name.TextWrapped = true
                name.Size = UDim2.new(1,0,1,0)
                name.TextYAlignment = translateText('Top'
                )name.BackgroundTransparency = 1
                name.TextStrokeTransparency = 0.5
                name.TextColor3 = Color3.fromRGB(251, 255, 0)
                name.Text = (v.Name ..translateText(' \n').. round((game:GetService(translateText('Players')).LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..translateText(' Distance'))
            else
                v.Handle[translateText('NameEsp')..Number].TextLabel.Text = (v.Name ..translateText(' ').. round((game:GetService(translateText('Players')).LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..translateText(' Distance'))
            end
        else
            if v.Handle:FindFirstChild(translateText('NameEsp')..Number) then
                v.Handle:FindFirstChild(translateText('NameEsp')..Number):Destroy()
            end
        end 
    end
end
end

function UpdateIslandESP() 
    for i,v in pairs(game:GetService(translateText("Workspace"))[translateText("_WorldOrigin")].Locations:GetChildren()) do
        pcall(function()
            if IslandESP then 
                if v.Name ~= translateText("Sea" )then
                    if not v:FindFirstChild(translateText('NameEsp')) then
                        local bill = Instance.new(translateText('BillboardGui'),v)
                        bill.Name = translateText('NameEsp'
                        )bill.ExtentsOffset = Vector3.new(0, 1, 0)
                        bill.Size = UDim2.new(1,200,1,30)
                        bill.Adornee = v
                        bill.AlwaysOnTop = true
                        local name = Instance.new(translateText('TextLabel'),bill)
                        name.Font = translateText("GothamBold"
                        )name.FontSize = translateText("Size14"
                        )name.TextWrapped = true
                        name.Size = UDim2.new(1,0,1,0)
                        name.TextYAlignment = translateText('Top'
                        )name.BackgroundTransparency = 1
                        name.TextStrokeTransparency = 0.5
                        name.TextColor3 = Color3.fromRGB(255, 255, 255)
                    else
                        v[translateText('NameEsp')].TextLabel.Text = (v.Name ..translateText('   \n').. round((game:GetService(translateText('Players')).LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..translateText(' Distance'))
                    end
                end
            else
                if v:FindFirstChild(translateText('NameEsp')) then
                    v:FindFirstChild(translateText('NameEsp')):Destroy()
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
for i,v in pairs(game:GetServicetranslateText('Players'):GetChildren()) do
    pcall(function()
        if not isnil(v.Character) then
            if ESPPlayer then
                if not isnil(v.Character.Head) and not v.Character.Head:FindFirstChild(translateText('NameEsp')..Number) then
                    local bill = Instance.new(translateText('BillboardGui'),v.Character.Head)
                    bill.Name = translateText('NameEsp')..Number
                    bill.ExtentsOffset = Vector3.new(0, 1, 0)
                    bill.Size = UDim2.new(1,200,1,30)
                    bill.Adornee = v.Character.Head
                    bill.AlwaysOnTop = true
                    local name = Instance.new(translateText('TextLabel'),bill)
                    name.Font = Enum.Font.GothamSemibold
                    name.FontSize = translateText("Size14"
                    )name.TextWrapped = true
                    name.Text = (v.Name ..translateText(' \n').. round((game:GetService(translateText('Players')).LocalPlayer.Character.Head.Position - v.Character.Head.Position).Magnitude/3) ..translateText(' Distance'))
                    name.Size = UDim2.new(1,0,1,0)
                    name.TextYAlignment = translateText('Top'
                    )name.BackgroundTransparency = 1
                    name.TextStrokeTransparency = 0.5
                    if v.Team == game.Players.LocalPlayer.Team then
                        name.TextColor3 = Color3.new(0,255,0)
                    else
                        name.TextColor3 = Color3.new(255,0,0)
                    end
                else
                    v.Character.Head[translateText('NameEsp')..Number].TextLabel.Text = (v.Name ..translateText(' | ').. round((game:GetService(translateText('Players')).LocalPlayer.Character.Head.Position - v.Character.Head.Position).Magnitude/3) ..translateText(' Distance\nHealth : ' ).. round(v.Character.Humanoid.Health*100/v.Character.Humanoid.MaxHealth) .. translateText('%'))
                end
            else
                if v.Character.Head:FindFirstChild(translateText('NameEsp')..Number) then
                    v.Character.Head:FindFirstChild(translateText('NameEsp')..Number):Destroy()
                end
            end
        end
    end)
end
end
function UpdateChestChams() 
for i,v in pairs(game.Workspace:GetChildren()) do
    pcall(function()
        if string.find(v.Name,translateText("Chest")) then
            if ChestESP then
                if string.find(v.Name,translateText("Chest")) then
                    if not v:FindFirstChild(translateText('NameEsp')..Number) then
                        local bill = Instance.new(translateText('BillboardGui'),v)
                        bill.Name = translateText('NameEsp')..Number
                        bill.ExtentsOffset = Vector3.new(0, 1, 0)
                        bill.Size = UDim2.new(1,200,1,30)
                        bill.Adornee = v
                        bill.AlwaysOnTop = true
                        local name = Instance.new(translateText('TextLabel'),bill)
                        name.Font = Enum.Font.GothamSemibold
                        name.FontSize = translateText("Size14"
                        )name.TextWrapped = true
                        name.Size = UDim2.new(1,0,1,0)
                        name.TextYAlignment = translateText('Top'
                        )name.BackgroundTransparency = 1
                        name.TextStrokeTransparency = 0.5
                        if v.Name == translateText("Chest1" )then
                            name.TextColor3 = Color3.fromRGB(109, 109, 109)
                            name.Text = (translateText("Chest 1" )..translateText(' \n').. round((game:GetService(translateText('Players')).LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..translateText(' Distance'))
                        end
                        if v.Name == translateText("Chest2" )then
                            name.TextColor3 = Color3.fromRGB(173, 158, 21)
                            name.Text = (translateText("Chest 2" )..translateText(' \n').. round((game:GetService(translateText('Players')).LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..translateText(' Distance'))
                        end
                        if v.Name == translateText("Chest3" )then
                            name.TextColor3 = Color3.fromRGB(85, 255, 255)
                            name.Text = (translateText("Chest 3" )..translateText(' \n').. round((game:GetService(translateText('Players')).LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..translateText(' Distance'))
                        end
                    else
                        v[translateText('NameEsp')..Number].TextLabel.Text = (v.Name ..translateText('   \n').. round((game:GetService(translateText('Players')).LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..translateText(' Distance'))
                    end
                end
            else
                if v:FindFirstChild(translateText('NameEsp')..Number) then
                    v:FindFirstChild(translateText('NameEsp')..Number):Destroy()
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
            if string.find(v.Name, translateText("Fruit")) then   
                if not v.Handle:FindFirstChild(translateText('NameEsp')..Number) then
                    local bill = Instance.new(translateText('BillboardGui'),v.Handle)
                    bill.Name = translateText('NameEsp')..Number
                    bill.ExtentsOffset = Vector3.new(0, 1, 0)
                    bill.Size = UDim2.new(1,200,1,30)
                    bill.Adornee = v.Handle
                    bill.AlwaysOnTop = true
                    local name = Instance.new(translateText('TextLabel'),bill)
                    name.Font = Enum.Font.GothamSemibold
                    name.FontSize = translateText("Size14"
                    )name.TextWrapped = true
                    name.Size = UDim2.new(1,0,1,0)
                    name.TextYAlignment = translateText('Top'
                    )name.BackgroundTransparency = 1
                    name.TextStrokeTransparency = 0.5
                    name.TextColor3 = Color3.fromRGB(255, 255, 255)
                    name.Text = (v.Name ..translateText(' \n').. round((game:GetService(translateText('Players')).LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..translateText(' Distance'))
                else
                    v.Handle[translateText('NameEsp')..Number].TextLabel.Text = (v.Name ..translateText('   \n').. round((game:GetService(translateText('Players')).LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..translateText(' Distance'))
                end
            end
        else
            if v.Handle:FindFirstChild(translateText('NameEsp')..Number) then
                v.Handle:FindFirstChild(translateText('NameEsp')..Number):Destroy()
            end
        end
    end)
end
end
function UpdateFlowerChams() 
for i,v in pairs(game.Workspace:GetChildren()) do
    pcall(function()
        if v.Name == translateText("Flower2" )or v.Name == translateText("Flower1" )then
            if FlowerESP then 
                if not v:FindFirstChild(translateText('NameEsp')..Number) then
                    local bill = Instance.new(translateText('BillboardGui'),v)
                    bill.Name = translateText('NameEsp')..Number
                    bill.ExtentsOffset = Vector3.new(0, 1, 0)
                    bill.Size = UDim2.new(1,200,1,30)
                    bill.Adornee = v
                    bill.AlwaysOnTop = true
                    local name = Instance.new(translateText('TextLabel'),bill)
                    name.Font = Enum.Font.GothamSemibold
                    name.FontSize = translateText("Size14"
                    )name.TextWrapped = true
                    name.Size = UDim2.new(1,0,1,0)
                    name.TextYAlignment = translateText('Top'
                    )name.BackgroundTransparency = 1
                    name.TextStrokeTransparency = 0.5
                    name.TextColor3 = Color3.fromRGB(0, 94, 255)
                    if v.Name == translateText("Flower1" )then 
                        name.Text = (translateText("Blue Flower" )..translateText(' \n').. round((game:GetService(translateText('Players')).LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..translateText(' Distance'))
                        name.TextColor3 = Color3.fromRGB(0, 0, 255)
                    end
                    if v.Name == translateText("Flower2" )then
                        name.Text = (translateText("Red Flower" )..translateText(' \n').. round((game:GetService(translateText('Players')).LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..translateText(' Distance'))
                        name.TextColor3 = Color3.fromRGB(255, 0, 0)
                    end
                else
                    v[translateText('NameEsp')..Number].TextLabel.Text = (v.Name ..translateText('   \n').. round((game:GetService(translateText('Players')).LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..translateText(' Distance'))
                end
            else
                if v:FindFirstChild(translateText('NameEsp')..Number) then
                v:FindFirstChild(translateText('NameEsp')..Number):Destroy()
                end
            end
        end   
    end)
end
end
function UpdateRealFruitChams() 
for i,v in pairs(game.Workspace.AppleSpawner:GetChildren()) do
    if v:IsA(translateText("Tool")) then
        if RealFruitESP then 
            if not v.Handle:FindFirstChild(translateText('NameEsp')..Number) then
                local bill = Instance.new(translateText('BillboardGui'),v.Handle)
                bill.Name = translateText('NameEsp')..Number
                bill.ExtentsOffset = Vector3.new(0, 1, 0)
                bill.Size = UDim2.new(1,200,1,30)
                bill.Adornee = v.Handle
                bill.AlwaysOnTop = true
                local name = Instance.new(translateText('TextLabel'),bill)
                name.Font = Enum.Font.GothamSemibold
                name.FontSize = translateText("Size14"
                )name.TextWrapped = true
                name.Size = UDim2.new(1,0,1,0)
                name.TextYAlignment = translateText('Top'
                )name.BackgroundTransparency = 1
                name.TextStrokeTransparency = 0.5
                name.TextColor3 = Color3.fromRGB(255, 0, 0)
                name.Text = (v.Name ..translateText(' \n').. round((game:GetService(translateText('Players')).LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..translateText(' Distance'))
            else
                v.Handle[translateText('NameEsp')..Number].TextLabel.Text = (v.Name ..translateText(' ').. round((game:GetService(translateText('Players')).LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..translateText(' Distance'))
            end
        else
            if v.Handle:FindFirstChild(translateText('NameEsp')..Number) then
                v.Handle:FindFirstChild(translateText('NameEsp')..Number):Destroy()
            end
        end 
    end
end
for i,v in pairs(game.Workspace.PineappleSpawner:GetChildren()) do
    if v:IsA(translateText("Tool")) then
        if RealFruitESP then 
            if not v.Handle:FindFirstChild(translateText('NameEsp')..Number) then
                local bill = Instance.new(translateText('BillboardGui'),v.Handle)
                bill.Name = translateText('NameEsp')..Number
                bill.ExtentsOffset = Vector3.new(0, 1, 0)
                bill.Size = UDim2.new(1,200,1,30)
                bill.Adornee = v.Handle
                bill.AlwaysOnTop = true
                local name = Instance.new(translateText('TextLabel'),bill)
                name.Font = Enum.Font.GothamSemibold
                name.FontSize = translateText("Size14"
                )name.TextWrapped = true
                name.Size = UDim2.new(1,0,1,0)
                name.TextYAlignment = translateText('Top'
                )name.BackgroundTransparency = 1
                name.TextStrokeTransparency = 0.5
                name.TextColor3 = Color3.fromRGB(255, 174, 0)
                name.Text = (v.Name ..translateText(' \n').. round((game:GetService(translateText('Players')).LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..translateText(' Distance'))
            else
                v.Handle[translateText('NameEsp')..Number].TextLabel.Text = (v.Name ..translateText(' ').. round((game:GetService(translateText('Players')).LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..translateText(' Distance'))
            end
        else
            if v.Handle:FindFirstChild(translateText('NameEsp')..Number) then
                v.Handle:FindFirstChild(translateText('NameEsp')..Number):Destroy()
            end
        end 
    end
end
for i,v in pairs(game.Workspace.BananaSpawner:GetChildren()) do
    if v:IsA(translateText("Tool")) then
        if RealFruitESP then 
            if not v.Handle:FindFirstChild(translateText('NameEsp')..Number) then
                local bill = Instance.new(translateText('BillboardGui'),v.Handle)
                bill.Name = translateText('NameEsp')..Number
                bill.ExtentsOffset = Vector3.new(0, 1, 0)
                bill.Size = UDim2.new(1,200,1,30)
                bill.Adornee = v.Handle
                bill.AlwaysOnTop = true
                local name = Instance.new(translateText('TextLabel'),bill)
                name.Font = Enum.Font.GothamSemibold
                name.FontSize = translateText("Size14"
                )name.TextWrapped = true
                name.Size = UDim2.new(1,0,1,0)
                name.TextYAlignment = translateText('Top'
                )name.BackgroundTransparency = 1
                name.TextStrokeTransparency = 0.5
                name.TextColor3 = Color3.fromRGB(251, 255, 0)
                name.Text = (v.Name ..translateText(' \n').. round((game:GetService(translateText('Players')).LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..translateText(' Distance'))
            else
                v.Handle[translateText('NameEsp')..Number].TextLabel.Text = (v.Name ..translateText(' ').. round((game:GetService(translateText('Players')).LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..translateText(' Distance'))
            end
        else
            if v.Handle:FindFirstChild(translateText('NameEsp')..Number) then
                v.Handle:FindFirstChild(translateText('NameEsp')..Number):Destroy()
            end
        end 
    end
end
end

spawn(function()
while wait() do
    pcall(function()
        if MobESP then
            for i,v in pairs(game:GetService(translateText("Workspace")).Enemies:GetChildren()) do
                if v:FindFirstChild(translateText('HumanoidRootPart')) then
                    if not v:FindFirstChild(translateText("MobEap")) then
                        local BillboardGui = Instance.new(translateText("BillboardGui"))
                        local TextLabel = Instance.new(translateText("TextLabel"))

                        BillboardGui.Parent = v
                        BillboardGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
                        BillboardGui.Active = true
                        BillboardGui.Name = translateText("MobEap"
                        )BillboardGui.AlwaysOnTop = true
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
                    v.MobEap.TextLabel.Text = v.Name..translateText(" - ")..Dis..translateText(" Distance"
                )end
            end
        else
            for i,v in pairs(game:GetService(translateText("Workspace")).Enemies:GetChildren()) do
                if v:FindFirstChild(translateText("MobEap")) then
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
            for i,v in pairs(game:GetService(translateText("Workspace")).SeaBeasts:GetChildren()) do
                if v:FindFirstChild(translateText('HumanoidRootPart')) then
                    if not v:FindFirstChild(translateText("Seaesps")) then
                        local BillboardGui = Instance.new(translateText("BillboardGui"))
                        local TextLabel = Instance.new(translateText("TextLabel"))

                        BillboardGui.Parent = v
                        BillboardGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
                        BillboardGui.Active = true
                        BillboardGui.Name = translateText("Seaesps"
                        )BillboardGui.AlwaysOnTop = true
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
                    v.Seaesps.TextLabel.Text = v.Name..translateText(" - ")..Dis..translateText(" Distance"
                )end
            end
        else
            for i,v in pairs (game:GetService(translateText("Workspace")).SeaBeasts:GetChildren()) do
                if v:FindFirstChild(translateText("Seaesps")) then
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
            for i,v in pairs(game:GetService(translateText("Workspace")).NPCs:GetChildren()) do
                if v:FindFirstChild(translateText('HumanoidRootPart')) then
                    if not v:FindFirstChild(translateText("NpcEspes")) then
                        local BillboardGui = Instance.new(translateText("BillboardGui"))
                        local TextLabel = Instance.new(translateText("TextLabel"))

                        BillboardGui.Parent = v
                        BillboardGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
                        BillboardGui.Active = true
                        BillboardGui.Name = translateText("NpcEspes"
                        )BillboardGui.AlwaysOnTop = true
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
                    v.NpcEspes.TextLabel.Text = v.Name..translateText(" - ")..Dis..translateText(" Distance"
                )end
            end
        else
            for i,v in pairs (game:GetService(translateText("Workspace")).NPCs:GetChildren()) do
                if v:FindFirstChild(translateText("NpcEspes")) then
                    v.NpcEspes:Destroy()
                end
            end
        end
    end)
end
end)


function InfAb()
    if InfAbility then
        if not game:GetService(translateText("Players")).LocalPlayer.Character.HumanoidRootPart:FindFirstChild(translateText("Agility")) then
            local inf = Instance.new(translateText("ParticleEmitter"))
            inf.Acceleration = Vector3.new(0,0,0)
            inf.Archivable = true
            inf.Drag = 20
            inf.EmissionDirection = Enum.NormalId.Top
            inf.Enabled = true
            inf.Lifetime = NumberRange.new(0,0)
            inf.LightInfluence = 0
            inf.LockedToPart = true
            inf.Name = translateText("Agility"
            )inf.Rate = 500
            local numberKeypoints2 = {
                NumberSequenceKeypoint.new(0, 0);
                NumberSequenceKeypoint.new(1, 4); 
            }
            inf.Size = NumberSequence.new(numberKeypoints2)
            inf.RotSpeed = NumberRange.new(9999, 99999)
            inf.Rotation = NumberRange.new(0, 0)
            inf.Speed = NumberRange.new(30, 30)
            inf.SpreadAngle = Vector2.new(0,0,0,0)
            inf.Texture = translateText(""
            )inf.VelocityInheritance = 0
            inf.ZOffset = 2
            inf.Transparency = NumberSequence.new(0)
            inf.Color = ColorSequence.new(Color3.fromRGB(0,0,0),Color3.fromRGB(0,0,0))
            inf.Parent = game:GetService(translateText("Players")).LocalPlayer.Character.HumanoidRootPart
        end
    else
        if game:GetService(translateText("Players")).LocalPlayer.Character.HumanoidRootPart:FindFirstChild(translateText("Agility")) then
            game:GetService(translateText("Players")).LocalPlayer.Character.HumanoidRootPart:FindFirstChild(translateText("Agility")):Destroy()
        end
    end
end

local LocalPlayer = game:GetServicetranslateText('Players').LocalPlayer
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
            if game:GetService(translateText("Players")).LocalPlayer.Character.Dodge then
                if typeof(v) == translateText("function" )and getfenv(v).script == game:GetService(translateText("Players")).LocalPlayer.Character.Dodge then
                    for i2,v2 in next, getupvalues(v) do
                        if tostring(v2) == translateText("0.1" )then
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
    local mouse=game:GetService(translateText("Players")).LocalPlayer:GetMousetranslateText(''
    )localplayer=game:GetService(translateText("Players")).LocalPlayer
    game:GetService(translateText("Players")).LocalPlayer.Character:WaitForChild(translateText("HumanoidRootPart"))
    local torso = game:GetService(translateText("Players")).LocalPlayer.Character.HumanoidRootPart
    local speedSET=25
    local keys={a=false,d=false,w=false,s=false}
    local e1
    local e2
    local function start()
        local pos = Instance.new(translateText("BodyPosition"),torso)
        local gyro = Instance.new(translateText("BodyGyro"),torso)
        pos.Name=translateText("EPIXPOS"
        )pos.maxForce = Vector3.new(math.huge, math.huge, math.huge)
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
        if key==translateText("w" )then
            keys.w=true
        elseif key==translateText("s" )then
            keys.s=true
        elseif key==translateText("a" )then
            keys.a=true
        elseif key==translateText("d" )then
            keys.d=true
        end
    end)
    e2=mouse.KeyUp:connect(function(key)
        if key==translateText("w" )then
            keys.w=false
        elseif key==translateText("s" )then
            keys.s=false
        elseif key==translateText("a" )then
            keys.a=false
        elseif key==translateText("d" )then
            keys.d=false
        end
    end)
    start()
end

function Click()
    game:GetServicetranslateText('VirtualUser'):CaptureController()
    game:GetServicetranslateText('VirtualUser'):Button1Down(Vector2.new(1280, 672))
end

function AutoHaki()
    if not game:GetService(translateText("Players")).LocalPlayer.Character:FindFirstChild(translateText("HasBuso")) then
        game:GetService(translateText("ReplicatedStorage")).Remotes.CommF_:InvokeServer(translateText("Buso"))
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
    for i,v in pairs(game:GetService(translateText("Workspace"))[translateText("_WorldOrigin")]:GetChildren()) do
        pcall(function()
            if v.Name == (translateText("CurvedRing")) or v.Name == (translateText("SlashHit")) or v.Name == (translateText("SwordSlash")) or v.Name == (translateText("SlashTail")) or v.Name == (translateText("Sounds")) then
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
game:GetService(translateText("TweenService")):Create(
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
    game:GetService(translateText("TweenService")):Create(
        game:GetService(translateText("Players")).LocalPlayer.Character.HumanoidRootPart,
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
    game:GetService(translateText("TweenService")):Create(
        game:GetService(translateText("Players")).LocalPlayer.Character.HumanoidRootPart,
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
    game:GetService(translateText("TweenService")):Create(
        game:GetService(translateText("Players")).LocalPlayer.Character.HumanoidRootPart,
        TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear),
        {CFrame = Pos}
    ):Play()
end

function BTP(P1)
game.Players.LocalPlayer.Character.Head:Destroy()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = P1
wait(1)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = P1
game:GetService(translateText("ReplicatedStorage")).Remotes.CommF_:InvokeServer(translateText("SetSpawnPoint"))
end

getgenv().HyperCahayas = function(p)
task.spawn(function()
    pcall(function()
        if game:GetService(translateText("Players")).LocalPlayer:DistanceFromCharacter(p.Position) <= 250 then 
            game:GetService(translateText("Players")).LocalPlayer.Character.HumanoidRootPart.CFrame = p
        elseif not game.Players.LocalPlayer.Character:FindFirstChild(translateText("Root"))then 
            local K = Instance.new(translateText("Part"),game.Players.LocalPlayer.Character)
            K.Size = Vector3.new(1,0.5,1)
            K.Name = translateText("Root"
            )K.Anchored = true
            K.Transparency = 1
            K.CanCollide = false
            K.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,20,0)
        end
        local U = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-p.Position).Magnitude
        local z = game:service(translateText("TweenService"))
        local B = TweenInfo.new((p.Position-game.Players.LocalPlayer.Character.Root.Position).Magnitude/300,Enum.EasingStyle.Linear)
        local S,g = pcall(function()
        local q = z:Create(game.Players.LocalPlayer.Character.Root,B,{CFrame = p})
        q:Play()
    end)
    if not S then 
        return g
    end
    game.Players.LocalPlayer.Character.Root.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
        if S and game.Players.LocalPlayer.Character:FindFirstChild(translateText("Root")) then 
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
game:GetService(translateText("RunService")).Heartbeat:Connect(function()
    if _G.CollectAzure or _G.SafeMode or _G.AutoKillLeviathan or _G.AutoAdvanceDungeon or _G.AutoDoughtBoss or _G.Auto_DungeonMobAura or _G.AutoFarmChest or _G.AutoFarmBossHallow or _G.AutoFarmSwanGlasses or _G.AutoLongSword or _G.AutoBlackSpikeycoat or _G.AutoElectricClaw or _G.AutoFarmGunMastery or _G.AutoHolyTorch or _G.AutoLawRaid or _G.AutoFarmBoss or _G.AutoTwinHooks or _G.AutoOpenSwanDoor or _G.AutoDragon_Trident or _G.AutoSaber or _G.NOCLIP or _G.AutoFarmFruitMastery or _G.AutoFarmGunMastery or _G.TeleportIsland or _G.Auto_EvoRace or _G.AutoFarmAllMsBypassType or _G.AutoObservationv2 or _G.AutoMusketeerHat or _G.AutoEctoplasm or _G.AutoRengoku or _G.Auto_Rainbow_Haki or _G.AutoObservation or _G.AutoDarkDagger or _G.AutoSpawnRip or _G.Safe_Mode or _G.MasteryFruit or _G.AutoBudySword or _G.AutoOderSword or _G.AutoBounty or _G.AutoAllBoss or _G.Auto_Bounty or _G.AutoSharkman or _G.Auto_Mastery_Fruit or _G.Auto_Mastery_Gun or _G.Auto_Dungeon or _G.Auto_Cavender or _G.Auto_Pole or _G.Auto_Kill_Ply or _G.Auto_Factory or _G.AutoSecondSea or _G.TeleportPly or _G.AutoBartilo or _G.Auto_DarkBoss or _G.GrabChest or _G.AutoFarmBounty or _G.Holy_Torch or _G.AutoFarm or _G.Clip or _G.AutoElitehunter or _G.AutoThirdSea or _G.Auto_Bone or _G.Autoheart or _G.Autodoughking or _G.AutoFarmMaterial or _G.AutoNevaSoulGuitar or _G.Auto_Dragon_Trident or _G.Autotushita or _G.d or _G.Autowaden or _G.Autogay or _G.Autopole or _G.Autosaw or _G.AutoObservationHakiV2 or _G.AutoFarmNearest or AutoFarmChest or _G.AutoCarvender or _G.AutoTwinHook or AutoMobAura or _G.Tweenfruit or _G.AutoKai or _G.TeleportNPC or _G.Leather or _G.Auto_Wing or _G.Umm or _G.Terrorshark or _G.Piranha or _G.Shark or _G.Makori_gay or Radioactive or Fish or Gunpowder or Dragon_Scale or Cocoafarm or Scrap or MiniHee or _G.AutoFarmSeabaest or Auto_Cursed_Dual_Katana or _G.AutoFarmMob or _G.AutoMysticIsland or _G.AutoFarmDungeon or _G.AutoRaidPirate or _G.AutoQuestRace or _G.TweenMGear or getgenv().AutoFarm or _G.AutoPlayerHunter or _G.AutoFactory or Grab_Chest or _G.KillAfterTrials or _G.FishBoat then
        if not game:GetService(translateText("Workspace")):FindFirstChild(translateText("LOL")) then
            local LOL = Instance.new(translateText("Part"))
            LOL.Name = translateText("LOL"
            )LOL.Parent = game.Workspace
            LOL.Anchored = true
            LOL.Transparency = 1
            LOL.Size = Vector3.new(30,-0.5,30)
        elseif game:GetService(translateText("Workspace")):FindFirstChild(translateText("LOL")) then
            game.Workspace[translateText("LOL")].CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, -3.6, 0)
        end
    else
        if game:GetService(translateText("Workspace")):FindFirstChild(translateText("LOL")) then
            game:GetService(translateText("Workspace")):FindFirstChild(translateText("LOL")):Destroy()
        end
    end
end)
end)

spawn(function()
    pcall(function()
        while wait() do
            if _G.CollectAzure or _G.AutoKillLeviathan or _G.SafeMode or _G.AutoAdvanceDungeon or _G.AutoDoughtBoss or _G.Auto_DungeonMobAura or _G.AutoFarmChest or _G.AutoFarmBossHallow or _G.AutoFarmSwanGlasses or _G.AutoLongSword or _G.AutoBlackSpikeycoat or _G.AutoElectricClaw or _G.AutoFarmGunMastery or _G.AutoHolyTorch or _G.AutoLawRaid or _G.AutoFarmBoss or _G.AutoTwinHooks or _G.AutoOpenSwanDoor or _G.AutoDragon_Trident or _G.AutoSaber or _G.AutoFarmFruitMastery or _G.AutoFarmGunMastery or _G.TeleportIsland or _G.Auto_EvoRace or _G.AutoFarmAllMsBypassType or _G.AutoObservationv2 or _G.AutoMusketeerHat or _G.AutoEctoplasm or _G.AutoRengoku or _G.Auto_Rainbow_Haki or _G.AutoObservation or _G.AutoSpawnRip or _G.AutoDarkDagger or _G.Safe_Mode or _G.MasteryFruit or _G.AutoBudySword or _G.AutoOderSword or _G.AutoBounty or _G.AutoAllBoss or _G.Auto_Bounty or _G.AutoSharkman or _G.Auto_Mastery_Fruit or _G.Auto_Mastery_Gun or _G.Auto_Dungeon or _G.Auto_Cavender or _G.Auto_Pole or _G.Auto_Kill_Ply or _G.Auto_Factory or _G.AutoSecondSea or _G.TeleportPly or _G.AutoBartilo or _G.Auto_DarkBoss or _G.GrabChest or _G.AutoFarmBounty or _G.Holy_Torch or _G.AutoFarm or _G.Clip or FarmBoss or _G.AutoElitehunter or _G.AutoThirdSea or _G.Auto_Bone or _G.Autoheart or _G.Autodoughking or _G.AutoFarmMaterial or _G.AutoNevaSoulGuitar or _G.Auto_Dragon_Trident or _G.Autotushita or _G.d or _G.Autowaden or _G.Autogay or _G.Autopole or _G.Autosaw or _G.AutoObservationHakiV2 or _G.AutoFarmNearest or AutoFarmChest or _G.AutoCarvender or _G.AutoTwinHook or AutoMobAura or _G.Tweenfruit or _G.TeleportNPC or _G.Leather or _G.Auto_Wing or _G.Umm or _G.Terrorshark or _G.Piranha or _G.Shark or _G.Makori_gay or Radioactive or Fish or Gunpowder or Dragon_Scale or Cocoafarm or Scrap or MiniHee or _G.AutoFarmSeabaest or Auto_Cursed_Dual_Katana or _G.AutoFarmMob or _G.AutoMysticIsland or _G.AutoFarmDungeon or _G.AutoRaidPirate or _G.AutoQuestRace or _G.TweenMGear or getgenv().AutoFarm or _G.AutoPlayerHunter or _G.AutoFactory or Grab_Chest == true or _G.KillAfterTrials or _G.AutoSeaBest or _G.KillGhostShip or _G.AutoAlternatif or _G.dao or _G.FishBoat or _G.GhostShipRaidbruh or _G.BiirTrax or _G.BiirAnchor or _G.Anchor or _G.AutoFarm then
                if not game:GetService(translateText("Players")).LocalPlayer.Character.HumanoidRootPart:FindFirstChild(translateText("BodyClip")) then
                    local Noclip = Instance.new(translateText("BodyVelocity"))
                    Noclip.Name = translateText("BodyClip"
                    )Noclip.Parent = game:GetService(translateText("Players")).LocalPlayer.Character.HumanoidRootPart
                    Noclip.MaxForce = Vector3.new(100000,100000,100000)
                    Noclip.Velocity = Vector3.new(0,0,0)
                end
            end
        end
    end)
end)

spawn(function()
    pcall(function()
        game:GetService(translateText("RunService")).Stepped:Connect(function()
            if _G.CollectAzure or _G.SafeMode or _G.AutoKillLeviathan or _G.AutoAdvanceDungeon or _G.AutoDoughtBoss or _G.Auto_DungeonMobAura or _G.AutoFarmChest or _G.AutoFarmBossHallow or _G.AutoFarmSwanGlasses or _G.AutoLongSword or _G.AutoBlackSpikeycoat or _G.AutoElectricClaw or _G.AutoFarmGunMastery or _G.AutoHolyTorch or _G.AutoLawRaid or _G.AutoFarmBoss or _G.AutoTwinHooks or _G.AutoOpenSwanDoor or _G.AutoDragon_Trident or _G.AutoSaber or _G.NOCLIP or _G.AutoFarmFruitMastery or _G.AutoFarmGunMastery or _G.TeleportIsland or _G.Auto_EvoRace or _G.AutoFarmAllMsBypassType or _G.AutoObservationv2 or _G.AutoMusketeerHat or _G.AutoEctoplasm or _G.AutoRengoku or _G.Auto_Rainbow_Haki or _G.AutoObservation or _G.AutoSpawnRip or _G.AutoDarkDagger or _G.Safe_Mode or _G.MasteryFruit or _G.AutoBudySword or _G.AutoOderSword or _G.AutoBounty or _G.AutoAllBoss or _G.Auto_Bounty or _G.AutoSharkman or _G.Auto_Mastery_Fruit or _G.Auto_Mastery_Gun or _G.Auto_Dungeon or _G.Auto_Cavender or _G.Auto_Pole or _G.Auto_Kill_Ply or _G.Auto_Factory or _G.AutoSecondSea or _G.TeleportPly or _G.AutoBartilo or _G.Auto_DarkBoss or _G.GrabChest or _G.AutoFarmBounty or _G.Holy_Torch or _G.AutoFarm or _G.Clip or _G.AutoElitehunter or _G.AutoThirdSea or _G.Auto_Bone or _G.Autoheart or _G.Autodoughking or _G.AutoFarmMaterial or _G.AutoNevaSoulGuitar or _G.Auto_Dragon_Trident or _G.Autotushita or _G.Autowaden or _G.Autogay or _G.Autopole or _G.Autosaw or _G.AutoObservationHakiV2 or _G.AutoFarmNearest or AutoFarmChest or _G.AutoCarvender or _G.AutoTwinHook or AutoMobAura or _G.Tweenfruit or _G.TeleportNPC or _G.AutoKai or _G.Leather or _G.Auto_Wing or _G.Umm or _G.Terrorshark or _G.Piranha or _G.Shark or _G.Makori_gay or Radioactive or Fish or Gunpowder or Dragon_Scale or Cocoafarm or Scrap or MiniHee or _G.AutoFarmSeabaest or Auto_Cursed_Dual_Katana or _G.AutoFarmMob or _G.AutoMysticIsland or _G.AutoFarmDungeon or _G.AutoRaidPirate or _G.AutoQuestRace or _G.TweenMGear or getgenv().AutoFarm or _G.AutoPlayerHunter or _G.AutoFactory or Grab_Chest == true or _G.KillAfterTrials or _G.AutoSeaBest or _G.KillGhostShip or _G.AutoAlternatif or _G.dao or _G.FishBoat or _G.GhostShipRaidbruh or _G.BiirTrax or _G.BiirAnchor or _G.Anchor or _G.AutoFarm then
                for _, v in pairs(game:GetService(translateText("Players")).LocalPlayer.Character:GetDescendants()) do
                    if v:IsA(translateText("BasePart")) then
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
                game:GetService(translateText("ReplicatedStorage")).Remotes.CommE:FireServer(translateText("Ken"),true)
            end)
        end    
    end
end)

spawn(function()
game:GetService(translateText("RunService")).RenderStepped:Connect(function()
    if _G.AutoClick or Fastattack then
         pcall(function()
            game:GetServicetranslateText('VirtualUser'):CaptureController()
            game:GetServicetranslateText('VirtualUser'):Button1Down(Vector2.new(0,1,0,1))
        end)
    end
end)
end)

function StopTween(target)
    if not target then
        _G.StopTween = true
        wait()
        HyperCahaya(game:GetService(translateText("Players")).LocalPlayer.Character.HumanoidRootPart.CFrame)
        wait()
        if game:GetService(translateText("Players")).LocalPlayer.Character.HumanoidRootPart:FindFirstChild(translateText("BodyClip")) then
            game:GetService(translateText("Players")).LocalPlayer.Character.HumanoidRootPart:FindFirstChild(translateText("BodyClip")):Destroy()
        end
        _G.StopTween = false
        _G.Clip = false
    end
end

spawn(function()
    pcall(function()
        while wait() do
            for i,v in pairs(game:GetService(translateText("Players")).LocalPlayer.Backpack:GetChildren()) do  
                if v:IsA(translateText("Tool")) then
                    if v:FindFirstChild(translateText("RemoteFunctionShoot")) then 
                        SelectWeaponGun = v.Name
                    end
                end
            end
        end
    end)
end)

game:GetService(translateText("Players")).LocalPlayer.Idled:connect(function()
    game:GetService(translateText("VirtualUser")):Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
    wait(1)
    game:GetService(translateText("VirtualUser")):Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
end)

-- Batas fitur semua script
-----------------------------------------------------------------------------------------------------------------------------
-- Fitur Status
Status:AddSeperator(translateText("Status Fruits Spawn"))

-- Menambahkan label untuk status Fruits Spawn
FruitStatus = Status:AddLabel(translateText("Fruits Spawn : "))

-- Fungsi untuk mengecek status buah
spawn(function()
    while wait(0.1) do
        local fruitFound = false
        for i, v in pairs(game.Workspace:GetChildren()) do
            if string.find(v.Name, translateText("Fruit")) then
                FruitStatus:Set(translateText("Fruits Spawn : " ).. v.Name)
                fruitFound = true
                break
            end
        end
        if not fruitFound then
            FruitStatus:Set(translateText("Fruits Spawn : 🔴"))
        end
    end
end)



Status:AddSeperator(translateText("Status Acient One"))

local bL = Status:AddLabel(translateText("Ancient One : " ).. tostring(CheckAcientOneStatus()))
local bPl = Status:AddLabel(translateText("Train v4 Status : " ).. tostring(CheckAcientOneStatusTrain()))

Status:AddSeperator(translateText("Status Island"))
if World3 then
    spawn(function()
        pcall(function()
            while wait() do
    if game.Workspace._WorldOrigin.Locations:FindFirstChild(translateText('Mirage Island')) then
    Mirragech3ck:Set(translateText('Mirage Island : 🟢'))
    else
      Mirragech3ck:Set(translateText('Mirage Island : 🔴' ))end
            end
        end)
    end)
    end
    Mirragech3ck = Status:AddLabel(translateText("Mirage Island : Only Third Sea"))

if World3 then
spawn(function()
    pcall(function()
        while wait() do
            if game.Workspace._WorldOrigin.Locations:FindFirstChild(translateText('Kitsune Island')) then
                Kitsunech3ck:Set(translateText('Kitsune Island : 🟢'))
            else
                Kitsunech3ck:Set(translateText('Kitsune Island : 🔴')) 
            end
        end
    end)
end)
end
Kitsunech3ck = Status:AddLabel(translateText("Kitsune Island : Only Third Sea"))

if World3 then
spawn(function()
    pcall(function()
    while wait() do
        if game.Workspace._WorldOrigin.Locations:FindFirstChild(translateText('Frozen Dimension')) then
            Froz3nIsland:Set(translateText('Frozen Dimension : 🟢'))
        else
            Froz3nIsland:Set(translateText('Frozen Dimension : 🔴'))
        end
    end
    end)
    end)
end
    Froz3nIsland = Status:AddLabel(translateText("Frozen Island : Only Third Sea"))

    Status:AddSeperator(translateText("Status Moon"))
local FMz = Status:AddLabel(translateText("Full Moon Phase : "))
 if World3 or world2 then
 task.spawn(function()
         while task.wait() do
             pcall(function()
                 if game:GetService(translateText("Lighting")).Sky.MoonTextureId==translateText("http://www.roblox.com/asset/?id=9709149431" )then
                     FMz:Set(translateText("Full Moon Phase : 🌕 | 100%"))
                 elseif game:GetService(translateText("Lighting")).Sky.MoonTextureId==translateText("http://www.roblox.com/asset/?id=9709149052" )then
                     FMz:Set(translateText("Full Moon Phase : 🌖 | 75%"))
                 elseif game:GetService(translateText("Lighting")).Sky.MoonTextureId==translateText("http://www.roblox.com/asset/?id=9709143733" )then
                     FMz:Set(translateText("Full Moon Phase : 🌗 | 50%"))
                 elseif game:GetService(translateText("Lighting")).Sky.MoonTextureId==translateText("http://www.roblox.com/asset/?id=9709150401" )then
                     FMz:Set(translateText("Full Moon Phase : 🌘 | 25%"))
                 elseif game:GetService(translateText("Lighting")).Sky.MoonTextureId==translateText("http://www.roblox.com/asset/?id=9709149680" )then
                     FMz:Set(translateText("Full Moon Phase : 🌘 | 15%"))
                 else
                     FMz:Set(translateText("Full Moon Phase : 🌙 | 0%"))
                 end
             end)
         end
 end)
end
local FullM00n = Status:AddLabel(translateText("Time : " ).. function8() .. translateText(" | ").. CheckMoon() .. translateText(" | " ).. function7())

spawn(function()
        while wait() do
            FullM00n:Set(translateText("Time : " ).. function8() .. translateText(" | ").. CheckMoon() .. translateText(" | " ).. function7())
                end
            end)

Status:AddSeperator(translateText("Legendary Item"))

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
        if IsItemHeldByPlayer("God's ChalicetranslateText(") then
            NotifyItemFound_Chalice:Set(")God's Chalice : 🟢translateText(")
        else
            NotifyItemFound_Chalice:Set(")God's Chalice : 🔴translateText(")
        end

        if IsItemHeldByPlayer(")Fish of DarknesstranslateText(") then
            NotifyItemFound_Fish:Set(")Fish of Darkness : 🟢translateText(")
        else
            NotifyItemFound_Fish:Set(")Fish of Darkness : 🔴translateText(")
        end
    end
end)

    NotifyItemFound_Chalice = Status:AddLabel(")God's Chalice : translateText(")
    NotifyItemFound_Fish = Status:AddLabel(")Fish of Darkness : translateText(")

    spawn(function()
        pcall(function()
            while wait() do
                if game:GetService(")ReplicatedStoragetranslateText(").Remotes.CommF_:InvokeServer(")LegendarySwordDealertranslateText(", ")1translateText(") then
                    LegendSwords:Set(")Legendary Sword : ShisuitranslateText(")
                elseif game:GetService(")ReplicatedStoragetranslateText(").Remotes.CommF_:InvokeServer(")LegendarySwordDealertranslateText(",")2translateText(") then
                    LegendSwords:Set(")Legendary Sword : WandotranslateText(")
                elseif game:GetService(")ReplicatedStoragetranslateText(").Remotes.CommF_:InvokeServer(")LegendarySwordDealertranslateText(",")3translateText(") then
                    LegendSwords:Set(")Legendary Sword : SadditranslateText(")
                else
                    LegendSwords:Set(")Sword Not Ready : 🔴translateText(")
                end
            end
        end)
       end)
       
       LegendSwords = Status:AddLabel(")Sword Not Ready : 🔴")

-----------------------------------------------------------------------------------------------------------------------------
-- Fitur Farming

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
