-- Author: Matthias Muente (matthias.muente@gmx.de)
-- https://revelationonline.net 

nightsister_wearable = {
	description = "",
	minimumLevel = 0,
	maximumLevel = 0,
	lootItems = {
		{itemTemplate = "ns_dress", weight = 1000000},
		{itemTemplate = "ns_hat_01", weight = 1000000},
		{itemTemplate = "ns_hat_02", weight = 1000000},
		{itemTemplate = "ns_hat_03", weight = 1000000},
		{itemTemplate = "ns_boots", weight = 1000000},
		{itemTemplate = "ns_pants_01", weight = 1000000},
		{itemTemplate = "ns_pants_02", weight = 1000000},
		{itemTemplate = "ns_shirt_01", weight = 1000000},
		{itemTemplate = "ns_shirt_02", weight = 1000000},
		{itemTemplate = "ns_shirt_03", weight = 1000000},
	}
}

addLootGroupTemplate("nightsister_wearable", nightsister_wearable)
