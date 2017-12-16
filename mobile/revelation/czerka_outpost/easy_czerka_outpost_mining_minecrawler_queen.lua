easy_czerka_outpost_mining_minecrawler_queen = Creature:new {
    objectName = "",
    customName = "Minecrawler Queen",
    socialGroup = "dungeon_creature",
    faction = "artifact_hunter",
    level = 200,
    chanceHit = 100,
    damageMin = 2000,
    damageMax = 2950,
    baseXp = 25000,
    baseHAM = 140000,
    baseHAMmax = 170000,    
    armor = 1,
    resists = {75,75,75,75,75,75,75,75,75},
    meatType = "meat_insect",
    meatAmount = 4000,
    hideType = "hide_scaley",
    hideAmount = 4000,
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
    scale = 3.0,
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
              {group = "diner_all", chance = 2000000},
              {group = "junk", chance = 100000},
              {group = "czerka_crafter_items", chance = 2500000},
              {group = "czerka_outpost_common_easy", chance = 5400000},
            },
            lootChance = 10000000,
        },
        {
            groups = {
                {group = "czerka_dungeon_speeder", chance = 10000000},
            },
            lootChance = 50000,
        }, 
        {
            groups = {
                {group = "czerka_outpost_mining_creature", chance = 10000000},
            },
            lootChance = 5000000,
        },
        {
            groups = {
              {group = "structure_components", chance = 10000000},
            },
            lootChance = 300000,
        },          
    },        
    weapons = {"creature_spit_small_toxicgreen"},
    conversationTemplate = "",
    attacks = {
      {"stunattack","stateAccuracyBonus=125"},
      {"creatureareaattack","stateAccuracyBonus=125"},
      {"strongpoison","stateAccuracyBonus=125"},
      {"creatureareableeding","stateAccuracyBonus=125"},
    }
}

CreatureTemplates:addCreatureTemplate(easy_czerka_outpost_mining_minecrawler_queen, "easy_czerka_outpost_mining_minecrawler_queen")
