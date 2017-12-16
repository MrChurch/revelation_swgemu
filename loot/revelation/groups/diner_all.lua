-- Author: Matthias Muente (matthias.muente@gmx.de)
-- https://revelationonline.net 

diner_all = {
	description = "",
	minimumLevel = 0,
	maximumLevel = 0,
	lootItems = {
	  
	  {itemTemplate = "diner_lootschem", weight = 1250000},
    {itemTemplate = "diner_bar_loot", weight = 1250000},
    {itemTemplate = "diner_table_lootschem", weight = 1250000},
		{itemTemplate = "diner_stool_lootschem", weight = 1250000},
		{itemTemplate = "diner_counter_lootschem", weight = 1250000},
		{itemTemplate = "diner_corner1_lootschem", weight = 1250000},
		{itemTemplate = "diner_corner2_lootschem", weight = 1250000},
		{itemTemplate = "diner_booth_lootschem", weight = 1250000},
	}
}

addLootGroupTemplate("diner_all", diner_all)
