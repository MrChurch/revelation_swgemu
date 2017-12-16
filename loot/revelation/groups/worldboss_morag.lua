-- Author: Matthias Muente (matthias.muente@gmx.de)
-- https://revelationonline.net 

worldboss_morag = {
	description = "",
	minimumLevel = 0,
	maximumLevel = 0,
	lootItems = {
		{itemTemplate = "bespin_shelv_schem", weight = 500000},
		{itemTemplate = "bespin_sculpture_schem", weight = 500000},
		{itemTemplate = "bespin_lamp_off_schem", weight = 490000},
		{itemTemplate = "bespin_lamp_on_schem", weight = 500000},
		{itemTemplate = "bespin_house_schem", weight = 10000},
		{itemTemplate = "bespin_sconce_off_schem", weight = 500000},
		{itemTemplate = "bespin_sconce_on_schem", weight = 500000},
		{itemTemplate = "rev_marauder_leggings", weight = 1000000},
		{itemTemplate = "rev_marauder_chest_plate", weight = 1000000},
		{itemTemplate = "rev_marauder_bracer_r", weight = 1000000},
		{itemTemplate = "rev_marauder_bracer_l", weight = 1000000},
		{itemTemplate = "rev_marauder_boots", weight = 1000000},
		{itemTemplate = "rev_marauder_bicep_r", weight = 1000000},
		{itemTemplate = "rev_marauder_bicep_l", weight = 1000000},
	}
}

addLootGroupTemplate("worldboss_morag", worldboss_morag)
