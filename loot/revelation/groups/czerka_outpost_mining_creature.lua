-- Author: Matthias Muente (matthias.muente@gmx.de)
-- https://revelationonline.net 

czerka_outpost_mining_creature = {
	description = "",
	minimumLevel = 0,
	maximumLevel = 0,
	lootItems = {
		{itemTemplate = "junk", weight = 3000000},
		{itemTemplate = "kliknik_chitin_armor_segment", weight = 2000000},
		{itemTemplate = "krayt_dragon_pearl_premium", weight = 1000000},
		{itemTemplate = "kliknik_gland", weight = 2000000},
		{itemTemplate = "jedi_holocron_light", weight = 500000},
		{itemTemplate = "jedi_holocron_dark", weight = 500000},
		{itemTemplate = "donkuwah_poison", weight = 50000},
		{itemTemplate = "force_color_crystal", weight = 500000},
		{itemTemplate = "force_crystal_premium", weight = 450000},
	}
}

addLootGroupTemplate("czerka_outpost_mining_creature", czerka_outpost_mining_creature)
