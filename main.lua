local NotificationLibrary = {}

local AbyssGUI = Instance.new("ScreenGui")
AbyssGUI.Name = "Abyss"
AbyssGUI.Parent = game.CoreGui
AbyssGUI.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

function NotificationLibrary:Notify(TitleText, Desc, Delay)
    local Notification = Instance.new("Frame")
    local Line = Instance.new("Frame")
    local Icon = Instance.new("ImageLabel")
    local UICorner = Instance.new("UICorner")
    local Title = Instance.new("TextLabel")
    local Description = Instance.new("TextLabel")
    local Gradient = Instance.new("UIGradient")
    local Shadow = Instance.new("Frame")

    Notification.Name = "Notification"
    Notification.Parent = AbyssGUI
    Notification.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
    Notification.BackgroundTransparency = 0.2
    Notification.BorderSizePixel = 0
    Notification.Position = UDim2.new(1, 10, 0, 75)
    Notification.Size = UDim2.new(0, 450, 0, 80)

    Gradient.Color = ColorSequence.new{
        ColorSequenceKeypoint.new(0, Color3.fromRGB(30, 30, 30)),
        ColorSequenceKeypoint.new(1, Color3.fromRGB(45, 45, 45))
    }
    Gradient.Rotation = 45
    Gradient.Parent = Notification

    Shadow.Name = "Shadow"
    Shadow.Parent = Notification
    Shadow.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    Shadow.BackgroundTransparency = 0.5
    Shadow.BorderSizePixel = 0
    Shadow.Position = UDim2.new(0, 4, 0, 4)
    Shadow.Size = Notification.Size

    Line.Name = "Line"
    Line.Parent = Notification
    Line.BackgroundColor3 = Color3.fromRGB(85, 170, 255)
    Line.BorderSizePixel = 0
    Line.Position = UDim2.new(0, 0, 0.9, 0)
    Line.Size = UDim2.new(0, 0, 0, 5)

    Icon.Name = "Icon"
    Icon.Parent = Notification
    Icon.BackgroundTransparency = 1
    Icon.Position = UDim2.new(0.03, 0, 0.1, 0)
    Icon.Size = UDim2.new(0, 50, 0, 50)
    Icon.Image = "rbxassetid://3944668821"
    Icon.ImageColor3 = Color3.fromRGB(85, 170, 255)
    Icon.ScaleType = Enum.ScaleType.Fit

    UICorner.CornerRadius = UDim.new(0, 20)
    UICorner.Parent = Notification

    Title.Name = "Title"
    Title.Parent = Notification
    Title.BackgroundTransparency = 1
    Title.Position = UDim2.new(0.15, 0, 0.1, 0)
    Title.Size = UDim2.new(0, 300, 0, 20)
    Title.Font = Enum.Font.GothamBold
    Title.Text = TitleText
    Title.TextColor3 = Color3.fromRGB(255, 255, 255)
    Title.TextSize = 16
    Title.TextXAlignment = Enum.TextXAlignment.Left

    Description.Name = "Description"
    Description.Parent = Notification
    Description.BackgroundTransparency = 1
    Description.Position = UDim2.new(0.15, 0, 0.5, 0)
    Description.Size = UDim2.new(0, 300, 0, 20)
    Description.Font = Enum.Font.Gotham
    Description.Text = Desc
    Description.TextColor3 = Color3.fromRGB(200, 200, 200)
    Description.TextSize = 14
    Description.TextXAlignment = Enum.TextXAlignment.Left

    Notification:TweenPosition(UDim2.new(1, -460, 0, 75), "Out", "Sine", 0.35, true)
    task.wait(0.35)
    Line:TweenSize(UDim2.new(1, 0, 0, 5), "Out", "Linear", Delay, true)
    task.wait(Delay)
    Notification:TweenPosition(UDim2.new(1, 10, 0, 75), "In", "Sine", 0.35, true)
    task.wait(0.35)
    warn("v121212")
    Notification:Destroy()
end

return NotificationLibrary
