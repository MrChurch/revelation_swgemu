-- www.revelationonline.net
-- author matthias.muente@gmx.de

czerka_captain_ring = {
	minimumLevel = 0,
	maximumLevel = -1,
	customObjectName = "Czerka Captain Ring",
	directObjectTemplate = "object/tangible/wearables/ring/ring_nightsister.iff",
	craftingValues = {
	},
	maxCondition = 1000,
	customizationStringNames = {},
	customizationValues = {},
	skillMods = {{"polearm_accuracy", 10}, {"polearm_speed", 5}, {"onehandmelee_accuracy", 10}, {"onehandmelee_damage", 10}, {"blind_defense", 10}, {"dizzy_defense", 5},  {"knockdown_defense", 5}},
	
}

addLootItemTemplate("czerka_captain_ring", czerka_captain_ring)