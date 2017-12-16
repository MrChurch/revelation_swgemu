rev_czerka_miner = Creature:new {
	objectName = "",
	customName = "<< Lost Czerka Miner >>",
	socialGroup = "dungeon_creature",
	faction = "",
	level = 300,
	chanceHit = 50,
	damageMin = 2320,
	damageMax = 3250,
	baseXp = 50000,
	baseHAM = 385000,
	baseHAMmax = 422000,
	armor = 1,
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
	creatureBitmask = PACK,
	optionsBitmask = 128,
	diet = HERBIVORE,

  templates = {
    "object/mobile/dressed_kobola_miner_human_male_01.iff",
    "object/mobile/dressed_kobola_miner_human_female_01.iff"},
    
	lootGroups = {
	 	{
			groups = {
				{group = "czerka_components", chance = 10000000}
			},
			lootChance = 10000000,
		},
	 	{
			groups = {
				{group = "structure_components_all", chance = 10000000}
			},
			lootChance = 10000000,
		},		
	},
	weapons = {"czerka_melee_weapons_heavy"},
	conversationTemplate = "",
	attacks = merge(pikemanmaster,brawlermaster),
	reactionStf = "@npc_reaction/slang",
}

CreatureTemplates:addCreatureTemplate(rev_czerka_miner, "rev_czerka_miner")
