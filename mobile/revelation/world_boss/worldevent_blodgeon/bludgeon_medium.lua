bludgeon_medium = Creature:new {
	objectName = "",
	customName = "Bludgeon <A Mutated Rancor>",
	socialGroup = "dungeon_creature",
	pvpFaction = "",
	faction = "",
	level = 300,
	chanceHit = 100,
	damageMin = 3645,
	damageMax = 5450,
	baseXp = 150000,
	baseHAM = 450000,
	baseHAMmax = 500000,
	armor = 2,
	resists = {45,45,15,45,45,45,65,15,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = KILLER + STALKER,
	optionsBitmask = 128,
	diet = HERBIVORE,

	templates = {"object/mobile/beast_master/bm_mutated_rancor.iff"},
	scale = 0.7,	
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"creatureareapoison","stateAccuracyBonus=100"},
		{"creatureareaknockdown","knockdownChance=120"}
	}
}

CreatureTemplates:addCreatureTemplate(bludgeon_medium, "bludgeon_medium")
