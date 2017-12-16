rev_fed_battle_droid = Creature:new {
    objectName = "",
    customName = "Experimental series HK1",	
    socialGroup = "dungeon_creature",
    faction = "dungeon_creature",
    level = 65,
    chanceHit = 1,
    damageMin = 550,
    damageMax = 1050,
    baseXp = 2612,
    baseHAM = 18500,
    baseHAMmax = 27000,
    armor = 2,
    resists = {30,30,10,30,10,25,40,25,5},
    meatType = "",
    meatAmount = 0,
    hideType = "",
    hideAmount = 0,
    boneType = "",
    boneAmount = 0,
    milk = 0,
    tamingChance = 0,
    ferocity = 0,
    pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY + OVERT,
    creatureBitmask = KILLER,
    optionsBitmask = 128,
    diet = HERBIVORE,

    templates = {
        "object/mobile/death_watch_battle_droid_02.iff",
     },
    lootGroups = {},
    weapons = {"battle_droid_weapons"},
    conversationTemplate = "",
    attacks = merge(riflemanmaster,pistoleermaster,carbineermaster,brawlermaster)
}

CreatureTemplates:addCreatureTemplate(rev_fed_battle_droid, "rev_fed_battle_droid")
