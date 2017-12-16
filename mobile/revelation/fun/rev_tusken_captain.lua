rev_tusken_captain = Creature:new {
	objectName = "@mob/creature_names:tusken_captain",
	socialGroup = "tusken_raider",
	faction = "tusken_raider",
	level = 250,
	chanceHit = 95,
	damageMin = 2020,
	damageMax = 2350,
	baseXp = 20000,
	baseHAM = 465000,
	baseHAMmax = 532000,
	armor = 2,
	resists = {55,55,60,55,55,70,55,55,45},
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
	creatureBitmask = KILLER + PACK,
	optionsBitmask = 128,
	diet = HERBIVORE,

	templates = {"object/mobile/tusken_raider.iff"},
	lootGroups = {
	},
	weapons = {"tusken_weapons"},
	conversationTemplate = "",
	attacks = merge(marksmanmaster,brawlermaster,fencermaster,riflemanmaster)
}

CreatureTemplates:addCreatureTemplate(rev_tusken_captain, "rev_tusken_captain")
