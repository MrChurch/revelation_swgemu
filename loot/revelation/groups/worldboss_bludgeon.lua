-- Author: Matthias Muente (matthias.muente@gmx.de)
-- https://revelationonline.net 

worldboss_bludgeon = {
	description = "",
	minimumLevel = 0,
	maximumLevel = 0,
	lootItems = {
		{itemTemplate = "gha_ch_ring_loot", weight = 1000000},
		{itemTemplate = "gha_ch_necklace_loot", weight = 500000},
		{itemTemplate = "gha_ch_earring_loot", weight = 1000000},
		{itemTemplate = "gha_be_ring_loot", weight = 1000000},
		{itemTemplate = "gha_be_earring_loot", weight = 1000000},
		{itemTemplate = "gha_be_necklace_loot", weight = 500000},
		{itemTemplate = "imperial_holo_loot", weight = 1000000},
		{itemTemplate = "avatar_holo_loot", weight = 500000},
		{itemTemplate = "rebel_holo_loot", weight = 1000000},
		{itemTemplate = "isd_holo_loot", weight = 500000},
		{itemTemplate = "tie_holo_loot", weight = 500000},
		{itemTemplate = "xwing_holo_loot", weight = 1000000},
		{itemTemplate = "yt1300_holo_loot", weight = 500000},
	}
}

addLootGroupTemplate("worldboss_bludgeon", worldboss_bludgeon)