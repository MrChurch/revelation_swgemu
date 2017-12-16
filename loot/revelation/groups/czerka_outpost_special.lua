-- Author: Matthias Muente (matthias.muente@gmx.de)
-- https://revelationonline.net 

czerka_outpost_special = {
	description = "",
	minimumLevel = 0,
	maximumLevel = 0,
	lootItems = {
		{itemTemplate = "junk", weight = 2998000},
		{itemTemplate = "ore_recycler_schematic", weight = 1000000},
		{itemTemplate = "agitator_motor_schematic", weight = 1000000},
		{itemTemplate = "fine_tuned_vibro_motor", weight = 1000000},
		{itemTemplate = "slave_brazier_schematic", weight = 1000000},
		{itemTemplate = "spear_rack_schematic", weight = 1000000},
		{itemTemplate = "droid_body_schematic", weight = 1000000},
		{itemTemplate = "small_motor", weight = 1000000},
		{itemTemplate = "czerka_crafter_items", weight = 1500},
		{itemTemplate = "czerka_dungeon_speeder", weight = 500},
	}
}

addLootGroupTemplate("czerka_outpost_special", czerka_outpost_special)
