-- Author: Matthias Muente (matthias.muente@gmx.de)
-- https://revelationonline.net

widowmaker_baby = Creature:new {
	objectName = "",
	customName = "a Spider baby",
	socialGroup = "spider",
	faction = "",
	level = 50,
	chanceHit = 1,
	damageMin = 1450,
	damageMax = 2650,
	baseXp = 5000,
	baseHAM = 11270,
	baseHAMmax = 18330,
	armor = 0,
	resists = {0,0,0,0,0,0,0,-1,-1},
	meatType = "meat_insect",
	meatAmount = 30,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + HERD + KILLER,
	optionsBitmask = 128,
	diet = CARNIVORE,

	templates = {"object/mobile/nightspider.iff"},
	scale = .4,
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"creatureareacombo","stateAccuracyBonus=60"},
		{"creatureareapoison","stateAccuracyBonus=60"},
	}
}

CreatureTemplates:addCreatureTemplate(widowmaker_baby, "widowmaker_baby")
