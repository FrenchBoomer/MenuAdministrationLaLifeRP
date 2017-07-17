--[[
##################
#   Walter White #
#  Los Aramonos  #
#   client.lua   #
#     2017       #
##################
--]]

AddEventHandler("vmenuamdin:Admin", function()
        VMenu.admin = true
        TriggerServerEvent('vmenu:updateUser', 98)
    	VMenu.ResetMenu(98, "", "default")
        VMenu.AddFunc(98, "Retour", "vmenu:MainMenuOG", {}, "Retour")
        VMenu.AddSep(98, "Administration")
        VMenu.AddFunc(98, "GodmodeON", "godmod:fonction", {}, "Activer/Désactiver")
        VMenu.AddFunc(98, "Invisible", "invisible:fonction", {}, "Activer/Désactiver")
        VMenu.AddFunc(98, "Téléporter", "vmenu:teleport_marker", {}, "Se teleporter")
        VMenu.AddFunc(98, "No clip", "es_admin:noclip", {}, "No clip")
        VMenu.AddFunc(98, "Reprendre sa tenue", "vmenu:policeStateCivil", {}, "S'habiller")
        VMenu.AddFunc(98, "Boire", "boire:eau", {}, "Boire")
        VMenu.AddFunc(98, "Manger", "manger:pain", {}, "Manger")
        VMenu.AddFunc(98, "Récuperer position", "es_admin:givePosition", {}, "Enregistrer la position")
        VMenu.AddSep(98, "Véhicule")
        VMenu.AddFunc(98, "~b~Spawn véhicule", "vmenuvoiture:voiture", {}, "Spawn véhicules")
        VMenu.AddFunc(98, "~r~Supprimé Véhicule", "deleteVehicle", {}, "vehicle")
        VMenu.AddSep(98, "Armes")
        VMenu.AddFunc(98, "Ajout D'armes", "weapons:fonction", {}, "armes")

        
end)

AddEventHandler("vmenuvoiture:voiture", function()
        VMenu.admin = true
        TriggerServerEvent('vmenu:updateUser', 98)
    	  VMenu.ResetMenu(98, "", "default")
        VMenu.AddFunc(98, "Retour", "vmenuamdin:Admin", {}, "Retour")
        VMenu.AddSep(98, "Véhicules")
        VMenu.AddFunc(98, "Adder", "vmenu:spawnVeh", {"adder"}, "Spawn")
        VMenu.AddFunc(98, "Futo", "vmenu:spawnVeh", {"futo"}, "Spawn")
        VMenu.AddFunc(98, "Infernus", "vmenu:spawnVeh", {"infernus"}, "Spawn")
        VMenu.AddFunc(98, "Oracle", "vmenu:spawnVeh", {"oracle2"}, "Spawn")
        VMenu.AddFunc(98, "Oracle XS", "vmenu:spawnVeh", {"oracle"}, "Spawn")
        VMenu.AddFunc(98, "Sultan", "vmenu:spawnVeh", {"sultan"}, "Spawn")
        VMenu.AddFunc(98, "Tampa Drift", "vmenu:spawnVeh", {"tampa2"}, "Spawn")
        VMenu.AddFunc(98, "Windsor Cab", "vmenu:spawnVeh", {"windsor2"}, "Spawn")
        VMenu.AddFunc(98, "T20", "vmenu:spawnVeh", {"t20"}, "Spawn")
        VMenu.AddFunc(98, "Prototipo", "vmenu:spawnVeh", {"prototipo"}, "Spawn")
        VMenu.AddFunc(98, "Porsche Police", "vmenu:spawnVeh", {"pol718"}, "Spawn")
        VMenu.AddSep(98, "Motos")
        VMenu.AddFunc(98, "Akuma", "vmenu:spawnVeh", {"akuma"}, "Spawn")
        VMenu.AddFunc(98, "Cliffhanger", "vmenu:spawnVeh", {"cliffhanger"}, "Spawn")
        VMenu.AddFunc(98, "Gargoyle", "vmenu:spawnVeh", {"gargoyle"}, "Spawn")
        VMenu.AddFunc(98, "Sanchez", "vmenu:spawnVeh", {"sanchez"}, "Spawn")
        VMenu.AddSep(98, "Bateaux")
        VMenu.AddFunc(98, "Dinghy", "vmenu:spawnVeh", {"dinghy"}, "Spawn")
        VMenu.AddFunc(98, "Jetmax", "vmenu:spawnVeh", {"jetmax"}, "Spawn")
        VMenu.AddFunc(98, "Suntrap", "vmenu:spawnVeh", {"suntrap"}, "Spawn")
        VMenu.AddFunc(98, "Sous-Marin", "vmenu:spawnVeh", {"submersible"}, "Spawn")
        VMenu.AddSep(98, "Hélicos")
        VMenu.AddFunc(98, "buzzard", "vmenu:spawnVeh", {"buzzard"}, "Spawn")
        VMenu.AddFunc(98, "Cargo Bob", "vmenu:spawnVeh", {"cargobob"}, "Spawn")
        VMenu.AddFunc(98, "Swift Deluxe", "vmenu:spawnVeh", {"swift2"}, "Spawn")
        VMenu.AddFunc(98, "Annihilator", "vmenu:spawnVeh", {"annihilator"}, "Spawn")
        VMenu.AddSep(98, "Avions")
        VMenu.AddFunc(98, "Besra", "vmenu:spawnVeh", {"besra"}, "Spawn")
        VMenu.AddFunc(98, "Dodo", "vmenu:spawnVeh", {"dodo"}, "Spawn")
        VMenu.AddFunc(98, "Luxor VIP", "vmenu:spawnVeh", {"luxor2"}, "Spawn")
        VMenu.AddFunc(98, "Stunt Plane", "vmenu:spawnVeh", {"stunt"}, "Spawn")
        VMenu.AddSep(98, "Vélos")
        VMenu.AddFunc(98, "BMX", "vmenu:spawnVeh", {"bmx"}, "Spawn")
        VMenu.AddFunc(98, "Fixter", "vmenu:spawnVeh", {"fixter"}, "Spawn")
        VMenu.AddFunc(98, "Scorcher", "vmenu:spawnVeh", {"scorcher"}, "Spawn")
        VMenu.AddSep(98, "Militaire")
        VMenu.AddFunc(98, "Tank", "vmenu:spawnVeh", {"rhino"}, "Spawn")
        
end)

