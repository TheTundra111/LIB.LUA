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
            Content = "Animation activated!",
            Duration = 6.5,
            Image = 4483362458,
