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
