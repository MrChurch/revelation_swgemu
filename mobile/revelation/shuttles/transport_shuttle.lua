transport_shuttle = Creature:new {
    objectName = "",
    customName = "Czerka Transport",
    socialGroup = "townsperson",
    faction = "townsperson",
    level = 100,
    chanceHit = 1,
    damageMin = 645,
    damageMax = 1000,
    baseXp = 9429,
    baseHAM = 24000,
    baseHAMmax = 30000,
    armor = 0,
    resists = {0,0,0,0,0,0,0,0,-1},
    meatType = "",
    meatAmount = 0,
    hideType = "",
    hideAmount = 0,
    boneType = "",
    boneAmount = 0,
    milk = 0,
    tamingChance = 0,
    ferocity = 0,
    pvpBitmask = NONE,
    creatureBitmask = PACK,
    optionsBitmask = 128,
    diet = HERBIVORE,
    scale = 0.7,

    templates = {"object/creature/npc/theme_park/event_transport.iff"},
    lootGroups = {},
    weapons = {},
    conversationTemplate = "",
    attacks = {
    }
}

CreatureTemplates:addCreatureTemplate(transport_shuttle, "transport_shuttle")
