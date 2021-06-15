local Commit = 2
repeat wait() until game:IsLoaded()
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local ReplicatedFirst = game:GetService("ReplicatedFirst")
local TweenService = game:GetService("TweenService")
local StarterGui = game:GetService("StarterGui")
local Players = game:GetService("Players")
local CoreGui = game:GetService("CoreGui")
local Settings = {}

if game and game.Workspace and game.ReplicatedStorage and game.Players and game.Stats and game.Chat and game.CoreGui and game.StarterGui  and game.ReplicatedFirst and game.StarterPlayer and game.StarterPack and not game.Workspace.FilteringEnabled == false then
    print("Welcome to the script fellas!")
    print("Script Hub v".. tostring(Commit) .." loaded!")
end
