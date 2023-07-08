RegisterNetEvent('atomik-discordrich:data_getir', function()
    local activePlayers = GetPlayers()
    local playerName = GetPlayerName(source)
    local maxServerCapacity = GetConvarInt("sv_maxClients", 48)
    local template = 'ID: {ID} | İsim: {NAME} | {PLAYERS_COUNT}' -- {NAME}, {ID}, {PLAYERS_COUNT}

    local replacements = {
        ["{ID}"] = source,
        ["{NAME}"] = playerName,
        ["{PLAYERS_COUNT}"] = #activePlayers .. "/" .. maxServerCapacity,
    }

    local pattern = "{(.-)}"
    local result = template:gsub(pattern, function(key)
        return replacements['{' .. key .. '}'] or key
    end)

    TriggerClientEvent('atomik-discordrich:datayi_al', source, result)
end)