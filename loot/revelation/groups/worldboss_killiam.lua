-- Author: Matthias Muente (matthias.muente@gmx.de)
-- https://revelationonline.net 

worldboss_killiam = {
	description = "",
	minimumLevel = 0,
	maximumLevel = 0,
	lootItems = {
		{itemTemplate = "old_kimogila_blood", weight = 3100000},
		{itemTemplate = "old_kimogila_pearl_flawless", weight = 3000000},
		{itemTemplate = "old_kimogila_armor_segment", weight = 2100000},
		{itemTemplate = "old_kimogila_armor_segment_rare", weight = 800000},
		{itemTemplate = "robe_of_killiam_dark", weight = 500000},
		{itemTemplate = "robe_of_killiam_light", weight = 500000},
	}
}

addLootGroupTemplate("worldboss_killiam", worldboss_killiam)