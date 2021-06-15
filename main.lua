local Commit = "2.1"
repeat wait() until game:IsLoaded()

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

if game and game.Workspace and game.ReplicatedStorage and game.Players and game.Stats and game.Chat and game.CoreGui and game.StarterGui  and game.ReplicatedFirst and game.StarterPlayer and game.StarterPack and not game.Workspace.FilteringEnabled == false then
    print("Welcome to the script fellas!")
    print("Script Hub v".. tostring(Commit) .." loaded!")
end
