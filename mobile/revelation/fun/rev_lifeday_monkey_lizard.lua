rev_lifeday_monkey_lizard = Creature:new {
	objectName = "",
	customName = "Wichtel",
	socialGroup = "dungeon",
	faction = "dungeon",
	level = 100,
	chanceHit = 2,
	damageMin = 1120,
	damageMax = 1550,
	baseXp = 8000,
	baseHAM = 24000,
	baseHAMmax = 28000,
	armor = 0,
	resists = {90,90,90,90,90,90,90,90,35},
	meatType = "meat_wild",
	meatAmount = 100,
	hideType = "hide_leathery",
	hideAmount = 100,
	boneType = "bone_mammal",
	boneAmount = 100,
	milk = 0,
	tamingChance = 0,
	pvpBitmask = ATTACKABLE + ENEMY,
	creatureBitmask = PACK,
	optionsBitmask = 128,
	diet = HERBIVORE,

	templates = {"object/mobile/lifeday_monkey_lizard.iff"},
	lootGroups = {
    	{
    		groups = {
    			{group = "event_xmas", chance = 3000000},
    			{group = "junk", chance = 7000000}
    		},
    		lootChance = 6500000
    	}
	},
	weapons = {},
	conversationTemplate = "",
	attacks = merge(brawlermaster,unarmedmaster)
}

CreatureTemplates:addCreatureTemplate(rev_lifeday_monkey_lizard, "rev_lifeday_monkey_lizard")