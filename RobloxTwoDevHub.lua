local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "TwoDevHub📀", HidePremium = false, SaveConfig = true, ConfigFolder = "TwoDevHub"})
OrionLib:MakeNotification({
	Name = "Title!",
	Content = "Notification content... what will it say??",
	Image = "rbxassetid://4483345998",
	Time = 5
})

local MainTab = Window:MakeTab({
	Name = "Main",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

MainTab:AddButton({
	Name = "MainButton",
	Callback = function()
      		print("button pressed")
  	end    
})

MainTab:AddToggle({
	Name = "MainToggle",
	Default = false,
	Callback = function(Value)
		print(Value)
	end    
})

MainTab:AddTextbox({
	Name = "Textbox",
	Default = "default box input",
	TextDisappear = true,
	Callback = function(Value)
		print(Value)
	end	  
})

local SecondTab = Window:MakeTab({
	Name = "Second",
	Icon = "rbxassetid://4483345999",
	PremiumOnly = false
})

SecondTab:AddToggle({
	Name = "MainToggle",
	Default = false,
	Callback = function(Value)
		print(Value)
	end    
})

SecondTab:AddSlider({
	Name = "Slider",
	Min = 0,
	Max = 20,
	Default = 5,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "bananas",
	Callback = function(Value)
		print(Value)
	end    
})

SecondTab:AddTextbox({
	Name = "Textbox",
	Default = "default box input",
	TextDisappear = true,
	Callback = function(Value)
		print(Value)
	end	  
})

SecondTab:AddDropdown({
	Name = "Dropdown",
	Default = "1",
	Options = {"1", "2"},
	Callback = function(Value)
		print(Value)
	end    
})

end




