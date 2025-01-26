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

    Notification.Name = "Notification"
    Notification.Parent = AbyssGUI
    Notification.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
    Notification.BackgroundTransparency = 0.3
    Notification.BorderSizePixel = 0
    Notification.Position = UDim2.new(1, 10, 0, 75)
    Notification.Size = UDim2.new(0, 450, 0, 70)

    Gradient.Color = ColorSequence.new{
        ColorSequenceKeypoint.new(0, Color3.fromRGB(35, 35, 35)),
        ColorSequenceKeypoint.new(1, Color3.fromRGB(50, 50, 50))
    }
    Gradient.Rotation = 45
    Gradient.Parent = Notification

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
    Title.TextSize = 14
    Title.TextXAlignment = Enum.TextXAlignment.Left

    Description.Name = "Description"
    Description.Parent = Notification
    Description.BackgroundTransparency = 1
    Description.Position = UDim2.new(0.15, 0, 0.5, 0)
    Description.Size = UDim2.new(0, 300, 0, 15)
    Description.Font = Enum.Font.Gotham
    Description.Text = Desc
    Description.TextColor3 = Color3.fromRGB(200, 200, 200)
    Description.TextSize = 12
    Description.TextXAlignment = Enum.TextXAlignment.Left

    Notification:TweenPosition(UDim2.new(1, -460, 0, 75), "Out", "Sine", 0.35, true)
    task.wait(0.35)
    Line:TweenSize(UDim2.new(0, 450, 0, 5), "Out", "Linear", Delay, true)
    task.wait(Delay)
    Notification:TweenPosition(UDim2.new(1, 10, 0, 75), "In", "Sine", 0.35, true)
    task.wait(0.35)
    Notification:Destroy()
end

return NotificationLibrary
