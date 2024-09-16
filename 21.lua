local Events = { "Activated", "ActiveGamepadAdded", "ActiveGamepadRemoved", "ActiveUserSignedOut", "AncestryChanged", "AnimationPlayed", "AssetFetchFailed", "AssetImported", "AssetImportedSignal", "AttributeChanged", "AuthCookieCopiedToEngine", "AutoTranslateWillRun", "AxisChanged", "BadgeAwarded", "Blocked", "BoundActionAdded", "BoundActionChanged", "BoundActionRemoved", "BreakpointAdded", "BreakpointChanged", "BreakpointRemoved", "BrowserWindowClosed", "BrowserWindowWillNavigate", "BubbleChatSettingsChanged", "BulkImportFinished", "BulkImportStarted", "Button1Down", "Button1Up", "Button2Down", "Button2Up", "ButtonChanged", "Changed", "CharacterAdded", "CharacterAppearanceLoaded", "CharacterRemoving", "Chatted", "ChildAdded", "ChildRemoved", "Click", "ClientLuaDialogRequested", "ClientPurchaseSuccess", "Climbing", "Close", "CloseInspectMenuRequest", "CloseLate", "ClusterCompositionFinished", "ColormapHasUnknownPixels", "CommandExecuting", "CommitStatusChanged", "Completed", "ComputerCameraMovementModeRegistered", "ComputerMovementModeRegistered", "ConnectionAccepted", "ConnectionEnded", "ConnectionFailed", "ConnectionStarted", "CoreGuiChangedSignal", "CoreGuiRenderOverflowed", "CurrentDataModelTypeAboutToChange", "CurrentDataModelTypeChanged", "CurrentDeviceIdChanged", "DataModelCreated", "DataModelSessionEnded", "DataModelSessionStarted", "DataModelWillBeDestroyed", "Deactivated", "Deactivation", "DebuggerAdded", "DebuggerRemoved", "DefaultLoadingGuiRemoved", "DescendantAdded", "DescendantRemoving", "Destroying", "DeviceAccelerationChanged", "DeviceGravityChanged", "DeviceListChanged", "DeviceRotationChanged", "DialogChoiceSelected", "DidLoop", "Died", "DraftAdded", "DraftRemoved", "DraftStatusChanged", "DragEnter", "EditorsListChanged", "EmotesChanged", "EmotesMenuOpenChanged", "EncounteredBreak", "Ended", "Equipped", "EquippedEmotesChanged", "Error", "ErrorDetailed", "Event", "FallingDown", "FinishedReplicating", "FirstPersonTransition", "FocusChanged", "Focused", "FocusLost", "FreeFalling", "FriendRequestEvent", "FriendStatusChanged", "FriendsUpdated", "FullscreenChanged", "GameAnnounce", "GameInvitePromptClosed", "GameNameUpdated", "GamepadConnected", "GamepadDisconnected", "GamepadThumbstick1Changed", "GamePublishFinished", "GetActionButtonEvent", "GettingUp", "GraphicsQualityChangeRequest", "GuidNameChanged", "HealthChanged", "Heartbeat", "Hit", "HttpResultOut", "Idle", "Idled", "ImportSessionFinished", "ImportSessionStarted", "InputBegan", "InputChanged", "InputEnded", "InspectMenuEnabledChangedSignal", "InspectPlayerFromHumanoidDescriptionRequest", "InspectPlayerFromUserIdWithCtxRequest", "InterpolationFinished", "ItemWasSet", "JavaScriptCallback", "Jumping", "JumpRequest", "KeyframeReached", "KeyPressed", "LastInputTypeChanged", "LightingChanged", "Loaded", "LocalPlayerArrivedFromTeleport", "LocalToolEquipped", "LocalToolUnequipped", "LoginFailed", "LoginSucceeded", "MayBeLinkedSourceModified", "MenuClosed", "MenuOpened", "MessageOut", "MessageReceived", "MetaBreakpointAdded", "MetaBreakpointChanged", "MetaBreakpointRemoved", "MouseButton1Click", "MouseButton1Down", "MouseButton1Up", "MouseButton2Click", "MouseButton2Down", "MouseButton2Up", "MouseClick", "MouseDrag", "MouseEnter", "MouseHoverEnter", "MouseHoverLeave", "MouseLeave", "MouseMoved", "MouseWheelBackward", "MouseWheelForward", "MoveToFinished", "NativeClose", "NativePurchaseFinished", "NavigationRequested", "NetworkPausedEnabledChanged", "OnBadgeAwarded", "OnBrowserTrackerABTestLoadingStatusChanged", "OnBrowserTrackerLayerLoadingStatusChanged", "OnClientEvent", "OnConvertToPackageResult", "OnHttpResultApproved", "OnImportFromRoblox", "OnOpenConvertToPackagePlugin", "OnOpenGameSettings", "OnOpenManagePackagePlugin", "OnPluginInstalledFromToolbox", "OnPluginInstalledFromWeb", "OnPublishAsPlugin", "OnPublishPlaceToRoblox", "OnRedo", "OnSaveOrPublishPlaceToRoblox", "OnSaveToRoblox", "OnTeleport", "OnUndo", "OnUserABTestLoadingStatusChanged", "OnUserLayerLoadingStatusChanged", "Open9SliceEditor", "OpenAllowInventoryReadAccess", "OpenPromptCreateOufit", "OpenPromptDeleteOutfit", "OpenPromptRenameOutfit", "OpenPromptSaveAvatar", "OpenPromptSetFavorite", "OpenPromptUpdateOutfit", "OrientationChanged", "PageEnter", "PageLeave", "Paused", "PerformanceStatsVisibleChanged", "PlatformStanding", "PlaybackCompleted", "Played", "PlayerAdded", "PlayerChatted", "PlayerConnecting", "PlayerDisconnecting", "PlayerMembershipChanged", "PlayerRejoining", "PlayerRemoved", "PlayerRemoving", "PluginDragDropped", "PluginDragEntered", "PluginDragLeft", "PluginDragMoved", "PointerAction", "PostSimulation", "PreAnimation", "PreRender", "PreSimulation", "ProgressUpdate", "PromptAllowInventoryReadAccessCompleted", "PromptBundlePurchaseFinished", "PromptBundlePurchaseRequested", "PromptButtonHoldBegan", "PromptButtonHoldEnded", "PromptCreateOutfitCompleted", "PromptDeleteOutfitCompleted", "PromptGamePassPurchaseFinished", "PromptGamePassPurchaseRequested", "PromptHidden", "PromptInviteRequested", "PromptPremiumPurchaseFinished", "PromptPremiumPurchaseRequested", "PromptProductPurchaseRequested", "PromptPurchaseFinished", "PromptPurchaseRequested", "PromptRenameOutfitCompleted", "PromptRobloxPurchaseRequested", "PromptSaveAvatarCompleted", "PromptSetFavoriteCompleted", "PromptShown", "PromptSubscriptionCancellationFinished", "PromptSubscriptionCancellationRequested", "PromptSubscriptionPurchaseFinished", "PromptSubscriptionPurchaseRequested", "PromptTransformPluginCheckEnable", "PromptTriggered", "PromptTriggerEnded", "PromptUpdateOutfitCompleted", "Ragdoll", "RCCProfilerDataComplete", "ReachedTarget", "Ready", "Received", "RecordingCompleted", "RemoveDefaultLoadingGuiSignal", "RenderStepped", "Resumed", "Resuming", "ReturnPressedFromOnScreenKeyboard", "RightMouseClick", "Roblox17sConnectionChanged", "Roblox17sEventReceived", "RobloxConnectionChanged", "RobloxEventReceived", "Running", "SafeZoneOffsetsChanged", "SaveLocallyAsComplete", "ScreenshotReady", "ScreenshotSavedToAlbum", "ScriptAdded", "ScriptBeingRemoved", "ScriptChanged", "ScriptFullNameChanged", "ScriptSourceChanged", "Seated", "SelectionChanged", "SelectionGained", "SelectionLost", "ServerCollectConditionalResult", "ServerCollectResult", "ServerHttpResultOut", "ServerMessageOut", "ServerPurchaseVerification", "ServiceAdded", "ServiceRemoving", "SettingsChanged", "ShowLeaveConfirmation", "SimulationRadiusChanged", "SpecialKeyPressed", "StateChanged", "StateEnabledChanged", "StatsReceived", "StatusBarTapped", "Stepped", "Stopped", "StoreWasCleared", "Strafing", "StudioModeChanged", "Swimming", "TeleportInitFailed", "TextBoxFocused", "TextBoxFocusReleased", "ThemeChanged", "ThirdPartyPurchaseFinished", "TouchCameraMovementModeRegistered", "Touched", "TouchEnded", "TouchLongPress", "TouchMoved", "TouchMovementModeRegistered", "TouchpadModeChanged", "TouchPan", "TouchPinch", "TouchRotate", "TouchStarted", "TouchSwipe", "TouchTap", "TouchTapInWorld", "Triggered", "TriggerEnded", "UiMessageChanged", "Unblocked", "Unequipped", "Unloading", "UpdateStatusChanged", "UploadFinished", "UserCFrameChanged", "UserCFrameEnabled", "VideoRecordingChangeRequest", "WatchAdded", "WatchRemoved", "WheelBackward", "WheelForward", "WindowFocused", "WindowFocusReleased" }

