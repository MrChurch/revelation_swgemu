rev_lifeday_monkey_lizard_boss = Creature:new {
	objectName = "",
	customName = "<<< Wichtel >>>",
	socialGroup = "dungeon",
	faction = "dungeon",
	level = 400,
	chanceHit = 2,
	damageMin = 3920,
	damageMax = 5350,
	baseXp = 15000,
	baseHAM = 644000,
	baseHAMmax = 668000,
	armor = 2,
	resists = {55,55,25,55,75,25,75,55,75},
	meatType = "meat_wild",
	meatAmount = 3000,
	hideType = "hide_leathery",
	hideAmount = 3000,
	boneType = "bone_mammal",
	boneAmount = 3000,
	milk = 0,
	tamingChance = 0,
	pvpBitmask = ATTACKABLE + ENEMY + AGGRESSIVE,
	creatureBitmask = PACK,
	optionsBitmask = 128,
	diet = HERBIVORE,
	scale = 15,
	templates = {"object/mobile/lifeday_monkey_lizard.iff"},
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = merge(brawlermaster,unarmedmaster)
}

CreatureTemplates:addCreatureTemplate(rev_lifeday_monkey_lizard_boss, "rev_lifeday_monkey_lizard_boss")
