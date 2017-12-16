czerka_outpost_controlled_guard_r = Creature:new {
	objectName = "",
	customName = "Mindcontrolled Guard",
	socialGroup = "dungeon_creature",
	faction = "",
	level = 90,
	chanceHit = 25,
	damageMin = 820,
	damageMax = 1150,
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

	templates = {"object/mobile/dressed_black_sun_guard.iff"},
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
  weapons = {"czerka_ranged_weapons_heavy"},
  conversationTemplate = "",
  attacks = merge(bountyhuntermaster, commandomaster,tkamaster,rilfemanmaster,brawlermaster)
}

CreatureTemplates:addCreatureTemplate(czerka_outpost_controlled_guard_r, "czerka_outpost_controlled_guard_r")
