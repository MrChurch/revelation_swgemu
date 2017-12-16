godzilla_segment = {
	minimumLevel = 0,
	maximumLevel = -1,
	customObjectName = "Gozilla Segment",
	directObjectTemplate = "object/tangible/component/armor/armor_segment_padded_rancor.iff",
	craftingValues = {
		{"armor_special_type",0,0,0},
		{"armor_effectiveness",30,40,10},
		{"armor_integrity",14000,18000,0},
		{"heateffectiveness",30,40,10},
		{"coldeffectiveness",30,40,10},
		{"stuneffectiveness",20,30,10},
		{"blasteffectiveness",20,30,10},		
		{"restraineffectiveness",20,25,0},
		{"armor_health_encumbrance",10,0,0},
		{"armor_action_encumbrance",10,0,0},
		{"armor_mind_encumbrance",10,0,0},
		{"useCount",4,8,0},
	},
	customizationStringNames = {},
	customizationValues = {}		
}

addLootItemTemplate("godzilla_segment", godzilla_segment)