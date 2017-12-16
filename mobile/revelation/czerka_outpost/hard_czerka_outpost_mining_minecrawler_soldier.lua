hard_czerka_outpost_mining_minecrawler_soldier = Creature:new {
    objectName = "",
    customName = "Minecrawler Soldier",
    socialGroup = "dungeon_creature",
    faction = "artifact_hunter",
    level = 120,
    chanceHit = 65,
    damageMin = 2175,
    damageMax = 2860,
    baseXp = 1036,
    baseHAM = 40000,
    baseHAMmax = 55000,
    armor = 2,
    resists = {65,65,15,85,85,85,15,85,25},
    meatType = "meat_insect",
    meatAmount = 55,
    hideType = "hide_scaley",
    hideAmount = 40,
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
    scale = 1.1,
    lootGroups = {
        {
            groups = {
                {group = "czerka_outpost_mining_creature", chance = 10000000}
            },
        lootChance = 2200000,
        },
        {
            groups = {
                {group = "czerka_outpost_mining_creature", chance = 10000000}
            },
        lootChance = 1300000,
        },        
    },
    weapons = {"creature_spit_spray_toxicgreen"},
    conversationTemplate = "",
    attacks = {
        {"stunattack","stateAccuracyBonus=150"},
        {"strongpoison","stateAccuracyBonus=125"},
        {"strongdisease","stateAccuracyBonus=150"},
    }
}

CreatureTemplates:addCreatureTemplate(hard_czerka_outpost_mining_minecrawler_soldier, "hard_czerka_outpost_mining_minecrawler_soldier")
