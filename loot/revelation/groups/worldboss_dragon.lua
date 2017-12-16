-- Author: Matthias Muente (matthias.muente@gmx.de)
-- https://revelationonline.net 

worldboss_dragon = {
	description = "",
	minimumLevel = 0,
	maximumLevel = 0,
	lootItems = {
		{itemTemplate = "lava_skiff_speeder_deed", weight = 5000000},
		{itemTemplate = "vipbunker_lootschem", weight = 2500000},
		{itemTemplate = "sandcrawler_lootschem", weight = 2500000},
	}
}

addLootGroupTemplate("worldboss_dragon", worldboss_dragon)