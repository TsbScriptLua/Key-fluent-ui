game:GetService("StarterGui"):SetCore("SendNotification", {
    Title = "Touka Style By Faheem",
    Text = "Legends Spawn",
    Button1 = "Thank U Touka",
    Button2 = "EGOIST",
    Duration = 3
})

local player = game:GetService("Players").LocalPlayer
local st = player.PlayerGui.Style.BG.StyleTxt
local Slot = player.PlayerGui.Style.BG.Slots.ScrollingFrame.Slot1.Text
local des = player.PlayerGui.Style.BG.Desc

while wait() do
    st.Text = "Touka"
    st.TextColor3 = Color3.fromRGB(4, 2, 115)
    Slot.Text = "Touka🐐"
    Slot.TextColor3 = Color3.fromRGB(4, 2, 115)
    des.Text = "The Legend Developer Goat Has Been Play 🐐🔥"
end
