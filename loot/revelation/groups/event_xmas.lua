-- Author: Matthias Muente (matthias.muente@gmx.de)
-- https://revelationonline.net 

event_xmas = {
	description = "",
	minimumLevel = 0,
	maximumLevel = 0,
	lootItems = {
		{itemTemplate = "bespin_shelv_schem", weight = 300000},
		{itemTemplate = "bespin_sculpture_schem", weight = 300000},
		{itemTemplate = "bespin_lamp_off_schem", weight = 300000},
		{itemTemplate = "bespin_lamp_on_schem", weight = 300000},
		{itemTemplate = "bespin_house_schem", weight = 5000},
		{itemTemplate = "bespin_sconce_off_schem", weight = 295000},
		{itemTemplate = "bespin_sconce_on_schem", weight = 300000},
		{itemTemplate = "xmas_pr_lifeday_bunting", weight = 4100000},
		{itemTemplate = "xmas_pr_lifeday_decorated_tree", weight = 4100000},
	}
}
addLootGroupTemplate("event_xmas", event_xmas)
