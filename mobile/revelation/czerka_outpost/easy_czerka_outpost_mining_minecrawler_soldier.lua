easy_czerka_outpost_mining_minecrawler_soldier = Creature:new {
    objectName = "",
    customName = "Minecrawler Soldier",
    socialGroup = "dungeon_creature",
    faction = "artifact_hunter",
    level = 80,
    chanceHit = 35,
    damageMin = 975,
    damageMax = 1260,
    baseXp = 1036,
    baseHAM = 16000,
    baseHAMmax = 21000,
    armor = 1,
    resists = {55,55,15,55,55,55,15,55,25},
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
    creatureBitmask = PACK,
    optionsBitmask = 128,
    diet = CARNIVORE,

    templates = {"object/mobile/giant_angler.iff"},
    scale = 1.1,
    lootGroups = {
        {
            groups = {
                {group = "czerka_outpost_mining_creature", chance = 10000000}
            },
        lootChance = 1400000
        }
    },
    weapons = {"creature_spit_spray_toxicgreen"},
    conversationTemplate = "",
    attacks = {
        {"stunattack","stateAccuracyBonus=75"},
        {"strongpoison","stateAccuracyBonus=75"},
        {"strongdisease","stateAccuracyBonus=75"},
    }
}

CreatureTemplates:addCreatureTemplate(easy_czerka_outpost_mining_minecrawler_soldier, "easy_czerka_outpost_mining_minecrawler_soldier")
