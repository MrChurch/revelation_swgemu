easy_czerka_outpost_mining_minecrawler_bonecrusher = Creature:new {
    objectName = "",
    customName = "Minecrawler",
    socialGroup = "dungeon_creature",
    faction = "artifact_hunter",
    level = 50,
    chanceHit = 75,
    damageMin = 850,
    damageMax = 1050,
    baseXp = 1036,
    baseHAM = 16000,
    baseHAMmax = 26000,
    armor = 1,
    resists = {55,55,55,55,55,55,55,55,55},
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
    creatureBitmask = PACK,
    optionsBitmask = 128,
    diet = CARNIVORE,

    templates = {"object/mobile/giant_angler.iff"},
    scale = 0.6,
    lootGroups = {
        {
            groups = {
                {group = "czerka_outpost_mining_creature", chance = 10000000},
            },
            lootChance = 1200000
        }
    },
    weapons = {"creature_spit_large_toxicgreen"},
    conversationTemplate = "",
    attacks = {
		{"creatureareaknockdown","stateAccuracyBonus=45"},
    }
}

CreatureTemplates:addCreatureTemplate(easy_czerka_outpost_mining_minecrawler_bonecrusher, "easy_czerka_outpost_mining_minecrawler_bonecrusher")
