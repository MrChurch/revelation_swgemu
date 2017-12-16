easy_czerka_outpost_controlled_captain = Creature:new {
	objectName = "",
	customName = "Mindcontrolled Captain",
	socialGroup = "dungeon_creature",
	faction = "artifact_hunter",
	level = 90,
	chanceHit = 65,
	damageMin = 1220,
	damageMax = 1850,
	baseXp = 4057,
	baseHAM = 32000,
	baseHAMmax = 42000,
	armor = 1,
	resists = {55,55,60,55,55,70,55,55,55},
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
      lootChance = 6500000,
    },
    {
      groups = {
              {group = "czerka_crafter_items", chance = 10000000},
      },
      lootChance = 5000,
    },
  },
  weapons = {"czerka_melee_weapons_heavy"},
  conversationTemplate = "",
  attacks = merge(pikemanmid,brawlermaster)
}

CreatureTemplates:addCreatureTemplate(easy_czerka_outpost_controlled_captain, "easy_czerka_outpost_controlled_captain")
