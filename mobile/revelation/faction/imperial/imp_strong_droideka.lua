imp_strong_droideka = Creature:new {
    objectName = "",
    customName = "Shielded Droideka",	
    socialGroup = "imperial",
    pvpFaction = "imperial",
    faction = "imperial",
    level = 90,
    chanceHit = 5.47,
    damageMin = 760,
    damageMax = 1260,
    baseXp = 4461,
    baseHAM = 16500,
    baseHAMmax = 28500,
    armor = 2,
    resists = {55,55,55,55,55,55,55,55,100},
    meatType = "",
    meatAmount = 0,
    hideType = "",
    hideAmount = 0,
    boneType = "",
    boneAmount = 0,
    milk = 0,
    tamingChance = 0,
    ferocity = 0,
    pvpBitmask = AGGRESSIVE + ATTACKABLE,
    creatureBitmask = PACK + KILLER,
    optionsBitmask = 128,
    diet = HERBIVORE,

    templates = {"object/mobile/droideka.iff"},
    lootGroups = {
        {
            groups = {
                {group = "junk", chance = 4000000},
                {group = "nyms_common", chance = 2000000},
                {group = "recycler_components", chance = 2000000},
                {group = "color_crystals",  chance = 2000000},
            },
            lootChance = 7500000
        }
    },
    defaultAttack = "creaturerangedattack",
    defaultWeapon = "object/weapon/ranged/droid/droid_droideka_ranged.iff",
}

CreatureTemplates:addCreatureTemplate(imp_strong_droideka, "imp_strong_droideka")