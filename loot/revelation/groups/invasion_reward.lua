-- Author: Matthias Muente (matthias.muente@gmx.de)
-- https://revelationonline.net 

invasion_reward = {
	description = "",
	minimumLevel = 0,
	maximumLevel = 0,
	lootItems = {
		{itemTemplate = "rebel_house_lootschem", weight = 2500000},
		{itemTemplate = "emperor_house_lootschem", weight = 2500000},
		{itemTemplate = "vehicle_house_lootschem", weight = 2500000},
		{itemTemplate = "hangar_house_lootschem", weight = 2500000},
	}
}
addLootGroupTemplate("invasion_reward", invasion_reward)