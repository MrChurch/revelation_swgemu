czerka_outpost_scientist = Creature:new {
	objectName = "",
	customName = "Czerka Scientist",
	socialGroup = "czerka_outpost",
	faction = "czerka_outpost",
	level = 25,
	chanceHit = 1.0,
	damageMin = 290,
	damageMax = 310,
	baseXp = 292,
	baseHAM = 7810,
	baseHAMmax = 9990,
	armor = 0,
	resists = {0,0,0,0,0,0,0,-1,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = ATTACKABLE,
	creatureBitmask = NONE,
	optionsBitmask = 128,
	diet = HERBIVORE,

	templates = {
		"object/mobile/warren_insane_comp_sci.iff"},
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = brawlernovice
}

CreatureTemplates:addCreatureTemplate(czerka_outpost_scientist, "czerka_outpost_scientist")
