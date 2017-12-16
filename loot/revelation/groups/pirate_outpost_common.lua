-- Author: Matthias Muente (matthias.muente@gmx.de)
-- https://revelationonline.net 

pirate_outpost_common = {
	description = "",
	minimumLevel = 0,
	maximumLevel = 0,
	lootItems = {
    {itemTemplate = "junk", weight = 6000000},
    {itemTemplate = "weapons_all", weight = 1000000},
    {itemTemplate = "armor_all", weight = 960000},
    {itemTemplate = "wearables_all", weight = 1000000},
    {itemTemplate = "RIS_diagram", weight = 300000},
    {itemTemplate = "attachment_clothing", weight = 280000},
    {itemTemplate = "attachment_armor", weight = 275000},
    {itemTemplate = "bubble_tank_schematic", weight = 100000},
    {itemTemplate = "pirate_google", weight = 10000},
    {itemTemplate = "pirate_necklace", weight = 10000},
    {itemTemplate = "pirate_necklace_1", weight = 10000},
    {itemTemplate = "pirate_necklace_2", weight = 5000},
    {itemTemplate = "gen_small_02_lootschem", weight = 10000},
    {itemTemplate = "veh_power_plant_av21", weight = 20000},
    {itemTemplate = "av21_schematic", weight = 20000},    
	}
}

addLootGroupTemplate("pirate_outpost_common", pirate_outpost_common)
