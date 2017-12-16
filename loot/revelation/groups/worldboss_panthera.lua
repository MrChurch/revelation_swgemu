-- Author: Matthias Muente (matthias.muente@gmx.de)
-- https://revelationonline.net 

worldboss_panthera = {
	description = "",
	minimumLevel = 0,
	maximumLevel = 0,
	lootItems = {
		{itemTemplate = "sith_speeder_deed", weight = 350000},
		{itemTemplate = "stap_speeder_deed", weight = 350000},
		{itemTemplate = "musty_house_lootschem", weight = 350000},
		{itemTemplate = "commando_lootschem", weight = 350000},
		{itemTemplate = "hk47_holo_loot", weight = 500000},
		{itemTemplate = "spacebattle_holo_loot", weight = 400000},
		{itemTemplate = "deathstar_holo_loot", weight = 400000},
		{itemTemplate = "mystery_jacket_ace_imperial", weight = 500000},
		{itemTemplate = "mystery_jacket_ace_rebel", weight = 500000},
		{itemTemplate = "rev_marauder_chest_plate", weight = 900000},
		{itemTemplate = "rev_marauder_bracer_r", weight = 900000},
		{itemTemplate = "rev_marauder_bracer_l", weight = 900000},
		{itemTemplate = "rev_marauder_boots", weight = 900000},
		{itemTemplate = "rev_marauder_bicep_l", weight = 900000},
		{itemTemplate = "rev_marauder_bicep_r", weight = 900000},
		{itemTemplate = "rev_marauder_leggings", weight = 900000},
	}
}

addLootGroupTemplate("worldboss_panthera", worldboss_panthera)