local players = game:GetService("Players")
local player = players.LocalPlayer
local teams = game:GetService("Teams")
local replicatedStorage = game:GetService("ReplicatedStorage")
local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/PresidentZuyi/S/refs/heads/main/C"))()

MakeWindow({
  Hub = {
    Title = "Azure Latch | Script",
    Animation = "GOALL!!"
  },
  Key = {
    KeySystem = true,
    Title = "Azure-Scripting 🔥",
    Description = "^ Azure Latch ^",
    KeyLink = "https://raw.githubusercontent.com/TsbScriptLua/Key-fluent-ui/refs/heads/main/Key.luaAzure.lua",
    Keys = {"azurelatchpresident", "£", "-", "7", "a"},
    Notifi = {
      Notifications = true,
      CorrectKey = "Correct✅ Running The Script...",
      Incorrectkey = "False.. Words Must be correctly",
      CopyKeyLink = "Copied Key Link!"
    }
  }
})

MinimizeButton({
  Image = "rbxassetid://103775574267750",
  Size = {40, 40},
  Color = Color3.fromRGB(10, 10, 10),
  Corner = true,
  Stroke = true,
  StrokeColor = Color3.fromHSV(0.5, 1, 1)  -- Hue: 180° for cyan
})

MakeNotifi({
  Title = "Executed....",
  Text = "Wait A Sec.. Thanks For Patience 😞",
  Time = 5
})

local Main = MakeTab({Name = "READ🥺"})

local Image = AddImageLabel(Main, {
  Name = "Faheem Cracked Exposed⭐️",
  Image = "rbxassetid://103775574267750"
})
local Paragraph1 = AddParagraph(Main, {"Paid Script Hub ✅", "CREDIT"})
local Paragraph2 = AddParagraph(Main, {"More Games Getting Supported Soon", "INFO"})
local Paragraph3 = AddParagraph(Main, {"Only AZURE LATCH Supported"})
local Paragraph4 = AddParagraph(Main, {"PresidentZuyi No Its Touka lol Is The Owner Of This Script"})

-- Auto
local Main = MakeTab({Name = "Azure Latch⚽⚡"})

