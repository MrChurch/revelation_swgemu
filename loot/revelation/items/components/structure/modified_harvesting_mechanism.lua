-- www.revelationonline.net
-- Author: matthias.muente@gmx.de

modified_harvesting_mechanism = {
	minimumLevel = 0,
	maximumLevel = -1,
	customObjectName = "Modified Harvesting Mechanism",
	directObjectTemplate = "object/tangible/component/structure/harvesting_mechanism.iff",
	craftingValues = {
		{"hitpoints",1000,1000,0},
		{"extractrate",7,7,0},
		{"useCount",1,1,0},
	},
	customizationStringNames = {},
	customizationValues = {}
}

addLootItemTemplate("modified_harvesting_mechanism", modified_harvesting_mechanism)