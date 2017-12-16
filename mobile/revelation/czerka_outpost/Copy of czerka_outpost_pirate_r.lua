czerka_outpost_pirate_privateer = Creature:new {
    objectName = "",
    customName = "a Privateer Pirate",
    socialGroup = "pirate",
    pvpFaction = "pirate",
    faction = "artifact_hunter",
    level = 50,
    chanceHit = 1.5,
    damageMin = 550,
    damageMax = 850,
    baseXp = 400,
    baseHAM = 10100,
    baseHAMmax = 15900,
    armor = 1,
    resists = {25,25,25,25,25,25,25,-1,-1},
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
    creatureBitmask = PACK + KILLER,
    optionsBitmask = 128,
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
                {group = "junk", chance = 3500000},
                {group = "wearables_all", chance = 2000000},
                {group = "weapons_all", chance = 2000000},
                {group = "armor_all", chance = 2000000},
                {group = "recycler_schematics", chance = 20000},
                {group = "recycler_components", chance = 480000},
            },
            lootChance = 2000000
        }
    },
    weapons = {"ranged_weapons"},
    conversationTemplate = "",
    attacks = merge(riflemanmaster,pistoleermaster,carbineermaster,brawlermaster)
}

CreatureTemplates:addCreatureTemplate(czerka_outpost_pirate_privateer, "czerka_outpost_pirate_privateer")
