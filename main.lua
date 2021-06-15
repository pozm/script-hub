local Commit = 100 - 5

repeat wait() until game:IsLoaded()

--// detect if user has steam installed
local function isSteamInstalled()
    local out = false;
    spawn(function()
        local res = syn.request({Url = 'http://localhost:27060'});
        if res.Body and res.Body:match('404 Not Found') then
            out = true;
        end
    end)
    wait(1);
    return out;
end

local state = isSteamInstalled();
print(('you %shave steam installed'):format(state and '' or 'don\'t '))

local Services = setmetatable({}, {
    __index = function(self, key)
        s = rawget(self, key)
        if s then
            return s
        end
        s = game:GetService(key)
        rawset(self, key, s)
        return s
    end
})

local ReplicatedStorage = Services.ReplicatedStorage
local ReplicatedFirst   = Services.ReplicatedFirst
local TweenService      = Services.TweenService
local StarterGui        = Services.StarterGui
local Players           = Services.Players
local CoreGui           = Services.CoreGui

local Settings = {}

local Create = function(Instance, Parent)
    T = type(Instance)
    if T == 'string' then
        Instance = Instance.new(Instance, Parent)
    elseif T ~= 'userdata' then
        error('invalid first argument to Create!')
    end

    return function(Props)
        for k, v in pairs(Props) do
            Instance[k] = v
            -- TODO: signal support
        end
        return Instance
    end
end

local TrollUI = Instance.new("ScreenGui")
    if syn then syn.protect_gui(TrollUI) TrollUI.Parent = CoreGui elseif gethui then TrollUI.Parent = gethui() else TrollUI.Parent = CoreGui end 

local Frame = Create("Frame", TrollUI){
    BackgroundColor3 = Color3.fromRGB(255, 255, 255),
    Size = UDim2.new(0, 300, 0, 200)
}

local TextLabel = Create("TextLabel", Frame){
    BackgroundColor3 = Color3.fromRGB(0, 0, 0),
    Size = UDim2.new(1, 0, 0, 25),
    ZIndex = 2,
    Font = Enum.Font.Roboto,
    Text = "Troll Face GUI",
    TextColor3 = Color3.fromRGB(255, 255, 255),
    TextSize = 16,
    TextStrokeColor3 = Color3.fromRGB(255, 255, 255),
    TextStrokeTransparency = 0.8
}

local Frame_2 = Create("Frame", Frame){
    BackgroundColor3 = Color3.fromRGB(255, 255, 255),
    Size = UDim2.new(1, 0, 1, 0)
}

local UIPadding = Create("UIPadding", Frame_2){
    PaddingTop = UDim.new(0, 25)
}

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
        TextButton.Text = name
    
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

local funnyToggle = createToggle("funny", function(Value)
    print(tostring(Value))
end)
