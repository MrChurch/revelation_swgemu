mystery_nightsister_hat_s02_loot = {
	minimumLevel = 0,
	maximumLevel = -1,
	customObjectName = "",
	directObjectTemplate = "object/tangible/wearables/hat/jedi_nightsister_hat_s02.iff",
	craftingValues = {},
	customizationStringNames = {},
	customizationValues = {},
	junkDealerTypeNeeded = JUNKCLOTHESANDJEWELLERY,
	junkMinValue = 1000,
	junkMaxValue = 2000,
	
	skillMods = {
		{"jedi_state_defense", 2},
		{"jedi_toughness", 2},
		{"onehandlightsaber_speed", 4},
		{"twohandlightsaber_speed", 4},
		{"polearmlightsaber_speed", 4},
	},
}

addLootItemTemplate("mystery_nightsister_hat_s02_loot", mystery_nightsister_hat_s02_loot)
