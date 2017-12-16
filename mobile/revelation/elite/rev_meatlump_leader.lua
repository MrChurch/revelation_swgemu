rev_meatlump_leader = Creature:new {
	objectName = "",
	customName = "< Meatlump Leader >",
	socialGroup = "meatlump",
	faction = "meatlump",
	level = 30,
	chanceHit = 0.70000,
	damageMin = 80,
	damageMax = 115,
	baseXp = 1130,
	baseHAM = 1100,
	baseHAMmax = 1400,
	armor = 0,
	resists = {0,0,0,0,0,0,0,-1,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0.000000,
	ferocity = 0,
	pvpBitmask = ATTACKABLE,
	creatureBitmask = HERD,
	diet = HERBIVORE,

	templates = {
		"object/mobile/dressed_criminal_thug_aqualish_female_01.iff",
		"object/mobile/dressed_criminal_thug_aqualish_female_02.iff",
		"object/mobile/dressed_criminal_thug_aqualish_male_01.iff",
		"object/mobile/dressed_criminal_thug_aqualish_male_02.iff",
		"object/mobile/dressed_criminal_thug_human_female_01.iff",
		"object/mobile/dressed_criminal_thug_human_female_02.iff",
		"object/mobile/dressed_criminal_thug_human_male_01.iff",
		"object/mobile/dressed_criminal_thug_human_male_02.iff",
		"object/mobile/dressed_criminal_thug_rodian_female_01.iff",
		"object/mobile/dressed_criminal_thug_rodian_male_01.iff",
		"object/mobile/dressed_criminal_thug_trandoshan_female_01.iff",
		"object/mobile/dressed_criminal_thug_trandoshan_male_01.iff",
		"object/mobile/dressed_criminal_thug_zabrak_female_01.iff",
		"object/mobile/dressed_criminal_thug_zabrak_male_01.iff"},
	lootGroups = {
		{
			groups = {
				{group = "junk", chance = 2900000},
				{group = "weapons_starter", chance = 2100000},
				{group = "meatlump_common", chance = 5000000}
			},
			lootChance = 10000000,
		},
		{
			groups = {
				{group = "weapons_starter", chance = 10000000},
			},
			lootChance = 10000000,
		},
		{
			groups = {
				{group = "skill_buffs", chance = 5000000},
				{group = "weapons_starter", chance = 5000000},
			},
			lootChance = 5000000,
		}
	},
	weapons = {"pirate_weapons_light"},
	reactionStf = "@npc_reaction/slang",
	attacks = merge(brawlernovice,marksmannovice)
}

CreatureTemplates:addCreatureTemplate(rev_meatlump_leader, "rev_meatlump_leader")
