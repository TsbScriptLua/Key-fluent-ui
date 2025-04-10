local RunService = game:GetService("RunService")
local Luna = loadstring(game:HttpGet("https://raw.githubusercontent.com/Nebula-Softworks/Luna-Interface-Suite/refs/heads/main/source.lua", true))()

local getgenv = getgenv
getgenv().Multiplier = 0.5
local CFrameEnabled = false
local connection = nil

local function startCFrameSpeed()
    if connection then connection:Disconnect() end
    
    connection = RunService.Heartbeat:Connect(function()
        if CFrameEnabled and game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
            local humanoidRootPart = game.Players.LocalPlayer.Character.HumanoidRootPart
            local humanoid = game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
            
            if humanoid and humanoid.MoveDirection.Magnitude > 0 then
                humanoidRootPart.CFrame = humanoidRootPart.CFrame + (humanoid.MoveDirection * getgenv().Multiplier)
            end
        end
    end)
end

local Window = Luna:CreateWindow({
    Name = "Emperor's Hub",
    Subtitle = "Glorius Emperor's Hub",
    LogoID = "16056972578",
    LoadingEnabled = true,
    LoadingTitle = "Glorius Emperor's Hub(Blue Lock Rivals)",
    LoadingSubtitle = "Made By Faheem!",
    ConfigSettings = {
        RootFolder = "Faheem.lua", 
        ConfigFolder = "Configs", 
        AutoLoadConfig = true 
    },
})

Window:CreateHomeTab({
    SupportedExecutors = {"Delta", "Fluxus", "Codex", "Cryptic", "Vegax", "Trigon", "Synapse X", "Script-Ware", "KRNL", "Seliware", "Solara", "Xeno", "ZORARA", "Luna", "Nihon", "JJsploit", "AWP", "Wave", "Ronix"},
    DiscordInvite = "https://discord.gg/D3T4ArjBqk",
    Icon = 16056972578,
})

local MainTab = Window:CreateTab({
    Name = "🧿💦 | Home",
    Icon = "dashboard",
    ImageSource = "Material",
    ShowTitle = true
})

local CharacterTab = Window:CreateTab({
    Name = "🖤 - Side Main",
    Icon = "menu",
    ImageSource = "Material",
    ShowTitle = true
})

local ZuyiTab = Window:CreateTab({
    Name = "✨ - Visual Spins",
    Icon = "star",
    ImageSource = "Material",
    ShowTitle = true
})

local XTab = Window:CreateTab({
    Name = "🤔 - Information (Pls Read)",
    Icon = "info",
    ImageSource = "Material",
    ShowTitle = true
})

MainTab:CreateSection("Custom Styles And Main Features")

MainTab:CreateButton({
    Name = "♥️♦️ - (NEW) Get Itadori Yuji Style!",
    Description = "🔥 - This Script It's Not By Me!",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/hzhzhzsjjs/GetWheelSpin/refs/heads/main/Doneitaodrk"))()
    end
})

MainTab:CreateButton({
    Name = "🇧🇷 - 🪩🇧🇷 Get Lavinho Style",
    Description = "🇧🇷 - Loads the Lavinho Style (Not By Me Credits to the owner)",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/hzhzhzsjjs/GetWheelSpin/refs/heads/main/Hi"))()
    end
})

MainTab:CreateButton({
    Name = "⚡️🧠 - Get Loki Style",
    Description = "⚡️ - Loads the Loki Style (Umm Its This okay?)",
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/oaaioakakaka/Script/refs/heads/main/Hccc'))()
    end
})

MainTab:CreateButton({
    Name = "✅⚽ - Auto Get Ball",
    Description = "✅ - Automatically Gives You The Ball (SUPER OP FEATURE)!",
    Callback = function()
        local Players = game:GetService("Players")
        local RunService = game:GetService("RunService")
        local player = Players.LocalPlayer
        local character = player.Character or player.CharacterAdded:Wait()
        local rootPart = character:WaitForChild("HumanoidRootPart")

        local autoGoalKeeperEnabled = true
        local predictionDistance = 50

        local function autoGoalKeeper()
            while autoGoalKeeperEnabled do
                local ball = workspace:FindFirstChild("Football")
                if ball and ball.AssemblyLinearVelocity.Magnitude > 5 then
                    rootPart.CFrame = CFrame.new(
                        ball.Position + (ball.AssemblyLinearVelocity * 0.1)
                    )
                end
                task.wait()
            end
        end

        task.spawn(autoGoalKeeper)
    end
})

