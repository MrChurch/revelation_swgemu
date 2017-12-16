-- Author: Matthias Muente (matthias.muente@gmx.de)
-- https://revelationonline.net 

holograms = {
	description = "",
	minimumLevel = 0,
	maximumLevel = 0,
	lootItems = {
		{itemTemplate = "imperial_holo_loot", weight = 2000000},
		{itemTemplate = "avatar_holo_loot", weight = 2000000},
		{itemTemplate = "rebel_holo_loot", weight = 2000000},
		{itemTemplate = "isd_holo_loot", weight = 500000},
		{itemTemplate = "tie_holo_loot", weight = 1500000},
		{itemTemplate = "xwing_holo_loot", weight = 1000000},
		{itemTemplate = "yt1300_holo_loot", weight = 1000000},
	}
}

addLootGroupTemplate("holograms", holograms)