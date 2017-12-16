-- Author: Matthias Muente (matthias.muente@gmx.de)
-- https://revelationonline.net 

dragonbeast_loot = {
	description = "",
	minimumLevel = 0,
	maximumLevel = 0,
	lootItems = {
		{itemTemplate = "robe_of_the_dragonbeast_dark", weight = 5000000},
		{itemTemplate = "robe_of_the_dragonbeast_light", weight = 5000000},
	}
}

addLootGroupTemplate("dragonbeast_loot", dragonbeast_loot)