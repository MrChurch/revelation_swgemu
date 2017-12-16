-- www.revelationonline.net
-- Author: matthias.muente@gmx.de

deadly_czerka_outpost_mining_minecrawler_guardian = Creature:new {
    objectName = "",
    customName = "Minecrawler Guardian",
    socialGroup = "dungeon_creature",
    faction = "artifact_hunter",
    level = 200,
    chanceHit = 100,
    damageMin = 3000,
    damageMax = 4500,
    baseXp = 1036,
    baseHAM = 175000,
    baseHAMmax = 210000,
    armor = 2,
    resists = {85,85,35,85,65,85,85,35,35},
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
                {group = "czerka_outpost_mining_creature", chance = 9995000},
                {group = "structure_components", chance = 5000},
            },
        lootChance = 2500000,
        },
        {
            groups = {
                {group = "czerka_outpost_mining_creature", chance = 9995000},
                {group = "structure_components", chance = 5000},
            },
        lootChance = 1500000,
        },        
    },
    weapons = {"creature_spit_small_toxicgreen"},
    conversationTemplate = "",
    attacks = {
		{"creatureareaattack","stateAccuracyBonus=175"},
		{"strongpoison","stateAccuracyBonus=175"},
		{"stunattack","stateAccuracyBonus=175"},
    }
}

CreatureTemplates:addCreatureTemplate(deadly_czerka_outpost_mining_minecrawler_guardian, "deadly_czerka_outpost_mining_minecrawler_guardian")
