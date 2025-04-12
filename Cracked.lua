creditLabel.TextSize = 14
creditLabel.Parent = mainFrame

local toggleButton = Instance.new("TextButton")
toggleButton.Size = UDim2.new(0.5, -5, 0, 30)
toggleButton.Position = UDim2.new(0, 5, 0, 55)
toggleButton.Text = "Hide"
toggleButton.TextColor3 = Color3.new(1, 1, 1)
toggleButton.BackgroundColor3 = Color3.fromRGB(80, 80, 80)
toggleButton.Font = Enum.Font.GothamBold
toggleButton.Parent = mainFrame

local deleteButton = Instance.new("TextButton")
deleteButton.Size = UDim2.new(0.5, -5, 0, 30)
deleteButton.Position = UDim2.new(0.5, 0, 0, 55)
deleteButton.Text = "Delete"
deleteButton.TextColor3 = Color3.new(1, 1, 1)
deleteButton.BackgroundColor3 = Color3.fromRGB(150, 0, 0)
deleteButton.Font = Enum.Font.GothamBold
deleteButton.Parent = mainFrame
deleteButton.MouseButton1Click:Connect(function()
    screenGui:Destroy()
end)

local outerFrame = Instance.new("Frame")
outerFrame.Size = UDim2.new(1, -10, 1, -100)
outerFrame.Position = UDim2.new(0, 5, 0, 90)
outerFrame.BackgroundTransparency = 1
outerFrame.ClipsDescendants = true
outerFrame.Parent = mainFrame

local scrollFrame = Instance.new("ScrollingFrame")
scrollFrame.Size = UDim2.new(1, 0, 1, 0)
scrollFrame.CanvasSize = UDim2.new(0, 0, 0, 0)
scrollFrame.ScrollBarThickness = 6
scrollFrame.BackgroundTransparency = 1
scrollFrame.Parent = outerFrame

local layout = Instance.new("UIListLayout")
layout.Padding = UDim.new(0, 5)
layout.Parent = scrollFrame

local function createButton(text, color, parent, isHeader)
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, 0, 0, isHeader and 25 or 20)
    button.Text = text
    button.TextColor3 = Color3.new(1, 1, 1)
    button.BackgroundColor3 = isHeader and color or Color3.fromRGB(45, 45, 45)
    button.Font = Enum.Font.GothamBold
    button.TextSize = isHeader and 16 or 14
    button.Parent = parent
    
    if not isHeader then
        button.MouseButton1Click:Connect(function()
            stats.Style.Value = text
        end)
    end
end

for _, data in ipairs(styles) do
    createButton(data[1], data[2], scrollFrame, true) -- Header (Kategori)
    for _, style in ipairs(data[3]) do
        createButton(style, data[2], scrollFrame, false) -- Nama Style (Tombol Klik)
    end
end

layout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
    scrollFrame.CanvasSize = UDim2.new(0, 0, 0, layout.AbsoluteContentSize.Y + 5)
end)

toggleButton.MouseButton1Click:Connect(function()
    local visible = not outerFrame.Visible
    outerFrame.Visible = visible
    mainFrame.Size = visible and UDim2.new(0, 260, 0, 320) or UDim2.new(0, 260, 0, 90)
    toggleButton.Text = visible and "Hide" or "Show"
end)
