czerka_outpost_mining_minecrawler_queen = Creature:new {
    objectName = "",
    customName = "Minecrawler Queen",
    socialGroup = "dungeon_creature",
    faction = "artifact_hunter",
    level = 300,
    chanceHit = 100,
    damageMin = 2500,
    damageMax = 3750,
    baseXp = 25000,
    baseHAM = 160000,
    baseHAMmax = 210000,
    armor = 2,
    resists = {135,135,-1,135,135,135,75,135,35},
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
  		{"stunattack","stateAccuracyBonus=125"},
  		{"creatureareaattack","stateAccuracyBonus=150"},
  		{"strongpoison","stateAccuracyBonus=150"},
  		{"creatureareableeding","stateAccuracyBonus=125"},
    }
}

CreatureTemplates:addCreatureTemplate(czerka_outpost_mining_minecrawler_queen, "czerka_outpost_mining_minecrawler_queen")
