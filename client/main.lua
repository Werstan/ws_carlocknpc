Citizen.CreateThread(function()
    while true do
        Wait(0)
        local ped = GetPlayerPed(-1)
        if DoesEntityExist(GetVehiclePedIsTryingToEnter(GetVehicleDoorLockStatus(veh))) then
            local veh = GetVehiclePedIsTryingToEnter(PlayerPedId(ped))
            local lock = GetVehicleDoorLockStatus(veh)
            if lock == 7 then
                SetVehicleDoorsLocked(veh, 7)
                --SetVehicleAlarm(veh, true)
                Wait(8)
                SetVehicleAlarmTimeLeft(veh, 30000)
            end            
        end
    end
end)


Citizen.CreateThread(function()
    while true do
        Wait(0)
        local ped = GetPlayerPed(-1)
        if DoesEntityExist(GetVehiclePedIsTryingToEnter(PlayerPedId(ped))) then
            local veh = GetVehiclePedIsTryingToEnter(PlayerPedId(ped))
            local npc = GetPedInVehicleSeat(veh, -1)
            if npc then
                SetVehicleDoorsLocked(veh, 7)
                SetPedCanBeDraggedOut(npc, true)
                --SetVehicleAlarm(veh, true)
            end
            
        end
    end
end)