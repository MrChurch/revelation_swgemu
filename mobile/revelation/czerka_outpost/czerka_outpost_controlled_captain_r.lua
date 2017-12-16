czerka_outpost_controlled_captain_r = Creature:new {
	objectName = "",
	customName = "Mindcontrolled Captain",
	socialGroup = "dungeon_creature",
	faction = "artifact_hunter",
	level = 150,
	chanceHit = 95,
	damageMin = 1520,
	damageMax = 2050,
	baseXp = 4057,
	baseHAM = 45000,
	baseHAMmax = 62000,
	armor = 2,
	resists = {55,55,60,55,55,70,55,55,35},
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

	templates = {"object/mobile/dressed_death_watch_gold.iff"},
	lootGroups = {
    {
      groups = {
              {group = "czerka_outpost_common_easy", chance = 10000000},
      },
      lootChance = 7500000,
    },
    {
      groups = {
              {group = "czerka_outpost_common_normal", chance = 10000000},
      },
      lootChance = 6000000,
    },    
    {
      groups = {
              {group = "czerka_crafter_items", chance = 5000000},
              {group = "diner_all", chance = 4950000},
              {group = "czerka_dungeon_speeder", chance = 50000},
      },
      lootChance = 10000,
    },
  },

  weapons = {"czerka_ranged_weapons_heavy"},
  conversationTemplate = "",
  attacks = merge(bountyhuntermaster, commandomaster,tkamaster,rilfemanmaster,brawlermaster)
}

CreatureTemplates:addCreatureTemplate(czerka_outpost_controlled_captain_r, "czerka_outpost_controlled_captain_r")
