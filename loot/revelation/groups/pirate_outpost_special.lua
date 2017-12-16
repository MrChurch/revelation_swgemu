-- Author: Matthias Muente (matthias.muente@gmx.de)
-- https://revelationonline.net 

pirate_outpost_special = {
	description = "",
	minimumLevel = 0,
	maximumLevel = 0,
	lootItems = {
    {itemTemplate = "pirate_google", weight = 2000000},
    {itemTemplate = "pirate_necklace", weight = 600000},
    {itemTemplate = "pirate_necklace_1", weight = 600000},
    {itemTemplate = "pirate_necklace_2", weight = 50000},
    {itemTemplate = "gen_small_02_lootschem", weight = 2500000},
    {itemTemplate = "gen_med_02_lootschem", weight = 2500000},
    {itemTemplate = "relaxation_house_lootschem", weight = 1700000},
    {itemTemplate = "pod_racer_one_deed", weight = 50000},
	}
}

addLootGroupTemplate("pirate_outpost_special", pirate_outpost_special)
