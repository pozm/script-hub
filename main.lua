local Commit = 2
repeat wait() until game:IsLoaded()
if game and game.Workspace and game.ReplicatedStorage and game.Players and game.Stats and game.Chat and game.CoreGui and game.StarterGui  and game.ReplicatedFirst and game.StarterPlayer and game.StarterPack and not game.Workspace.FilteringEnabled == false then
    print("Welcome to the script fellas!")
    print("Script Hub v".. tostring(Commit) .." loaded!")
end
