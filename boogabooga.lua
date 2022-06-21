local repo = 'https://raw.githubusercontent.com/wally-rblx/LinoriaLib/main/'

local Library = loadstring(game:HttpGet(repo .. 'Library.lua'))()
local ThemeManager = loadstring(game:HttpGet(repo .. 'addons/ThemeManager.lua'))()
local SaveManager = loadstring(game:HttpGet(repo .. 'addons/SaveManager.lua'))()

local Window = Library:CreateWindow({
    Title = 'Atlas Hub | Booga Booga',
    Center = true, 
    AutoShow = true,
})

local Tabs = {
    Main = Window:AddTab('Main'), 
    ['UI Settings'] = Window:AddTab('UI Settings'),
}

local crafting = Tabs.Main:AddLeftGroupbox('Craft')

crafting:AddInput('CraftItem', {
    Default = 'Item',
    Numeric = false,
    Finished = false,

    Text = 'Enter item name',
    Tooltip = 'You need to have the resources',

    Placeholder = '',
})

local itemName = Options.CraftItem.Value
Options.CraftItem:OnChanged(function()
    itemName = Options.CraftItem.Value
end)

local craftItem2 = crafting:AddButton('Craft Item', function()
    local args = {[1] = itemName}
    game:GetService("ReplicatedStorage").Events.CraftItem:FireServer(unpack(args))
end)

Library:OnUnload(function()
    print('Unloaded!')
    Library.Unloaded = true
end)

Library:SetWatermarkVisibility(true)
Library:SetWatermark('Atlas Hub |  Booga Booga')
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