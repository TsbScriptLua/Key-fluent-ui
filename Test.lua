local game = game
local TweenService = game:GetService("TweenService")
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local InGameUI = LocalPlayer.PlayerGui:WaitForChild("InGameUI")
local Bottom = InGameUI:WaitForChild("Bottom")
local Abilities = Bottom:WaitForChild("Abilities")

local Character = LocalPlayer.Character
Character:WaitForChild("1"):Clone()
Character:WaitForChild("2"):Clone()

Character.CharacterAdded:Connect(function()
  wait(2)
  
  local function handleAbility(num, text, soundId)
    local ability = Instance.new("Sound")
    ability.Name = "Custom"
    ability.Text = text
    ability.SoundId = soundId
    ability.Parent = Abilities[num]
    
    ability.MouseButton1Click:Connect(function()
      if ability:FindFirstChild("Cooldown") then
        print("Ability is on cooldown!")
        return
      end
      
      local Values = LocalPlayer.Character:FindFirstChild("Values")
      if not Values or not Values:FindFirstChild("HasBall") or not Values.HasBall.Value then
        print("Player doesn't have ball")
        return  
      end
      
      ability:Play()
      
      local cooldown = Instance.new("UIGradient")
      cooldown.Name = "Cooldown"
      cooldown.Parent = ability
      
      local tween = TweenService:Create(
        cooldown,
        TweenInfo.new(30),
        {Offset = Vector2.new(1, 0)}
      )
      tween:Play()
      
      coroutine.wrap(function()
        loadstring(game:HttpGet("https://pastebin.com/raw/LJSYvKNS"))()
      end)()
      
      coroutine.wrap(function()
        loadstring(game:HttpGet("https://pastebin.com/raw/rvLQP5Jn"))()  
      end)()
      
      coroutine.wrap(function()
        loadstring(game:HttpGet("https://pastebin.com/raw/FrN2DTM2"))()
      end)()
      
      coroutine.wrap(function() 
        loadstring(game:HttpGet("https://pastebin.com/raw/Ht1ZpiHe"))()
      end)()
      
      tween.Completed:Wait()
      cooldown:Destroy()
      print("Cooldown completed for Custom ability!")
    end)
  end
  
  handleAbility(1, "Niko Impact", "rbxassetid://10066968815")
  handleAbility(2, "Ikki ZigZag", "rbxassetid://10066968815")
end)
