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
        Description = "Get Any Style | Blue Lock Rivals",
        KeyLink = "https://discord.gg/72q5yvpfEJ",
        Keys = {"False", "False", "False", "False", "False"},
        Notifi = {
            Notifications = true,
            CorrectKey = "The key its correct!",
            Incorrectkey = "The key is incorrect",
            CopyKeyLink = "Copied Discord Link"
        }
    }
})

MinimizeButton({
    Image = "rbxassetid://87183704638351696",
    Size = {60, 60},
    Color = Color3.fromRGB(11, 10, 11),
    Corner = true,
    Stroke = true,
    StrokeColor = Color3.fromHSV(0.5, 1, 1)  -- Hue: 180° for cyan
})

MakeNotifi({
    Title = "Script Was Load Configuration For Check...",
    Text = "Wait this its should be fast...",
    Time = 5
})

local MainTab1 = MakeTab({Name = "Information"})

local Image1 = AddImageLabel(MainTab1, {
    Name = "! Important ! If you want the style skills work you must have reo..",
    Image = "rbxassetid://87183704638351696"
})
local Paragraph1 = AddParagraph(MainTab1, {"Get Any Style", "Flow Fast"})
local Paragraph2 = AddParagraph(MainTab1, {"•100% Works", "INFO"})
local Paragraph3 = AddParagraph(MainTab1, {"Faheem Lol"})
local Paragraph4 = AddParagraph(MainTab1, {"fonu Was the owner of this script..."})

local MainTab2 = MakeTab({Name = "Get Style"})

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
                Title = "Successfully!",
                Text = "Style applied!",
                Time = 1
            })
        else 
            MakeNotifi({
                Title = "Sttle Invalid",
                Text = "Please enter stlye name correctly!",
                Time = 1
            })
        end 
    end 
})

-- Existing button to load external script
AddButton(MainTab2, { 
    Name = "Enjoy", 
    Description = "This its Existing External Button!", 
    Callback = function()
        while true do
            loadstring(game:HttpGet("https://raw.githubusercontent.com/PresidentZuyi/S/refs/heads/main/Hu"))()
            wait(1) -- Prevent infinite loop issues
        end
    end
})

local ReadTab = MakeTab({Name = "Read!"})

local Image2 = AddImageLabel(ReadTab, {
    Name = "This Its UnRealesed//Faheem make this to make it test functioning!",
    Image = "rbxassetid://98953233046110"
})

local Paragraph5 = AddParagraph(ReadTab, {"This Script Not Confirm and Verify By Owner Touka", "CREDIT"})
local Paragraph6 = AddParagraph(ReadTab, {"Thank You For Touka Its test", "INFO"})
local Paragraph7 = AddParagraph(ReadTab, {"Test.lua Touka"})
local Paragraph8 = AddParagraph(ReadTab, {"Zuyi Skids But i Cracked Lol Credits me saved!"})
