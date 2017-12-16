easy_czerka_outpost_controlled_lieutenant_r = Creature:new {
	objectName = "",
	customName = "Mindcontrolled Lieutenant",
	socialGroup = "dungeon_creature",
	faction = "artifact_hunter",
	level = 90,
	chanceHit = 65,
	damageMin = 1420,
	damageMax = 1550,
	baseXp = 3057,
	baseHAM = 25000,
	baseHAMmax = 32000,
	armor = 1,
	resists = {45,45,40,45,45,40,45,45,25},
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
	creatureBitmask = KILLER,
	optionsBitmask = 128,
	diet = HERBIVORE,

	templates = {"object/mobile/dressed_death_watch_red.iff"},
  lootGroups = {
    {
      groups = {
              {group = "czerka_outpost_common_easy", chance = 10000000},
      },
      lootChance = 5500000,
    },
    {
      groups = {
              {group = "czerka_crafter_items", chance = 10000000},
      },
      lootChance = 1500,
    },
  },
  weapons = {"czerka_ranged_weapons_heavy"},
  conversationTemplate = "",
  attacks = merge(bountyhuntermid, commandomaster,tkamaster,rilfemanmid,brawlermaster)
}

CreatureTemplates:addCreatureTemplate(easy_czerka_outpost_controlled_lieutenant_r, "easy_czerka_outpost_controlled_lieutenant_r")
