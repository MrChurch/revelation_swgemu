-- Author: Matthias Muente (matthias.muente@gmx.de)
-- https://revelationonline.net

widowmaker_hunter_low = Creature:new {
	objectName = "",
	customName = "Spider Hunter",
	socialGroup = "spider",
	faction = "",
	level = 110,
	chanceHit = 25,
	damageMin = 2600,
	damageMax = 3500,
	baseXp = 20000,
	baseHAM = 69500,
	baseHAMmax = 71600,
	armor = 2,
	resists = {45,45,45,45,35,35,35,-1,-1},
	meatType = "meat_insect",
	meatAmount = 100,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + STALKER,
	optionsBitmask = 128,
	diet = CARNIVORE,

	templates = {"object/mobile/gaping_spider_recluse.iff"},
	controlDeviceTemplate = "object/intangible/pet/gaping_spider_hue.iff",
	scale = 1.6,
	lootGroups = {},
	weapons = {"creature_spit_small_toxicgreen"},
	conversationTemplate = "",
	attacks = {
		{"creatureareapoison","stateAccuracyBonus=65"},
		{"strongpoison","stateAccuracyBonus=65"},
		{"creatureareaknockdown","stateAccuracyBonus=65"},
	}
}

CreatureTemplates:addCreatureTemplate(widowmaker_hunter_low, "widowmaker_hunter_low")
