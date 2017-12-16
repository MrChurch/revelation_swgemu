czerka_outpost_pirate_leader = Creature:new {
	objectName = "@mob/creature_names:pirate_leader",
    socialGroup = "pirate",
    pvpFaction = "pirate",
    faction = "artifact_hunter",
    level = 250,
    chanceHit = 45.0,
    damageMin = 2560,
    damageMax = 3170,
    baseXp = 960,
    baseHAM = 185000,
    baseHAMmax = 215000,
    armor = 2,
    resists = {55,85,85,55,55,55,55,25,25},
    meatType = "",
    meatAmount = 0,
    hideType = "",
    hideAmount = 0,
    boneType = "",
    boneAmount = 0,
    milk = 0,
    tamingChance = 0.000000,
    ferocity = 0,
    pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
    creatureBitmask = PACK + KILLER,
    diet = HERBIVORE,

    templates = {
        "object/mobile/dressed_criminal_pirate_human_male_01.iff",
        "object/mobile/dressed_criminal_pirate_human_female_01.iff",
        "object/mobile/dressed_criminal_thug_aqualish_male_01.iff",
        "object/mobile/dressed_criminal_thug_aqualish_male_02.iff",
        "object/mobile/dressed_criminal_thug_aqualish_female_01.iff",
        "object/mobile/dressed_criminal_thug_aqualish_female_02.iff",
        "object/mobile/dressed_criminal_thug_bothan_male_01.iff",
        "object/mobile/dressed_criminal_thug_bothan_female_01.iff",
        "object/mobile/dressed_criminal_thug_human_male_01.iff",
        "object/mobile/dressed_criminal_thug_human_male_02.iff",
        "object/mobile/dressed_criminal_thug_human_female_01.iff",
        "object/mobile/dressed_criminal_thug_human_female_02.iff",
        "object/mobile/dressed_criminal_thug_rodian_male_01.iff",
        "object/mobile/dressed_criminal_thug_rodian_female_01.iff",
        "object/mobile/dressed_criminal_thug_trandoshan_male_01.iff",
        "object/mobile/dressed_criminal_thug_trandoshan_female_01.iff",
        "object/mobile/dressed_criminal_thug_zabrak_male_01.iff",
        "object/mobile/dressed_criminal_thug_zabrak_female_01.iff"
    },
    lootGroups = {
        {
            groups = {
                {group = "pirate_outpost_common", chance = 10000000},
            },
            lootChance = 10000000,
        },
        {
            groups = {
                {group = "pirate_outpost_common", chance = 10000000},
            },
            lootChance = 10000000,
        },
        {
            groups = {
                {group = "pirate_outpost_special", chance = 10000000},
            },
            lootChance = 10000000,
        },  
        {
            groups = {
                {group = "av21", chance = 10000000},
            },
            lootChance = 10000000,
        },   
        {
            groups = {
                {group = "av21", chance = 10000000},
            },
            lootChance = 5000000,
        },                             
        {
            groups = {
                {group = "czerka_crafter_items", chance = 10000000},
            },
            lootChance = 10000000,
        },
        {
            groups = {
                {group = "czerka_dungeon_speeder", chance = 10000000},
            },
            lootChance = 2000000,
        }, 
        {
            groups = {
                {group = "jedihats_wearable", chance = 10000000},
            },
            lootChance = 10000000,
        },
    },
  weapons = {"czerka_melee_special"},
  conversationTemplate = "",
  attacks = merge(swordsmanmaster,brawlermaster)
}

CreatureTemplates:addCreatureTemplate(czerka_outpost_pirate_leader, "czerka_outpost_pirate_leader")
