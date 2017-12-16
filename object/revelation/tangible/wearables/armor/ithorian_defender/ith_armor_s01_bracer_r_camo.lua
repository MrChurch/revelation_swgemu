--Copyright (C) 2015 <www.revelationonline.net> Author genesis@revelationonline.net





object_revelation_tangible_wearables_armor_ithorian_defender_ith_armor_s01_bracer_r_camo = object_revelation_tangible_wearables_armor_ithorian_defender_shared_ith_armor_s01_bracer_r_camo:new {

	templateType = ARMOROBJECT,
	objectMenuComponent = {"cpp", "ArmorObjectMenuComponent"},
	playerRaces = { "object/creature/player/ithorian_male.iff",
				"object/creature/player/ithorian_female.iff",
				"object/mobile/vendor/ithorian_female.iff",
				"object/mobile/vendor/ithorian_male.iff" },

	-- Damage types in WeaponObject
	vulnerability = STUN + LIGHTSABER,

	specialResists = ELECTRICITY,

	-- These are default Blue Frog stats
	healthEncumbrance = 80,
	actionEncumbrance = 80,
	mindEncumbrance = 80,

	maxCondition = 30000,

	-- LIGHT, MEDIUM, HEAVY
	rating = LIGHT,

	kinetic = 50,
	energy = 50,
	electricity = 75,
	stun = 15,
	blast = 50,
	heat = 50,
	cold = 50,
	acid = 50,
	lightSaber = 0,

	numberExperimentalProperties = {1, 1, 1, 2, 2, 2, 2, 2, 2, 1, 1, 2, 1},
	experimentalProperties = {"XX", "XX", "XX", "OQ", "SR", "OQ", "SR", "OQ", "UT", "MA", "OQ", "MA", "OQ", "MA", "OQ", "XX", "XX", "OQ", "SR", "XX"},
	experimentalWeights = {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1},
	experimentalGroupTitles = {"null", "null", "null", "exp_durability", "exp_quality", "exp_resistance", "exp_durability", "exp_durability", "exp_durability", "null", "null", "exp_resistance", "null"},
	experimentalSubGroupTitles = {"null", "null", "sockets", "hit_points", "armor_effectiveness", "armor_integrity", "armor_health_encumbrance", "armor_action_encumbrance", "armor_mind_encumbrance", "armor_rating", "armor_special_type", "armor_special_effectiveness", "armor_special_integrity"},
	experimentalMin = {0, 0, 0, 1000, 1, 30000, 25, 22, 25, 1, 0, 0, 0},
	experimentalMax = {0, 0, 0, 1000, 40, 50000, 15, 13, 15, 1, 0, 0, 0},
	experimentalPrecision = {0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0},
	experimentalCombineType = {0, 0, 4, 1, 1, 1, 1, 1, 1, 4, 4, 4, 1},
}

ObjectTemplates:addTemplate(object_revelation_tangible_wearables_armor_ithorian_defender_ith_armor_s01_bracer_r_camo, "object/tangible/wearables/armor/ithorian_defender/ith_armor_s01_bracer_r_camo.iff")
