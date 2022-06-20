local repo = 'https://raw.githubusercontent.com/wally-rblx/LinoriaLib/main/'

local Library = loadstring(game:HttpGet(repo .. 'Library.lua'))()
local ThemeManager = loadstring(game:HttpGet(repo .. 'addons/ThemeManager.lua'))()
local SaveManager = loadstring(game:HttpGet(repo .. 'addons/SaveManager.lua'))()

local Window = Library:CreateWindow({
    Title = 'Atlas Hub | Legends of Speed',
    Center = true, 
    AutoShow = true,
})

local Tabs = {
    Main = Window:AddTab('Main'), 
    UISettings = Window:AddTab('UI Settings'),
}

local LeftGroupBox = Tabs.Main:AddLeftGroupbox('Farm')

LeftGroupBox:AddToggle('AutoCollectOrb', {
    Text = 'Auto Collect Orbs',
    Default = false,
    Tooltip = 'Automatically collects orbs for you.',
})

Toggles.AutoCollectOrb:OnChanged(function()
    orbsTable = {"Blue Orb", "Orange Orb", "Red Orb", "Yellow Orb"}
    while(Toggles.AutoCollectOrb.Value == true) do 
        for _, v in ipairs(orbsTable) do
            for i=0, 50 do
                game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb", v, "City")
            end
        end
        wait(0.003)
    end
end)

Toggles.AutoCollectOrb:SetValue(false)


LeftGroupBox:AddToggle('AutoCollectGems', {
    Text = 'Auto Collect Gems',
    Default = false,
    Tooltip = 'Automatically collects gems for you.',
})

Toggles.AutoCollectGems:OnChanged(function()
    while(Toggles.AutoCollectGems.Value == true) do
        for i=0, 50 do
            game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb", "Gem", "City")
        end
        wait(0.003)
    end
end)

Toggles.AutoCollectGems:SetValue(false)

LeftGroupBox:AddToggle('AutoRebirth', {
    Text = 'Auto Rebirth',
    Default = false,
    Tooltip = 'Automatically rebirths for you. (there might be delay)',
})

Toggles.AutoRebirth:OnChanged(function()
    while(Toggles.AutoRebirth.Value == true) do
        game.ReplicatedStorage.rEvents.rebirthEvent:FireServer("rebirthRequest")
        wait(1)
    end
end)

Toggles.AutoRebirth:SetValue(false)

LeftGroupBox:AddToggle('AutoHoopFarm', {
    Text = 'Auto Hoop',
    Default = false,
    Tooltip = 'Automatically teleports you inside hoops (might freeze)',
})

Toggles.AutoHoopFarm:OnChanged(function()
    while(Toggles.AutoHoopFarm.Value == true) do
        local p1 = game.Players.LocalPlayer.Character.HumanoidRootPart
        local muffin = game.Workspace.Hoops:GetChildren()
        p1.Anchored = true
        for i, v in pairs(muffin) do
            p1.CFrame = v.CFrame
            p1.Anchored = false
            wait(0.003)
            p1.Anchored = true
            wait(0.3)
        end
        p1.Anchored = false
    end
end)

Toggles.AutoHoopFarm:SetValue(false)


Library:SetWatermarkVisibility(true)
Library:SetWatermark('Atlas Hub | Legends of Speed')
Library.KeybindFrame.Visible = false;


local UI = Tabs.UISettings:AddLeftGroupbox('UI')

UI:AddButton('Unload', function() Library:Unload() end)
UI:AddLabel('discord.gg/8Jur97vnfX')
