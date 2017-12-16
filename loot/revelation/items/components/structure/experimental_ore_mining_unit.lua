-- www.revelationonline.net
-- Author: matthias.muente@gmx.de

experimental_ore_mining_unit = {
	minimumLevel = 0,
	maximumLevel = -1,
	customObjectName = "Experimental Ore Mining Unit",
	directObjectTemplate = "object/tangible/component/structure/ore_mining_unit.iff",
	craftingValues = {
		{"hitpoints",2500,2500,0},
		{"extractrate",12,12,0},
		{"useCount",2,2,0},
	},
	customizationStringNames = {},
	customizationValues = {}
}

addLootItemTemplate("experimental_ore_mining_unit", experimental_ore_mining_unit)