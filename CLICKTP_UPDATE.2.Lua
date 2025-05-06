local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
local Window = Rayfield:CreateWindow({
    Name = "Tundra - Universal",
    Icon = 0,
    LoadingTitle = "Tundra Loading..",
    LoadingSubtitle = "by The1stTundra",
    Theme = "Default",
    DisableRayfieldPrompts = false,
    DisableBuildWarnings = false,
    Discord = {
        Enabled = false,
        Invite = "noinvitelink",
        RememberJoins = true
    },
    KeySystem = false,
    KeySettings = {
        Title = "Untitled",
        Subtitle = "Key System",
        Note = "-",
        FileName = "Key",
        SaveKey = true,
        GrabKeyFromSite = false,
        Key = {"NoKey"}
    }
})

local function setupTeleportSound(player)
    local teleportSound = Instance.new("Sound")
    teleportSound.SoundId = "rbxassetid://81637394259653"
    teleportSound.Parent = player.Character
    return teleportSound
end


local teleportSpeed = 5

local function flashScreen(duration, player, teleportPosition)
    print("Duration value:", duration)

    local flashGui = Instance.new("ScreenGui", player.PlayerGui)
    local flashFrame = Instance.new("Frame", flashGui)
    flashFrame.Size = UDim2.new(1.2, 0, 1.2, 0) 
    flashFrame.Position = UDim2.new(-0.1, 0, -0.1, 0) 
    flashFrame.BackgroundColor3 = Color3.new(0, 0, 0)
    flashFrame.BackgroundTransparency = 1

    local clickSound1 = Instance.new("Sound")
    clickSound1.SoundId = "rbxassetid://81637394259653"
    clickSound1.Parent = player.Character
    clickSound1:Play()

    wait(0.3 / teleportSpeed)

    flashFrame.BackgroundTransparency = 0
    wait((duration * 2.2) / teleportSpeed)

    if teleportPosition then
        player.Character:SetPrimaryPartCFrame(teleportPosition)
    end

    wait(0.2 / teleportSpeed)

    flashFrame.BackgroundTransparency = 1
    flashGui.Parent = player.PlayerGui

    local clickSound2 = Instance.new("Sound")
    clickSound2.SoundId = "rbxassetid://81637394259653"
    clickSound2.Parent = player.Character
    clickSound2.TimePosition = 0
    clickSound2:Play()

    wait(0.1 / teleportSpeed)
    flashGui:Destroy()
end

local function teleportToMouse(player, mouse, flashDuration)
    if type(flashDuration) ~= "number" then
        warn("flashDuration is not a number:", flashDuration)
        return
    end

    if mouse.Hit then
        local teleportPosition = mouse.Hit + Vector3.new(0, 5, 0)
        flashScreen((flashDuration * teleportSpeed), player, teleportPosition)
    end
end

local function setupTeleportSystem()
    local player = game.Players.LocalPlayer
    local mouse = player:GetMouse()
    
    local flashDuration = 0.2 

    player.CharacterAdded:Connect(function()
        flashDuration = 0.2 
    end)

    mouse.KeyDown:Connect(function(key)
        if key == "t" then
            teleportToMouse(player, mouse, flashDuration)
        end
    end)
end

local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
local Window = Rayfield:CreateWindow({
    Name = "Tundra - Universal",
    Icon = 0,
    LoadingTitle = "Tundra Loading..",
    LoadingSubtitle = "by The1stTundra",
    Theme = "Default",
    DisableRayfieldPrompts = false,
    DisableBuildWarnings = false,
    Discord = {
        Enabled = false,
        Invite = "noinvitelink",
        RememberJoins = true
    },
    KeySystem = false,
    KeySettings = {
        Title = "Untitled",
        Subtitle = "Key System",
        Note = "-",
        FileName = "Key",
        SaveKey = true,
        GrabKeyFromSite = false,
        Key = {"NoKey"}
    }
})

local AdminTab = Window:CreateTab("Admin", 4483362458)

local Button1 = AdminTab:CreateButton({
    Name = "Click Teleport",
    Callback = function()
        setupTeleportSystem()
    end
})

local Button2 = AdminTab:CreateButton({
    Name = "IY",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()
        Rayfield:Notify({
            Title = "Notification",
            Content = "Loading IY v6...",
            Duration = 6.5,
            Image = 4483362458,
        })
    end
})

local Button3 = AdminTab:CreateButton({
    Name = "Chat Spy",
    Callback = function()
        loadstring(game:HttpGet('https://gist.githubusercontent.com/CyrusNecktie/5c55a998daa6a358a72342b557a580b9/raw/04d3887a779e4a1f59ad3510523fbcef01a8a2b7/gistfile1.txt'))()
        Rayfield:Notify({
            Title = "Notification",
            Content = "Chat Spy started.",
            Duration = 6.5,
            Image = 4483362458,
        })
    end
})

local Button4 = AdminTab:CreateButton({
    Name = "Anti-Logger",
    Callback = function()
        loadstring(game:HttpGet(('https://raw.githubusercontent.com/AnthonyIsntHere/anthonysrepository/refs/heads/main/scripts/AntiChatLogger.lua'),true))()
        Rayfield:Notify({
            Title = "Notification",
            Content = "Anti-Logger started.",
            Duration = 6.5,
            Image = 4483362458,
        })
    end
})

local CreditsTab = Window:CreateTab("Credits", 4483362458)

local Paragraph = CreditsTab:CreateParagraph({
    Title = "Credits",
    Content = "Infinite Yield - DarkNetworks\nAnti-Logger - AnthonyIsntHere\nLogger - CyrusNeckTie"
})

