widowmaker = Creature:new {
	objectName = "",
	customName = "Widowmaker <A Mutated Spider>",
	socialGroup = "spider",
	pvpFaction = "",
	faction = "",
	level = 800,
	chanceHit = 300,
	damageMin = 7000,
	damageMax = 8000,
	baseXp = 750000,
	baseHAM = 2100000,
	baseHAMmax = 2300000,
	armor = 2,
	resists = {45,45,45,75,75,55,25,-1,-1},
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
	creatureBitmask = STALKER,
	optionsBitmask = 128,
	diet = HERBIVORE,

	templates = {"object/mobile/beast_master/bm_mutated_hermit_spider.iff"},
	scale = 3.8,
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"creatureareapoison","stateAccuracyBonus=175"},
		{"creatureareacombo","stateAccuracyBonus=175"}
	}
}

CreatureTemplates:addCreatureTemplate(widowmaker, "widowmaker")
