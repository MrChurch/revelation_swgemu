czerka_outpost_mining_minecrawler_brain = Creature:new {
    objectName = "",
    customName = "Minecrawler Brain",
    socialGroup = "dungeon_creature",
    faction = "artifact_hunter",
    level = 300,
    chanceHit = 75,
    damageMin = 2000,
    damageMax = 3000,
    baseXp = 25000,
    baseHAM = 170000,
    baseHAMmax = 230000,
    armor = 2,
    resists = {85,25,85,85,85,85,85,25,25},
    meatType = "meat_insect",
    meatAmount = 2000,
    hideType = "hide_scaley",
    hideAmount = 2000,
    boneType = "",
    boneAmount = 0,
    milk = 0,
    tamingChance = 0,
    ferocity = 15,
    pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
    creatureBitmask = PACK + KILLER,
    optionsBitmask = 128,
    diet = CARNIVORE,

    templates = {"object/mobile/giant_angler.iff"},
    scale = 2,
    lootGroups = {
        {
          groups = {
                  {group = "czerka_outpost_common_easy", chance = 10000000},
          },
          lootChance = 10000000,
        },
        {
          groups = {
                  {group = "czerka_outpost_common_normal", chance = 10000000},
          },
          lootChance = 10000000,
        },    
        {
            groups = {
              {group = "diner_all", chance = 2900000},
              {group = "junk", chance = 100000},
              {group = "czerka_crafter_items", chance = 3500000},
              {group = "czerka_dungeon_speeder", chance = 3500000},
            },
            lootChance = 10000000,
        },
        {
            groups = {
              {group = "diner_all", chance = 2900000},
              {group = "junk", chance = 100000},
              {group = "czerka_crafter_items", chance = 3500000},
              {group = "czerka_dungeon_speeder", chance = 3500000},
            },
            lootChance = 5000000,
        },  
        {
            groups = {
              {group = "structure_components", chance = 10000000},
            },
            lootChance = 800000,
        },
        {
            groups = {
              {group = "czerka_outpost_kimo", chance = 10000000},
            },
            lootChance = 2000000,
        },
    },
    weapons = {"creature_spit_small_toxicgreen"},
    conversationTemplate = "",
    attacks = {
		{"creatureareaattack","stateAccuracyBonus=125"},
		{"creatureareapoison","stateAccuracyBonus=150"},
		{"creatureareacombo","stateAccuracyBonus=125"},
		{"creatureareaknockdown","stateAccuracyBonus=125"},
    }
}

CreatureTemplates:addCreatureTemplate(czerka_outpost_mining_minecrawler_brain, "czerka_outpost_mining_minecrawler_brain")
