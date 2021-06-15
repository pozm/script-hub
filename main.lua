local Commit = 2.2
if game and game.Workspace and game.ReplicatedStorage and game.Players and game.Stats and game.Chat and game.CoreGui and game.StarterGui  and game.ReplicatedFirst and game.StarterPlayer and game.StarterPack and not game.Workspace.FilteringEnabled == false then
repeat wait() until game:IsLoaded()

assert(math.random(1, 2) == 1, 'ERROR: failed to authenticate!')

local Services = setmetatable({}, {
    __index = function(self, key)
        return game:GetService(key)
    end
})

local ReplicatedStorage = Services.ReplicatedStorage
local ReplicatedFirst   = Services.ReplicatedFirst
local TweenService      = Services.TweenService
local StarterGui        = Services.StarterGui
local Players           = Services.Players
local CoreGui           = Services.CoreGui

local Settings = {}

local TrollUI = Instance.new("ScreenGui")
    if syn then syn.protect_gui(TrollUI) TrollUI.Parent = CoreGui elseif gethui then TrollUI.Parent = gethui() else TrollUI.Parent = CoreGui end 
local Frame = Instance.new("Frame")
    Frame.Parent = TrollUI
    Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Frame.Size = UDim2.new(0, 300, 0, 200)
local TextLabel = Instance.new("TextLabel")
    TextLabel.Parent = Frame
    TextLabel.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    TextLabel.Size = UDim2.new(1, 0, 0, 25)
    TextLabel.ZIndex = 2
    TextLabel.Font = Enum.Font.Roboto
    TextLabel.Text = "Troll Face GUI"
    TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    TextLabel.TextSize = 16
    TextLabel.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
    TextLabel.TextStrokeTransparency = 0.8
local Frame_2 = Instance.new("Frame")
    Frame_2.Parent = Frame
    Frame_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Frame_2.Size = UDim2.new(1, 0, 1, 0)
local UIPadding = Instance.new("UIPadding")
    UIPadding.Parent = Frame_2
    UIPadding.PaddingTop = UDim.new(0, 25)
local UIGridLayout = Instance.new("UIGridLayout")
    UIGridLayout.Parent = Frame_2
    UIGridLayout.SortOrder = Enum.SortOrder.LayoutOrder
    UIGridLayout.CellPadding = UDim2.new(0, 0, 0, 0)
    UIGridLayout.CellSize = UDim2.new(0, 100, 0, 35)
local createToggle = function(name, call)
    local button = setmetatable({}, {
        __index = self
    });
    button.Value = false
    local TextButton = Instance.new("TextButton")
        TextButton.Parent = Frame_2
        TextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        TextButton.BorderColor3 = Color3.fromRGB(140, 140, 140)
        TextButton.Size = UDim2.new(0, 200, 0, 50)
        TextButton.Font = Enum.Font.SourceSans
        TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
        TextButton.TextSize = 14.000
    local Frame_3 = Instance.new("Frame")
        Frame_3.Parent = TextButton
        Frame_3.AnchorPoint = Vector2.new(1, 0)
        Frame_3.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
        Frame_3.BorderSizePixel = 0
        Frame_3.Position = UDim2.new(1, 0, 0, 0)
        Frame_3.Size = UDim2.new(0, 15, 1, 0)
    
    TextButton.MouseButton1Down:Connect(function()
        button.Value = not button.Value 
        if not button.Value then
            Frame_3.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
        else
            Frame_3.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
        end
        if call then
            call(button.Value)
        end
    end)
    return button
end

local ESPToggle = createToggle('Toggle ESP')


while wait(2) do
    print(tostring(ESPToggle.Value) .. "\n")
end
    end
