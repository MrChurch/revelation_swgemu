czerka_outpost_miner = Creature:new {
  objectName = "",
  customName = "Czerka Miner",
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
	creatureBitmask = PACK,
	optionsBitmask = 128,
	diet = HERBIVORE,

  templates = {
    "object/mobile/dressed_kobola_miner_human_male_01.iff",
    "object/mobile/dressed_kobola_miner_human_female_01.iff"},
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = brawlernovice
}

CreatureTemplates:addCreatureTemplate(czerka_outpost_miner, "czerka_outpost_miner")
