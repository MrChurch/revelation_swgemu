rev_godzilla = Creature:new {
	objectName = "",
	customName = "<< Godzilla >>",
	socialGroup = "dungeon_creature",
	faction = "",
	level = 300,
	chanceHit = 50,
	damageMin = 2690,
	damageMax = 4490,
	baseXp = 25000,
	baseHAM = 650000,
	baseHAMmax = 800000,
	armor = 2,
	resists = {45,95,45,45,45,25,25,25,65},
	meatType = "meat_herbivore",
	meatAmount = 2000,
	hideType = "hide_leathery",
	hideAmount = 2000,
	boneType = "bone_mammal",
	boneAmount = 2000,
	milk = 0,
	tamingChance = 0,
	ferocity = 16,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = 128,
	diet = HERBIVORE,

	templates = {"object/mobile/kwi.iff"},
	scale = 6.0,
	lootGroups = {
	 	{
			groups = {
				{group = "godzilla_loot", chance = 10000000}
			},
			lootChance = 10000000,
		},
	 	{
			groups = {
				{group = "godzilla_loot", chance = 10000000}
			},
			lootChance = 10000000,
		},
	 	{
			groups = {
				{group = "godzilla_loot", chance = 10000000}
			},
			lootChance = 10000000,
		},	
		{
			groups = {
				{group = "rev_skill_buffs", chance = 10000000}
			},
			lootChance = 10000000,
		},
	},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"stunattack","stateAccuracyBonus=75"},
		{"creatureareableeding","stateAccuracyBonus=125"},
		{"creatureareacombo","stateAccuracyBonus=125"}	
	}
}

CreatureTemplates:addCreatureTemplate(rev_godzilla, "rev_godzilla")
