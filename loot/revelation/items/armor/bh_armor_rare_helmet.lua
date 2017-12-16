--Automatically generated by SWGEmu Spawn Tool v0.12 loot editor.

bh_armor_rare_helmet = {
	minimumLevel = 0,
	maximumLevel = -1,
	customObjectName = "Ancient Armor Helmet",
	directObjectTemplate = "object/tangible/wearables/armor/bounty_hunter/armor_bounty_hunter_helmet.iff",

  craftingValues = {
           {"armor_rating",1,1,0},
           {"armor_effectiveness",35,35,0},
           {"kineticeffectiveness",40,40,0},
           {"energyeffectiveness",40,40,0},
           {"heateffectiveness",40,40,0},
           {"coldeffectiveness",35,35,0},
           {"acideffectiveness",45,45,0},
           {"stuneffectiveness",45,45,0},
           {"restraineffectiveness",25,25,0},
           {"armor_integrity",50000,50000,0},
           {"armor_health_encumbrance",25,25,0},
           {"armor_action_encumbrance",25,25,0},
           {"armor_mind_encumbrance",15,15,0},
  },
  
  skillMods = {
       {"melee_defense",10},
       {"blind_defense",4},
       {"knockdown_defense",4},
       {"stun_defense",4},
  },

	junkDealerTypeNeeded = JUNKARMOUR,
	junkMinValue = 55,
	junkMaxValue = 110
}

addLootItemTemplate("bh_armor_rare_helmet", bh_armor_rare_helmet)
