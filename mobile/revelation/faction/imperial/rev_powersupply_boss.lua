rev_powersupply_boss = Creature:new {
	objectName = "@mob/creature_names:imperial_major",
	randomNameType = NAME_GENERIC_TAG,
	socialGroup = "imperial",
	faction = "imperial",
  level = 200,
  chanceHit = 25,
  damageMin = 1200,
  damageMax = 1650,
  baseXp = 50000,
  baseHAM = 400000,
  baseHAMmax = 450000,
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

	templates = {"object/mobile/dressed_imperial_major_m.iff"},
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

CreatureTemplates:addCreatureTemplate(rev_powersupply_boss, "rev_powersupply_boss")