AddEventHandler("godmod:fonction", function()
  godmode = not godmode
  local ped = GetPlayerPed(-1)
  
  if godmode then
		SetEntityInvincible(ped, true)
		DrawNotif("GodMode ~g~activé")
	else
		SetEntityInvincible(ped, false)
		DrawNotif("GodMode ~r~désactivé")
  end
end)

AddEventHandler("invisible:fonction", function()
  invisible = not invisible
  local ped = GetPlayerPed(-1)
  
  if invisible then
		SetEntityVisible(ped, false, false)
		DrawNotif("Invisibilité ~g~activé")
	else
		SetEntityVisible(ped, true, false)
		DrawNotif("Invisibilité ~r~désactivé")
  end
end)

AddEventHandler("boire:eau", function()
TriggerEvent('food:vdrink', 100)
DrawNotif("Soif ~g~remplie")
end)

AddEventHandler("manger:pain", function()
TriggerEvent('food:veat', 100)
DrawNotif("Nourriture ~g~remplie")
end)

AddEventHandler('weapons:fonction', function(spawn)
    local player = GetPlayerPed(-1)

    GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_KNIFE"), true, true)
    GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_GOLFCLUB"), true, true)
    GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_APPISTOL"), true, true)
    GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_ASSAULTSMG"), true, true)
    GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_MG"), true, true)
    GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_ASSAULTSHOTGUN"), true, true)
    GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_MINIGUN"), true, true)
    GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_BZGAS"), true, true)
    GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_SNSPISTOL"), true, true)
    GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_HOMINGLAUNCHER"), true, true)
    GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_DAGGER"), true, true)
    GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_HEAVYSHOTGUN"), true, true)
    GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_COMBATPDW"), true, true)
    GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_MACHINEPISTOL"), true, true)
    GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_MACHINEPISTOL"), true, true)
    GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_POOLCUE"), true, true)

    GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_NIGHTSTICK"), true, true)
    GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_CROWBAR"), true, true)
    GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PISTOL50"), true, true)
    GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_ASSAULTRIFLE"), true, true)
    GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_BULLPUPSHOTGUN"), true, true)
    GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_GRENADELAUNCHER"), true, true)
    GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_GRENADE"), true, true)
    GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_MOLOTOV"), true, true)
    GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_SPECIALCARBINE"), true, true)
    GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PROXMINE"), true, true)
    GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_FIREWORK"), true, true)
    GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_GUSENBERG"), true, true)
    GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_KNUCKLE"), true, true)
    GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_AUTOSHOTGUN"), true, true)
    GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_COMPACTLAUNCHER"), true, true)

    GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_HAMMER"), true, true)
    GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PISTOL"), true, true)
    GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_MICROSMG"), true, true)
    GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_CARBINERIFLE"), true, true)
    GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PUMPSHOTGUN"), true, true)
    GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_STUNGUN"), true, true)
    GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_GRENADELAUNCHER_SMOKE"), true, true)
    GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_STICKYBOMB"), true, true)
    GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PETROLCAN"), true, true)
    GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_HEAVYPISTOL"), true, true)
    GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_SNOWBALL"), true, true)
    GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_MUSKET"), true, true)
    GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_HATCHET"), true, true)
    GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_FLASHLIGHT"), true, true)
    GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_BATTLEAXE"), true, true)

    GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_BAT"), true, true)
    GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_COMBATPISTOL"), true, true)
    GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_SMG"), true, true)
    GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_ADVANCEDRIFLE"), true, true)
    GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_SNIPERRIFLE"), true, true)
    GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_RPG"), true, true)
    GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_SMOKEGRENADE"), true, true)
    GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_FLARE"), true, true)
    GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_BULLPUPRIFLE"), true, true)
    GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_VINTAGEPISTOL"), true, true)
    GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_MARKSMANRIFLE"), true, true)
    GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_RAILGUN"), true, true)
    GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_MACHETE"), true, true)
    GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_WRENCH"), true, true)
    GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_SAWNOFFSHOTGUN"), true, true)

    SetPedInfiniteAmmo(GetPlayerPed(-1), true)
    SetPedInfiniteAmmoClip(GetPlayerPed(-1), true)

    DrawNotif("~r~Armes ajouté")

end)

