killian_kimogila_low = Creature:new {
	objectName = "@mob/creature_names:giant_dune_kimogila",
	socialGroup = "kimogila",
	faction = "",
	level = 150,
	chanceHit = 20,
	damageMin = 2095,
	damageMax = 2800,
	baseXp = 35000,
	baseHAM = 34000,
	baseHAMmax = 44000,
	armor = 1,
	resists = {45,35,35,65,-1,-1,65,65,-1},
	meatType = "meat_carnivore",
	meatAmount = 1000,
	hideType = "hide_leathery",
	hideAmount = 1000,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = 128,
	diet = CARNIVORE,

	templates = {"object/mobile/giant_dune_kimogila.iff"},
	scale = 0.4,
	lootGroups = {
	 {
	    groups = {
				{group = "giant_dune_kimo_common", chance = 3500000},
				{group = "kimogila_common", chance = 6500000},
			},
			lootChance = 4060000
		}
	},
	weapons = {},
	conversationTemplate = "",
	attacks = {
            {"creatureareableeding","stateAccuracyBonus=85"},
            {"creatureareapoison","stateAccuracyBonus=85"},
	}
}

CreatureTemplates:addCreatureTemplate(killian_kimogila_low, "killian_kimogila_low")
