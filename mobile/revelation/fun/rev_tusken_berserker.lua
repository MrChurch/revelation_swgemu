rev_tusken_berserker = Creature:new {
	objectName = "@mob/creature_names:tusken_berserker",
	socialGroup = "tusken_raider",
	faction = "tusken_raider",
	level = 100,
	chanceHit = 55,
	damageMin = 1620,
	damageMax = 2150,
	baseXp = 3057,
	baseHAM = 42000,
	baseHAMmax = 52000,
	armor = 2,
	resists = {55,55,60,55,55,70,55,55,25},
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

	templates = {"object/mobile/tusken_raider.iff"},
	lootGroups = {
	},
	weapons = {"tusken_weapons"},
	conversationTemplate = "",
	attacks = merge(marksmanmaster,brawlermaster,fencermaster,riflemanmaster)
}

CreatureTemplates:addCreatureTemplate(rev_tusken_berserker, "rev_tusken_berserker")