AddButton(Main, { 
  Name = "✨ Get Azure Latch Script ✨", 
  Description = "Its Got Cracked!", 
  Callback = function()
      local Library = loadstring(game:HttpGet("https://you.whimper.xyz/sources/btteam/SystemUI.lua"))() -- LIBRARY

local Window = Library:CreateWindow('Faheem And 25ms Craked lol. - Azure Latch✅✨') -- CREATE WINDOW

local Tab = { -- CREATE TABS
    Tab_1 = Window:addTab(' Alhamdulillah:'),
    Tab_Setting = Window:addTab('Thid'),
    Tab_2 = Window:addTab('Script'),
    Tab_SubFarm = Window:addTab('Was Cracked By:'),
    Tab_3 = Window:addTab('Faheem'),
    Tab_Sea = Window:addTab('25ms'),
    Tab_RaceV4 = Window:addTab('33ms'),
    Tab_4 = Window:addTab('More Cracked Exposed!'),
    Tab_Combat = Window:addTab('Soon'),
    Tab_5 = Window:addTab('-'),
    Tab_6 = Window:addTab('-'),
    Tab_7 = Window:addTab('-')
    
}

local Home_Left = Tab.Tab_1:addSection() -- HOME LEFT SECTION
local Changelog = Home_Left:addMenu("Craked Logs")
Changelog:addChangelog('[Cracked ✨⭐️]')
Changelog:addChangelog(' ^ This Script Is Paid But Craked Lol ^')
Changelog:addChangelog('Getting Getting Free In The Future Idk No Craked')
Changelog:addChangelog('- Added AntiKickClient')
Changelog:addChangelog('- Added AutoGoal Feature')
Changelog:addChangelog('- Auto Farm - Anti Kick')
Changelog:addChangelog('- Added Infinite Jump')
Changelog:addChangelog('- Added HttpService')
Changelog:addChangelog('- Added Discord Link')
Changelog:addChangelog('- Added Faheem Craked Net Support')
Changelog:addChangelog('- All Star Quality Fix⭐️')
Changelog:addChangelog('- Fixed Gun Mastery Skill')
Changelog:addChangelog('- Changed Library System')
Changelog:addChangelog('')
Changelog:addChangelog('[EXTRA LOGS]')
Changelog:addChangelog('- Currently - Using ')
Changelog:addChangelog('- PresidentZuyi✨')
Changelog:addChangelog('- Auto Goal -')
Changelog:addChangelog('- Azure Latch⚽️')
Changelog:addChangelog('- Change Button to Toggle for Auto Farm')
Changelog:addChangelog('- Fixed Farm')
Changelog:addChangelog('- Fixed Additonal Script Bugs')
Changelog:addChangelog('- More Updates Coming Soon')
Changelog:addChangelog('')
Changelog:addChangelog('[Information]')
Changelog:addChangelog('- Wtf This Logs 25ms:!')
Changelog:addChangelog('- More Scripts For Diffrent Games')
Changelog:addChangelog('- Lol President Zuyi✅🪄')
Changelog:addChangelog('')
Changelog:addChangelog('[PresidentZuyi Craked no zuyi you got exposed 💫')

local Home_Right = Tab.Tab_1:addSection() -- HOME RIGHT SECTION
local Main_Home = Home_Right:addMenu("Main")

getgenv().WalkSpeedValue = 26
Main_Home:addTextbox("Speed Hack", getgenv().WalkSpeedValue, function(speedfunc)
    getgenv().WalkSpeedValue = speedfunc
    if getgenv().WalkSpeedValue then
        local Player = game:service'Players'.LocalPlayer
        Player.Character.Humanoid:GetPropertyChangedSignal'WalkSpeed':Connect(function()
            Player.Character.Humanoid.WalkSpeed = getgenv().WalkSpeedValue
        end)
        Player.Character.Humanoid.WalkSpeed = getgenv().WalkSpeedValue
    end
end)

getgenv().JumpValue = 50
Main_Home:addTextbox("Jump Hack", getgenv().JumpValue, function(jumpfunc)
    getgenv().JumpValue = jumpfunc
    if getgenv().JumpValue then
        game:GetService("Players").LocalPlayer.Character.Humanoid.JumpPower = getgenv().JumpValue
    end
end)

Main_Home:addToggle("Infinite Jump", InfiniteJumpEnabled, function(Value)
    InfiniteJumpEnabled = Value
    if InfiniteJumpEnabled then
        game:GetService("UserInputService").JumpRequest:connect(function()
            game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")
        end)
    end
end)

Main_Home:addToggle('No Clip', getgenv().NoClip, function(clipf)
    getgenv().NoClip = clipf
end)
spawn(function()
    pcall(function()
        game:GetService("RunService").Stepped:Connect(function()
            if getgenv().NoClip then
                for i,v in pairs(game:GetService("Players").LocalPlayer.Character:GetDescendants()) do
                    if v:IsA("BasePart") then
                        v.CanCollide = false
                    end
                end
            end
        end)
    end)
end)

getgenv().AntiAFK = true
Main_Home:addToggle("Anti AFK", getgenv().AntiAFK, function(Value)
    getgenv().AntiAFK = Value
end)

task.spawn(function ()
    while wait(.1) do
        if getgenv().AntiAFK then
            local vu = game:GetService("VirtualUser")
            game:GetService("Players").LocalPlayer.Idled:connect(function()
                vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
                wait(1)
                vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
            end)
        end
    end
end)

getgenv().AntiKickClient = true
Main_Home:addToggle("Anti Kick Client", getgenv().AntiKickClient, function(Value)
    getgenv().AntiKickClient = Value
end)
task.spawn(function()
    while wait() do
        if getgenv().AntiKickClient then
            loadstring(game:HttpGet('https://gitlab.com/Sky2836/BT/-/raw/main/antikickclient'))()
        end
    end
end)

Main_Home:addButton("Get Azure Latch Auto Goal!", function()
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Azure Latch",
        Text = "Auto Goal Script Executed😉🪄",
        Button1 = "Thank U Zuyi no tell",
        Button2 = "💫",
        Duration = 3
    })

    _G.AUTO_GOAL = true -- true = on, false = off

    loadstring(game:HttpGet("https://raw.githubusercontent.com/lnwskibidi/Roblox/main/AzureLatch.lua"))()

    while true do
        wait()
        game.Players.LocalPlayer.Character.Humanoid.Jump = true
    end
end)

