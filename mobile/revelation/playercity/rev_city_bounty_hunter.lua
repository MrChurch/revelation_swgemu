rev_city_bounty_hunter = Creature:new {
	objectName = "@mob/creature_names:bounty_hunter",
	randomNameType = NAME_GENERIC_TAG,
	socialGroup = "",
	faction = "",
	level = 99,
	chanceHit = 1,
	damageMin = 645,
	damageMax = 1000,
	baseXp = 9243,
	baseHAM = 24000,
	baseHAMmax = 30000,
	armor = 0,
	resists = {20,20,10,10,10,10,10,-1,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = NONE,
	creatureBitmask = NONE,
	optionsBitmask = 128,
	diet = HERBIVORE,

	templates = {"object/mobile/rev_city_dressed_bounty_hunter_zabrak_female_01.iff"},
	lootGroups = {},
	weapons = {"pirate_weapons_heavy"},
	conversationTemplate = "",
	attacks = {
	}
}

CreatureTemplates:addCreatureTemplate(rev_city_bounty_hunter, "rev_city_bounty_hunter")