robe_of_the_dragonbeast_light= {
    minimumLevel = 0,
    maximumLevel = -1,
    customObjectName = "Light Robe of the Dragonbeast",
    directObjectTemplate = "object/tangible/wearables/robe/robe_dragon_light.iff",
    customizationStringNames = {},
    customizationValues = {},
    junkDealerTypeNeeded = JUNKCLOTHESANDJEWELLERY,
    junkMinValue = 55,
    junkMaxValue = 110,
    
    skillMods = {
        {"jedi_state_defense", 8},
        {"jedi_toughness", 5},
    },
     
}
addLootItemTemplate("robe_of_the_dragonbeast_light", robe_of_the_dragonbeast_light)