easy_czerka_outpost_controlled_guard_r = Creature:new {
	objectName = "",
	customName = "Mindcontrolled Guard",
	socialGroup = "dungeon_creature",
	faction = "artifact_hunter",
	level = 70,
	chanceHit = 35,
	damageMin = 920,
	damageMax = 1050,
	baseXp = 2057,
	baseHAM = 16000,
	baseHAMmax = 20000,
	armor = 1,
	resists = {50,50,60,45,55,70,35,40,25},
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

	templates = {"object/mobile/dressed_black_sun_guard.iff"},
	lootGroups = {
		{
			groups = {
				{group = "czerka_outpost_common_easy", chance = 10000000}
			},
			lootChance = 3500000
		}
	},
  weapons = {"czerka_ranged_weapons_heavy"},
  conversationTemplate = "",
  attacks = merge(bountyhuntermaster, commandomaster,tkamaster,rilfemanmaster,brawlermaster)
}

CreatureTemplates:addCreatureTemplate(easy_czerka_outpost_controlled_guard_r, "easy_czerka_outpost_controlled_guard_r")
