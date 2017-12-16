rev_morag_nightmare = Creature:new {
	objectName = "",
	customName = "Morag Nightmare",
	socialGroup = "dungeon",
        level = 250,
        chanceHit = 95,
        damageMin = 3220,
        damageMax = 4350,
        baseXp = 5057,
        baseHAM = 85000,
        baseHAMmax = 112000,
        armor = 1,
        resists = {55,55,60,55,55,70,55,55,20},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0.000000,
	ferocity = 0,
        pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
        creatureBitmask = KILLER + PACK,
	optionsBitmask = 128,
	diet = HERBIVORE,
        scale = 3.5,
	templates = {"object/mobile/morag.iff"},
	lootGroups = {},
        weapons = {"czerka_melee_weapons_heavy"},
        attacks = merge(brawlermaster, pikemanmaster)
}

CreatureTemplates:addCreatureTemplate(rev_morag_nightmare, "rev_morag_nightmare")
