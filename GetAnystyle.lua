local players = game:GetService("Players")
local player = players.LocalPlayer
local teams = game:GetService("Teams")
local replicatedStorage = game:GetService("ReplicatedStorage")
local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/PresidentZuyi/F/refs/heads/main/S"))()

MakeWindow({
    Hub = {
        Title = "Blue Lock Get Any Style.lua| Get Any Style Test",
        Animation = "Made By Faheem!"
    },
    Key = {
        KeySystem = false,
        Title = "Get Any Style",
        Description = "^ Get Any Style | Blue Lock Rivals ^",
        KeyLink = "https://discord.gg/72q5yvpfEJ",
        Keys = {"OWNERSKEY1", "zuyi1", "PresidentZuyi", "zuyixexecutive", "zuyi"},
        Notifi = {
            Notifications = true,
            CorrectKey = "Running the Script...",
            Incorrectkey = "The key is incorrect",
            CopyKeyLink = "Copied Discord Link"
        }
    }
})

MinimizeButton({
    Image = "rbxassetid://989532330461",
    Size = {40, 40},
    Color = Color3.fromRGB(10, 10, 10),
    Corner = true,
    Stroke = true,
    StrokeColor = Color3.fromHSV(0.5, 1, 1)  -- Hue: 180° for cyan
})

MakeNotifi({
    Title = "Get Any Style | BLUE LOCK",
    Text = "Test.Lua Notification? - Get Any Style Test",
    Time = 5
})

local MainTab1 = MakeTab({Name = "INFO"})

local Image1 = AddImageLabel(MainTab1, {
    Name = "Get Any Style🔗",
    Image = "rbxassetid://98953233046110"
})
local Paragraph1 = AddParagraph(MainTab1, {"Get Any Style", "CREDIT"})
local Paragraph2 = AddParagraph(MainTab1, {"Zuyi", "INFO"})
local Paragraph3 = AddParagraph(MainTab1, {"Zuyi"})
local Paragraph4 = AddParagraph(MainTab1, {"PresidentZuyi Is The Owner Of This Script"})

local MainTab2 = MakeTab({Name = "MAIN"})

-- Function to set a specific style
local function set_style(desired_style)
    if player:FindFirstChild("PlayerStats") then
        local playerStats = player.PlayerStats
        if playerStats:FindFirstChild("Style") then
            playerStats.Style.Value = desired_style
        end
    end
end

-- Function to set a specific flow
local function set_flow(desired_flow)
    if player:FindFirstChild("PlayerStats") then
        local playerStats = player.PlayerStats
        if playerStats:FindFirstChild("Flow") then
            playerStats.Flow.Value = desired_flow
        end
    end
end

-- Textbox to enter a style name
local StyleTextBox = AddTextBox(MainTab2, { 
    Name = "Style Name", 
    Default = "", 
    TextDisappear = false, 
    PlaceholderText = "PUT NAME", 
    ClearText = true, 
    Callback = function(value) 
        styleId = value 
    end 
}) 

-- Button to apply a specific style
AddButton(MainTab2, { 
    Name = "GET THE STYLE", 
    Description = "DONT SPAM!", 
    Callback = function() 
        if styleId and styleId ~= "" then 
            set_style(styleId)
            MakeNotifi({
                Title = "SUCCESSFULLY",
                Text = "Style applied!",
                Time = 5
            })
        else 
            MakeNotifi({
                Title = "ERROR",
                Text = "Please enter a valid style name",
                Time = 5
            })
        end 
    end 
})

-- Existing button to load external script
AddButton(MainTab2, { 
    Name = "Enjoy🔥", 
    Description = "Why’d u click it ts pmo☠️!", 
    Callback = function()
        while true do
            loadstring(game:HttpGet("https://raw.githubusercontent.com/PresidentZuyi/S/refs/heads/main/Hu"))()
            wait(1) -- Prevent infinite loop issues
        end
    end
})

local ReadTab = MakeTab({Name = "READ"})

local Image2 = AddImageLabel(ReadTab, {
    Name = "Tes.lua🔗",
    Image = "rbxassetid://98953233046110"
})

local Paragraph5 = AddParagraph(ReadTab, {"This Script Not Confirm and Verify By Owner Touka", "CREDIT"})
local Paragraph6 = AddParagraph(ReadTab, {"Thank You For Touka Its tedt✅", "INFO"})
local Paragraph7 = AddParagraph(ReadTab, {"Test.lua b🤓"})
local Paragraph8 = AddParagraph(ReadTab, {"Crown.Lua Test!✅"})
