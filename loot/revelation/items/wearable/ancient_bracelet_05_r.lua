-- www.revelationonline.net
-- author matthias.muente@gmx.de

ancient_bracelet_05_r = {
	minimumLevel = 0,
	maximumLevel = -1,
	customObjectName = "Ancient mystical Bracelet",
	directObjectTemplate = "object/tangible/wearables/bracelet/bracelet_s05_r.iff",
	craftingValues = {
	},
	customizationStringNames = {},
	customizationValues = {},
	skillMods = {
	   {"onehandlightsaber_accuracy", 15}, 
	   {"twohandlightsaber_accuracy", 15}, 
	   {"polearmlightsaber_accuracy", 15},
	   {"forcelightning_accuracy", 15}, 
	},
}

addLootItemTemplate("ancient_bracelet_05_r", ancient_bracelet_05_r)