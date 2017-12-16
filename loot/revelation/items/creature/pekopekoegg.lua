pekopekoegg = {
	minimumLevel = 0,
	maximumLevel = -1,
	customObjectName = "A Peko Peko Egg",
	directObjectTemplate = "object/tangible/component/weapon/lightsaber/lightsaber_module_krayt_dragon_pearl.iff",
	craftingValues = {
		{"mindamage",15,35,0},
		{"maxdamage",30,50,0},
		{"attackspeed",0.5,-1,5},
		{"woundchance",4,8,5},
		{"hitpoints",1000,1400,0},
		{"attackhealthcost",0,11,0},
		{"attackactioncost",0,11,0},
		{"attackmindcost",0,11,0},
		{"forcecost",3,9.9,0},
		{"color",31,31,0},
		{"quality",6,6,0},
	},
	customizationStringNames = {},
	customizationValues = {}
}

addLootItemTemplate("pekopekoegg", pekopekoegg)