RegisterNetEvent( 'deleteVehicle' )

local distanceToCheck = 5.0

AddEventHandler( 'deleteVehicle', function()
    local ped = GetPlayerPed( -1 )

    if ( DoesEntityExist( ped ) and not IsEntityDead( ped ) ) then 
        local pos = GetEntityCoords( ped )

        if ( IsPedSittingInAnyVehicle( ped ) ) then 
            local vehicle = GetVehiclePedIsIn( ped, false )

            if ( GetPedInVehicleSeat( vehicle, -1 ) == ped ) then 
                DrawNotif( "Véhicule ~g~Supprimé." )
                SetEntityAsMissionEntity( vehicle, true, true )
                deleteCar( vehicle )
            else 
                DrawNotif( "~r~Vous devez être dans le siège du conducteur~s~" )
            end 
        else
            local playerPos = GetEntityCoords( ped, 1 )
            local inFrontOfPlayer = GetOffsetFromEntityInWorldCoords( ped, 0.0, distanceToCheck, 0.0 )
            local vehicle = GetVehicleInDirection( playerPos, inFrontOfPlayer )

            if ( DoesEntityExist( vehicle ) ) then 
                DrawNotif( "Véhicule ~g~Supprimé." )
                SetEntityAsMissionEntity( vehicle, true, true )
                deleteCar( vehicle )
            else 
                DrawNotif( "~r~Vous devez être dans ou à proximité d'un véhicule pour le supprimer~s~" )
            end 
        end 
    end 
end )

function deleteCar( entity )
    Citizen.InvokeNative( 0xEA386986E786A54F, Citizen.PointerValueIntInitialized( entity ) )
end

function GetVehicleInDirection( coordFrom, coordTo )
    local rayHandle = CastRayPointToPoint( coordFrom.x, coordFrom.y, coordFrom.z, coordTo.x, coordTo.y, coordTo.z, 10, GetPlayerPed( -1 ), 0 )
    local _, _, _, _, vehicle = GetRaycastResult( rayHandle )
    return vehicle
end


function log( msg )
    Citizen.Trace( "\n[DEBUG]: " .. msg )
end
