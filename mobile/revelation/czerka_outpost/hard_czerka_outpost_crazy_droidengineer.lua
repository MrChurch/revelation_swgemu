hard_czerka_outpost_crazy_droidengineer = Creature:new {
	objectName = "",
  customName = "Crazy bugged out Harry",
  socialGroup = "dungeon_creature",
  faction = "artifact_hunter",
  level = 250,
  chanceHit = 95,
  damageMin = 2620,
  damageMax = 3250,
  baseXp = 30000,
  baseHAM = 195000,
  baseHAMmax = 262000,
  armor = 2,
  resists = {55,55,60,55,55,70,55,55,45},
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
  creatureBitmask = KILLER + PACK,
  optionsBitmask = 128,
  diet = HERBIVORE,

  templates = {   
    "object/mobile/dressed_artisan_trainer_03.iff",
    "object/mobile/dressed_artisan_trainer_02.iff",
    "object/mobile/dressed_artisan_trainer_01.iff",
    "object/mobile/dressed_commoner_artisan_trandoshan_male_01.iff",
    "object/mobile/dressed_commoner_artisan_sullustan_male_01.iff",
    "object/mobile/dressed_commoner_artisan_bith_male_01.iff"
    },
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
  weapons = {"czerka_melee_special"},
  conversationTemplate = "",
  attacks = merge(swordsmanmaster,brawlermaster)
}

CreatureTemplates:addCreatureTemplate(hard_czerka_outpost_crazy_droidengineer, "hard_czerka_outpost_crazy_droidengineer")
