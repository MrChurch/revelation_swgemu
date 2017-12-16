-- www.revelationonline.net
-- Author: matthias.muente@gmx.de

experimental_heavy_harvesting_mechanism = {
	minimumLevel = 0,
	maximumLevel = -1,
	customObjectName = "Experimental Heavy Harvesting Mechanism",
	directObjectTemplate = "object/tangible/component/structure/heavy_harvesting_mechanism.iff",
	craftingValues = {
		{"hitpoints",2500,2500,0},
		{"extractrate",12,12,0},
		{"useCount",2,2,0},
	},
	customizationStringNames = {},
	customizationValues = {}
}

addLootItemTemplate("experimental_heavy_harvesting_mechanism", experimental_heavy_harvesting_mechanism)