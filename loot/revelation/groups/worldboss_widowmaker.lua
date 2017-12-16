-- Author: Matthias Muente (matthias.muente@gmx.de)
-- https://revelationonline.net 

worldboss_widowmaker = {
	description = "",
	minimumLevel = 0,
	maximumLevel = 0,
	lootItems = {
		{itemTemplate = "barc_speeder_deed", weight = 1000000},
		{itemTemplate = "widowmaker_dark", weight = 1000000},
		{itemTemplate = "widowmaker_light", weight = 1000000},
		{itemTemplate = "nebulon_holo_loot", weight = 1000000},
		{itemTemplate = "experimental_ore_mining_unit", weight = 1000000},
                {itemTemplate = "experimental_heavy_harvesting_mechanism", weight = 1000000},
                {itemTemplate = "experimental_turbo_fluidic_drilling_pumping_unit", weight = 1000000},
                {itemTemplate = "modified_light_ore_mining_unit", weight = 1000000},
                {itemTemplate = "modified_harvesting_mechanism", weight = 1000000},
                {itemTemplate = "modified_fluidic_drilling_pumping_unit", weight = 1000000},
	}
}

addLootGroupTemplate("worldboss_widowmaker", worldboss_widowmaker)
