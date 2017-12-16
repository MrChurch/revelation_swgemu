-- www.revelationonline.net
-- Author: matthias.muente@gmx.de

modified_fluidic_drilling_pumping_unit = {
	minimumLevel = 0,
	maximumLevel = -1,
	customObjectName = "Modified Fluidic Drilling Pump",
	directObjectTemplate = "object/tangible/component/structure/fluidic_drilling_pumping_unit.iff",
	craftingValues = {
		{"hitpoints",1000,1000,0},
		{"extractrate",7,7,0},
		{"useCount",1,1,0},
	},
	customizationStringNames = {},
	customizationValues = {}
}

addLootItemTemplate("modified_fluidic_drilling_pumping_unit", modified_fluidic_drilling_pumping_unit)