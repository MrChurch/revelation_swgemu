-- Author: Matthias Muente (matthias.muente@gmx.de)
-- https://revelationonline.net

widowmaker_aggressor_low = Creature:new {
	objectName = "",
	customName = "Spider Agressor",
	socialGroup = "spider",
	faction = "",
	level = 80,
	chanceHit = 2,
	damageMin = 2150,
	damageMax = 3050,
	baseXp = 10000,
	baseHAM = 17675,
	baseHAMmax = 23825,
	armor = 0,
	resists = {30,30,30,30,30,30,30,-1,-1},
	meatType = "meat_insect",
	meatAmount = 40,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + HERD + STALKER,
	optionsBitmask = 128,
	diet = CARNIVORE,

	templates = {"object/mobile/nightspider_aggressor.iff"},
	scale = 0.55,
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"creatureareacombo","stateAccuracyBonus=55"},
		{"creatureareapoison","stateAccuracyBonus=55"},
	}
}

CreatureTemplates:addCreatureTemplate(widowmaker_aggressor_low, "widowmaker_aggressor_low")
