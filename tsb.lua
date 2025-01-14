local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
local Window = Rayfield:CreateWindow({
    Name = "Tundra - TSB",
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

local Tab = Window:CreateTab("Animations - P1", 4483362458)
local scriptRunning = false

local function runScript(url)
    loadstring(game:HttpGet(url))()
end

local function setupCharacter(character, url)
    local humanoid = character:WaitForChild("Humanoid")
    local eventTriggered = false
    humanoid.Died:Connect(function()
        if scriptRunning and not eventTriggered then
            eventTriggered = true
            wait(6)
            runScript(url)
        end
    end)
end

local function onCharacterAdded(character, url)
    if not character:FindFirstChild("SetupComplete") then
        local setupComplete = Instance.new("BoolValue")
        setupComplete.Name = "SetupComplete"
        setupComplete.Parent = character
        setupCharacter(character, url)
    end
end

local Toggle1 = Tab:CreateToggle({
    Name = "Strongest Sorcerer",
    CurrentValue = false,
    Flag = "Gojo",
    Callback = function(Value)
        scriptRunning = Value
        if scriptRunning then
            local url = "https://raw.githubusercontent.com/skibiditoiletfan2007/OtherScripts/main/BaldyToSorcerer/latest.lua"
            runScript(url)
            local player = game.Players.LocalPlayer
            onCharacterAdded(player.Character or player.CharacterAdded:Wait(), url)
            player.CharacterAdded:Connect(function(character)
                onCharacterAdded(character, url)
            end)
        end
        Rayfield:Notify({
            Title = "Notification",
            Content = "Animation activated.",
            Duration = 6.5,
            Image = 4483362458,
        })
    end,
})

local Toggle2 = Tab:CreateToggle({
    Name = "King of curses",
    CurrentValue = false,
    Flag = "Sukuna",
    Callback = function(Value)
        scriptRunning = Value
        if scriptRunning then
            local url = "https://raw.githubusercontent.com/Nova2ezz/Sukuna/refs/heads/main/KenjakuTsbOnYt"
            runScript(url)
            local player = game.Players.LocalPlayer
            onCharacterAdded(player.Character or player.CharacterAdded:Wait(), url)
            player.CharacterAdded:Connect(function(character)
                onCharacterAdded(character, url)
            end)
        end
        Rayfield:Notify({
            Title = "Notification",
            Content = "Animation activated.",
            Duration = 6.5,
            Image = 4483362458,
        })
    end,
})

local AdminTab = Window:CreateTab("Admin", 4483362458)

local Button2 = AdminTab:CreateButton({
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

local Button3 = AdminTab:CreateButton({
    Name = "IY",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()
        Rayfield:Notify({
            Title = "Notification",
            Content = "Loading IY latest.",
            Duration = 6.5,
            Image = 4483362458,
        })
    end
})

local Button4 = AdminTab:CreateButton({
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

local Button5 = AdminTab:CreateButton({
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
    Content = "Infinite yield - DarkNetworks\nanti logger - AnthonyIsntHere\nlogger - CyrusNeckTie\nanimation scripts - Nova2Ezz/KenjakuTsb & skibiditoiletfan2007"
})
