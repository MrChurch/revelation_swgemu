-- Author: Matthias Muente (matthias.muente@gmx.de)
-- https://revelationonline.net

widowmaker_soldier = Creature:new {
	objectName = "",
	customName = "Spider Soldier",
	socialGroup = "spider",
	faction = "",
	level = 100,
	chanceHit = 5,
	damageMin = 3200,
	damageMax = 3350,
	baseXp = 10000,
	baseHAM = 23675,
	baseHAMmax = 33825,
	armor = 1,
	resists = {35,35,35,50,40,25,25,-1,-1},
	meatType = "meat_insect",
	meatAmount = 10,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + HERD,
	optionsBitmask = 128,
	diet = CARNIVORE,

	templates = {"object/mobile/hermit_spider_queen.iff"},
	scale = 1.4,
	lootGroups = {},
	weapons = {"creature_spit_small_toxicgreen"},
	conversationTemplate = "",
	attacks = {
		{"creatureareacombo","stateAccuracyBonus=95"},
		{"blindattack","stateAccuracyBonus=75"},
		{"creatureareapoison","stateAccuracyBonus=95"},
	}
}

CreatureTemplates:addCreatureTemplate(widowmaker_soldier, "widowmaker_soldier")
