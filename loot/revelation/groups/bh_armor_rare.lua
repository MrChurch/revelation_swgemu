-- Author: Matthias Muente (matthias.muente@gmx.de)
-- https://revelationonline.net 

bh_armor_rare = {
	description = "",
	minimumLevel = 0,
	maximumLevel = 0,
	lootItems = {
		{itemTemplate = "bh_armor_rare_belt", weight = 1000000},
		{itemTemplate = "bh_armor_rare_bicep_l", weight = 1000000},
		{itemTemplate = "bh_armor_rare_bicep_r", weight = 1000000},
    {itemTemplate = "bh_armor_rare_boots", weight = 1000000},
    {itemTemplate = "bh_armor_rare_chest_plate", weight = 1000000},
    {itemTemplate = "bh_armor_rare_gloves", weight = 1000000},
    {itemTemplate = "bh_armor_rare_bracer_l", weight = 1000000},
    {itemTemplate = "bh_armor_rare_bracer_r", weight = 1000000},
    {itemTemplate = "bh_armor_rare_helmet", weight = 1000000},
    {itemTemplate = "bh_armor_rare_leggings", weight = 1000000},

	}
}

addLootGroupTemplate("bh_armor_rare", bh_armor_rare)
