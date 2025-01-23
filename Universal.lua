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
        local mouse = game.Players.LocalPlayer:GetMouse()
        local teleportAnimationId = "rbxassetid://15957361339"
        local teleportSoundId = "rbxassetid://5066021887"
        local player = game.Players.LocalPlayer

        local function setupCharacter(character)
            local humanoid = character:WaitForChild("Humanoid")
            local animator = humanoid:FindFirstChildOfClass("Animator") or Instance.new("Animator", humanoid)
            local teleportAnimation = Instance.new("Animation")
            teleportAnimation.AnimationId = teleportAnimationId
            local teleportTrack = animator:LoadAnimation(teleportAnimation)
            local teleportSound = Instance.new("Sound")
            teleportSound.SoundId = teleportSoundId
            teleportSound.Parent = character.HumanoidRootPart

            local function teleportToMouse()
                teleportTrack:Play()
                teleportSound:Play()
                local pos = mouse.Hit + Vector3.new(0, 2.5, 0)
                pos = CFrame.new(pos.X, pos.Y, pos.Z)
                player.Character.HumanoidRootPart.CFrame = pos
            end

            game:GetService("UserInputService").InputBegan:Connect(function(input, gameProcessed)
                if input.KeyCode == Enum.KeyCode.T and not gameProcessed then
                    teleportToMouse()
                end
            end)
        end

        player.CharacterAdded:Connect(setupCharacter)
        if player.Character then
            setupCharacter(player.Character)
        end

        Rayfield:Notify({
            Title = "Notification",
            Content = "Click Teleport activated.",
            Duration = 6.5,
            Image = 4483362458,
        })
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
    Title = "credits",
    Content = "Infinite yield - DarkNetworks\nanti logger - AnthonyIsntHere\nlogger - CyrusNeckTie"
})
