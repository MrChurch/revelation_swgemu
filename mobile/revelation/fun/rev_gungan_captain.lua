rev_gungan_captain = Creature:new {
	objectName = "@mob/creature_names:gungan_captain",
	randomNameType = NAME_GENERIC_TAG,
	socialGroup = "gungan",
	faction = "gungan",
	level = 80,
	chanceHit = 10,
	damageMin = 1400,
	damageMax = 2410,
	baseXp = 2006,
	baseHAM = 75400,
	baseHAMmax = 86600,
	armor = 0,
	resists = {15,15,15,-1,30,15,15,-1,-1},
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
	creatureBitmask = PACK + KILLER,
	optionsBitmask = 128,
	diet = HERBIVORE,

	templates = {"object/mobile/gungan_male.iff"},
	lootGroups = {
	},
	weapons = {"rebel_weapons_medium"},
	conversationTemplate = "",
	attacks = merge(brawlermaster,marksmanmaster)
}

CreatureTemplates:addCreatureTemplate(rev_gungan_captain, "rev_gungan_captain")
