-- Author: Matthias Muente (matthias.muente@gmx.de)
-- https://revelationonline.net 

gha = {
	description = "",
	minimumLevel = 0,
	maximumLevel = 0,
	lootItems = {
		{itemTemplate = "gha_ch_ring_loot", weight = 2000000},
		{itemTemplate = "gha_ch_necklace_loot", weight = 1000000},
		{itemTemplate = "gha_ch_earring_loot", weight = 2000000},
		{itemTemplate = "gha_be_ring_loot", weight = 2000000},
		{itemTemplate = "gha_be_earring_loot", weight = 2000000},
		{itemTemplate = "gha_be_necklace_loot", weight = 1000000},
	}
}

addLootGroupTemplate("gha", gha)