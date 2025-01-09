local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Tundra - TSBG", HidePremium = false, SaveConfig = true, ConfigFolder = "Tundra-Loading"})
local Tab = Window:MakeTab({
	Name = "TSB",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false 
})
local Section = Tab:AddSection({
	Name = "Gojo",
})

OrionLib:MakeNotification({
	Name = "Tundra Loader",
	Content = "Tundra loader in progress",
	Image = "rbxassetid://4483345998",
	Time = 6
}}
Tab:AddToggle({
	Name = "gojo test",
	Default = false,
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/skibiditoiletfan2007/OtherScripts/main/BaldyToSorcerer/latest.lua"))()
	end    
})

local Section = Tab:AddSection({
	Name = "Goku",
})
Tab:AddButton({
	Name = "Goku",
	Callback = function()
      		loadstring(game:HttpGet("https://raw.githubusercontent.com/JayXSama/ray-makk/main/GOKUTSB"))()
  	end    
})
local Section = Tab:AddSection({
	Name = "Sukuna",
})
Tab:AddButton({
	Name = "Sukuna",
	Callback = function()
      		loadstring(game:HttpGet"https://raw.githubusercontent.com/h8h88/hubfr/main/hubfr")()

  	end    
})

local Tab = Window:MakeTab({
	Name = "Universal",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false 
})
local Section = Tab:AddSection({
	Name = "Admin",
})
Tab:AddButton({
	Name = "IY",
	Callback = function()
loadstring(game:HttpGet(('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'),true))()

  	end    
})
local Section = Tab:AddSection({
	Name = "Logging info/Anti-Logging",
})


Tab:AddButton({
	Name = "Chat Anti-Logger",
	Callback = function()
loadstring(game:HttpGet(('https://raw.githubusercontent.com/AnthonyIsntHere/anthonysrepository/refs/heads/main/scripts/AntiChatLogger.lua'),true))()

end
})


Tab:AddButton({
	Name = "Chat Logger",
	loadstring(game:HttpGet(('https://gist.githubusercontent.com/CyrusNecktie/5c55a998daa6a358a72342b557a580b9/raw/04d3887a779e4a1f59ad3510523fbcef01a8a2b7/gistfile1.txt'),true))()

end
})
