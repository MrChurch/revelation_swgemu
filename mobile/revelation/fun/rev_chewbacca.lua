rev_chewbacca = Creature:new {
	objectName = "@mob/creature_names:chewbacca",
	socialGroup = "rebel",
	faction = "rebel",
	level = 150,
	chanceHit = 30,
	damageMin = 2920,
	damageMax = 3550,
	baseXp = 100000,
	baseHAM = 200000,
	baseHAMmax = 250000,
	armor = 0,
	resists = {90,90,90,90,90,90,90,90,35},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	pvpBitmask = ATTACKABLE + AGGRESSIVE,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = 128,
	diet = HERBIVORE,

	templates = {"object/mobile/chewbacca.iff"},
	lootGroups = {},
	weapons = {"chewbacca_weapons"},
	conversationTemplate = "",
	attacks = merge(marksmanmaster,riflemaster,brawlermaster,unarmedmaster)
}

CreatureTemplates:addCreatureTemplate(rev_chewbacca, "rev_chewbacca")