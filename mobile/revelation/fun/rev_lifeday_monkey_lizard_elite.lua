rev_lifeday_monkey_lizard_elite = Creature:new {
	objectName = "",
	customName = "< Wichtel >",
	socialGroup = "dungeon",
	faction = "dungeon",
	level = 200,
	chanceHit = 2,
	damageMin = 1720,
	damageMax = 2350,
	baseXp = 15000,
	baseHAM = 44000,
	baseHAMmax = 48000,
	armor = 1,
	resists = {55,55,55,55,25,55,25,55,55},
	meatType = "meat_wild",
	meatAmount = 300,
	hideType = "hide_leathery",
	hideAmount = 300,
	boneType = "bone_mammal",
	boneAmount = 300,
	milk = 0,
	tamingChance = 0,
	pvpBitmask = ATTACKABLE + ENEMY + AGGRESSIVE,
	creatureBitmask = PACK,
	optionsBitmask = 128,
	diet = HERBIVORE,
	scale = 2.5,

	templates = {"object/mobile/lifeday_monkey_lizard.iff"},
	lootGroups = {
    	{
    		groups = {
    			{group = "event_xmas", chance = 2000000},
    			{group = "event_xmas_2", chance = 8000000}
    		},
    		lootChance = 10000000
    	}
	},
	weapons = {},
	conversationTemplate = "",
	attacks = merge(brawlermaster,unarmedmaster)
}

CreatureTemplates:addCreatureTemplate(rev_lifeday_monkey_lizard_elite, "rev_lifeday_monkey_lizard_elite")