local repo = 'https://raw.githubusercontent.com/wally-rblx/LinoriaLib/main/'

local Library = loadstring(game:HttpGet(repo .. 'Library.lua'))()
local ThemeManager = loadstring(game:HttpGet(repo .. 'addons/ThemeManager.lua'))()
local SaveManager = loadstring(game:HttpGet(repo .. 'addons/SaveManager.lua'))()

local Window = Library:CreateWindow({
    Title = 'Atlas Hub | Crossbar Challenge Simulator',
    Center = true, 
    AutoShow = true,
})

local Tabs = {
    Main = Window:AddTab('Main'), 
    ['UI Settings'] = Window:AddTab('UI Settings'),
}

local LeftGroupBox = Tabs.Main:AddLeftGroupbox('Features')

LeftGroupBox:AddToggle('AutoShoot', {
    Text = 'Auto Shoot Ball',
    Default = false,
    Tooltip = 'Automatically shoots the ball without cooldown',
})

Toggles.AutoShoot:OnChanged(function()
    while(Toggles.AutoShoot.Value == true) do
        local args = {
            [1] = "yeet",
            [2] = 1,
            [3] = "GetALifeKid"
        }

        game:GetService("Players").LocalPlayer.Character.Act:FireServer(unpack(args))
        wait(0.1)
    end
end)

Toggles.AutoShoot:SetValue(false)

local antilag = LeftGroupBox:AddButton('Delete Balls', function()
    local localplayer = game.Players.LocalPlayer.Name
    local v2 = game.Workspace:GetChildren()
        
    for i, v in pairs(v2) do
        if v.Name == localplayer .. "Ball" then
            v:Remove()
        end
    end
end)

Library:OnUnload(function()
    print('Unloaded!')
    Library.Unloaded = true
end)

Library:SetWatermarkVisibility(true)
Library:SetWatermark('Atlas Hub | Crossbar Challenge Simulator')
Library.KeybindFrame.Visible = false;

local MenuGroup = Tabs['UI Settings']:AddLeftGroupbox('Menu')

MenuGroup:AddButton('Unload', function() Library:Unload() end)
MenuGroup:AddLabel('Menu bind'):AddKeyPicker('MenuKeybind', { Default = 'End', NoUI = true, Text = 'Menu keybind' }) 
MenuGroup:AddLabel('discord.gg/8Jur97vnfX')

Library.ToggleKeybind = Options.MenuKeybind
ThemeManager:SetLibrary(Library)
SaveManager:SetLibrary(Library)
SaveManager:IgnoreThemeSettings() 
SaveManager:SetIgnoreIndexes({ 'MenuKeybind' }) 
ThemeManager:SetFolder('AtlasHub')
SaveManager:SetFolder('AtlasHub/legends_of_speed')
SaveManager:BuildConfigSection(Tabs['UI Settings']) 

ThemeManager:ApplyToTab(Tabs['UI Settings'])
