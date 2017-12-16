-- Author: Matthias Muente (matthias.muente@gmx.de)
-- https://revelationonline.net

widowmaker_hunter = Creature:new {
	objectName = "",
	customName = "Spider Hunter",
	socialGroup = "spider",
	faction = "",
	level = 150,
	chanceHit = 25,
	damageMin = 3500,
	damageMax = 4500,
	baseXp = 20000,
	baseHAM = 119500,
	baseHAMmax = 131600,
	armor = 2,
	resists = {55,55,45,45,45,45,45,-1,-1},
	meatType = "meat_insect",
	meatAmount = 300,
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
		{"creatureareapoison","stateAccuracyBonus=115"},
		{"strongpoison","stateAccuracyBonus=115"},
		{"creatureareaknockdown","stateAccuracyBonus=115"},
	}
}

CreatureTemplates:addCreatureTemplate(widowmaker_hunter, "widowmaker_hunter")
