czerka_outpost_fed_battle_droid = Creature:new {
    objectName = "",
    customName = "Experimental series HK1",	
    socialGroup = "pirate",
    pvpFaction = "pirate",
    faction = "artifact_hunter",
    level = 65,
    chanceHit = 1,
    damageMin = 550,
    damageMax = 1050,
    baseXp = 2612,
    baseHAM = 10500,
    baseHAMmax = 17000,
    armor = 2,
    resists = {30,30,10,30,10,25,40,25,5},
    meatType = "",
    meatAmount = 0,
    hideType = "",
    hideAmount = 0,
    boneType = "",
    boneAmount = 0,
    milk = 0,
    tamingChance = 0,
    ferocity = 0,
    pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY + OVERT,
    creatureBitmask = KILLER,
    optionsBitmask = 128,
    diet = HERBIVORE,

    templates = {
        "object/mobile/death_watch_battle_droid_02.iff",
     },
    lootGroups = {
        {
            groups = {
                {group = "junk", chance = 7000000},
                {group = "nyms_common", chance = 1000000},
                {group = "recycler_components", chance = 1000000},
                {group = "color_crystals",  chance = 1000000},
            },
            lootChance = 1500000
        }
    },
    weapons = {"battle_droid_weapons"},
    conversationTemplate = "",
    attacks = merge(riflemanmaster,pistoleermaster,carbineermaster,brawlermaster)
}

CreatureTemplates:addCreatureTemplate(czerka_outpost_fed_battle_droid, "czerka_outpost_fed_battle_droid")
