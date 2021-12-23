---------------------------------
--------- !!Ata#0001 ------------
------------2020-2021------------
-------------NPC One Sync Delete-
Citizen.CreateThread(function()
	while true do
        Wait(0)
        SetVehicleModelIsSuppressed(GetHashKey("rubble"), true)
        SetVehicleModelIsSuppressed(GetHashKey("taco"), true) sasdasd
        SetVehicleModelIsSuppressed(GetHashKey("biff"), true)
        SetVehicleModelIsSuppressed(GetHashKey("blimp"), true)
        SetVehicleModelIsSuppressed(GetHashKey("blimp2"), true)
        SetVehicleModelIsSuppressed(GetHashKey("frogger"), true)
        SetVehicleModelIsSuppressed(GetHashKey("frogger2"), true)
    end
end)


Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0) -- Baraye Crash Nakhordan
        local x,y,z = table.unpack(GetEntityCoords(PlayerPedId()))
	    SetRandomVehicleDensityMultiplierThisFrame(0.0) -- Mashin Haye Random (Mashin Haye Darhale Harakat Dar Parking) 
        SetParkedVehicleDensityMultiplierThisFrame(0.0) -- Mashin Haye Park Shode 
        SetScenarioPedDensityMultiplierThisFrame(0.0, 0.0) -- NPC Haye Server (0.0)
        SetGarbageTrucks(false) -- Kamyon Haye Ashgal Chi [true/false]
        SetRandomBoats(false) -- Kashti Haye Darya [true/false]
        SetCreateRandomCops(false) -- Police NPC (Mashin/NPC)[true/false]
        SetCreateRandomCopsNotOnScenarios(false) -- NPC Police (Harkat Nemikonan)[true/false]
        SetCreateRandomCopsOnScenarios(false) -- NPC Police (Harekat Mikonan)[true/false]
        SetScenarioTypeEnabled('WORLD_VEHICLE_DRIVE_SOLO', true)
		ClearAreaOfVehicles(x, y, z, 1000, false, false, false, false, false)
		RemoveVehiclesFromGeneratorsInArea(x - 500.0, y - 500.0, z - 500.0, x + 500.0, y + 500.0, z + 500.0);

        if IsPedSittingInAnyVehicle(GetPlayerPed(-1)) then

            if GetPedInVehicleSeat(GetVehiclePedIsIn(GetPlayerPed(-1),false),-1) == GetPlayerPed(-1) then
                SetVehicleDensityMultiplierThisFrame(0.0)
                SetParkedVehicleDensityMultiplierThisFrame(0.0)
            else
                SetVehicleDensityMultiplierThisFrame(0.0)
                SetParkedVehicleDensityMultiplierThisFrame(0.0)
            end
        else
          SetParkedVehicleDensityMultiplierThisFrame(0.0)
          SetVehicleDensityMultiplierThisFrame(0.0)
        end
    end
end)
