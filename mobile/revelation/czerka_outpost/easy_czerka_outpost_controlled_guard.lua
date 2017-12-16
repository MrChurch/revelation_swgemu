easy_czerka_outpost_controlled_guard = Creature:new {
	objectName = "",
	customName = "Mindcontrolled Guard",
	socialGroup = "dungeon_creature",
	faction = "artifact_hunter",
	level = 80,
	chanceHit = 35,
	damageMin = 1420,
	damageMax = 1550,
	baseXp = 2057,
	baseHAM = 20000,
	baseHAMmax = 26000,
	armor = 1,
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
	creatureBitmask = PACK,
	optionsBitmask = 128,
	diet = HERBIVORE,

	templates = {"object/mobile/dressed_black_sun_guard.iff"},
  lootGroups = {
    {
      groups = {
        {group = "czerka_outpost_common_easy", chance = 10000000}
      },
      lootChance = 3500000
    }
  },
  weapons = {"czerka_melee_weapons_heavy"},
  conversationTemplate = "",
  attacks = merge(pikemanmid,brawlermaster)
}

CreatureTemplates:addCreatureTemplate(easy_czerka_outpost_controlled_guard, "easy_czerka_outpost_controlled_guard")
