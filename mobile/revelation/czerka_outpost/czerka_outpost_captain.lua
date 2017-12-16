czerka_outpost_captain = Creature:new {
	objectName = "",
	customName = "Czerka Captain",
	socialGroup = "czerka_outpost",
	faction = "czerka_outpost",
	level = 110,
	chanceHit = 60,
	damageMin = 2020,
	damageMax = 2450,
	baseXp = 4057,
	baseHAM = 92000,
	baseHAMmax = 132000,
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
	pvpBitmask = ATTACKABLE,
	creatureBitmask = KILLER,
	optionsBitmask = 128,
	diet = HERBIVORE,
	templates = {"object/mobile/dressed_death_watch_gold.iff"},
	lootGroups = {
		{
			groups = {
				{group = "czerka_outpost_common", chance = 5000000},
				{group = "czerka_outpost_special", chance = 5000000},
			},
			lootChance = 10000000
		}
	},
	weapons = {"czerka_melee_weapons_heavy"},
	conversationTemplate = "",
	attacks = merge(pikemanmaster,brawlermaster)
}

CreatureTemplates:addCreatureTemplate(czerka_outpost_captain, "czerka_outpost_captain")
