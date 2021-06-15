local Commit = 2.2

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

if game and game.Workspace and game.ReplicatedStorage and game.Players and game.Stats and game.Chat and game.CoreGui and game.StarterGui  and game.ReplicatedFirst and game.StarterPlayer and game.StarterPack and not game.Workspace.FilteringEnabled == false then
    print("Welcome to the script fellas!")
    print("Script Hub v".. tostring(Commit) .." loaded!")
end
