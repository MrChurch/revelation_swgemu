blodgeon_nightsister_sentinel = Creature:new {
	objectName = "@mob/creature_names:nightsister_sentinal",
	randomNameType = NAME_GENERIC_TAG,
	socialGroup = "dungeon_creature",
	faction = "",
	level = 125,
	chanceHit = 25,
	damageMin = 3545,
	damageMax = 4200,
	baseXp = 15000,
	baseHAM = 31000,
	baseHAMmax = 36000,
	armor = 1,
	resists = {45,45,45,100,100,100,100,100,-1},
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

	templates = {"object/mobile/dressed_dathomir_nightsister_sentinal.iff"},
	lootGroups = {},
	weapons = {"czerka_melee_weapons_heavy"},
	conversationTemplate = "",
	attacks = merge(pikemanmaster,brawlermaster)
}

CreatureTemplates:addCreatureTemplate(blodgeon_nightsister_sentinel, "blodgeon_nightsister_sentinel")
