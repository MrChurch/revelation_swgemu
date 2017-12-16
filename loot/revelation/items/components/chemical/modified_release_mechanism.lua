-- www.revelationonline.net
-- Author: matthias.muente@gmx.de

modified_release_mechanism = {
	minimumLevel = 0,
	maximumLevel = -1,
	customObjectName = "Modified Release Mechanism",
	directObjectTemplate = "object/tangible/component/chemistry/release_mechanism_duration_advanced.iff",
	craftingValues = {
		{"power",80,80,0},
		{"useCount",2,2,0},
	},
	customizationStringNames = {},
	customizationValues = {}
}

addLootItemTemplate("modified_release_mechanism", modified_release_mechanism)