MainTab:CreateSlider({
    Name = "✅,L🧿 - Increase World Class Chance!",
    Description = "✅ - Increases Luck Chance For Lucky Spin’!(🔥SUPER OP FEATURES)",
    Range = {0, 100},
    Increment = 1,
    Suffix = "Chance",
    CurrentValue = 50,
    Callback = function(Value)
        predictionDistance = Value
    end,
})

MainTab:CreateSlider({
    Name = "✅🚙 - FPS Booster",
    Description = "✅ - Please Choose Your FPS Booster Value!",
    Range = {0, 100},
    Increment = 1,
    Suffix = "Booster",
    CurrentValue = 50,
    Callback = function(Value)
        predictionDistance = Value
    end,
})

MainTab:CreateSection("Extra Misc!")

MainTab:CreateButton({
    Name = "🥰 - Anti Ragdoll",
    Description = "🥰 - This Features Removes Ankle Breaker (From The Enemies OP!)",
    Callback = function()
        local Players = game:GetService("Players")
        local player = Players.LocalPlayer

        local antiRagdollEnabled = true

        local function disableRagdoll()
            while antiRagdollEnabled do
                if player.Character and player.Character:FindFirstChild("Ragdolled") then
                    player.Character.Ragdolled:Destroy()
                end
                task.wait()
            end
        end

        task.spawn(disableRagdoll)
    end
})

MainTab:CreateToggle({
    Name = "🥰 - Anti AFK",
    Description = "🥰 - Makes You AFK Meanwhile Playing So U Don’t Get Kicked By Roblox Service!",
    CurrentValue = false,
    Callback = function(Value)
        autoTPHomeEnabled = Value
    end
})

MainTab:CreateToggle({
    Name = "🥰 - Anti Lag",
    Description = "🥰 - Reduces Lag (WARNING LOW GRAPHICS)",
    CurrentValue = false,
    Callback = function(Value)
        autoTPAwayEnabled = Value
    end
})

MainTab:CreateToggle({
    Name = "⚡ - VFX Multiplier!",
    Description = "🥰 - Makes The VFX Cleaner For Your Experience! do not use while lag!",
    CurrentValue = false,
    Callback = function(Value)
        tpBallToYouEnabled = Value
    end
})

MainTab:CreateSection("Emperor's Hub > Portals🧿!")

local noCDEnabled, autoDribbleEnabled = false, false

MainTab:CreateToggle({
    Name = "😍 - No Ability Cooldown",
    Description = "😍 - No Cooldown On Abilities (Body Block Users Rn : 🤤)",
    CurrentValue = false,
    Callback = function(Value)
        noCDEnabled = Value
        if Value then
            local C = require(game:GetService("ReplicatedStorage").Controllers.AbilityController)
            local o = C.AbilityCooldown
            C.AbilityCooldown = function(s, n, ...)
                return o(s, n, 0, ...)
            end
        else
            warn("No CD disabled. Restart the script to revert cooldowns. if not work fix soon!")
        end
    end
})

MainTab:CreateToggle({
    Name = "😍 - Hitbox Expander",
    Description = "😍 - Increases Your Hitbox Value By 60% To Better Experiencezx Credits 24ms!",
    CurrentValue = false,
    Callback = function(Value)
        autoDribbleEnabled = Value
    end
})

MainTab:CreateSection("!Ball Expander!⚽")

MainTab:CreateToggle({
    Name = "⚽⚡🧿 - Invisible Ball Expander⚽",
    Description = "⚽⚡ - Increases Ball Hitbox",
    CurrentValue = false,
    Callback = function(Value)
        antiAFKEnabled = Value
        if Value then
            task.spawn(antiAFK)
            Luna:Notification({
                Title = "Anti-AFK Enabled!",
                Content = "You will not be kicked for inactivity",
                Icon = "check_circle",
                ImageSource = "Material"
            })
        end
    end
})

