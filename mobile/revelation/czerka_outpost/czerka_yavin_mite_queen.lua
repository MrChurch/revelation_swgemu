czerka_yavin_mite_queen = Creature:new {
	objectName = "@mob/creature_names:giant_decay_mite_queen",
	socialGroup = "mite",
	faction = "",
	level = 145,
	chanceHit = 40,
	damageMin = 3310,
	damageMax = 3620,
	baseXp = 6637,
	baseHAM = 95200,
	baseHAMmax = 148800,
	armor = 2,
	resists = {85,95,95,85,85,25,85,25,25},
	meatType = "meat_insect",
	meatAmount = 750,
	hideType = "hide_scaley",
	hideAmount = 25,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK,
	optionsBitmask = 128,
	diet = CARNIVORE,

	templates = {"object/mobile/decay_mite.iff"},
	scale = 5,
	lootGroups = {
		{
			groups = {
				{group = "czerka_crafter_items", chance = 1995000},
				{group = "junk", chance = 5000},
				{group = "av21", chance = 7000000},
				{group = "czerka_dungeon_speeder", chance = 1000000},
			},
			lootChance = 5000000,
		},
		{
			groups = {
				{group = "czerka_outpost_mining_creature", chance = 10000000},
			},
			lootChance = 10000000,
		},
    		{
			groups = {
				{group = "av21", chance = 10000000},
			},
      			lootChance = 1000000,
		},
		{
			groups = {
				{group = "czerka_outpost_kimo", chance = 10000000},
			},
			lootChance = 2000000,
		},		
	},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"strongdisease","stateAccuracyBonus=150"},
		{"strongpoison","stateAccuracyBonus=150"},
		{"creatureareableeding","stateAccuracyBonus=150"}
	}
}

CreatureTemplates:addCreatureTemplate(czerka_yavin_mite_queen, "czerka_yavin_mite_queen")