Main_Home:addButton("Rejoin Server", function()
    game:GetService("TeleportService"):Teleport(game.PlaceId, game:GetService("Players").LocalPlayer)
end)

Main_Home:addButton("Server Hop", function()
    Hop()
end)
function Hop()
    local PlaceID = game.PlaceId
    local AllIDs = {}
    local foundAnything = ""
    local actualHour = os.date("!*t").hour
    local Deleted = false
    function TPReturner()
        local Site;
        if foundAnything == "" then
            Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100'))
        else
            Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100&cursor=' .. foundAnything))
        end
        local ID = ""
        if Site.nextPageCursor and Site.nextPageCursor ~= "null" and Site.nextPageCursor ~= nil then
            foundAnything = Site.nextPageCursor
        end
        local num = 0;
        for i,v in pairs(Site.data) do
            local Possible = true
            ID = tostring(v.id)
            if tonumber(v.maxPlayers) > tonumber(v.playing) then
                for _,Existing in pairs(AllIDs) do
                    if num ~= 0 then
                        if ID == tostring(Existing) then
                            Possible = false
                        end
                    else
                        if tonumber(actualHour) ~= tonumber(Existing) then
                            local delFile = pcall(function()
                                -- delfile("NotSameServers.json")
                                AllIDs = {}
                                table.insert(AllIDs, actualHour)
                            end)
                        end
                    end
                    num = num + 1
                end
                if Possible == true then
                    table.insert(AllIDs, ID)
                    wait(.1)
                    pcall(function()
                        -- writefile("NotSameServers.json", game:GetService('HttpService'):JSONEncode(AllIDs))
                        wait()
                        game:GetService("TeleportService"):TeleportToPlaceInstance(PlaceID, ID, game.Players.LocalPlayer)
                    end)
                    wait(.1)
                end
            end
        end
    end
    function Teleport() 
        while wait(.1) do
            pcall(function()
                TPReturner()
                if foundAnything ~= "" then
                    TPReturner()
                end
            end)
        end
    end
    Teleport()
end

Main_Home:addButton("Teleport To Lower Server", function()
    local maxplayers, gamelink, goodserver, data_table = math.huge, "https://games.roblox.com/v1/games/" .. game.PlaceId .. "/servers/Public?sortOrder=Asc&limit=100"
    if not _G.FailedServerID then _G.FailedServerID = {} end

    local function serversearch()
        data_table = game:GetService"HttpService":JSONDecode(game:HttpGetAsync(gamelink))
        for _, v in pairs(data_table.data) do
            pcall(function()
                if type(v) == "table" and v.id and v.playing and tonumber(maxplayers) > tonumber(v.playing) and not table.find(_G.FailedServerID, v.id) then
                    maxplayers = v.playing
                    goodserver = v.id
                end
            end)
        end
    end

    function getservers()
        pcall(serversearch)
        for i, v in pairs(data_table) do
            if i == "nextPageCursor" then
                if gamelink:find"&cursor=" then
                    local a = gamelink:find"&cursor="
                    local b = gamelink:sub(a)
                    gamelink = gamelink:gsub(b, "")
                end
                gamelink = gamelink .. "&cursor=" .. v
                pcall(getservers)
            end
        end
    end

    pcall(getservers)
    wait(.1)
    if goodserver == game.JobId or maxplayers == #game:GetService"Players":GetChildren() - 1 then
    end
    table.insert(_G.FailedServerID, goodserver)
    game:GetService"TeleportService":TeleportToPlaceInstance(game.PlaceId, goodserver)

    while wait(.1) do
        pcall(function()
            if not game:IsLoaded() then
                game.Loaded:Wait()
            end
            game.CoreGui.RobloxPromptGui.promptOverlay.DescendantAdded:Connect(function()
                local GUI = game.CoreGui.RobloxPromptGui.promptOverlay:FindFirstChild("ErrorPrompt")
                if GUI then
                    if GUI.TitleFrame.ErrorTitle.Text == "Disconnected" then
                        if #game.Players:GetPlayers() <= 1 then
                            game.Players.LocalPlayer:Kick("\nRejoining...")
                            wait(.1)
                            game:GetService("TeleportService"):Teleport(game.PlaceId, game.Players.LocalPlayer)
                        else
                            game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, game.JobId, game.Players.LocalPlayer)
                        end
                    end
                end
            end)
        end)
    end
