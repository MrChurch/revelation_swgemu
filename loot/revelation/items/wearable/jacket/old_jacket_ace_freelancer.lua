old_jacket_ace_freelancer = {
    minimumLevel = 0,
    maximumLevel = -1,
    customObjectName = "old freelancer ace jacket",
    directObjectTemplate = "object/tangible/wearables/jacket/jacket_ace_privateer.iff",
    craftingValues = {},
    customizationStringNames = {},
    customizationValues = {},
    junkDealerTypeNeeded = JUNKCLOTHESANDJEWELLERY,
    junkMinValue = 1000,
    junkMaxValue = 2000,
    
    skillMods = {
       {"slope_move", 10}, 
       {"melee_defense", 10}, 
       {"ranged_defense", 10},
       {"carbine_accuracy", 15},
       {"pistol_accuracy", 15},
       {"stun_defense", 10},
       {"knockdown_defense", 10},
       {"dizzy_defense", 10},
    },
  
}

addLootItemTemplate("old_jacket_ace_freelancer", old_jacket_ace_freelancer)
