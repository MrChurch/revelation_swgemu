-- www.revelationonline.net
-- Author: matthias.muente@gmx.de

czerka_turbo_fluidic_drilling_pumping_unit = {
	minimumLevel = 0,
	maximumLevel = -1,
	customObjectName = "Czerka Turbo Fluidic Drilling Pump",
	directObjectTemplate = "object/tangible/component/structure/turbo_fluidic_drilling_pumping_unit.iff",
	craftingValues = {
		{"hitpoints",2500,2500,0},
		{"extractrate",16,16,0},
		{"useCount",2,2,0},
	},
	customizationStringNames = {},
	customizationValues = {}
}

addLootItemTemplate("czerka_turbo_fluidic_drilling_pumping_unit", czerka_turbo_fluidic_drilling_pumping_unit)