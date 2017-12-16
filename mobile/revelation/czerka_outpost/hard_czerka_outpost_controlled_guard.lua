hard_czerka_outpost_controlled_guard = Creature:new {
	objectName = "",
	customName = "Mindcontrolled Guard",
	socialGroup = "dungeon_creature",
	faction = "artifact_hunter",
	level = 100,
	chanceHit = 45,
	damageMin = 1520,
	damageMax = 1950,
	baseXp = 3057,
	baseHAM = 32000,
	baseHAMmax = 42000,
	armor = 2,
	resists = {50,50,60,45,55,70,35,40,25},
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
	creatureBitmask = PACK + KILLER,
	optionsBitmask = 128,
	diet = HERBIVORE,

	templates = {"object/mobile/dressed_black_sun_guard.iff"},
  lootGroups = {
    {
      groups = {
              {group = "czerka_outpost_common_easy", chance = 10000000},
      },
      lootChance = 2500000,
    },
    {
      groups = {
              {group = "czerka_outpost_common_normal", chance = 10000000},
      },
      lootChance = 2500000,
    }, 
    {
      groups = {
              {group = "czerka_outpost_common_hard", chance = 10000000},
      },
      lootChance = 2000000,
    },        
  },
  weapons = {"czerka_melee_weapons_heavy"},
  conversationTemplate = "",
  attacks = merge(pikemanmaster,brawlermaster)
}

CreatureTemplates:addCreatureTemplate(hard_czerka_outpost_controlled_guard, "hard_czerka_outpost_controlled_guard")
