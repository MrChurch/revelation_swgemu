hard_czerka_outpost_mining_minecrawler_bonecrusher = Creature:new {
    objectName = "",
    customName = "Minecrawler",
    socialGroup = "dungeon_creature",
    faction = "artifact_hunter",
    level = 95,
    chanceHit = 75,
    damageMin = 850,
    damageMax = 1350,
    baseXp = 1036,
    baseHAM = 65000,
    baseHAMmax = 85000,
    armor = 2,
    resists = {75,115,75,85,85,85,85,85,35},
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
    scale = 0.6,
    lootGroups = {
        {
            groups = {
                {group = "czerka_outpost_mining_creature", chance = 10000000},
            },
            lootChance = 1800000
        }
    },
    weapons = {"creature_spit_large_toxicgreen"},
    conversationTemplate = "",
    attacks = {
		{"creatureareaknockdown","stateAccuracyBonus=200"},
    }
}

CreatureTemplates:addCreatureTemplate(hard_czerka_outpost_mining_minecrawler_bonecrusher, "hard_czerka_outpost_mining_minecrawler_bonecrusher")
