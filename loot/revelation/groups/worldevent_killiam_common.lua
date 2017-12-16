-- Author: Matthias Muente (matthias.muente@gmx.de)
-- https://revelationonline.net 

worldevent_killiam_common = {
	description = "",
	minimumLevel = 0,
	maximumLevel = 0,
	lootItems = {
            {itemTemplate = "modified_light_ore_mining_unit", weight = 500000},
            {itemTemplate = "modified_harvesting_mechanism", weight = 500000},
            {itemTemplate = "modified_fluidic_drilling_pumping_unit", weight = 500000},
            {itemTemplate = "bubble_tank_schematic", weight = 1000000},
            {itemTemplate = "pirate_google", weight = 1000000},
            {itemTemplate = "pirate_necklace", weight = 1000000},
            {itemTemplate = "pirate_necklace_1", weight = 1000000},
            {itemTemplate = "pirate_necklace_2", weight = 1000000},
            {itemTemplate = "gen_small_02_lootschem", weight = 500000},
            {itemTemplate = "veh_power_plant_av21", weight = 1500000},
            {itemTemplate = "av21_schematic", weight = 1500000},    
	}
}

addLootGroupTemplate("worldevent_killiam_common", worldevent_killiam_common)
