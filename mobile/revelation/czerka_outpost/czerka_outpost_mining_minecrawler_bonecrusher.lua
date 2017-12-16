czerka_outpost_mining_minecrawler_bonecrusher = Creature:new {
    objectName = "",
    customName = "Minecrawler",
    socialGroup = "dungeon_creature",
    faction = "artifact_hunter",
    level = 50,
    chanceHit = 65,
    damageMin = 250,
    damageMax = 650,
    baseXp = 1036,
    baseHAM = 30000,
    baseHAMmax = 40000,
    armor = 2,
    resists = {65,65,15,65,65,65,65,65,35},
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
                {group = "czerka_outpost_mining_creature", chance = 10000000}
            },
        lootChance = 1200000
        }
    },
    weapons = {"creature_spit_large_toxicgreen"},
    conversationTemplate = "",
    attacks = {
	     {"creatureareaknockdown","stateAccuracyBonus=115"},
    }
}

CreatureTemplates:addCreatureTemplate(czerka_outpost_mining_minecrawler_bonecrusher, "czerka_outpost_mining_minecrawler_bonecrusher")
