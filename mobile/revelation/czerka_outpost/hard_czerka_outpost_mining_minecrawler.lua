hard_czerka_outpost_mining_minecrawler = Creature:new {
    objectName = "",
    customName = "Minecrawler",
    socialGroup = "dungeon_creature",
    faction = "artifact_hunter",
    level = 100,
    chanceHit = 75,
    damageMin = 1000,
    damageMax = 1500,
    baseXp = 1036,
    baseHAM = 28000,
    baseHAMmax = 35000,
    armor = 1,
    resists = {55,35,35,85,15,85,85,25,15},
    meatType = "meat_insect",
    meatAmount = 50,
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
    scale = 0.9,
    lootGroups = {
        {
            groups = {
                {group = "czerka_outpost_mining_creature", chance = 10000000}
            },
        lootChance = 2100000
        }
    },
    weapons = {"creature_spit_small_toxicgreen"},
    conversationTemplate = "",
    attacks = {
		{"creatureareaattack","stateAccuracyBonus=65"},
    }
}

CreatureTemplates:addCreatureTemplate(hard_czerka_outpost_mining_minecrawler, "hard_czerka_outpost_mining_minecrawler")
