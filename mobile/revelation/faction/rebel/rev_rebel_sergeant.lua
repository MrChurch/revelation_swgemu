rev_rebel_sergeant = Creature:new {
	objectName = "@mob/creature_names:rebel_sergeant",
	randomNameType = NAME_GENERIC_TAG,
	socialGroup = "rebel",
	faction = "rebel",
        level = 80,
        chanceHit = 15,
        damageMin = 600,
        damageMax = 700,
        baseXp = 3005,
        baseHAM = 16300,
        baseHAMmax = 19100,
        armor = 1,
        resists = {55,55,55,35,35,35,35,35,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = ATTACKABLE + OVERT + AGGRESSIVE,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = 128,
	diet = HERBIVORE,

	templates = {
		"object/mobile/dressed_rebel_sergeant_fat_zabrak_male_01.iff",
		"object/mobile/dressed_rebel_sergeant_human_male_01.iff",
		"object/mobile/dressed_rebel_sergeant_moncal_male_01.iff",
		"object/mobile/dressed_rebel_sergeant_rodian_female_01.iff",
		"object/mobile/dressed_rebel_sergeant_rodian_male_01.iff",
		"object/mobile/dressed_rebel_sergeant_twilek_female_old_01.iff"},
	lootGroups = {
		{
			groups = {
				{group = "color_crystals", chance = 100000},
				{group = "junk", chance = 4700000},
				{group = "rifles", chance = 1000000},
				{group = "pistols", chance = 1000000},
				{group = "melee_weapons", chance = 1000000},
				{group = "carbines", chance = 1000000},
				{group = "clothing_attachments", chance = 100000},
				{group = "armor_attachments", chance = 100000},
				{group = "wearables_common", chance = 1000000}
			}
		}
	},
	weapons = {"imperial_officer_melee"},
	conversationTemplate = "",
	reactionStf = "@npc_reaction/military",
	personalityStf = "@hireling/hireling_military",
	attacks = merge(swordsmanmaster,brawlermaster)
}

CreatureTemplates:addCreatureTemplate(rev_rebel_sergeant, "rev_rebel_sergeant")