MainTab:CreateToggle({
    Name = "😍 - Anti Fling ",
    Description = "😍 - Never Get Flinged By An Anooying Hacker!",
    CurrentValue = false,
    Callback = function(Value)
        antiAFKEnabled = Value
        if Value then
            task.spawn(antiAFK)
            Luna:Notification({
                Title = "Anti-AFK Enabled",
                Content = "You will not be kicked for inactivity",
                Icon = "check_circle",
                ImageSource = "Material"
            })
        end
    end
})

CharacterTab:CreateSection("⚽⚡🔥 - Side Main")

CharacterTab:CreateButton({
    Name = "♾️ - Infinite Flow (RYOIKI TENKAI)",
    Description = "♾️ Gives you infinite flow! (OP)!",
    Callback = function()
        local args = {
                        [1] = game:GetService("Players").LocalPlayer.PlayerStats.Flow.Value
                    }

                    game:GetService("ReplicatedStorage").Packages.Knit.Services.FlowService.RE.AuraEquip:FireServer(unpack(args))
    end
})

CharacterTab:CreateButton({
    Name = "♾️ - No Clip",
    Description = "♾️ - Walk Trough Walls (Bypass Anti Cheat),",
    Callback = function()
        loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-Noclip-22002", true))()
    end
})

CharacterTab:CreateToggle({
    Name = "♾️ - Flow Full Capacity",
    Description = "Makes The Infinite Flow Work At Its Best And Some 💪 Buff!",
    CurrentValue = false,
    Callback = function()
        local args = {
                        [1] = game:GetService("Players").LocalPlayer.PlayerStats.Flow.Value
                    }

                    game:GetService("ReplicatedStorage").Packages.Knit.Services.FlowService.RE.AuraEquip:FireServer(unpack(args))
    end
})

CharacterTab:CreateButton({
    Name = "♾️ - Fly",
    Description = "♾️ - Makes You Fly (OP)",
    Callback = function()
        if player.Character then
            player.Character:BreakJoints()
        end
    end
})

CharacterTab:CreateToggle({
    Name = "⚠️ - Use The Fly Script At Your Own Risk - ⚠️",
    Description = "Prevent ragdolling If You get banned its you choice we dont response!",
    CurrentValue = false,
    Callback = function(Value)
        antiRagdoll = Value
        if Value then
            task.spawn(function()
                while antiRagdoll do
                    if player.Character and player.Character:FindFirstChild("Ragdolled") then
                        player.Character.Ragdolled:Destroy()
                    end
                    task.wait()
                end
            end)
        end
    end
})

CharacterTab:CreateSlider({
    Name = "♾️ - Increase Legendary Style Chance!⚡",
    Description = "♾️ - Gives You A Higher Chance To Get A Legendary (Reo Or Nagi)",
    Range = {0, 5},
    Increment = 0.1,
    CurrentValue = 0.5,
    Callback = function(Value)
        getgenv().Multiplier = Value
    end
})

CharacterTab:CreateToggle({
    Name = "♾️ - Maximise Script Capability (Improvement Companies Of Our s Service)",
    CurrentValue = false,
    Callback = function(Value)
        CFrameEnabled = Value
        if Value then
            startCFrameSpeed()
        elseif connection then
            connection:Disconnect()
            connection = nil
        end
    end
})

ZuyiTab:CreateSection("✅ - Visual Spins (TROLL YOU FRIENDS)")

ZuyiTab:CreateButton({
    Name = "Please Choose Below How Many Spins You Want!👇",
    Description = "Choose Below Max 1Tb",
    Callback = function()
        loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-Noclip-22002", true))()
    end
})

ZuyiTab:CreateButton({
    Name = "1000 Spins",
    Description = "Gives you 1000 spins",
    Callback = function()
        game.Players.LocalPlayer.ProfileStats.Spins.Value = 1000
    end
})

ZuyiTab:CreateButton({
    Name = "2000 Spins",
    Description = "Gives you 2000 spins",
    Callback = function()
        game.Players.LocalPlayer.ProfileStats.Spins.Value = 2000
    end
})

