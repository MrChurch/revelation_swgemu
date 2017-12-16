-- www.revelationonline.net
-- Author: matthias.muente@gmx.de

czerka_heavy_harvesting_mechanism = {
	minimumLevel = 0,
	maximumLevel = -1,
	customObjectName = "Czerka Heavy Harvesting Mechanism",
	directObjectTemplate = "object/tangible/component/structure/heavy_harvesting_mechanism.iff",
	craftingValues = {
		{"hitpoints",2500,2500,0},
		{"extractrate",16,16,0},
		{"useCount",2,2,0},
	},
	customizationStringNames = {},
	customizationValues = {}
}

addLootItemTemplate("czerka_heavy_harvesting_mechanism", czerka_heavy_harvesting_mechanism)