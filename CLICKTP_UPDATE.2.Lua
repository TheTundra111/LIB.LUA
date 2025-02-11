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
        local player = game.Players.LocalPlayer
        local mouse = player:GetMouse()
        local teleportSound = Instance.new("Sound")
        teleportSound.SoundId = "rbxassetid://81637394259653"
        teleportSound.Parent = player.Character
        local flashColor = Color3.new(0, 0, 0)
        local flashDuration = 0.2

        local function flashScreen(duration)
            local flashGui = Instance.new("ScreenGui", player.PlayerGui)
            local flashFrame = Instance.new("Frame", flashGui)
            flashFrame.Size = UDim2.new(1, 0, 1, 0)
            flashFrame.BackgroundColor3 = flashColor
            flashFrame.BackgroundTransparency = 0
            wait(duration)
            flashFrame.BackgroundTransparency = 1
            flashGui:Destroy()
        end

        local function teleportToMouse()
            if mouse.Hit then
                teleportSound:Play()
                flashScreen(flashDuration)
                player.Character:SetPrimaryPartCFrame(mouse.Hit + Vector3.new(0, 5, 0))
            end
        end

        mouse.KeyDown:Connect(function(key)
            if key == "t" then
                teleportToMouse()
            end
        end)
    end
})

local Button2 = AdminTab:CreateButton({
    Name = "IY",
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/DarkNetworks/Infinite-Yield/main/latest.lua'))()
        Rayfield:Notify({
            Title = "Notification",
            Content = "Loading IY v5...",
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
