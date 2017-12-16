rev_gungan_boss = Creature:new {
	objectName = "@mob/creature_names:gungan_boss",
	randomNameType = NAME_GENERIC_TAG,
	socialGroup = "gungan",
	faction = "gungan",
	level = 100,
	chanceHit = 15,
	damageMin = 1700,
	damageMax = 2200,
	baseXp = 1426,
	baseHAM = 724100,
	baseHAMmax = 945000,
	armor = 1,
	resists = {20,20,0,35,35,-1,-1,-1,20},
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
	creatureBitmask = PACK,
	optionsBitmask = 128,
	diet = HERBIVORE,

	templates = {"object/mobile/gungan_male.iff"},
	lootGroups = {
	},
	weapons = {"rebel_weapons_medium"},
	conversationTemplate = "",
	attacks = merge(brawlermaster,marksmanmaster)
}

CreatureTemplates:addCreatureTemplate(rev_gungan_boss, "rev_gungan_boss")
