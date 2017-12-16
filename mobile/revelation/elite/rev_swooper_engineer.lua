rev_swooper_engineer = Creature:new {
	objectName = "",
	customName = "<< Swooper Engineer >>",
	socialGroup = "dungeon_creature",
	faction = "",
	level = 300,
	chanceHit = 95,
	damageMin = 3320,
	damageMax = 4250,
	baseXp = 50000,
	baseHAM = 325000,
	baseHAMmax = 392000,
	armor = 2,
	resists = {55,55,60,55,25,70,25,55,45},
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
	creatureBitmask = KILLER + PACK,
	optionsBitmask = 128,
	diet = HERBIVORE,

	templates = {"object/mobile/dressed_tatooine_jabba_swooper_leader.iff"},
	lootGroups = {
	 	{
			groups = {
				{group = "swoopboss", chance = 10000000}
			},
			lootChance = 10000000,
		},
	 	{
			groups = {
				{group = "swoopboss", chance = 10000000}
			},
			lootChance = 10000000,
		},		
		{
			groups = {
				{group = "swoopboss", chance = 10000000}
			},
			lootChance = 10000000,
		},
		{
			groups = {
				{group = "swoopboss", chance = 10000000}
			},
			lootChance = 10000000,
		},
		{
			groups = {
				{group = "barc", chance = 2000000}
			},
			lootChance = 10000000,
		},
		{
			groups = {
				{group = "av21", chance = 2500000}
			},
			lootChance = 10000000,
		},
	},
	weapons = {"czerka_melee_weapons_heavy"},
	conversationTemplate = "",
	attacks = merge(pikemanmaster,brawlermaster),
	reactionStf = "@npc_reaction/slang",
}

CreatureTemplates:addCreatureTemplate(rev_swooper_engineer, "rev_swooper_engineer")

