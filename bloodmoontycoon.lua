local repo = 'https://raw.githubusercontent.com/wally-rblx/LinoriaLib/main/'

local Library = loadstring(game:HttpGet(repo .. 'Library.lua'))()
local ThemeManager = loadstring(game:HttpGet(repo .. 'addons/ThemeManager.lua'))()
local SaveManager = loadstring(game:HttpGet(repo .. 'addons/SaveManager.lua'))()

local Window = Library:CreateWindow({
    Title = 'Atlas Hub | Blood Moon Tycoon',
    Center = true, 
    AutoShow = true,
})

local Tabs = {
    Main = Window:AddTab('Main'), 
    ['UI Settings'] = Window:AddTab('UI Settings'),
}

local MainSection = Tabs.Main:AddLeftGroupbox('Main')


MainSection:AddSlider('DelayBetweenRebirth', {
    Text = 'Delay Between Rebirths',
    Default = 5,
    Min = 0,
    Max = 30,
    Rounding = 1,
    Compact = false,
})

local RebirthDelay2 = Options.DelayBetweenRebirth.Value
Options.DelayBetweenRebirth:OnChanged(function()
    RebirthDelay2 = Options.DelayBetweenRebirth.Value
end)

Options.DelayBetweenRebirth:SetValue(RebirthDelay2)

MainSection:AddToggle('AutoRebirthEvent', {
    Text = 'Auto Rebirth',
    Default = false,
    Tooltip = 'Automatically rebirths for you',
})

Toggles.AutoRebirthEvent:OnChanged(function()
    while(Toggles.AutoRebirthEvent.Value == true) do
        for i=0, 1 do
            local checkTeam = game.Workspace.Tycoons:GetChildren()
            local p1 = game:GetService("Players").LocalPlayer
            
            for _,v in pairs(checkTeam) do
                if v.ClassName == "Model" then
                    if v.Owner['Value'] == p1 then
                        local args = {[1] = 121,[2] = workspace.Tycoons:FindFirstChild(v['Name']),[3] = 765329874}
                        game:GetService("ReplicatedStorage").PlayerRebirthEvent:FireServer(unpack(args))
                    end
                end
            end
            wait(RebirthDelay2)
        end
    end
end)

Toggles.AutoRebirthEvent:SetValue(false)

-- Infinite Sapphire
local InfSapp = MainSection:AddButton('Infinite Sapphire', function()
    local InfSappArgs = {[1] = "OrbFrame",[2] = -(math.huge)}
    game:GetService("ReplicatedStorage").BuySapphireItemFunction:InvokeServer(unpack(InfSappArgs))
end)



-- Infinite Rubies
local InfRub = MainSection:AddButton('Infinite Rubies', function()
    local InfRubArgs = {[1] = "SquirrelFrame",[2] = -(math.huge)}
    game:GetService("ReplicatedStorage").BuyItemFunction:InvokeServer(unpack(InfRubArgs))
end)





Library:OnUnload(function()
    print('Unloaded!')
    Library.Unloaded = true
end)

Library:SetWatermarkVisibility(true)
Library:SetWatermark('Atlas Hub | Blood Moon Tycoon')
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