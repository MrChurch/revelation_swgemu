-- www.revelationonline.net
-- Author: matthias.muente@gmx.de

hard_czerka_outpost_mining_minecrawler_brain = Creature:new {
    objectName = "",
    customName = "Minecrawler Brain",
    socialGroup = "dungeon_creature",
    faction = "artifact_hunter",
    level = 300,
    chanceHit = 100,
    damageMin = 3500,
    damageMax = 4200,
    baseXp = 30000,
    baseHAM = 260000,
    baseHAMmax = 330000,
    armor = 2,
    resists = {85,135,85,85,85,85,85,75,75},
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
              {group = "structure_components", chance = 10000000},
            },
            lootChance = 2000000,
        },    
    },
    weapons = {"creature_spit_spray_toxicgreen"},
    conversationTemplate = "",
    attacks = {
    {"creatureareaattack","stateAccuracyBonus=150"},
    {"creatureareapoison","stateAccuracyBonus=180"},
    {"creatureareacombo","stateAccuracyBonus=150"},
    {"creatureareaknockdown","stateAccuracyBonus=150"},
    }
}

CreatureTemplates:addCreatureTemplate(hard_czerka_outpost_mining_minecrawler_brain, "hard_czerka_outpost_mining_minecrawler_brain")
