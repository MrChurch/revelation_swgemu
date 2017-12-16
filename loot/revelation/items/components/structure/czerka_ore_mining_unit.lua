-- www.revelationonline.net
-- Author: matthias.muente@gmx.de

czerka_ore_mining_unit = {
	minimumLevel = 0,
	maximumLevel = -1,
	customObjectName = "Czerka Ore Mining Unit",
	directObjectTemplate = "object/tangible/component/structure/ore_mining_unit.iff",
	craftingValues = {
		{"hitpoints",2500,2500,0},
		{"extractrate",16,16,0},
		{"useCount",2,2,0},
	},
	customizationStringNames = {},
	customizationValues = {}
}

addLootItemTemplate("czerka_ore_mining_unit", czerka_ore_mining_unit)