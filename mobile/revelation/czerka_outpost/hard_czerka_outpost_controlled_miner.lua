hard_czerka_outpost_controlled_miner = Creature:new {
	objectName = "",
	customName = "Mindcontrolled Miner",
	socialGroup = "dungeon_creature",
	faction = "",
	level = 65,
	chanceHit = 45.0,
	damageMin = 590,
	damageMax = 910,
	baseXp = 292,
	baseHAM = 7810,
	baseHAMmax = 14990,
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
	pvpBitmask = ATTACKABLE + ENEMY,
	creatureBitmask = PACK,
	optionsBitmask = 128,
	diet = HERBIVORE,

	templates = {
		"object/mobile/dressed_kobola_miner_human_male_01.iff",
		"object/mobile/dressed_kobola_miner_human_female_01.iff"},
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = merge(brawlermaster,fencermaster)
}

CreatureTemplates:addCreatureTemplate(hard_czerka_outpost_controlled_miner, "hard_czerka_outpost_controlled_miner")
