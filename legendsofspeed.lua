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
    while(Toggles.AutoCollectOrb.Value == true) do -- Please do no look at this fucking mess KEKW
        game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb", "Blue Orb", "City")
        game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb", "Orange Orb", "City")
        game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City")
        game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City")
        game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb", "Blue Orb", "City")
        game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb", "Orange Orb", "City")
        game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City")
        game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City")
        game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb", "Blue Orb", "City")
        game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb", "Orange Orb", "City")
        game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City")
        game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City")
        game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb", "Blue Orb", "City")
        game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb", "Orange Orb", "City")
        game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City")
        game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City")
        game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb", "Blue Orb", "City")
        game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb", "Orange Orb", "City")
        game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City")
        game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City")
        game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb", "Blue Orb", "City")
        game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb", "Orange Orb", "City")
        game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City")
        game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City")
        game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb", "Blue Orb", "City")
        game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb", "Orange Orb", "City")
        game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City")
        game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City")
        game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb", "Blue Orb", "City")
        game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb", "Orange Orb", "City")
        game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City")
        game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City")
        game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb", "Blue Orb", "City")
        game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb", "Orange Orb", "City")
        game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City")
        game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City")
        wait(0.00002) -- oh god wtf is this
    end
end)

Toggles.AutoCollectOrb:SetValue(false)


LeftGroupBox:AddToggle('AutoCollectGems', {
    Text = 'Auto Collect Gems',
    Default = false,
    Tooltip = 'Automatically collects gems for you.',
})

Toggles.AutoCollectGems:OnChanged(function()
    while(Toggles.AutoCollectGems.Value == true) do -- Damn this is another mess
        game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb", "Gem", "City")
        game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb", "Gem", "City")
        game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb", "Gem", "City")
        game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb", "Gem", "City")
        game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb", "Gem", "City")
        game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb", "Gem", "City")
        game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb", "Gem", "City")
        game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb", "Gem", "City")
        game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb", "Gem", "City")
        game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb", "Gem", "City")
        game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb", "Gem", "City")
        game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb", "Gem", "City")
        game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb", "Gem", "City")
        game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb", "Gem", "City")
        game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb", "Gem", "City")
        wait(0.00002) -- kekw
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
            wait(0.01)
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


local MenuGroup = Tabs.UISettings:AddLeftGroupbox('UI')

MenuGroup:AddButton('Unload', function() Library:Unload() end)