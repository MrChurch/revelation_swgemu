-- Author: Matthias Muente (matthias.muente@gmx.de)
-- https://revelationonline.net

widowmaker_webber = Creature:new {
	objectName = "",
	customName = "Spider Webber",
	socialGroup = "spider",
	faction = "",
	level = 115,
	chanceHit = 10,
	damageMin = 3150,
	damageMax = 3950,
	baseXp = 15000,
	baseHAM = 73500,
	baseHAMmax = 93500,
	armor = 1,
	resists = {60,60,60,30,30,30,30,-1,-1},
	meatType = "meat_insect",
	meatAmount = 90,
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
	scale = 2.0,
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"creatureareacombo","stateAccuracyBonus=125"},
		{"strongpoison","stateAccuracyBonus=125"},
		{"creatureareapoison","stateAccuracyBonus=135"},
	}
}

CreatureTemplates:addCreatureTemplate(widowmaker_webber, "widowmaker_webber")
