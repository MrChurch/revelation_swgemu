-- www.revelationonline.net
-- author matthias.muente@gmx.de

czerka_mystery_ring = {
	minimumLevel = 0,
	maximumLevel = -1,
	customObjectName = "Czerka Mystery Ring",
	directObjectTemplate = "object/tangible/wearables/ring/ring_nightsister.iff",
	craftingValues = {
	},
	maxCondition = 1000,
	customizationStringNames = {},
	customizationValues = {},
	skillMods = {{"jedi_force_power_regen", 25}, {"blind_defense", 5}, {"dizzy_defense", 5},  {"knockdown_defense", 5}, {"forceweaken_accuracy", 5}, {"forcelightning_accuracy", 5}},
	
}

addLootItemTemplate("czerka_mystery_ring", czerka_mystery_ring)