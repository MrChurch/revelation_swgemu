rev_merek_avenger = Creature:new {
	objectName = "@mob/creature_names:delirious_merek_avenger",
	socialGroup = "merek",
	faction = "",
	level = 110,
	chanceHit = 95,
	damageMin = 2920,
	damageMax = 3650,
	baseXp = 24057,
	baseHAM = 45000,
	baseHAMmax = 62000,
	armor = 2,
	resists = {55,55,60,55,55,70,55,55,35},
	meatType = "meat_wild",
	meatAmount = 65,
	hideType = "hide_leathery",
	hideAmount = 45,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0.25,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + STALKER,
	optionsBitmask = 128,
	diet = CARNIVORE,

	templates = {"object/mobile/merek_hue.iff"},
	lootGroups = {},
	weapons = {"creature_spit_small_yellow"},
	conversationTemplate = "",
	attacks = {
		{"intimidationattack",""},
		{"stunattack",""}
	}
}

CreatureTemplates:addCreatureTemplate(rev_merek_avenger, "rev_merek_avenger")
