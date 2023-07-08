CreateThread(function()
    SetDiscordAppId(Config.appid)

    SetDiscordRichPresenceAsset(Config.logo)
    SetDiscordRichPresenceAssetText(Config.logotext)

    SetDiscordRichPresenceAssetSmall(Config.minilogo)
    SetDiscordRichPresenceAssetSmallText(Config.minilogotext)

    SetDiscordRichPresenceAction(0, Config.Buttons[1].text, Config.Buttons[1].link)
    SetDiscordRichPresenceAction(1, Config.Buttons[2].text, Config.Buttons[2].link)

    while true do
        TriggerServerEvent('atomik-discordrich:data_getir')

        Wait(60000)
    end
end)

RegisterNetEvent("atomik-discordrich:datayi_al", function(richPresenceString)
    SetRichPresence(richPresenceString)
end)