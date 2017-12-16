-- Author: Matthias Muente (matthias.muente@gmx.de)
-- https://revelationonline.net 

czerka_outpost_common = {
	description = "",
	minimumLevel = 0,
	maximumLevel = 0,
	lootItems = {
		{itemTemplate = "attachment_clothing", weight = 500000},
		{itemTemplate = "attachment_armor", weight = 500000},
		{itemTemplate = "crystals_all", weight = 200000},
		{itemTemplate = "junk", weight = 6000000},
		{itemTemplate = "skill_buffs", weight = 2000000},
		{itemTemplate = "weapons_all", weight = 800000},
	}
}

addLootGroupTemplate("czerka_outpost_common", czerka_outpost_common)
