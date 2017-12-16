czerka_outpost_pirate_lieutenant = Creature:new {
    objectName = "@mob/creature_names:pirate_lieutenant",
    socialGroup = "pirate",
    pvpFaction = "pirate",
    faction = "artifact_hunter",
    level = 100,
    chanceHit = 20,
    damageMin = 1760,
    damageMax = 2070,
    baseXp = 1960,
    baseHAM = 32000,
    baseHAMmax = 40000,
    armor = 1,
    resists = {55,55,55,55,55,55,55,15,15},
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
            lootChance = 7500000,
        },
        {
            groups = {
                {group = "av21", chance = 5400000},
                {group = "czerka_crafter_items", chance = 4550000},
                {group = "czerka_dungeon_speeder", chance = 50000},                
            },
            lootChance = 20000
        },
        {
            groups = {
                {group = "pirate_outpost_special", chance = 10000000},
            },
            lootChance = 1000000,
        },          
    },
  weapons = {"czerka_melee_special"},
  conversationTemplate = "",
  attacks = merge(swordsmanmaster,brawlermaster)
}

CreatureTemplates:addCreatureTemplate(czerka_outpost_pirate_lieutenant, "czerka_outpost_pirate_lieutenant")