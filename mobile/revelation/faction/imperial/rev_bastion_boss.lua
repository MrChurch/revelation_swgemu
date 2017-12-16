rev_bastion_boss = Creature:new {
	objectName = "@mob/creature_names:high_colonel",
  randomNameType = NAME_GENERIC_TAG,
  socialGroup = "imperial",
  faction = "imperial",
  level = 250,
  chanceHit = 35,
  damageMin = 1250,
  damageMax = 1500,
  baseXp = 75000,
  baseHAM = 450000,
  baseHAMmax = 500000,
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
	   "object/mobile/dressed_imperial_colonel_m.iff",
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

CreatureTemplates:addCreatureTemplate(rev_bastion_boss, "rev_bastion_boss")
