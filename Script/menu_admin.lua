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
        VMenu.AddFunc(98, "Menu véhicule", "vmenuvoiture:voiture", {}, "Spawn véhicules")

        
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