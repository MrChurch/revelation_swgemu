-- www.revelationonline.net
-- Author: matthias.muente@gmx.de

modified_light_ore_mining_unit = {
	minimumLevel = 0,
	maximumLevel = -1,
	customObjectName = "Modified Ore Mining Unit",
	directObjectTemplate = "object/tangible/component/structure/light_ore_mining_unit.iff",
	craftingValues = {
		{"hitpoints",1000,1000,0},
		{"extractrate",7,7,0},
		{"useCount",1,1,0},
	},
	customizationStringNames = {},
	customizationValues = {}
}

addLootItemTemplate("modified_light_ore_mining_unit", modified_light_ore_mining_unit)