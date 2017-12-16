-- www.revelationonline.net
-- Author: matthias.muente@gmx.de

modified_infection_amplifier = {
	minimumLevel = 0,
	maximumLevel = -1,
	customObjectName = "Modified Infection Amplifier",
	directObjectTemplate = "object/tangible/component/chemistry/infection_amplifier_advanced.iff",
	craftingValues = {
		{"power",80,80,0},
		{"useCount",2,2,0},
	},
	customizationStringNames = {},
	customizationValues = {}
}

addLootItemTemplate("modified_infection_amplifier", modified_infection_amplifier)