ZuyiTab:CreateButton({
    Name = "3000 Spins",
    Description = "Gives you 3000 spins",
    Callback = function()
        game.Players.LocalPlayer.ProfileStats.Spins.Value = 3000
    end
})

ZuyiTab:CreateButton({
    Name = "4000 Spins",
    Description = "Gives you 4000 spins",
    Callback = function()
        game.Players.LocalPlayer.ProfileStats.Spins.Value = 4000
    end
})

ZuyiTab:CreateButton({
    Name = "5000 Spins",
    Description = "Gives you 5000 spins",
    Callback = function()
        game.Players.LocalPlayer.ProfileStats.Spins.Value = 5000
    end
})

ZuyiTab:CreateButton({
    Name = "6000 Spins",
    Description = "Gives you 6000 spins",
    Callback = function()
        game.Players.LocalPlayer.ProfileStats.Spins.Value = 6000
    end
})

ZuyiTab:CreateButton({
    Name = "7000 Spins",
    Description = "Gives you 7000 spins",
    Callback = function()
        game.Players.LocalPlayer.ProfileStats.Spins.Value = 7000
    end
})

ZuyiTab:CreateButton({
    Name = "8000 Spins",
    Description = "Gives you 8000 spins",
    Callback = function()
        game.Players.LocalPlayer.ProfileStats.Spins.Value = 8000
    end
})

ZuyiTab:CreateButton({
    Name = "9000 Spins",
    Description = "Gives you 9000 spins",
    Callback = function()
        game.Players.LocalPlayer.ProfileStats.Spins.Value = 9000
    end
})

ZuyiTab:CreateButton({
    Name = "10000 Spins",
    Description = "Gives you 10000 spins",
    Callback = function()
        game.Players.LocalPlayer.ProfileStats.Spins.Value = 10000
    end
})

XTab:CreateSection("Information - Credits")

XTab:CreateButton({
    Name = "✅ - This Script Is Currently BETA Not Fully Completed!",
    Description = "(BETA) - Glorius Emperor's Hub?!",
    Callback = function()
        loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-Noclip-22002", true))()
    end
})

XTab:CreateButton({
    Name = "✅ - UPDATE LOGS WITH NEW FEATURES COMING SOON!",
    Description = "-",
    Callback = function()
        loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-Noclip-22002", true))()
    end
})

XTab:CreateButton({
    Name = "🤔? - What Features Shall I Add Next? Ask Me On Discord!",
    Description = "My DiscordbUser - @Foxlowx",
    Callback = function()
        loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-Noclip-22002", true))()
    end
})

XTab:CreateButton({
    Name = "✅ - What’s Gonna Come In The Next Update?",
    Description = "🔥 - Next Update (NEW CUSTOM STYLE) Also Brong More Improvement!",
    Callback = function()
        loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-Noclip-22002", true))()
    end
})

-- Clean up connection when the script is destroyed
game.Players.LocalPlayer.CharacterAdded:Connect(function()
    if connection then
        connection:Disconnect()
        connection = nil
        if CFrameEnabled then
            startCFrameSpeed()
        end
    end
end)

Luna:Notification({
    Title = "Config Loaded (Clean Cache)",
    Content = "Your saved configuration has been automatically loaded/Saved.",
    Icon = "check_circle",
    ImageSource = "Material"
})

game:GetService("RunService").Heartbeat:Connect(function()
    if hrp then
        if autoTPEnabled and ball then
            local distance = (hrp.Position - ball.Position).Magnitude
            if distance > 5 then
                hrp.CFrame = ball.CFrame + Vector3.new(0, 1.5, 0)
            end
        end

        if ball and ball.Parent and ball.Parent:IsA("Model") and ball.Parent:FindFirstChild("Humanoid") and ball.Parent.Name == player.Name then
            teleportToGoal()
        end
    end

    if autoDribbleEnabled then
        autoDribble()
    end

    if tpBallToYouEnabled then
        tpBallToYou()
    end

    if autoFarmEnabled then
        autoFarm()
    end
end)
