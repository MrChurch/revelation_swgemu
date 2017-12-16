hard_czerka_outpost_lieutenant_r = Creature:new {
	objectName = "",
	customName = "Czerka Lieutenant",
	socialGroup = "czerka_outpost",
	faction = "czerka_outpost",
	level = 125,
	chanceHit = 25,
	damageMin = 1320,
	damageMax = 2450,
	baseXp = 4057,
	baseHAM = 52000,
	baseHAMmax = 92000,
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
	pvpBitmask = AGGRESSIVE + ATTACKABLE,
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
			lootChance = 4000000
		}
	},
  weapons = {"czerka_ranged_weapons_heavy"},
  conversationTemplate = "",
  attacks = merge(bountyhuntermaster, commandomaster,tkamaster,rilfemanmaster,brawlermaster)
}

CreatureTemplates:addCreatureTemplate(hard_czerka_outpost_lieutenant_r, "hard_czerka_outpost_lieutenant_r")
