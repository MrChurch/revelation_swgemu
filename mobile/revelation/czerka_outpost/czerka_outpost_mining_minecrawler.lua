czerka_outpost_mining_minecrawler = Creature:new {
    objectName = "",
    customName = "Minecrawler",
    socialGroup = "dungeon_creature",
    faction = "artifact_hunter",
    level = 80,
    chanceHit = 55,
    damageMin = 775,
    damageMax = 1100,
    baseXp = 1036,
    baseHAM = 18000,
    baseHAMmax = 25000,
    armor = 1,
    resists = {55,35,35,85,15,85,85,25,15},
    meatType = "meat_insect",
    meatAmount = 18,
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
        lootChance = 1600000
        }
    },
    weapons = {"creature_spit_small_toxicgreen"},
    conversationTemplate = "",
    attacks = {
		{"creatureareaattack","stateAccuracyBonus=40"},
    }
}

CreatureTemplates:addCreatureTemplate(czerka_outpost_mining_minecrawler, "czerka_outpost_mining_minecrawler")
