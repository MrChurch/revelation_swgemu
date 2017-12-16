mystery_hat_twilek_s04_loot = {
	minimumLevel = 0,
	maximumLevel = -1,
	customObjectName = "",
	directObjectTemplate = "object/tangible/wearables/hat/jedi_hat_twilek_s04.iff",
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

addLootItemTemplate("mystery_hat_twilek_s04_loot", mystery_hat_twilek_s04_loot)
