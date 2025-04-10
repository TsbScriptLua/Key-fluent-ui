local Players = game:GetService("Players")
        local RunService = game:GetService("RunService")

        if not RunService:IsClient() then return end

        local player = Players.LocalPlayer
        local character = player.Character or player.CharacterAdded:Wait()
        local humanoidRootPart = character:WaitForChild("HumanoidRootPart")

        local effectPart = Instance.new("Part")
        effectPart.Anchored = true
        effectPart.CanCollide = false
        effectPart.Transparency = 1
        effectPart.Parent = workspace

        -- Update the effect position based on LookVector
RunService.Heartbeat:Connect(function()
    local forward = humanoidRootPart.CFrame.LookVector
    local effectPosition = humanoidRootPart.Position + (forward * 0)
    effectPart.CFrame = CFrame.new(effectPosition, effectPosition + forward)
end)

        local function createFolderPath(parent, path)
            if not path or path == "" then return parent end
            
            local current = parent
            for _, name in ipairs(string.split(path, ".")) do
                local existing = current:FindFirstChild(name)
                if not existing then
                    local new = Instance.new("Folder")
                    new.Name = name
                    new.Parent = current
                    current = new
                else
                    current = existing
                end
            end
            return current
        end

        local particles = {}
    
            do
                local particle = Instance.new("ParticleEmitter")
                local parent = effectPart
                        particle.ShapeStyle = Enum.ParticleEmitterShapeStyle.Volume
                particle.FlipbookFramerate = NumberRange.new(1.000000, 1.000000)
                particle.LightInfluence = 0
                particle.Lifetime = NumberRange.new(0.300000, 0.500000)
                particle.FlipbookLayout = Enum.ParticleFlipbookLayout.Grid4x4
                particle.SpreadAngle = Vector2.new(-360.000000, 360.000000)
                particle.LockedToPart = false
                particle.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0.000000, 0.000000), NumberSequenceKeypoint.new(1.000000, 0.000000)})
                particle.Orientation = Enum.ParticleOrientation.FacingCamera
                particle.Color = ColorSequence.new({ColorSequenceKeypoint.new(0.000000, Color3.new(0.278431, 0.317647, 0.870588)), ColorSequenceKeypoint.new(1.000000, Color3.new(0.278431, 0.317647, 0.870588))})
                particle.Drag = 0
                particle.FlipbookStartRandom = false
                particle.TimeScale = 1
                particle.VelocitySpread = -360
                particle.Squash = NumberSequence.new({NumberSequenceKeypoint.new(0.000000, 0.000000), NumberSequenceKeypoint.new(1.000000, 0.000000)})
                particle.Speed = NumberRange.new(3.000000, 11.000000)
                particle.Brightness = 10
                particle.Size = NumberSequence.new({NumberSequenceKeypoint.new(0.000000, 0.750000), NumberSequenceKeypoint.new(1.000000, 1.562500)})
                particle.Enabled = true
                particle.Acceleration = Vector3.new(0.000000, 0.000000, 0.000000)
                particle.RotSpeed = NumberRange.new(0.000000, 0.000000)
                particle.ZOffset = 1
                particle.ShapeInOut = Enum.ParticleEmitterShapeInOut.Outward
                particle.Rate = 500
                particle.VelocityInheritance = 0
                particle.Rotation = NumberRange.new(-180.000000, 180.000000)
                particle.ShapePartial = 1
                particle.Texture = "rbxassetid://16009841559"
                particle.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
                particle.EmissionDirection = Enum.NormalId.Back
                particle.FlipbookIncompatible = "Particle texture must be 1024 by 1024 to use flipbooks."
                particle.Shape = Enum.ParticleEmitterShape.Box
                particle.LightEmission = 0

                particle.Parent = parent
                table.insert(particles, particle)
            end
        
            do
                local particle = Instance.new("ParticleEmitter")
                local parent = effectPart
                        particle.ShapeStyle = Enum.ParticleEmitterShapeStyle.Volume
                particle.FlipbookFramerate = NumberRange.new(1.000000, 1.000000)
                particle.LightInfluence = 0
                particle.Lifetime = NumberRange.new(0.300000, 0.300000)
                particle.FlipbookLayout = Enum.ParticleFlipbookLayout.None
                particle.SpreadAngle = Vector2.new(0.000000, 0.000000)
                particle.LockedToPart = false
                particle.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0.000000, 1.000000), NumberSequenceKeypoint.new(0.508621, 0.812500), NumberSequenceKeypoint.new(1.000000, 1.000000)})
                particle.Orientation = Enum.ParticleOrientation.FacingCamera
                particle.Color = ColorSequence.new({ColorSequenceKeypoint.new(0.000000, Color3.new(0.200000, 0.678431, 1.000000)), ColorSequenceKeypoint.new(1.000000, Color3.new(0.003922, 0.301961, 1.000000))})
                particle.Drag = 0
                particle.FlipbookStartRandom = false
                particle.TimeScale = 1
                particle.VelocitySpread = 0
                particle.Squash = NumberSequence.new({NumberSequenceKeypoint.new(0.000000, 0.000000), NumberSequenceKeypoint.new(1.000000, 0.000000)})
                particle.Speed = NumberRange.new(0.001000, 0.001000)
                particle.Brightness = 5
                particle.Size = NumberSequence.new({NumberSequenceKeypoint.new(0.000000, 1.000000), NumberSequenceKeypoint.new(1.000000, 1.937500)})
                particle.Enabled = true
                particle.Acceleration = Vector3.new(0.000000, 0.000000, 0.000000)
                particle.RotSpeed = NumberRange.new(0.000000, 0.000000)
                particle.ZOffset = 1
                particle.ShapeInOut = Enum.ParticleEmitterShapeInOut.Outward
                particle.Rate = 88
                particle.VelocityInheritance = 0
                particle.Rotation = NumberRange.new(0.000000, 0.000000)
                particle.ShapePartial = 1
                particle.Texture = "rbxassetid://8663278927"
                particle.FlipbookMode = Enum.ParticleFlipbookMode.Loop
                particle.EmissionDirection = Enum.NormalId.Top
                particle.FlipbookIncompatible = "Particle texture must be 1024 by 1024 to use flipbooks."
                particle.Shape = Enum.ParticleEmitterShape.Box
                particle.LightEmission = 1

                particle.Parent = parent
                table.insert(particles, particle)
            end
        
        for _, particle in ipairs(particles) do
            particle.Enabled = true
        end

        local maxLifetime = 0
        for _, particle in ipairs(particles) do
            maxLifetime = math.max(maxLifetime, particle.Lifetime.Max)
        end

        task.delay(maxLifetime * 9999999999999999999, function()

        for _, particle in ipairs(particles) do
            particle.Enabled = false
        end

        task.wait(1)
        effectPart:Destroy()
    end)
