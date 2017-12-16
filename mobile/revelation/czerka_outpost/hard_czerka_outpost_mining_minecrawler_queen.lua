-- www.revelationonline.net
-- Author: matthias.muente@gmx.de

hard_czerka_outpost_mining_minecrawler_queen = Creature:new {
    objectName = "",
    customName = "Minecrawler Queen",
    socialGroup = "dungeon_creature",
    faction = "artifact_hunter",
    level = 300,
    chanceHit = 150,
    damageMin = 3900,
    damageMax = 4550,
    baseXp = 30000,
    baseHAM = 230000,
    baseHAMmax = 310000,
    armor = 2,
    resists = {135,135,95,135,135,135,95,135,75},
    
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
                  {group = "czerka_outpost_common_hard", chance = 10000000},
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
        lootChance = 10000000
        },
        {
            groups = {
                        {group = "diner_all", chance = 2900000},
                        {group = "junk", chance = 100000},
                        {group = "czerka_crafter_items", chance = 3500000},
                        {group = "czerka_dungeon_speeder", chance = 3500000},
                     },
            lootChance = 10000000
        },
        {
            groups = {
                        {group = "diner_all", chance = 10000000},
                      },
            lootChance = 5000000
        },
        {
            groups = {
                        {group = "czerka_dungeon_speeder", chance = 10000000},
                     },
            lootChance = 5000000
        }, 
        {
            groups = {
              {group = "structure_components", chance = 10000000},
            },
            lootChance = 2000000,
        },         
    },         
    weapons = {"creature_spit_small_toxicgreen"},
    conversationTemplate = "",
    attacks = {
      {"stunattack","stateAccuracyBonus=170"},
      {"creatureareaattack","stateAccuracyBonus=195"},
      {"strongpoison","stateAccuracyBonus=195"},
      {"creatureareableeding","stateAccuracyBonus=170"},
    }
}

CreatureTemplates:addCreatureTemplate(hard_czerka_outpost_mining_minecrawler_queen, "hard_czerka_outpost_mining_minecrawler_queen")
