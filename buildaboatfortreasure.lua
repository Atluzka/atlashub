local repo = 'https://raw.githubusercontent.com/wally-rblx/LinoriaLib/main/'

local Library = loadstring(game:HttpGet(repo .. 'Library.lua'))()
local ThemeManager = loadstring(game:HttpGet(repo .. 'addons/ThemeManager.lua'))()
local SaveManager = loadstring(game:HttpGet(repo .. 'addons/SaveManager.lua'))()

local Window = Library:CreateWindow({
    Title = 'Atlas Hub | Build A Boat',
    Center = true, 
    AutoShow = true,
})

local Tabs = {
    Main = Window:AddTab('Main'), 
    ['UI Settings'] = Window:AddTab('UI Settings'),
}

local autofarm = Tabs.Main:AddLeftGroupbox('Auto Farm')

autofarm:AddSlider('DelayBetweenTp', {
    Text = 'Delay Between Teleports',
    Default = 1.2,
    Min = 0,
    Max = 10,
    Rounding = 1,
    Compact = false,
})

local TPDelay2 = Options.DelayBetweenTp.Value
Options.DelayBetweenTp:OnChanged(function()
    TPDelay2 = Options.DelayBetweenTp.Value
end)

Options.DelayBetweenTp:SetValue(TPDelay2)



autofarm:AddSlider('DelayBetweenNewStart', {
    Text = 'Delay before starting again',
    Default = 15,
    Min = 10,
    Max = 30,
    Rounding = 0,
    Compact = false,
})

local DelayBetweenNewStart2 = Options.DelayBetweenNewStart.Value
Options.DelayBetweenNewStart:OnChanged(function()
    DelayBetweenNewStart2 = Options.DelayBetweenNewStart.Value
end)

Options.DelayBetweenNewStart:SetValue(DelayBetweenNewStart2)






autofarm:AddToggle('AutoGoldFarm', {
    Text = 'Auto Farm',
    Default = false,
    Tooltip = 'Automatically farms gold for you.',
})

Toggles.AutoGoldFarm:OnChanged(function()
    while(Toggles.AutoGoldFarm.Value == true) do
        local p1 = game.Players.LocalPlayer.Character.HumanoidRootPart
        for i=0, 1 do
            p1.Anchored = true
            wait(TPDelay2) -- 1 
            p1.CFrame = CFrame.new(-65.3686752, 18.6045094, 1370.15295, -0.998206794, -0.0015951877, -0.0598384663, 2.19578619e-10, 0.999644876, -0.0266487673, 0.0598597266, -0.0266009811, -0.997852266)
            p1.Anchored = false
            wait(0.003)
            p1.Anchored = true
            wait(TPDelay2) -- 2
            p1.CFrame = CFrame.new(-55.8256912, 39.0684853, 2136.55273, -0.999975443, 0.000663882878, -0.00697326241, 1.84671875e-10, 0.995498657, 0.0947754905, 0.00700479327, 0.0947731659, -0.995474219)
            p1.Anchored = false
            wait(0.003)
            p1.Anchored = true
            wait(TPDelay2) -- 3
            p1.CFrame = CFrame.new(-36.5033531, 20.7260437, 2913.19629, -0.999536395, -0.00518698664, 0.0300012305, -4.86595597e-10, 0.985381007, 0.170364931, -0.0304463245, 0.170285955, -0.984924197)
            p1.Anchored = false
            wait(0.003)
            p1.Anchored = true
            wait(TPDelay2) -- 4
            p1.CFrame = CFrame.new(-54.6659966, 42.2151527, 3680.64111, -0.999930263, 0.00071539398, -0.0117867906, -5.32016514e-11, 0.998163164, 0.0605830662, 0.0118084811, 0.0605788417, -0.998093545)
            p1.Anchored = false
            wait(0.003)
            p1.Anchored = true
            wait(TPDelay2) -- 5
            p1.CFrame = CFrame.new(-60.1271057, 36.4574966, 4448.74463, -0.999989033, 0.000513369916, -0.00465320563, 6.36904904e-11, 0.993969083, 0.1096607, 0.00468143914, 0.109659493, -0.993958175)
            p1.Anchored = false
            wait(0.003)
            p1.Anchored = true
            wait(TPDelay2) -- 6
            p1.CFrame = CFrame.new(-45.3933258, 21.8544903, 5217.85645, -0.999999523, 0.000153872388, -0.000983196427, 1.09689861e-10, 0.987974048, 0.154619977, 0.000995164271, 0.154619887, -0.987973511)
            p1.Anchored = false
            wait(0.003)
            p1.Anchored = true
            wait(TPDelay2) -- 7
            p1.CFrame = CFrame.new(-65.7149658, 28.7962837, 5985.1084, -0.999995768, 0.000361744693, -0.00288328319, 1.92620267e-10, 0.992221296, 0.124486759, 0.00290588732, 0.12448623, -0.992217064)
            p1.Anchored = false
            wait(0.003)
            p1.Anchored = true
            wait(TPDelay2) -- 8
            p1.CFrame = CFrame.new(-69.2715759, 21.6931763, 6758.5249, -0.999678671, 0.00184362789, -0.0252810419, -5.33175518e-11, 0.997351527, 0.0727321655, 0.0253481772, 0.0727088004, -0.997031033)
            p1.Anchored = false
            wait(0.003)
            p1.Anchored = true
            wait(TPDelay2) -- 9
            p1.CFrame = CFrame.new(-88.7158508, 40.1335373, 7527.15967, -0.999609947, 0.00217580469, -0.0278421137, -5.44663648e-10, 0.996960342, 0.0779104456, 0.0279270019, 0.0778800622, -0.996571541)
            p1.Anchored = false
            wait(0.003)
            p1.Anchored = true
            wait(TPDelay2) -- 10
            p1.CFrame = CFrame.new(-55.7222786, 47.7013016, 8297.80176, -0.999378383, 0.00331637566, -0.0350978151, -2.69568812e-10, 0.995565534, 0.094070524, 0.0352541469, 0.0940120444, -0.994946659)
            p1.Anchored = false
            wait(0.003)
            p1.Anchored = true
            wait(TPDelay2) -- 11
            p1.CFrame = CFrame.new(-52.0693207, -8.20802784, 8817.51562, -0.99999398, 0.000722179713, -0.0034020138, 1.24646751e-10, 0.978202581, 0.207652867, 0.00347782136, 0.207651615, -0.978196681)
            p1.Anchored = false
            wait(0.003)
            p1.Anchored = true
            wait(TPDelay2) -- 12
            p1.CFrame = CFrame.new(-53.6660385, -355.321198, 9378.07422, -0.999903202, 0.00197440293, -0.0137713943, -4.01497099e-11, 0.989878297, 0.141918719, 0.0139122093, 0.14190498, -0.989782512)
            p1.Anchored = false
            wait(0.003)
            p1.Anchored = true
            wait(1.2) -- 13
            p1.CFrame = CFrame.new(-56.4057541, -349.837372, 9494.25488, -0.999921083, -0.00215233257, 0.0123767108, 6.49236664e-10, 0.985213637, 0.171330497, -0.012562464, 0.171316966, -0.985135853)
            wait(0.003)
            p1.Anchored = false
            wait(DelayBetweenNewStart2)
            workspace.ClaimRiverResultsGold:FireServer()
        end
    end
end)

Toggles.AutoGoldFarm:SetValue(false)


Library:OnUnload(function()
    print('Unloaded!')
    Library.Unloaded = true
end)

Library:SetWatermarkVisibility(true)
Library:SetWatermark('Atlas Hub | Build A Boat')
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