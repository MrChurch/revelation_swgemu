czerka_outpost_mining_minecrawler_guardian = Creature:new {
    objectName = "",
    customName = "Minecrawler Guardian",
    socialGroup = "dungeon_creature",
    faction = "artifact_hunter",
    level = 100,
    chanceHit = 75,
    damageMin = 1200,
    damageMax = 1700,
    baseXp = 1036,
    baseHAM = 30000,
    baseHAMmax = 40000,
    armor = 2,
    resists = {65,65,15,65,65,65,65,25,15},
    meatType = "meat_insect",
    meatAmount = 35,
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
    scale = 1.3,
    lootGroups = {
        {
            groups = {
                {group = "czerka_outpost_mining_creature", chance = 10000000}
            },
        lootChance = 3000000
        }
    },
    weapons = {"creature_spit_small_toxicgreen"},
    conversationTemplate = "",
    attacks = {
		{"creatureareaattack","stateAccuracyBonus=100"},
		{"strongpoison","stateAccuracyBonus=100"},
    }
}

CreatureTemplates:addCreatureTemplate(czerka_outpost_mining_minecrawler_guardian, "czerka_outpost_mining_minecrawler_guardian")
