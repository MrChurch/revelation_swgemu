rev_rebel_barracs_boss = Creature:new {
	objectName = "@mob/creature_names:rebel_general",
	randomNameType = NAME_GENERIC_TAG,
	socialGroup = "rebel",
	faction = "rebel",
  level = 300,
  chanceHit = 45,
  damageMin = 1500,
  damageMax = 1750,
  baseXp = 85000,
  baseHAM = 500000,
  baseHAMmax = 550000,
  armor = 1,
  resists = {55,55,55,55,55,55,55,55,55},
  
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
              "object/mobile/dressed_rebel_general_fat_human_male_01.iff",
              "object/mobile/dressed_rebel_general_human_female_01.iff",
              "object/mobile/dressed_rebel_general_human_female_02.iff",
              "object/mobile/dressed_rebel_general_moncal_male_01.iff",
              "object/mobile/dressed_rebel_general_old_twilek_male_01.iff",
              "object/mobile/dressed_rebel_general_rodian_female_01.iff"
        },

	lootGroups = {
		{
                    groups = {
                      {group = "holocron_dark", chance = 850000},
                      {group = "holocron_light", chance = 850000},
                      {group = "crystals_premium", chance = 1600000},
                      {group = "rifles", chance = 1000000},
                      {group = "pistols", chance = 1000000},
                      {group = "melee_weapons", chance = 1500000},
                      {group = "armor_attachments", chance = 1100000},
                      {group = "clothing_attachments", chance = 1100000},
                      {group = "carbines", chance = 1000000}
                    }
		}
	},
	weapons = {"imperial_boss_melee"},
	conversationTemplate = "",
	reactionStf = "@npc_reaction/military",
	attacks = merge(swordsmanmaster,brawlermaster)
}

CreatureTemplates:addCreatureTemplate(rev_rebel_barracs_boss, "rev_rebel_barracs_boss")
