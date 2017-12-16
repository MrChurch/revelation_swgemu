easy_czerka_outpost_guard = Creature:new {
	objectName = "",
	customName = "Czerka Guard",
	socialGroup = "czerka_outpost",
	faction = "czerka_outpost",
	level = 80,
	chanceHit = 1.95,
	damageMin = 620,
	damageMax = 850,
	baseXp = 1057,
	baseHAM = 22000,
	baseHAMmax = 32000,
	armor = 1,
	resists = {40,40,60,35,55,70,35,40,15},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = ATTACKABLE,
	creatureBitmask = PACK,
	optionsBitmask = 128,
	diet = HERBIVORE,

	templates = {"object/mobile/dressed_black_sun_guard.iff"},
	lootGroups = {
		{
			groups = {
				{group = "czerka_outpost_common", chance = 10000000}
			},
			lootChance = 1500000
		}
	},
  weapons = {"czerka_melee_weapons_heavy"},
  conversationTemplate = "",
  attacks = merge(pikemanmaster,brawlermaster)
}

CreatureTemplates:addCreatureTemplate(easy_czerka_outpost_guard, "easy_czerka_outpost_guard")
