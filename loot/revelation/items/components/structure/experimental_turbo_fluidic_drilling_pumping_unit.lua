-- www.revelationonline.net
-- Author: matthias.muente@gmx.de

experimental_turbo_fluidic_drilling_pumping_unit = {
	minimumLevel = 0,
	maximumLevel = -1,
	customObjectName = "Experimental Turbo Fluidic Drilling Pump",
	directObjectTemplate = "object/tangible/component/structure/turbo_fluidic_drilling_pumping_unit.iff",
	craftingValues = {
		{"hitpoints",2500,2500,0},
		{"extractrate",12,12,0},
		{"useCount",2,2,0},
	},
	customizationStringNames = {},
	customizationValues = {}
}

addLootItemTemplate("experimental_turbo_fluidic_drilling_pumping_unit", experimental_turbo_fluidic_drilling_pumping_unit)