lw_undead_m = Creature:new {
	objectName = "",
	customName = "Creature of the Past",
	socialGroup = "dungeon_creature",
	faction = "",
	level = 80,
	chanceHit = 25,
	damageMin = 920,
	damageMax = 1350,
	baseXp = 2057,
	baseHAM = 32000,
	baseHAMmax = 42000,
	armor = 2,
	resists = {40,40,60,35,55,70,35,40,15},
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

	templates = {"object/mobile/outbreak_undead_boss_m_both_01.iff"},
  lootGroups = {
    {
      groups = {
              {group = "czerka_outpost_common_easy", chance = 10000000},
      },
      lootChance = 3500000,
    },
    {
      groups = {
              {group = "czerka_outpost_common_normal", chance = 10000000},
      },
      lootChance = 3200000,
    },    
  },
  weapons = {"czerka_melee_weapons_heavy"},
  conversationTemplate = "",
  attacks = merge(pikemanmaster,brawlermaster)
}

CreatureTemplates:addCreatureTemplate(lw_undead_m, "lw_undead_m")
