-- Author: Matthias Muente (matthias.muente@gmx.de)
-- https://revelationonline.net 

czerka_outpost_at_st = Creature:new {
	objectName = "",
	customName = "Experimental AT ST",
	socialGroup = "czerka_outpost",
	faction = "czerka_outpost",
	level = 130,
	chanceHit = 5.75,
	damageMin = 1070,
	damageMax = 1650,
	baseXp = 11859,
	baseHAM = 85000,
	baseHAMmax = 120000,
	armor = 2,
	resists = {35,35,35,100,100,35,35,100,35},
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
	creatureBitmask = KILLER,
	optionsBitmask = 128,
	diet = NONE,
	scale = 1.5,

	templates = {"object/mobile/atst.iff"},
	lootGroups = {},
	conversationTemplate = "",
	defaultAttack = "defaultdroidattack",
	defaultWeapon = "object/weapon/ranged/vehicle/vehicle_atst_ranged.iff",
}

CreatureTemplates:addCreatureTemplate(czerka_outpost_at_st, "czerka_outpost_at_st")