local function IsEvent(Object, Event)
    return pcall(function() return Object[Event] end)
end

local function IsPropertyChangedSignalEvent(Object, ChangedType) 
    return pcall(function() return Object.GetPropertyChangedSignal(Object, ChangedType:gsub("GetPropertyChangedSignal", ""):match("%a+")) end)
end

local function DoDecompile(Decompile, Function)
    if not Decompile then return "Did not decompile." end
    return decompile(Function);
end

local function GetConnection(Object, EventType)
    if EventType:find("GetPropertyChangedSignal") then
        return getconnections(Object.GetPropertyChangedSignal(Object, EventType:gsub("GetPropertyChangedSignal", ""):match("%a+")))
    else
        return getconnections(Object[EventType])
    end 
end

assert(getconnections and getreg and islclosure, "Shitsploit detected");

getgenv().GetAllConnectionsFromInstance = function(Object, DecompileFunction)
    local EventLog = {}
    for _, EventName in next, Events do
        if IsEvent(Object, EventName) then
            local e,m = pcall(function()
                for _, Connection in next, GetConnection(Object, EventName) do
                    EventLog["Instance_"..tostring(Object)] = {
                        ["Object Full Name:"] = Object:GetFullName(),
                        ["Event Type:"] = EventName,
                        ["Function ID:"] = Connection.Function,
                        ["Script Caller:"] = debug.info(Connection.Function, "s"),
                        ["Function Source:"] = DoDecompile(DecompileFunction, Connection.Function),
                        ["Connection Data:"] = Connection
                    }
                end
            end)
            
            --if m then rconsolewarn(m) end
        end
    end
    return EventLog;
