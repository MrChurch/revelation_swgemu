-- Author: Matthias Muente (matthias.muente@gmx.de)
-- https://revelationonline.net 

czerka_outpost_common_normal = {
	description = "",
	minimumLevel = 0,
	maximumLevel = 0,
	lootItems = {
          {itemTemplate = "attachment_clothing", weight = 200000},
          {itemTemplate = "attachment_armor", weight = 200000},
          {itemTemplate = "aakuan_ring", weight = 200000},
          {itemTemplate = "blacksun_rare", weight = 200000},
          {itemTemplate = "couch_blue_schematic", weight = 200000},
          {itemTemplate = "gambling_table_schematic", weight = 200000},
          {itemTemplate = "force_crystal_alumn", weight = 200000},
          {itemTemplate = "recycler_components", weight = 200000},
          {itemTemplate = "recycler_schematics", weight = 200000},
          {itemTemplate = "czerka_crafter_items", weight = 1500},
          {itemTemplate = "czerka_dungeon_speeder", weight = 250},
          {itemTemplate = "fine_tuned_vibro_motor", weight = 200000},
          {itemTemplate = "slave_brazier_schematic", weight = 200000},
          {itemTemplate = "spear_rack_schematic", weight = 200000},
          {itemTemplate = "droid_body_schematic", weight = 200000},
          {itemTemplate = "junk", weight = 5300250},
          {itemTemplate = "skill_buffs", weight = 300000},
          {itemTemplate = "weapons_all", weight = 600000},
          {itemTemplate = "krayt_dragon_pearl_premium", weight = 190000},
          {itemTemplate = "painting_trandoshan_wanted", weight = 100000},
          {itemTemplate = "freedom_painting", weight = 100000},
          {itemTemplate = "holocron_dark", weight = 150000},
          {itemTemplate = "holocron_light", weight = 150000},
          {itemTemplate = "czerka_officer_ring", weight = 108000},
          {itemTemplate = "traveler_ring", weight = 400000},
	}
}

addLootGroupTemplate("czerka_outpost_common_normal", czerka_outpost_common_normal)
