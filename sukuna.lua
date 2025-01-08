local players = game:GetService("Players")
local player = players.LocalPlayer

local delay = 6

while true do
    local char = player.Character
    if char then
        char:WaitForChild("Humanoid").Died:Wait()
        wait(6)
        print("script successful")
loadstring(game:HttpGet("https://raw.githubusercontent.com/Nova2ezz/Sukuna/refs/heads/main/KenjakuTsbOnYt"))()
    end
    wait()
end
