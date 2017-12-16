-- www.revelationonline.net
-- author matthias.muente@gmx.de

snowarmor_rebel_bicep_l = {
	minimumLevel = 0,
	maximumLevel = -1,
	customObjectName = "",
	directObjectTemplate = "object/tangible/wearables/armor/rebel_snow/armor_rebel_snow_bicep_l.iff",

	craftingValues = {
		{"armor_rating",1,1,0},
		{"armor_effectiveness",45,45,0},
		{"kineticeffectiveness",70,70,0},
		{"energyeffectiveness",25,25,0},
		{"heateffectiveness",25,25,0},
		{"restraineffectiveness",30,30,0},
		{"stuneffectiveness",40,40,0},
		{"armor_integrity",50000,50000,0},
		{"armor_health_encumbrance",30,30,0},
		{"armor_action_encumbrance",30,30,0},
		{"armor_mind_encumbrance",20,20,0},
	},
	skillMods = {
		{"blind_defense",4},
		{"knockdown_defense",4},
	},
	junkDealerTypeNeeded = JUNKARMOUR,
	junkMinValue = 55,
	junkMaxValue = 110
}

addLootItemTemplate("snowarmor_rebel_bicep_l", snowarmor_rebel_bicep_l)
