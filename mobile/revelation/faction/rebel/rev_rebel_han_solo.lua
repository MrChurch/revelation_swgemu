rev_rebel_han_solo = Creature:new {
	objectName = "@mob/creature_names:han_solo",
	socialGroup = "rebel",
	faction = "rebel",
	level = 250,
	chanceHit = 30,
	damageMin = 2420,
	damageMax = 3150,
	baseXp = 250000,
	baseHAM = 600000,
	baseHAMmax = 750000,
	armor = 1,
	resists = {70,90,90,70,90,90,70,90,45},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = ATTACKABLE + AGGRESSIVE,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = 128,
	diet = HERBIVORE,

	templates = {"object/mobile/han_solo.iff"},
	lootGroups = {},
	weapons = {"han_solo_weapons"},
	conversationTemplate = "",
	attacks = merge(marksmanmaster,pistolermaster,brawlermaster,unarmedmaster)
}

CreatureTemplates:addCreatureTemplate(rev_rebel_han_solo, "rev_rebel_han_solo")