end

getgenv().GetConnectionsFromInstanceByType = function(Object, EventType, DecompileFunction)
    local EventLog = {}
    if IsEvent(Object, EventType) or IsPropertyChangedSignalEvent(Object, EventType) then
        local x,m = pcall(function()
            for _, Connection in next, GetConnection(Object, EventType) do
                if Connection.Function then
                    for _, RegItem in next, getreg() do
                        if typeof(RegItem) == "function" and islclosure(RegItem) then
                            if RegItem == Connection.Function then
                                EventLog["Instance_"..tostring(Object)] = {
                                    ["Event Type:"] = EventType,
                                    ["Function ID:"] = Connection.Function,
                                    ["Script Caller:"] = debug.info(Connection.Function, "s"),
                                    ["Function Source:"] = DoDecompile(DecompileFunction, Connection.Function),
                                    ["Connection Data:"] = Connection;
                                    ["Object Full Name:"] = Object:GetFullName(),
                                }
                            end
                        end
                    end
                end
            end
        end)
        if m then rconsolewarn(m) end
    end

    return EventLog
end

getgenv().GetAllConnectionsFromType = function(EventType, DecompileFunction)
    local EventLog = {};
    
    for _, CurrentInstance in next, getinstances() do
        task.spawn(function()
            if IsEvent(CurrentInstance, EventType) or IsPropertyChangedSignalEvent(CurrentInstance, EventType) then
                local e, m = pcall(function()
                    for _, Connection in next, GetConnection(CurrentInstance, EventType) do
                        if Connection.Function then
                            for _, RegItem in next, getreg() do
                                if typeof(RegItem) == "function" and islclosure(RegItem) then
                                    if RegItem == Connection.Function then
                                        EventLog["Instance_"..tostring(CurrentInstance)] = {
                                            ["Event Type:"] = EventType,
                                            ["Function ID:"] = Connection.Function,
                                            ["Script Caller:"] = debug.info(Connection.Function, "s"),
                                            ["Function Source:"] = DoDecompile(DecompileFunction, Connection.Function),
                                            ["Connection Data:"] = Connection,
                                            ["Object Full Name:"] = CurrentInstance:GetFullName(),
                                        }
                                    end
                                end
                            end
                        end
                    end
                end)
                --if m then rconsolewarn(m) end
            end
        end)
    end

    return EventLog;
end

getgenv().GetAllInstancesConnections = function(DecompileFunction)
    local EventLog = {}

    for _, CurrentInstance in next, getinstances() do
        task.spawn(function()
            for _, EventName in next, Events do
                if IsEvent(CurrentInstance, EventName) then
                    local e,m = pcall(function()
                        for _, Connection in next, GetConnection(CurrentInstance, EventName) do
                            if Connection.Function then
                                for _, RegItem in next, getreg() do
                                    if typeof(RegItem) == "function" and islclosure(RegItem) then
                                        if RegItem == Connection.Function then
                                            EventLog["Instance_"..tostring(CurrentInstance)] = {
                                                ["Object Full Name:"] = CurrentInstance:GetFullName(),
                                                ["Event Type:"] = EventName,
                                                ["Function ID:"] = Connection.Function,
                                                ["Script Caller:"] = debug.info(Connection.Function, "s"),
                                                ["Function Source:"] = DoDecompile(DecompileFunction, Connection.Function),
                                                ["Connection Data:"] = Connection;
                                            }
                                        end
                                    end
                                end
                            end
                        end
                    end)
                    --if m then rconsolewarn(m) end
                end
            end
        end)
    end

    return EventLog;
end
