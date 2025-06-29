-- ============================================
-- COMBINED PERFORMANCE OPTIMIZATION + HUD SCRIPT
-- ============================================

-- Services
local Players = game:GetService("Players")
local Lighting = game:GetService("Lighting")
local Workspace = game:GetService("Workspace")
local RunService = game:GetService("RunService")
local TweenService = game:GetService("TweenService")

-- Player info
local player = Players.LocalPlayer
local playerName = player.Name
local startTime = tick()

-- ============================================
-- PART 1: PERFORMANCE OPTIMIZATION
-- ============================================

-- Constants
local PLASTIC = Enum.Material.Plastic
local NEON = Enum.Material.Neon
local GRAY = Color3.new(0.5, 0.5, 0.5)

-- Cache
local processed = {}

-- Setup lighting
Lighting.GlobalShadows = false
Lighting.FogEnd = 1
Lighting.FogStart = 0
Lighting.FogColor = Color3.new(0, 0, 0)

-- Remove sky elements
if Lighting:FindFirstChild("Sky") then Lighting.Sky:Destroy() end
if Lighting:FindFirstChild("Sun") then Lighting.Sun:Destroy() end

-- Main optimization function
local function optimize(obj)
    if processed[obj] then return end
    processed[obj] = true
    
    if obj:IsA("BasePart") then
        -- Material & shadows
        local isPlayer = obj.Parent and obj.Parent:IsA("Model") and obj.Parent.Parent == Players
        obj.Material = isPlayer and NEON or PLASTIC
        obj.CastShadow = false
        
        -- Gray tiles
        local parent = obj.Parent
        while parent do
            if parent.Name == "Tiles" and parent.Parent and parent.Parent.Name == "Map" then
                obj.Color = GRAY
                break
            end
            parent = parent.Parent
        end
    elseif obj:IsA("Light") or obj:IsA("PointLight") or obj:IsA("SpotLight") or obj:IsA("SurfaceLight") then
        obj.Enabled = false
    elseif obj:IsA("Fire") or obj:IsA("Explosion") then
        obj:Destroy()
        return
    end
end

-- Process existing objects
for _, obj in pairs(game:GetDescendants()) do
    optimize(obj)
end

-- Handle new objects
game.DescendantAdded:Connect(optimize)

-- Handle new players
local function handlePlayer(newPlayer)
    newPlayer.CharacterAdded:Connect(function(char)
        char:WaitForChild("HumanoidRootPart")
        for _, obj in pairs(char:GetDescendants()) do
            optimize(obj)
        end
    end)
end

Players.PlayerAdded:Connect(handlePlayer)
for _, existingPlayer in pairs(Players:GetPlayers()) do
    handlePlayer(existingPlayer)
    if existingPlayer.Character then
        for _, obj in pairs(existingPlayer.Character:GetDescendants()) do
            optimize(obj)
        end
    end
end

-- ============================================
-- PART 2: HUD INTERFACE
-- ============================================

-- Create GUI parent
local parent = (gethui and gethui()) or (get_hidden_gui and get_hidden_gui()) or game:GetService("CoreGui")
local old = parent:FindFirstChild("BlackScreenGui")
if old then old:Destroy() end

local gui = Instance.new("ScreenGui")
gui.Name = "BlackScreenGui"
gui.IgnoreGuiInset = true
gui.ResetOnSpawn = false
pcall(function() gui.Parent = parent end)

-- Black background
local black = Instance.new("Frame")
black.Name = "BlackOverlay"
black.Size = UDim2.new(1, 0, 1, 0)
black.BackgroundColor3 = Color3.new(0, 0, 0)
black.BorderSizePixel = 0
black.ZIndex = 0
black.Parent = gui

-- HUD Frame
local hud = Instance.new("Frame")
hud.Size = UDim2.new(0, 420, 0, 180)
hud.Position = UDim2.new(0.5, -210, 0.5, -90)
hud.BackgroundColor3 = Color3.fromRGB(15, 15, 25)
hud.BackgroundTransparency = 0.1
hud.BorderSizePixel = 0
hud.ZIndex = 5
hud.Parent = gui

Instance.new("UICorner", hud).CornerRadius = UDim.new(0, 20)
local outerStroke = Instance.new("UIStroke", hud)
outerStroke.Thickness = 3
outerStroke.Color = Color3.fromRGB(0, 255, 200)
outerStroke.Transparency = 0.3

-- Inner frame with gradient
local innerFrame = Instance.new("Frame")
innerFrame.Size = UDim2.new(1, -6, 1, -6)
innerFrame.Position = UDim2.new(0, 3, 0, 3)
innerFrame.BackgroundColor3 = Color3.fromRGB(25, 25, 40)
innerFrame.BackgroundTransparency = 0.2
innerFrame.BorderSizePixel = 0
innerFrame.ZIndex = 5
innerFrame.Parent = hud

