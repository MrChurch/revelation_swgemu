-- Author: Matthias Muente (matthias.muente@gmx.de)
-- https://revelationonline.net 

czerka_dungeon_speeder = {
	description = "",
	minimumLevel = 0,
	maximumLevel = 0,
	lootItems = {
		{itemTemplate = "swamp_speeder_deed", weight = 4000000},
		{itemTemplate = "hoverlifter_speeder_deed", weight = 4000000},
		{itemTemplate = "basilisk_speeder_deed", weight = 2000000},
	}
}

addLootGroupTemplate("czerka_dungeon_speeder", czerka_dungeon_speeder)