end)

Main_Home:addButton("Destroy GUI", function()
    Library:DestroyGui()
end)

----------------------------------------------------//----------------------------------------------------
--// PATH 
--[[wait(1)
loadstring(game:HttpGet('https://raw.githubusercontent.com/S4nZz/bt_project/main/script'))() ]]

if game:GetService("Players").LocalPlayer.PlayerGui.Main:FindFirstChild("ChooseTeam") then
    repeat wait()
        if game:GetService("Players").LocalPlayer.PlayerGui:WaitForChild("Main").ChooseTeam.Visible == true then
            if _G.Team == "Pirate" then
                for i, v in pairs(getconnections(game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Container.Pirates.Frame.ViewportFrame.TextButton.Activated)) do                                                                                                
                    v.Function()
                end
            elseif _G.Team == "Marine" then
                for i, v in pairs(getconnections(game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Container.Marines.Frame.ViewportFrame.TextButton.Activated)) do                                                                                                
                    v.Function()
                end
            else
                for i, v in pairs(getconnections(game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Container.Pirates.Frame.ViewportFrame.TextButton.Activated)) do                                                                                                
                    v.Function()
                end
            end
        end
    until game.Players.LocalPlayer.Team ~= nil and game:IsLoaded()
end

--// World Check
First_Sea = false
Second_Sea = false
Third_Sea = false
local placeId = game.PlaceId
if placeId == 2753915549 then
    First_Sea = true
elseif placeId == 4442272183 then
    Second_Sea = true
elseif placeId == 7449423635 then
    Third_Sea = true
end

