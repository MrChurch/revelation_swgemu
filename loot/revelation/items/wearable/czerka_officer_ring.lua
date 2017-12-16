-- www.revelationonline.net
-- author matthias.muente@gmx.de

czerka_officer_ring = {
	minimumLevel = 0,
	maximumLevel = -1,
	customObjectName = "Czerka Officer Ring",
	directObjectTemplate = "object/tangible/wearables/ring/ring_nightsister.iff",
	craftingValues = {
	},
	maxCondition = 1000,
	customizationStringNames = {},
	customizationValues = {},
	skillMods = {{"heavy_flame_thrower_accuracy", 10}, {"heavy_flame_thrower_speed", 5}, {"thrown_accuracy", 10}, {"thrown_speed", 5}, {"ranged_defense", 5}, {"melee_defense", 5},  {"knockdown_defense", 5}},
	
}

addLootItemTemplate("czerka_officer_ring", czerka_officer_ring)