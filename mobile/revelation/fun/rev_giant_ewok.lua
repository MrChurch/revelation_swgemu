rev_giant_ewok = Creature:new {
	objectName = "@mob/creature_names:ewok_outcast",
	randomNameType = NAME_GENERIC_TAG,
	socialGroup = "self",
	faction = "gondula_tribe",
	level = 110,
	chanceHit = 95,
	damageMin = 3120,
	damageMax = 4350,
	baseXp = 24057,
	baseHAM = 245000,
	baseHAMmax = 362000,
	armor = 2,
	resists = {55,55,60,55,55,70,55,55,35},
	meatType = "",
	meatAmount = 0,
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
	diet = HERBIVORE,
	scale = 5.0,

	templates = {"object/mobile/dressed_ewok_m_04.iff"},
	lootGroups = {},
	weapons = {"ewok_weapons"},
	conversationTemplate = "",
	attacks = merge(riflemanmaster,brawlermaster,unarmedmaster)
}

CreatureTemplates:addCreatureTemplate(rev_giant_ewok, "rev_giant_ewok")
