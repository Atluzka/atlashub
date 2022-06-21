local repo = 'https://raw.githubusercontent.com/wally-rblx/LinoriaLib/main/'

local Library = loadstring(game:HttpGet(repo .. 'Library.lua'))()
local ThemeManager = loadstring(game:HttpGet(repo .. 'addons/ThemeManager.lua'))()
local SaveManager = loadstring(game:HttpGet(repo .. 'addons/SaveManager.lua'))()

local Window = Library:CreateWindow({
    Title = 'Atlas Hub | Hole In One Simulator',
    Center = true, 
    AutoShow = true,
})

local Tabs = {
    Main = Window:AddTab('Main'), 
    ['UI Settings'] = Window:AddTab('UI Settings'),
}

local autofarm = Tabs.Main:AddLeftGroupbox('Farm')

autofarm:AddToggle('AutoSwing', {
    Text = 'Auto Swing',
    Default = false,
    Tooltip = 'Automatically swings for you.',
})

Toggles.AutoSwing:OnChanged(function()
    while(Toggles.AutoSwing.Value == true) do
        local args = {[1] = "Accuracy",[2] = 0.9993430376052856}
        local args2 = {[1] = "Start"}
        game:GetService("Players").LocalPlayer.Character.RemoteEvent:FireServer(unpack(args2))
        game:GetService("Players").LocalPlayer.Character.RemoteEvent:FireServer(unpack(args))
        wait(0.3)
    end
end)

Toggles.AutoSwing:SetValue(false)

Library:OnUnload(function()
    print('Unloaded!')
    Library.Unloaded = true
end)

Library:SetWatermarkVisibility(true)
Library:SetWatermark('Atlas Hub | Hole In One Simulator')
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