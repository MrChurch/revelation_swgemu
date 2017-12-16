easy_czerka_outpost_lieutenant = Creature:new {
	objectName = "",
	customName = "Czerka Lieutenant",
	socialGroup = "czerka_outpost",
	faction = "czerka_outpost",
	level = 90,
	chanceHit = 25,
	damageMin = 1820,
	damageMax = 2050,
	baseXp = 2057,
	baseHAM = 32000,
	baseHAMmax = 45000,
	armor = 1,
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
	pvpBitmask = ATTACKABLE,
	creatureBitmask = KILLER,
	optionsBitmask = 128,
	diet = HERBIVORE,

	templates = {"object/mobile/dressed_death_watch_red.iff"},
	lootGroups = {
		{
			groups = {
				{group = "czerka_outpost_common", chance = 9500000},
				{group = "czerka_outpost_special", chance = 500000},
			},
			lootChance = 1000000
		}
	},
  weapons = {"czerka_melee_weapons_heavy"},
  conversationTemplate = "",
  attacks = merge(pikemanmaster,brawlermaster)
}

CreatureTemplates:addCreatureTemplate(easy_czerka_outpost_lieutenant, "easy_czerka_outpost_lieutenant")
