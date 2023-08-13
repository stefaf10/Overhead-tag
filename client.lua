Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        
        local permissionLevel = GetPermissionLevel(PlayerId())
        
        if permissionLevel == "mod" or permissionLevel == "admin" then
            local playerPed = GetPlayerPed(-1)
            local playerCoords = GetEntityCoords(playerPed)
            
            local playerSteamName = GetPlayerSteamName(PlayerId()) -- Replace this with actual function call to get the player's Steam name
            
            DrawText3D(playerCoords.x, playerCoords.y, playerCoords.z + 1.0, playerSteamName)
        end
    end
end)

function DrawText3D(x, y, z, text)
    -- Same code as before
end
