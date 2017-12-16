easy_czerka_outpost_mining_minecrawler_brain = Creature:new {
    objectName = "",
    customName = "Minecrawler Brain",
    socialGroup = "dungeon_creature",
    faction = "artifact_hunter",
    level = 200,
    chanceHit = 100,
    damageMin = 2500,
    damageMax = 2900,
    baseXp = 15000,
    baseHAM = 140000,
    baseHAMmax = 160000,
    armor = 1,
    resists = {45,45,45,45,45,45,45,45,45},
    meatType = "meat_insect",
    meatAmount = 3000,
    hideType = "hide_scaley",
    hideAmount = 3000,
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
    weapons = {"creature_spit_spray_toxicgreen"},
    conversationTemplate = "",
    attacks = {
    {"creatureareaattack","stateAccuracyBonus=125"},
    {"creatureareapoison","stateAccuracyBonus=125"},
    {"creatureareacombo","stateAccuracyBonus=125"},
    {"creatureareaknockdown","stateAccuracyBonus=125"},
    }
}

CreatureTemplates:addCreatureTemplate(easy_czerka_outpost_mining_minecrawler_brain, "easy_czerka_outpost_mining_minecrawler_brain")
