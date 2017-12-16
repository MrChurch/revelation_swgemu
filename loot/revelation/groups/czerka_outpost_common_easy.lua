-- Author: Matthias Muente (matthias.muente@gmx.de)
-- https://revelationonline.net 

czerka_outpost_common_easy = {
	description = "",
	minimumLevel = 0,
	maximumLevel = 0,
	lootItems = {
            {itemTemplate = "attachment_clothing", weight = 300000},
            {itemTemplate = "attachment_armor", weight = 300000},
            {itemTemplate = "aakuan_ring", weight = 300000},
            {itemTemplate = "blacksun_rare", weight = 300000},
            {itemTemplate = "couch_blue_schematic", weight = 200000},
            {itemTemplate = "gambling_table_schematic", weight = 200000},
            {itemTemplate = "crystals_all", weight = 200000},
            {itemTemplate = "recycler_components", weight = 200000},
            {itemTemplate = "recycler_schematics", weight = 200000},
            {itemTemplate = "czerka_crafter_items", weight = 1000},
            {itemTemplate = "fine_tuned_vibro_motor", weight = 200000},
            {itemTemplate = "slave_brazier_schematic", weight = 200000},
            {itemTemplate = "spear_rack_schematic", weight = 200000},
            {itemTemplate = "droid_body_schematic", weight = 200000},
            {itemTemplate = "krayt_dragon_pearl_premium", weight = 99000},
            {itemTemplate = "junk", weight = 5700000},
            {itemTemplate = "skill_buffs", weight = 300000},
            {itemTemplate = "weapons_all", weight = 600000},
            {itemTemplate = "traveler_ring", weight = 300000},
	}
}

addLootGroupTemplate("czerka_outpost_common_easy", czerka_outpost_common_easy)
