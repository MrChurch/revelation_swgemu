force_crystal_alumn = {
	minimumLevel = 0,
	maximumLevel = -1,
	customObjectName = "Alumn Mine Crystal",
	directObjectTemplate = "object/tangible/component/weapon/lightsaber/lightsaber_module_force_crystal.iff",
	craftingValues = {
		{"mindamage",15,30,0},
		{"maxdamage",35,45,0},
		{"attackspeed",1,-1,5},
		{"woundchance",4,8,5},
		{"hitpoints",800,1200,0},
		{"attackhealthcost",0,9,0},
		{"attackactioncost",0,9,0},
		{"attackmindcost",0,9,0},
		{"forcecost",2,9.9,0},
		{"color",31,31,0},
		{"quality",5,5,0},
	},
	customizationStringNames = {},
	customizationValues = {}
}

addLootItemTemplate("force_crystal_alumn", force_crystal_alumn)