--// CHECK MONSTER
function CheckLevel()
    local Lv = game:GetService("Players").LocalPlayer.Data.Level.Value
    if First_Sea then
        if Lv == 1 or Lv <= 9 or _G.SelectMonster == "Bandit [Lv. 5]" then -- Bandit
            Ms = "Bandit"
            NameQuest = "BanditQuest1"
            QuestLv = 1
            NameMon = "Bandit"
            CFrameQ = CFrame.new(1060.9383544922, 16.455066680908, 1547.7841796875)
            CFrameMon = CFrame.new(1038.5533447266, 41.296249389648, 1576.5098876953)
        elseif Lv == 10 or Lv <= 14 or _G.SelectMonster == "Monkey [Lv. 14]" then -- Monkey
            Ms = "Monkey"
            NameQuest = "JungleQuest"
            QuestLv = 1
            NameMon = "Monkey"
            CFrameQ = CFrame.new(-1601.6553955078, 36.85213470459, 153.38809204102)
            CFrameMon = CFrame.new(-1448.1446533203, 50.851993560791, 63.60718536377)
        elseif Lv == 15 or Lv <= 29 or _G.SelectMonster == "Gorilla [Lv. 20]" then -- Gorilla
            Ms = "Gorilla"
            NameQuest = "JungleQuest"
            QuestLv = 2
            NameMon = "Gorilla"
            CFrameQ = CFrame.new(-1601.6553955078, 36.85213470459, 153.38809204102)
            CFrameMon = CFrame.new(-1142.6488037109, 40.462348937988, -515.39227294922)
        elseif Lv == 30 or Lv <= 39 or _G.SelectMonster == "Pirate [Lv. 35]" then -- Pirate
            Ms = "Pirate"
            NameQuest = "BuggyQuest1"
            QuestLv = 1
            NameMon = "Pirate"
            CFrameQ = CFrame.new(-1140.1761474609, 4.752049446106, 3827.4057617188)
            CFrameMon = CFrame.new(-1201.0881347656, 40.628940582275, 3857.5966796875)
        elseif Lv == 40 or Lv <= 59 or _G.SelectMonster == "Brute [Lv. 45]" then -- Brute
            Ms = "Brute"
            NameQuest = "BuggyQuest1"
            QuestLv = 2
            NameMon = "Brute"
            CFrameQ = CFrame.new(-1140.1761474609, 4.752049446106, 3827.4057617188)
            CFrameMon = CFrame.new(-1387.5324707031, 24.592035293579, 4100.9575195313)
        elseif Lv == 60 or Lv <= 74 or _G.SelectMonster == "Desert Bandit [Lv. 60]" then -- Desert Bandit
            Ms = "Desert Bandit"
            NameQuest = "DesertQuest"
            QuestLv = 1
            NameMon = "Desert Bandit"
            CFrameQ = CFrame.new(896.51721191406, 6.4384617805481, 4390.1494140625)
            CFrameMon = CFrame.new(984.99896240234, 16.109552383423, 4417.91015625)
        elseif Lv == 75 or Lv <= 89 or _G.SelectMonster == "Desert Officer [Lv. 70]" then -- Desert Officer
            Ms = "Desert Officer"
            NameQuest = "DesertQuest"
            QuestLv = 2
            NameMon = "Desert Officer"
            CFrameQ = CFrame.new(896.51721191406, 6.4384617805481, 4390.1494140625)
            CFrameMon = CFrame.new(1547.1510009766, 14.452038764954, 4381.8002929688)
        elseif Lv == 90 or Lv <= 99 or _G.SelectMonster == "Snow Bandit [Lv. 90]" then -- Snow Bandit
            Ms = "Snow Bandit"
            NameQuest = "SnowQuest"
            QuestLv = 1
            NameMon = "Snow Bandit"
            CFrameQ = CFrame.new(1386.8073730469, 87.272789001465, -1298.3576660156)
            CFrameMon = CFrame.new(1356.3028564453, 105.76865386963, -1328.2418212891)
        elseif Lv == 100 or Lv <= 119 or _G.SelectMonster == "Snowman [Lv. 100]" then -- Snowman
            Ms = "Snowman"
            NameQuest = "SnowQuest"
            QuestLv = 2
            NameMon = "Snowman"
            CFrameQ = CFrame.new(1386.8073730469, 87.272789001465, -1298.3576660156)
            CFrameMon = CFrame.new(1218.7956542969, 138.01184082031, -1488.0262451172)
        elseif Lv == 120 or Lv <= 149 or _G.SelectMonster == "Chief Petty Officer [Lv. 120]" then -- Chief Petty Officer
            Ms = "Chief Petty Officer"
            NameQuest = "MarineQuest2"
            QuestLv = 1
            NameMon = "Chief Petty Officer"
            CFrameQ = CFrame.new(-5035.49609375, 28.677835464478, 4324.1840820313)
            CFrameMon = CFrame.new(-4931.1552734375, 65.793113708496, 4121.8393554688)
        elseif Lv == 150 or Lv <= 174 or _G.SelectMonster == "Sky Bandit [Lv. 150]" then -- Sky Bandit
            Ms = "Sky Bandit"
            NameQuest = "SkyQuest"
            QuestLv = 1
            NameMon = "Sky Bandit"
            CFrameQ = CFrame.new(-4842.1372070313, 717.69543457031, -2623.0483398438)
            CFrameMon = CFrame.new(-4955.6411132813, 365.46365356445, -2908.1865234375)
        elseif Lv == 175 or Lv <= 189 or _G.SelectMonster == "Dark Master [Lv. 175]" then -- Dark Master
            Ms = "Dark Master"
            NameQuest = "SkyQuest"
            QuestLv = 2
            NameMon = "Dark Master"
            CFrameQ = CFrame.new(-4842.1372070313, 717.69543457031, -2623.0483398438)
            CFrameMon = CFrame.new(-5148.1650390625, 439.04571533203, -2332.9611816406)
        elseif Lv == 190 or Lv <= 209 or _G.SelectMonster == "Prisoner [Lv. 190]" then -- Prisoner
            Ms = "Prisoner"
            NameQuest = "PrisonerQuest"
            QuestLv = 1
            NameMon = "Prisoner"
            CFrameQ = CFrame.new(5310.60547, 0.350014925, 474.946594, 0.0175017118, 0, 0.999846935, 0, 1, 0, -0.999846935, 0, 0.0175017118)
            CFrameMon = CFrame.new(4937.31885, 0.332031399, 649.574524, 0.694649816, 0, -0.719348073, 0, 1, 0, 0.719348073, 0, 0.694649816)
        elseif Lv == 210 or Lv <= 249 or _G.SelectMonster == "Dangerous Prisoner [Lv. 210]" then -- Dangerous Prisoner
            Ms = "Dangerous Prisoner"
            NameQuest = "PrisonerQuest"
         
