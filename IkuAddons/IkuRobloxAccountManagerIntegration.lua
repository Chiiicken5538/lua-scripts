local localPlayer = game:GetService("Players").LocalPlayer


--/ Roblox Account Manager API
local RAMAccount = loadstring(game:HttpGet("https://raw.githubusercontent.com/Chiiicken5538/lua-scripts/main/IkuAddons/apis/RAMAccount.lua"))()
local MyAccount = RAMAccount.new(localPlayer.Name)

if getgenv().Settings.RAM_Integration == true then
    if MyAccount then

        local cash_formatted = tostring(math.floor(localPlayer.DataFolder.Currency.Value)):reverse():gsub("(%d%d%d)","%1."):gsub(",(%-?)$","%1"):reverse()
        print('[RAM-Integration] Successfully loaded Account ' .. localPlayer.Name)

        MyAccount:SetDescription("$".. cash_formatted)
    
        print('[RAM-Integration] Updated description ($'.. cash_formatted ..')')
    else

        print('[RAM-Integration] Failed to load Account!')
        print('[RAM-Integration] Please make sure that you have the following in the RAMSettings.ini file set:')
        print('[RAM-Integration] ')
        print('[RAM-Integration] --> EnableWebServer=true')
        print('[RAM-Integration] --> WebServerPort=7963')
        print('[RAM-Integration] --> AllowAccountEditing=true')
        print('[RAM-Integration] --> Password=')
        print('[RAM-Integration] --> EveryRequestRequiresPassword=false')
        print('[RAM-Integration] ')
        print('[RAM-Integration] You can find the RAMSettings.ini File in your Roblox Account Manager directory')

    end
else
    print('[RAM-Integration] Disabled.')
end

local value = 3842384723
print(math.floor(value):reverse():gsub("(%d%d%d)", "%1."):gsub(",(%-?)$","%1"):reverse())
