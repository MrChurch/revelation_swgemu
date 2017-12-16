mystery_jacket_ace_rebel = {
	minimumLevel = 0,
	maximumLevel = -1,
	customObjectName = "Mystery Rebel Ace Jacket",
	directObjectTemplate = "object/tangible/wearables/jacket/jacket_jedi_rebel_ace.iff",
	craftingValues = {},
	customizationStringNames = {},
	customizationValues = {},
	junkDealerTypeNeeded = JUNKCLOTHESANDJEWELLERY,
	junkMinValue = 1000,
	junkMaxValue = 2000,
	
	skillMods = {
		{"jedi_state_defense", 4},
		{"jedi_toughness", 4},
		{"onehandlightsaber_speed", 4},
		{"twohandlightsaber_speed", 4},
		{"polearmlightsaber_speed", 4},
	},
}

addLootItemTemplate("mystery_jacket_ace_rebel", mystery_jacket_ace_rebel)