Instance.new("UICorner", innerFrame).CornerRadius = UDim.new(0, 17)
local innerStroke = Instance.new("UIStroke", innerFrame)
innerStroke.Thickness = 1
innerStroke.Color = Color3.fromRGB(100, 100, 150)
innerStroke.Transparency = 0.5

-- Animated gradient
local gradient = Instance.new("UIGradient", innerFrame)
gradient.Color = ColorSequence.new{
    ColorSequenceKeypoint.new(0, Color3.fromRGB(50, 50, 80)),
    ColorSequenceKeypoint.new(0.5, Color3.fromRGB(30, 30, 50)),
    ColorSequenceKeypoint.new(1, Color3.fromRGB(20, 20, 35))
}
gradient.Rotation = 45

RunService.Heartbeat:Connect(function()
    gradient.Rotation += 0.5
end)

-- Header section
local header = Instance.new("Frame")
header.Size = UDim2.new(1, -40, 0, 35)
header.Position = UDim2.new(0, 20, 0, 15)
header.BackgroundTransparency = 1
header.ZIndex = 6
header.Parent = innerFrame

local headerLine = Instance.new("Frame")
headerLine.Size = UDim2.new(0, 0, 0, 2)
headerLine.Position = UDim2.new(0, 0, 1, -5)
headerLine.BackgroundColor3 = Color3.fromRGB(0, 255, 200)
headerLine.BorderSizePixel = 0
headerLine.ZIndex = 6
headerLine.Parent = header

TweenService:Create(
    headerLine,
    TweenInfo.new(2, Enum.EasingStyle.Quart),
    {Size = UDim2.new(1, 0, 0, 2)}
):Play()

local userLabel = Instance.new("TextLabel")
userLabel.Size = UDim2.new(1, 0, 0, 25)
userLabel.Position = UDim2.new(0, 0, 0, 5)
userLabel.BackgroundTransparency = 1
userLabel.TextColor3 = Color3.fromRGB(150, 255, 200)
userLabel.Font = Enum.Font.GothamBold
userLabel.TextSize = 16
userLabel.TextXAlignment = Enum.TextXAlignment.Left
userLabel.Text = "☀️ " .. playerName
userLabel.ZIndex = 7
userLabel.Parent = header

-- Stats container
local statsContainer = Instance.new("Frame")
statsContainer.Size = UDim2.new(1, -40, 0, 90)
statsContainer.Position = UDim2.new(0, 20, 0, 55)
statsContainer.BackgroundTransparency = 1
statsContainer.ZIndex = 6
statsContainer.Parent = innerFrame

-- Function to create stat boxes
local function createStatBox(y, color, textColor, label, icon)
    local container = Instance.new("Frame")
    container.Size = UDim2.new(1, 0, 0, 35)
    container.Position = UDim2.new(0, 0, 0, y)
    container.BackgroundColor3 = color
    container.BackgroundTransparency = 0.7
    container.BorderSizePixel = 0
    container.ZIndex = 6
    container.Parent = statsContainer
    
    local corner = Instance.new("UICorner", container)
    corner.CornerRadius = UDim.new(0, 8)

    local stroke = Instance.new("UIStroke", container)
    stroke.Thickness = 1
    stroke.Color = color
    stroke.Transparency = 0.6

    local text = Instance.new("TextLabel")
    text.Name = label
    text.Size = UDim2.new(1, -15, 1, 0)
    text.Position = UDim2.new(0, 15, 0, 0)
    text.BackgroundTransparency = 1
    text.TextColor3 = textColor
    text.Font = Enum.Font.GothamBold
    text.TextSize = 18
    text.TextXAlignment = Enum.TextXAlignment.Left
    text.Text = icon .. label .. ": ???"
    text.ZIndex = 7
    text.Parent = container
    
    return text
end

-- Create stat boxes
local bankLabel = createStatBox(0, Color3.fromRGB(0, 50, 30), Color3.fromRGB(100, 255, 150), "BANK", "🏦")
local handLabel = createStatBox(45, Color3.fromRGB(50, 40, 0), Color3.fromRGB(255, 220, 100), "HAND", "💰")

-- Time display
local timeLabel = Instance.new("TextLabel")
timeLabel.Size = UDim2.new(1, -40, 0, 25)
timeLabel.Position = UDim2.new(0, 20, 0, 150)
timeLabel.BackgroundTransparency = 1
timeLabel.TextColor3 = Color3.fromRGB(200, 200, 255)
timeLabel.Font = Enum.Font.Gotham
timeLabel.TextSize = 14
timeLabel.TextXAlignment = Enum.TextXAlignment.Left
timeLabel.Text = "⭐ UPTIME: 0s | Performance Mode Active"
timeLabel.ZIndex = 7
timeLabel.Parent = innerFrame

