--Copyright (C) 2015 <www.revelationonline.net> Author genesis@revelationonline.net





object_revelation_tangible_wearables_armor_stormtrooper_armor_stormtrooper_helmet_gcw = object_revelation_tangible_wearables_armor_stormtrooper_shared_armor_stormtrooper_helmet_gcw:new {
	templateType = ARMOROBJECT,

	objectMenuComponent = {"cpp", "ArmorObjectMenuComponent"},	

	faction = "Imperial",

	playerRaces = { "object/creature/player/human_male.iff",
				"object/creature/player/human_female.iff",
				"object/creature/player/zabrak_male.iff",
				"object/creature/player/rodian_male.iff",
				"object/creature/player/zabrak_female.iff",
				"object/mobile/vendor/human_female.iff",
				"object/mobile/vendor/human_male.iff",
				"object/mobile/vendor/zabrak_female.iff",
				"object/mobile/vendor/zabrak_male.iff" },
	
	-- Damage types in WeaponObject
	vulnerability = ACID + STUN + LIGHTSABER,

	-- These are default Blue Frog stats
	healthEncumbrance = 15,
	actionEncumbrance = 16,
	mindEncumbrance = 225,

	-- LIGHT, MEDIUM, HEAVY
	rating = LIGHT,

	maxCondition = 45000,
	
	kinetic = 30,
	energy = 30,
	electricity = 30,
	stun = 0,
	blast = 30,
	heat = 30,
	cold = 30,
	acid = 0,
	lightSaber = 0,

	numberExperimentalProperties = {1, 1, 1, 1, 2, 2, 2, 2, 2, 1, 1, 2, 1},
	experimentalProperties = {"XX", "XX", "XX", "XX", "OQ", "SR", "OQ", "UT", "MA", "OQ", "MA", "OQ", "MA", "OQ", "XX", "XX", "OQ", "SR", "XX"},
	experimentalWeights = {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1},
	experimentalGroupTitles = {"null", "null", "null", "exp_durability", "exp_quality", "exp_resistance", "exp_durability", "exp_durability", "exp_durability", "null", "null", "exp_resistance", "null"},
	experimentalSubGroupTitles = {"null", "null", "sockets", "hit_points", "armor_effectiveness", "armor_integrity", "armor_health_encumbrance", "armor_action_encumbrance", "armor_mind_encumbrance", "armor_rating", "armor_special_type", "armor_special_effectiveness", "armor_special_integrity"},
	experimentalMin = {0, 0, 0, 1000, 1, 30000, 25, 22, 300, 1, 0, 0, 0},
	experimentalMax = {0, 0, 0, 1000, 40, 50000, 15, 13, 180, 1, 0, 0, 0},
	experimentalPrecision = {0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0},
	experimentalCombineType = {0, 0, 4, 1, 1, 1, 1, 1, 1, 4, 4, 4, 1},
}

ObjectTemplates:addTemplate(object_revelation_tangible_wearables_armor_stormtrooper_armor_stormtrooper_helmet_gcw, "object/tangible/wearables/armor/stormtrooper/armor_stormtrooper_helmet_gcw.iff")
