rev_peko_peko_albatross = Creature:new {
	objectName = "",
	customName = "<< Peko Peko Brutemother >>",
	socialGroup = "peko",
	faction = "",
	level = 300,
	chanceHit = 17.75,
	damageMin = 2245,
	damageMax = 3100,
	baseXp = 14694,
	baseHAM = 274000,
	baseHAMmax = 391000,
	armor = 2,
	resists = {200,180,130,180,15,190,25,25,15},
	meatType = "meat_avian",
	meatAmount = 5000,
	hideType = "hide_wooly",
	hideAmount = 5000,
	boneType = "bone_avian",
	boneAmount = 5000,
	milk = 0,
	tamingChance = 0,
	ferocity = 8,
	pvpBitmask = ATTACKABLE,
	creatureBitmask = PACK + HERD + KILLER,
	optionsBitmask = 128,
	diet = CARNIVORE,
	templates = {"object/mobile/peko_peko_hue.iff"},
	scale = 3.5,
	lootGroups = {
	 	{
			groups = {
				{group = "pekopeko_egg", chance = 10000000}
			},
			lootChance = 10000000,
		},
		{
			groups = {
				{group = "pekopeko_egg", chance = 10000000}
			},
			lootChance = 10000000,
		},
		{
			groups = {
				{group = "pekopeko_egg", chance = 10000000}
			},
			lootChance = 10000000,
		},
						{
			groups = {
				{group = "peko_albatross", chance = 10000000}
			},
			lootChance = 10000000,
		},
	},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"creatureareacombo","stateAccuracyBonus=75"},
		{"creatureareaknockdown",""}
	}
}

CreatureTemplates:addCreatureTemplate(rev_peko_peko_albatross, "rev_peko_peko_albatross")