-- Toggle button
local toggleButton = Instance.new("TextButton")
toggleButton.Size = UDim2.new(0, 32, 0, 32)
toggleButton.Position = UDim2.new(1, -40, 0, 10)
toggleButton.BackgroundColor3 = Color3.fromRGB(40, 40, 60)
toggleButton.TextColor3 = Color3.fromRGB(255, 255, 255)
toggleButton.Font = Enum.Font.GothamBold
toggleButton.TextSize = 18
toggleButton.Text = "👁"
toggleButton.ZIndex = 8
toggleButton.Parent = innerFrame

Instance.new("UICorner", toggleButton).CornerRadius = UDim.new(1, 0)
local toggleStroke = Instance.new("UIStroke", toggleButton)
toggleStroke.Thickness = 2
toggleStroke.Color = Color3.fromRGB(100, 100, 150)
toggleStroke.Transparency = 0.4

-- Toggle button animations
toggleButton.MouseEnter:Connect(function()
    TweenService:Create(toggleButton, TweenInfo.new(0.2), {
        BackgroundColor3 = Color3.fromRGB(60, 60, 90)
    }):Play()
end)

toggleButton.MouseLeave:Connect(function()
    TweenService:Create(toggleButton, TweenInfo.new(0.2), {
        BackgroundColor3 = Color3.fromRGB(40, 40, 60)
    }):Play()
end)

-- Toggle visibility functionality
local blackVisible = true
toggleButton.MouseButton1Click:Connect(function()
    blackVisible = not blackVisible
    TweenService:Create(black, TweenInfo.new(0.3), {
        BackgroundTransparency = blackVisible and 0 or 1
    }):Play()
    toggleButton.Text = blackVisible and "👁" or "👁‍🗨"
end)

-- Time formatting function
local function formatTime(seconds)
    local h = math.floor(seconds / 3600)
    local m = math.floor((seconds % 3600) / 60)
    local s = math.floor(seconds % 60)
    if h > 0 then return string.format("%dh %dm %ds", h, m, s)
    elseif m > 0 then return string.format("%dm %ds", m, s)
    else return string.format("%ds", s) end
end

-- Update uptime with pulsing effect
task.spawn(function()
    while gui.Parent do
        local elapsed = tick() - startTime
        timeLabel.Text = "⭐ UPTIME: " .. formatTime(elapsed) .. " | Performance Mode Active"
        local pulse = math.sin(elapsed * 2) * 0.1 + 0.9
        timeLabel.TextTransparency = 1 - pulse
        task.wait(0.5)
    end
end)

-- Animate HUD entrance
hud.Position = UDim2.new(0.5, -210, -1, 0)
TweenService:Create(hud, TweenInfo.new(1, Enum.EasingStyle.Back), {
    Position = UDim2.new(0.5, -210, 0.5, -90)
}):Play()

-- Success notification
local successLabel = Instance.new("TextLabel")
successLabel.Size = UDim2.new(0, 400, 0, 30)
successLabel.Position = UDim2.new(0.5, -200, 0, 50)
successLabel.BackgroundTransparency = 1
successLabel.TextColor3 = Color3.fromRGB(100, 255, 100)
successLabel.Font = Enum.Font.GothamBold
successLabel.TextSize = 16
successLabel.Text = "✨ Performance Mode + Enhanced HUD Loaded!"
successLabel.TextTransparency = 1
successLabel.ZIndex = 10
successLabel.Parent = gui

TweenService:Create(successLabel, TweenInfo.new(0.5), {
    TextTransparency = 0
}):Play()

task.wait(3)
TweenService:Create(successLabel, TweenInfo.new(0.5), {
    TextTransparency = 1
}):Play()

-- ============================================
-- PART 3: MONEY TRACKING FUNCTIONS
-- ============================================

-- Helper functions for money tracking
local function extractNumber(text)
    local num = text:match("[%d,]+") or "0"
    num = num:gsub(",", "")
    return tonumber(num) or 0
end

local function shortenNumber(n)
    if n >= 1e6 then
        return string.format("%.1fM", n / 1e6)
    elseif n >= 1e3 then
        return string.format("%.1fK", n / 1e3)
    else
        return tostring(n)
    end
end

local function findLabelByKeyword(keyword)
    local gui = player:WaitForChild("PlayerGui")
    for _, obj in ipairs(gui:GetDescendants()) do
        if obj:IsA("TextLabel") or obj:IsA("TextBox") then
            if obj.Text and string.find(string.lower(obj.Text), string.lower(keyword)) then
                return obj
            end
        end
    end
    return nil
end

-- Update HUD with money information
task.spawn(function()
    while gui.Parent do
        pcall(function()
            local bank = findLabelByKeyword("bank balance")
            local hand = findLabelByKeyword("hand balance")

            bankLabel.Text = bank and ("🏦 BANK: " .. shortenNumber(extractNumber(bank.Text))) or "❓ BANK Not found"
            handLabel.Text = hand and ("💸 HAND: " .. shortenNumber(extractNumber(hand.Text))) or "❓ HAND Not found"
        end)
        task.wait(1)
    end
end)
