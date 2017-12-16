czerka_outpost_mining_minecrawler_soldier = Creature:new {
    objectName = "",
    customName = "Minecrawler Soldier",
    socialGroup = "dungeon_creature",
    faction = "artifact_hunter",
    level = 90,
    chanceHit = 65,
    damageMin = 1075,
    damageMax = 1460,
    baseXp = 1036,
    baseHAM = 30000,
    baseHAMmax = 35000,
    armor = 2,
    resists = {55,55,15,65,65,65,15,65,10},
    meatType = "meat_insect",
    meatAmount = 25,
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
        lootChance = 1900000
        }
    },
    weapons = {"creature_spit_small_toxicgreen"},
    conversationTemplate = "",
    attacks = {
		{"stunattack","stateAccuracyBonus=100"},
		{"strongpoison","stateAccuracyBonus=100"},
		{"strongdisease","stateAccuracyBonus=100"},
    }
}

CreatureTemplates:addCreatureTemplate(czerka_outpost_mining_minecrawler_soldier, "czerka_outpost_mining_minecrawler_soldier")
