easy_czerka_outpost_mining_minecrawler_guardian = Creature:new {
    objectName = "",
    customName = "Minecrawler Guardian",
    socialGroup = "dungeon_creature",
    faction = "artifact_hunter",
    level = 100,
    chanceHit = 100,
    damageMin = 1100,
    damageMax = 1400,
    baseXp = 1036,
    baseHAM = 20000,
    baseHAMmax = 27000,
    armor = 1,
    resists = {55,55,35,55,55,55,55,35,35},
    meatType = "meat_insect",
    meatAmount = 200,
    hideType = "hide_scaley",
    hideAmount = 200,
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
        lootChance = 1500000
        }
    },
    weapons = {"creature_spit_small_toxicgreen"},
    conversationTemplate = "",
    attacks = {
		{"creatureareaattack","stateAccuracyBonus=75"},
		{"strongpoison","stateAccuracyBonus=75"},
    }
}

CreatureTemplates:addCreatureTemplate(easy_czerka_outpost_mining_minecrawler_guardian, "easy_czerka_outpost_mining_minecrawler_guardian")
