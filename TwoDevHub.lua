﻿local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
Rayfield:Notify({
   Title = "TwoDevHub",
   Content = "On Load",
   Duration = 6.5,
   Image = 4483362458,
})

local Window = Rayfield:CreateWindow({
   Name = "⚽SLS TwoDev Hub⚽",
   Icon = 1, -- Icon in Topbar. Can use Lucide Icons (string) or Roblox Image (number). 0 to use no icon (default).
   LoadingTitle = "TwoDevHub",
   LoadingSubtitle = "by TwoDev",
   Theme = "Default", -- Check https://docs.sirius.menu/rayfield/configuration/themes

   DisableRayfieldPrompts = false,
   DisableBuildWarnings = false, -- Prevents Rayfield from warning when the script has a version mismatch with the interface

   ConfigurationSaving = {
      Enabled = true,
      FolderName = nil, -- Create a custom folder for your hub/game
      FileName = "Big Hub"
   },

   Discord = {
      Enabled = false, -- Prompt the user to join your Discord server if their executor supports it
      Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ ABCD would be ABCD
      RememberJoins = true -- Set this to false to make them join the discord every time they load it up
   },

   KeySystem = true, -- Set this to true to use our key system
   KeySettings = {
      Title = "Input Key To Start",
      Subtitle = "Key System",
      Note = "Input the key from us website", -- Use this to tell the user how to get a key
      FileName = "Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
      SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = {"TwoDevAcces"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
   }
})

 local MainTab = Window:CreateTab("Auto Work", 4483362458) -- Title, Image
 local Toggle = MainTab:CreateToggle({
   Name = "Cashier",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
   -- The function that takes place when the toggle is pressed
   -- The variable (Value) is a boolean on whether the toggle is true or false
   end,
})

local PlayerTab = Window:CreateTab("Player", 4483362458) -- Title, Image

local Slider = PlayerTab:CreateSlider({
   Name = "WalkSpeed",
   Range = {0, 300},
   Increment = 10,
   Suffix = "WalkSpeed",
   CurrentValue = 10,
   Flag = "Slider1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = (Value)
   end,
})

local Input = PlayerTab:CreateInput({
   Name = "HitBox Size (example 2, 2, 2)",
   CurrentValue = "",
   PlaceholderText = "Input size",
   RemoveTextAfterFocusLost = false,
   Flag = "Input1",
   Callback = function(Text)
		game.Players.LocalPlayer.Character.TackleHitbox.Size = (Text)
   end,
})

local Button = PlayerTab:CreateButton({
   Name = "Be Manager , If Manager is None",
   Callback = function()
       game.Players.LocalPlayer.Team = Cook
   end,
})

local Button = PlayerTab:CreateButton({
   Name = "Reset Character",
   Callback = function()
		game.Players.LocalPlayer.Character.Humanoid.Health = 0
   end,
})

 Rayfield:Notify({
   Title = "TwoDevHub",
   Content = "Loaded, Enjoy!",
   Duration = 6.5,
   Image = 4483362458,
})