local repo = 'https://raw.githubusercontent.com/wally-rblx/LinoriaLib/main/'

local Library = loadstring(game:HttpGet(repo .. 'Library.lua'))()
local ThemeManager = loadstring(game:HttpGet(repo .. 'addons/ThemeManager.lua'))()
local SaveManager = loadstring(game:HttpGet(repo .. 'addons/SaveManager.lua'))()

local Window = Library:CreateWindow({
    Title = 'Atlas Hub | Gym Training Simulator',
    Center = true, 
    AutoShow = true,
})

local Tabs = {
    Main = Window:AddTab('Main'), 
    UISettings = Window:AddTab('UI Settings'),
}

local autofarm = Tabs.Main:AddLeftGroupbox('Auto Farm')

autofarm:AddToggle('AutoTap', {
    Text = 'Auto Tap',
    Default = false,
    Tooltip = 'Automatically taps for you',
})

Toggles.AutoTap:OnChanged(function()
    while(Toggles.AutoTap.Value == true) do
        local args = {
            [1] = "Tapping"
        }
        game:GetService("ReplicatedStorage").Remotes.Tapping:FireServer(unpack(args))
        wait(0.05)
    end
end)

Toggles.AutoTap:SetValue(false)

autofarm:AddSlider('RebirthsNum', {
    Text = 'Choose which rebirth to buy',
    Default = 1,
    Min = 0,
    Max = 55,
    Rounding = 0,
    Compact = false,
})

local RNumber = Options.RebirthsNum.Value
Options.RebirthsNum:OnChanged(function()
    RNumber = Options.RebirthsNum.Value
end)

Options.RebirthsNum:SetValue(RebirthNumber)

autofarm:AddToggle('AutoRebirth', {
    Text = 'Auto Rebirth',
    Default = false,
    Tooltip = 'Automatically rebirths for you',
})

Toggles.AutoRebirth:OnChanged(function()
    while(Toggles.AutoRebirth.Value == true) do
        local args = {
            [1] = "Rebirths",
            [2] = RNumber
        }
        game:GetService("ReplicatedStorage").Remotes.RefeshClient:FireServer(unpack(args))
        wait(1.5)
    end
end)

Toggles.AutoRebirth:SetValue(false)

local UnlockIslands = autofarm:AddButton('Unlock All Islands', function()
    local p1 = game.Players.LocalPlayer.Character.HumanoidRootPart
    
    local v39 = game.ReplicatedStorage.Maps:GetChildren()
    
    for i, v in pairs(v39) do
        p1.CFrame = game.ReplicatedStorage.Maps[v.Name].Part.CFrame
        wait(0.4)
    end
end)

local teleports = Tabs.Main:AddLeftGroupbox('Teleports')

local trainingcenter = teleports:AddButton('Training Center', function()
    local p1 = game.Players.LocalPlayer.Character.HumanoidRootPart
    p1.CFrame = CFrame.new(136.998322, -18.3661499, -125.938797, 0.897208214, 3.7119058e-08, -0.441607744, -5.3023971e-08, 1, -2.3673687e-08, 0.441607744, 4.46560229e-08, 0.897208214)
end)

local enchangedisland = teleports:AddButton('Enchanted Island', function()
    local p1 = game.Players.LocalPlayer.Character.HumanoidRootPart
    p1.CFrame = CFrame.new(-1141.24072, -21.4542351, 1029.48474, 0.610242426, 5.97776495e-09, -0.792214751, 7.96053623e-09, 1, 1.36776324e-08, 0.792214751, -1.46531249e-08, 0.610242426)
end)

local mythicalisland = teleports:AddButton('Mythical Island', function()
    local p1 = game.Players.LocalPlayer.Character.HumanoidRootPart
    p1.CFrame = CFrame.new(718.266846, -22.5242577, 2455.18286, 0.998381972, 2.73403558e-08, -0.0568631925, -2.34856987e-08, 1, 6.84565435e-08, 0.0568631925, -6.70103049e-08, 0.998381972)
end)

local templeisland = teleports:AddButton('Temple Island', function()
    local p1 = game.Players.LocalPlayer.Character.HumanoidRootPart
    p1.CFrame = CFrame.new(-779.087097, -21.4842148, 3010.96143, 0.946228564, 8.18207901e-09, -0.323498935, -1.25447741e-09, 1, 2.16231228e-08, 0.323498935, -2.00545944e-08, 0.946228564)
end)

local littleisland = teleports:AddButton('Little Island', function()
    local p1 = game.Players.LocalPlayer.Character.HumanoidRootPart
    p1.CFrame = CFrame.new(1579.28503, -22.4904404, -894.231018, 0.946228564, 1.77101818e-08, -0.323498935, -2.72706435e-09, 1, 4.67691059e-08, 0.323498935, -4.33720615e-08, 0.946228564)
end)

local beachisland = teleports:AddButton('Beach Island', function()
    local p1 = game.Players.LocalPlayer.Character.HumanoidRootPart
    p1.CFrame = CFrame.new(2501.89893, -22.4904423, -3112.67236, 0.946228564, -3.86689365e-08, -0.323498935, 5.96547389e-09, 1, -1.02084527e-07, 0.323498935, 9.46654737e-08, 0.946228564)
end)

local volcanoisland = teleports:AddButton('Volcano Island', function()
    local p1 = game.Players.LocalPlayer.Character.HumanoidRootPart
    p1.CFrame = CFrame.new(-1150.97559, -21.3928299, 679.224548, 0.819155693, 7.40040562e-08, 0.573571265, -9.47238661e-08, 1, 6.25822505e-09, -0.573571265, -5.94573493e-08, 0.819155693)
end)

local cyberisland = teleports:AddButton('Cyber Island', function()
    local p1 = game.Players.LocalPlayer.Character.HumanoidRootPart
    p1.CFrame = CFrame.new(-1125.8335, -21.4424629, 317.39679, 0.819155693, -2.03443555e-08, 0.573571265, 2.60415582e-08, 1, -1.72207781e-09, -0.573571265, 1.63473395e-08, 0.819155693)
end)

Library:SetWatermarkVisibility(true)
Library:SetWatermark('Atlas Hub | Gym Training Simulator')
Library.KeybindFrame.Visible = false;


local MenuGroup = Tabs.UISettings:AddLeftGroupbox('UI')

MenuGroup:AddButton('Unload', function() Library:Unload() end)