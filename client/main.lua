Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0)

		SetVehicleDensityMultiplierThisFrame(Config.VehicleDensity)
		SetPedDensityMultiplierThisFrame(Config.PedDensity) 
		SetRandomVehicleDensityMultiplierThisFrame(Config.RandomVehicleDensity) 
		SetParkedVehicleDensityMultiplierThisFrame(Config.RandomParkedVehicleDensity)
		SetScenarioPedDensityMultiplierThisFrame(Config.ScenarioPedDensityMin, Config.ScenarioPedDensityMax) 
		SetGarbageTrucks(Config.GarbageTruck) 
		SetRandomBoats(Config.RandomBoats) 
		SetCreateRandomCops(Config.RandomCops) 
		SetCreateRandomCopsNotOnScenarios(Config.RandomCopsNotScenario)
		SetCreateRandomCopsOnScenarios(Config.RandomCopsOnScenario)
		
		local x,y,z = table.unpack(GetEntityCoords(PlayerPedId()))
		ClearAreaOfVehicles(x, y, z, 1000, false, false, false, false, false)
		RemoveVehiclesFromGeneratorsInArea(x - 500.0, y - 500.0, z - 500.0, x + 500.0, y + 500.0, z + 500.0);
	end
end)

if Config.DipcikEngel then
	Citizen.CreateThread(function()
		while true do
			Citizen.Wait(0)
			local ped = GetPlayerPed( -1 )
			local weapon = GetSelectedPedWeapon(ped)
		 
			if IsPedArmed(ped, 6) then
				DisableControlAction(1, 140, true)
				DisableControlAction(1, 141, true)
				DisableControlAction(1, 142, true)
			end
		 
		 
			if weapon == GetHashKey("WEAPON_FIREEXTINGUISHER") then    
				if IsPedShooting(ped) then
					SetPedInfiniteAmmo(ped, true, GetHashKey("WEAPON_FIREEXTINGUISHER"))
				end
			end
		end
	end)
end

if Config.CrossKapa then
	Citizen.CreateThread(function()
		local isSniper = false
			while true do
			Citizen.Wait(0)
			local ped = GetPlayerPed(-1)
			local currentWeaponHash = GetSelectedPedWeapon(ped)
				if currentWeaponHash == 100416529 then
						isSniper = true
					elseif currentWeaponHash == 205991906 then
						isSniper = true
					elseif currentWeaponHash == -952879014 then
						isSniper = true
					elseif currentWeaponHash == GetHashKey('WEAPON_HEAVYSNIPER_MK2') then
						isSniper = true
					else
						isSniper = false
					end
				if not isSniper then
				HideHudComponentThisFrame(14)
				end
			end
		end)
end

if Config.BunnyEngel then
	Citizen.CreateThread(function()
		while true do
			Citizen.Wait(100)
			local ped = PlayerPedId()
			if IsPedOnFoot(ped) and not IsPedSwimming(ped) and (IsPedRunning(ped) or IsPedSprinting(ped)) and not IsPedClimbing(ped) and IsPedJumping(ped) and not IsPedRagdoll(ped) then
				local chance_result = math.random()
				if chance_result < 0.50 then
					Citizen.Wait(600)     
					SetPedToRagdoll(ped, 5000, 1, Config.BunnyLimit)
				else
					Citizen.Wait(2000)
				end
			end
		end
	end)
end

if Config.EnableBlips then
	CreateThread(function()
		for _,v in pairs(Config.Blips) do
			local blip = AddBlipForCoord(v.coord)
			SetBlipSprite(blip, v.sprite)
			SetBlipScale(blip, v.scale)
			SetBlipColour(blip, v.color)
			SetBlipAsShortRange(blip, true)
			BeginTextCommandSetBlipName("STRING")
			AddTextComponentString(v.text)
			EndTextCommandSetBlipName(blip)
			if not v.radius then
				local blipradius = AddBlipForRadius(v.coord, v.radius)
				SetBlipColour(blipradius, v.radiuscolor)
				SetBlipAlpha(blipradius, v.alpha)
			end
		end
	end)
end


if Config.EnableNPC then
	Citizen.CreateThread(function()
		for _,v in pairs(Config.NPC) do
	
			RequestModel(v.pedhash)
			while not HasModelLoaded(v.pedhash) do
				Wait(1)
			end
			
			ped_info2 = CreatePed(1, v.pedhash, v.coord, v.heading, false, true)
			SetBlockingOfNonTemporaryEvents(ped_info2, true) 
			SetPedDiesWhenInjured(ped_info2, false) 
			SetPedCanPlayAmbientAnims(ped_info2, true) 
			SetPedCanRagdollFromPlayerImpact(ped_info2, false) 
			SetEntityInvincible(ped_info2, true)    
			FreezeEntityPosition(ped_info2, true) 
			-- TaskStartScenarioInPlace(ped_info2, "WORLD_HUMAN_GUARD_STAND", 0, true); 
		end
	end)
end
