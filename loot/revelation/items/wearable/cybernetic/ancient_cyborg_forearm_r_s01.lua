-- www.revelationonline.net
-- author matthias.muente@gmx.de

ancient_cyborg_forearm_r_s01= {
	minimumLevel = 0,
	maximumLevel = -1,
	customObjectName = "Ancient Cyborg forarm (right)",
	directObjectTemplate = "object/tangible/wearables/cyborg/forearm_r_s01.iff",
  craftingValues = {
           {"armor_rating",1,1,0},
           {"armor_effectiveness",0,0,0},
           {"kineticeffectiveness",70,70,0},
           {"energyeffectiveness",15,15,0},
           {"heateffectiveness",35,35,0},
           {"coldeffectiveness",35,35,0},
           {"acideffectiveness",20,20,0},
           {"stuneffectiveness",40,40,0},   
           {"armor_integrity",30000,50000,0},
           {"armor_health_encumbrance",100,100,0},
           {"armor_action_encumbrance",100,100,0},
           {"armor_mind_encumbrance",100,100,0},
  },
	customizationStringNames = {},
	customizationValues = {},
}

addLootItemTemplate("ancient_cyborg_forearm_r_s01", ancient_cyborg_forearm_r_s01)