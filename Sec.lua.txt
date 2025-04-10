local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "9/11.Lua Hub",
   Icon = 0, -- Icon in Topbar. Can use Lucide Icons (string) or Roblox Image (number). 0 to use no icon (default).
   LoadingTitle = "9/33.Lua Interface",
   LoadingSubtitle = "by 33ms",
   Theme = "Amethyst", -- Check https://docs.sirius.menu/rayfield/configuration/themes

   DisableRayfieldPrompts = false,
   DisableBuildWarnings = false, -- Prevents Rayfield from warning when the script has a version mismatch with the interface

   ConfigurationSaving = {
      Enabled = true,
      FolderName = 9/11.Lua Hub, -- Create a custom folder for your hub/game
      FileName = "9/11.Lua Hub"
   },

   Discord = {
      Enabled = true, -- Prompt the user to join your Discord server if their executor supports it
      Invite = "Discord/25ms", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ ABCD would be ABCD
      RememberJoins = true -- Set this to false to make them join the discord every time they load it up
   },

   KeySystem = true, -- Set this to true to use our key system
   KeySettings = {
      Title = "9/11 Keysystem",
      Subtitle = "Complete The Key System🔐",
      Note = "The key its [Lua]", -- Use this to tell the user how to get a key
      FileName = "retard.lua", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
      SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = {"Lua"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
   }   
})

Rayfield:Notify({
   Title = "Hey! Down Here.",
   Content = "The key its correct ✅ it will executed for a Sec.",
   Duration = 6.5,
   Image = 4483362458,
})

Rayfield:Notify({
   Title = "Hey! Down Here.",
   Content = "After you executd pls read the Note! on the Hub",
   Duration = 6.5,
   Image = 4483362458,
})

local Tab = Window:CreateTab("Main", 4483362458) -- Title, Image

local Button = Tab:CreateButton({
   Name = "Note Read this = The Script Made by Faheem On Discord!",
   Callback = function()
   -- The function that takes place when the button is pressed
   end,
})

local Button = Tab:CreateButton({
   Name = "33ms was the keysystem helper",
   Callback = function()
   -- The function that takes place when the button is pressed
   end,
})

local Button = Tab:CreateButton({
   Name = "The Script = The script its work on progress it still on test. Overall The Script will updated manually😬",
   Callback = function()
   -- The function that takes place when the button is pressed
   end,
})

local Button = Tab:CreateButton({
   Name = "Credits To✍️: Faheem! - Script The Owner of the script @25 - was the keysystem coding",
   Callback = function()
   -- The function that takes place when the button is pressed
   end,
})

local Button = Tab:CreateButton({
   Name = "Credits✍️: Josh - The Script idea of details✅ Msa! •Help Moewy• - The Helpers script and much ideas!",
   Callback = function()
   -- The function that takes place when the button is pressed
   end,
})

local Button = Tab:CreateButton({
   Name = "Enjoy The Script✓💹",
   Callback = function()
   -- The function that takes place when the button is pressed
   end,
})

local function createStyleButton(styleName)
    MainTab:CreateButton({
        Name = "Get " .. styleName,
        Callback = function()
            game.Players.LocalPlayer.PlayerStats.Style.Value = styleName
        end
    })
end

-- Style List
local styles = {
    "Aiku", "Bachira", "Chigiri", "Don Lorenzo", "Gagamaru", "Hiori", "Isagi",
    "Karasu", "King", "Kunigami", "Nagi", "Otoya", "Rin", "Reo", "Sae",
    "Shidou", "Yukimiya", "Kurona", "NEL Isagi"
}

-- Create Style Buttons
for _, style in ipairs(styles) do
    createStyleButton(style)
end

-- Reset Style Button
MainTab:CreateButton({
    Name = "Reset Style",
    Callback = function()
        game.Players.LocalPlayer.PlayerStats.Style.Value = "Default"
    end
})

-- Creating Flow Tab
local FlowTab = Window:CreateTab("Flow", 4483362458) -- You can change the icon ID if needed

-- Flow Activation Function
local function activateFlow(flowName)
    game.Players.LocalPlayer.PlayerStats.Flow.Value = flowName
    game.Players.LocalPlayer.PlayerStats.inFlow.Value = true
end

-- Flow List
local flows = {
    "Prodigy",
    "Awakened Genius",
    "Dribbler",
    "Snake",
    "Ice",
    "Soul Harvester",
    "Wild Card"
}

-- Create Flow Buttons
for _, flow in ipairs(flows) do
    FlowTab:CreateButton({
        Name = "Activate " .. flow,
        Callback = function()
            activateFlow(flow)
        end
    })
end

-- Flow Toggle Section
FlowTab:CreateSection("Flow Management")

-- Toggle to Keep inFlow Always Active
FlowTab:CreateToggle({
    Name = "Maintain Flow State",
    CurrentValue = true,
    Callback = function(value)
        game.Players.LocalPlayer.PlayerStats.inFlow.Value = value
    end
})

-- Reset Flow Button
FlowTab:CreateButton({
    Name = "Reset Flow",
    Callback = function()
        game.Players.LocalPlayer.PlayerStats.Flow.Value = "None"
        game.Players.LocalPlayer.PlayerStats.inFlow.Value = false
    end
})
