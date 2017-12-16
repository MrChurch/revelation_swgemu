-- Author: Matthias Muente (matthias.muente@gmx.de)
-- https://revelationonline.net 

buddy_reward = {
	description = "",
	minimumLevel = 0,
	maximumLevel = 0,
	lootItems = {
		{itemTemplate = "xp38_speeder_deed", weight = 4000000},
		{itemTemplate = "v35_speeder_deed", weight = 4000000},
		{itemTemplate = "jabba_lootschem", weight = 3000000},
	}
}
addLootGroupTemplate("buddy_reward", buddy_reward)
