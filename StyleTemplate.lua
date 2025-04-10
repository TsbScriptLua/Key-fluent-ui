game:GetService("StarterGui"):SetCore("SendNotification", {
    Title = "Touka",
    Text = "Legends Developer",
    Button1 = "Thank U Touka!",
    Button2 = "🧿💦",
    Duration = 3
})

local player = game:GetService("Players").LocalPlayer
local st = player.PlayerGui.Style.BG.StyleTxt
local Slot = player.PlayerGui.Style.BG.Slots.ScrollingFrame.Slot1.Text
local des = player.PlayerGui.Style.BG.Desc

while wait() do
    st.Text = "Touka"
    st.TextColor3 = Color3.fromRGB(4, 2, 115)
    Slot.Text = "Loki"
    Slot.TextColor3 = Color3.fromRGB(4, 2, 115)
    des.Text = "The Legend guy Developer."
end
