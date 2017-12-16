czerka_outpost_guard_r = Creature:new {
	objectName = "",
	customName = "Czerka Guard",
	socialGroup = "czerka_outpost",
	faction = "czerka_outpost",
	level = 80,
	chanceHit = 1.95,
	damageMin = 620,
	damageMax = 950,
	baseXp = 9057,
	baseHAM = 42000,
	baseHAMmax = 62000,
	armor = 2,
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
	creatureBitmask = KILLER,
	optionsBitmask = 128,
	diet = HERBIVORE,

	templates = {"object/mobile/dressed_black_sun_guard.iff"},
	lootGroups = {
		{
			groups = {
				{group = "czerka_outpost_common", chance = 10000000}
			},
			lootChance = 2000000
		}
	},
  weapons = {"czerka_ranged_weapons_heavy"},
  conversationTemplate = "",
  attacks = merge(bountyhuntermaster, commandomaster,tkamaster,rilfemanmaster,brawlermaster)
}

CreatureTemplates:addCreatureTemplate(czerka_outpost_guard_r, "czerka_outpost_guard_r")
