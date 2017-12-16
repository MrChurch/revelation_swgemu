object_building_faction_perk_hq_hq_rev_s04_imp = object_building_faction_perk_hq_shared_hq_rev_s04_imp:new {
    lotSize = 0,
    containerComponent = "GCWBaseContainerComponent",
    zoneComponent = "StructureZoneComponent",
    maintenanceCost = 0,
    baseMaintenanceRate = 0,
    faction = "imperial",
    pvpFaction = "imperial",
    pvpStatusBitmask = 0,
    dataObjectComponent = "DestructibleBuildingDataComponent",
    allowedZones = {"dantooine", "naboo", "rori","tatooine", "corellia", "lok", "talus"},
    constructionMarker = "object/building/player/construction/construction_player_house_generic_medium_style_01.iff",
    length = 10,
    width = 10,
    planetMapCategory = "imperial_hq",
    alwaysPublic = 1,
    factionBaseType = 1,

    skillMods = {
      {"private_buff_mind", 100},
      {"private_med_battle_fatigue", 5},
      {"private_medical_rating", 100},
      {"private_med_wound_health", 100},
      {"private_med_wound_action", 100}
    },
    
    childObjects = {

      {templateFile = "object/static/structure/military/military_wall_med_imperial_style_01.iff", x=7, z=0, y=27.5, ox=0, oy=.4, oz=0, ow=.9, cellid=-1, containmentType=-1}, -- Front right
      {templateFile = "object/static/structure/military/military_wall_med_imperial_style_01.iff", x=-7, z=0, y=27.5, ox=0, oy=-.4, oz=0, ow=.9, cellid=-1, containmentType=-1},
        
      -- wall 2
      {templateFile = "object/static/structure/military/military_wall_med_imperial_style_01.iff", x=-10, z=0, y=20.5, ox=0, oy=-.7, oz=0, ow=.7, cellid=-1, containmentType=-1}, -- left wall 2
      {templateFile = "object/static/structure/military/military_wall_med_imperial_style_01.iff", x=10, z=0, y=20.5, ox=0, oy=-.7, oz=0, ow=.7, cellid=-1, containmentType=-1}, 
            
      -- wall 3
      {templateFile = "object/static/structure/military/military_wall_med_imperial_style_01.iff", x=-14, z=0, y=16.75, ox=0, oy=-0, oz=0, ow=1, cellid=-1, containmentType=-1}, -- left wall 3
      {templateFile = "object/static/structure/military/military_wall_med_imperial_style_01.iff", x=14, z=0, y=16.75, ox=0, oy=-0, oz=0, ow=1, cellid=-1, containmentType=-1}, -- right wall 3
            
      -- wall 4
      {templateFile = "object/static/structure/military/military_wall_med_imperial_16_style_01.iff", x=-18, z=0, y=8.75, ox=0, oy=.7, oz=0, ow=.7, cellid=-1, containmentType=-1}, -- left wall 4
      {templateFile = "object/static/structure/military/military_wall_med_imperial_16_style_01.iff", x=18, z=0, y=8.75, ox=0, oy=.7, oz=0, ow=.7, cellid=-1, containmentType=-1}, 
      
      -- wall 5
      {templateFile = "object/static/structure/military/military_wall_med_imperial_style_01.iff", x=15, z=0, y=-2, oy=-.4, oz=0, ow=.9, cellid=-1, containmentType=-1},-- right wall 5  
      {templateFile = "object/static/structure/military/military_wall_med_imperial_style_01.iff", x=-15, z=0, y=-2, ox=0, oy=.4, oz=0, ow=.9, cellid=-1, containmentType=-1}, -- left wall 5
      
      -- wall 6
      {templateFile = "object/static/structure/military/military_wall_med_imperial_style_01.iff", x=15, z=0, y=-8.5, ox=0, oy=.4, oz=0, ow=.9, cellid=-1, containmentType=-1}, -- right wall 6
      {templateFile = "object/static/structure/military/military_wall_med_imperial_style_01.iff", x=-15, z=0, y=-8.5, ox=0, oy=-.4, oz=0, ow=.9, cellid=-1, containmentType=-1}, -- left wall 6
      
      
      -- wall 7 changed form 16 to 15 in y
      {templateFile = "object/static/structure/military/military_wall_med_imperial_style_01.iff", x=15, z=0, y=-14.5, oy=-.4, oz=0, ow=.9, cellid=-1, containmentType=-1},-- right wall 7 
      {templateFile = "object/static/structure/military/military_wall_med_imperial_style_01.iff", x=-15, z=0, y=-14.5, ox=0, oy=.4, oz=0, ow=.9, cellid=-1, containmentType=-1}, -- left wall 7
      
      -- back walls
      {templateFile = "object/static/structure/military/military_wall_med_imperial_style_01.iff", x=-8, z=0, y=-17, ox=0, oy=-0, oz=0, ow=1, cellid=-1, containmentType=-1},
      {templateFile = "object/static/structure/military/military_wall_med_imperial_style_01.iff", x=-0, z=0, y=-17, ox=0, oy=-0, oz=0, ow=1, cellid=-1, containmentType=-1}, 
      {templateFile = "object/static/structure/military/military_wall_med_imperial_style_01.iff", x=8, z=0, y=-17, ox=0, oy=-0, oz=0, ow=1, cellid=-1, containmentType=-1}, 
      
      --NEW FRONT
      {templateFile = "object/static/structure/military/military_wall_med_imperial_style_01.iff", x=7, z=-2.5, y=47.5, ox=0, oy=.4, oz=0, ow=.9, cellid=-1, containmentType=-1}, -- Front right
      {templateFile = "object/static/structure/military/military_wall_med_imperial_style_01.iff", x=-7, z=-2.5, y=47.5, ox=0, oy=-.4, oz=0, ow=.9, cellid=-1, containmentType=-1},
   
      {templateFile = "object/static/structure/military/military_wall_med_imperial_style_01.iff", x=37, z=-2, y=35.5, ox=0, oy=.4, oz=0, ow=.9, cellid=-1, containmentType=-1}, -- Front right
      {templateFile = "object/static/structure/military/military_wall_med_imperial_style_01.iff", x=-37, z=-2, y=35.5, ox=0, oy=-.4, oz=0, ow=.9, cellid=-1, containmentType=-1},
     
      -- turret
      {templateFile = "object/installation/faction_perk/turret/tower_lg.iff", x=-15, z=0, y=20, ox=0, oy=-0,  oz=0, ow=1, cellid=-1, containmentType=-1}, -- left turret front
      {templateFile = "object/installation/faction_perk/turret/tower_lg.iff", x=15, z=0, y=20,  ox=0, oy=0, oz=0, ow=1, cellid=-1, containmentType=-1}, 
      {templateFile = "object/installation/faction_perk/turret/tower_lg.iff", x=-17, z=0, y=-5.5, ox=0, oy=.7,  oz=0, ow=-.7, cellid=-1, containmentType=-1}, -- back turret front
      {templateFile = "object/installation/faction_perk/turret/tower_lg.iff", x=17, z=0, y=-5.5,  ox=0, oy=.7, oz=0, ow=.7, cellid=-1, containmentType=-1},
      {templateFile = "object/installation/faction_perk/turret/block_lg.iff", x=0, z=0, y=47.5, ox=0, oy=-0,  oz=0, ow=1, cellid=-1, containmentType=-1}, -- front turret front
      {templateFile = "object/installation/faction_perk/turret/dish_lg.iff", x=40, z=0, y=35.5,  ox=0, oy=0, oz=0, ow=0, cellid=-1, containmentType=-1},
      {templateFile = "object/installation/faction_perk/turret/dish_lg.iff", x=-40, z=0, y=35.5,  ox=0, oy=0,  oz=0, ow=0, cellid=-1, containmentType=-1}, 
      
            
      {templateFile = "object/tangible/terminal/terminal_hq_imperial.iff", x = .38, z = .25, y = 1.75, ox = 0, oy = 0, oz = 0, ow = 1, cellid = 2, containmentType = -1 },
      {templateFile = "object/tangible/hq_destructible/power_regulator.iff", x = 14, z=-13.8, y=-4, ox = 0, oy =1, oz = 0, ow =0, cellid = 10, containmentType = -1 },
      {templateFile = "object/tangible/hq_destructible/override_terminal.iff", x = 12.75, z = -13.75, y = 10.2, ox = 0, oy = .7, oz = 0, ow =.7, cellid = 9, containmentType = -1 },
      {templateFile = "object/tangible/hq_destructible/security_terminal.iff", x = -5.5, z = -13.75, y = 7.5, ox = 0, oy = 1, oz = 0, ow = 0, cellid = 7, containmentType = -1 },
      {templateFile = "object/tangible/hq_destructible/uplink_terminal.iff", x = 6.5, z = -6.75, y = -10, ow =1, ox =0, oz = 0, oy =0, cellid = 5, containmentType = -1},
      {templateFile = "object/tangible/terminal/terminal_hq_turret_control.iff", x=5, z=.25, y=2, ow=-.7, ox=0, oz=0, oy=.7, cellid=2, containmentType=-1},
      {templateFile = "object/tangible/terminal/terminal_hq_turret_control.iff", x=5, z=.25, y=.5, ow=-.7, ox=0, oz=0, oy=.7, cellid=2, containmentType=-1},
      {templateFile = "object/tangible/terminal/terminal_hq_turret_control.iff", x=5, z=.25, y=-1, ow=-.7, ox=0, oz=0, oy=.7, cellid=2, containmentType=-1},
      {templateFile = "object/tangible/terminal/terminal_hq_turret_control.iff", x=5, z=.25, y=-2.5, ow=-.7, ox=0, oz=0, oy=.7, cellid=2, containmentType=-1},
      
          
      {templateFile="object/tangible/terminal/terminal_mission.iff", x=18.25, z=-13.75, y=12.75, ow=-.69, ox=0, oz=0, oy=.71, cellid=9, containmentType=-1},
      {templateFile="object/tangible/terminal/terminal_bank.iff", x=-7, z=-13.75, y=-3.3, ow=.7, ox=0, oz=0, oy=.66, cellid=7, containmentType=-1},
      {templateFile="object/tangible/terminal/terminal_insurance.iff", x=-8, z=-13.75, y=11.75, ow=.7, ox=0, oz=0, oy=.7, cellid=8, containmentType=-1},
      {templateFile="object/tangible/terminal/terminal_mission_imperial.iff", x=-3, z=.25, y=-5.5, ow=1, ox=0, oz=0, oy=0, cellid=3, containmentType=-1},
          
      
      {templateFile = "object/installation/faction_perk/minefield/field_1x1.iff", x=7, z=0, y=45,  ox=0, oy=.7, oz=0, ow=.7, cellid=-1, containmentType=-1}, 
      {templateFile = "object/installation/faction_perk/minefield/field_1x1.iff", x=-7, z=0, y=45,  ox=0, oy=.7, oz=0, ow=.7, cellid=-1, containmentType=-1}, 
      {templateFile = "object/installation/faction_perk/minefield/field_1x1.iff", x=0, z=0, y=25,  ox=0, oy=.7, oz=0, ow=.7, cellid=-1, containmentType=-1}, 
      
      {templateFile = "object/installation/faction_perk/covert_detector/detector_base.iff", x=15, z=0, y=35,  ox=0, oy=-.3, oz=0, ow=1, cellid=-1, containmentType=-1}, 
      {templateFile = "object/installation/faction_perk/covert_detector/detector_base.iff", x=-15, z=0, y=35,  ox=0, oy=-.3, oz=0, ow=1, cellid=-1, containmentType=-1}, 
      {templateFile = "object/installation/faction_perk/covert_detector/detector_base.iff", x=30, z=0, y=35,  ox=0, oy=-.3, oz=0, ow=1, cellid=-1, containmentType=-1}, 
      {templateFile = "object/installation/faction_perk/covert_detector/detector_base.iff", x=-30, z=0, y=35,  ox=0, oy=-.3, oz=0, ow=1, cellid=-1, containmentType=-1}, 
 

          -- \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
          {templateFile = "object/resource_container/energy_radioactive.iff", 
      x = 10, z = 4, y = 0, 
      ox = 0, oy = -.13, oz = 0, ow = .99, 
      cellid = -1, 
      containmentType = -1},
      
                {templateFile = "object/resource_container/energy_radioactive.iff", 
      x = 20, z = 4, y = 0, 
      ox = 0, oy = -.13, oz = 0, ow = .99, 
      cellid = -1, 
      containmentType = -1},

          {templateFile = "object/resource_container/inorganic_gas.iff", 
      x = -10, z = 4, y = 0, 
      ox = 0, oy = -.13, oz = 0, ow = .99, 
      cellid = -1, 
      containmentType = -1},
      
                {templateFile = "object/resource_container/inorganic_gas.iff", 
      x = -20, z = 4, y = 0, 
      ox = 0, oy = -.13, oz = 0, ow = .99, 
      cellid = -1, 
      containmentType = -1},

                {templateFile = "object/resource_container/inorganic_chemicals.iff", 
      x = 0, z = 4, y = 10, 
      ox = 0, oy = -.13, oz = 0, ow = .99, 
      cellid = -1, 
      containmentType = -1},
      
                      {templateFile = "object/resource_container/inorganic_chemicals.iff", 
      x = 0, z = 4, y = 20, 
      ox = 0, oy = -.13, oz = 0, ow = .99, 
      cellid = -1, 
      containmentType = -1},
      
                      {templateFile = "object/resource_container/inorganic_bottle_water.iff", 
      x = 0, z = 4, y = -10, 
      ox = 0, oy = -.13, oz = 0, ow = .99, 
      cellid = -1, 
      containmentType = -1},
      
              {templateFile = "object/resource_container/inorganic_bottle_water.iff", 
      x = 0, z = 4, y = -20, 
      ox = 0, oy = -.13, oz = 0, ow = .99, 
      cellid = -1, 
      containmentType = -1},
      
      
      {templateFile = "object/resource_container/organic_structure.iff", 
      x = 0, z = 4.3, y = 0, 
      ox = 0, oy = -.13, oz = 0, ow = .99, 
      cellid = -1, 
      containmentType = -1},
      -- \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
      
      
    },
    
    childCreatureObjects = {
      { mobile="at_st", x=-48, z=0, y=48, cellid=-1, respawn=600, containmentType=-1, heading=3.14},
      { mobile="at_st", x=48, z=0, y=48, cellid=-1, respawn=600, containmentType=-1, heading=3.14},      
      
      { mobile="imp_strong_droideka", x=-45, z=0, y=25, cellid=-1, respawn=600, containmentType=-1, heading=3.14},
      { mobile="imp_strong_droideka", x=45, z=0, y=25, cellid=-1, respawn=600, containmentType=-1, heading=3.14},   
      { mobile="imp_strong_droideka", x=0, z=0, y=44.5, cellid=-1, respawn=600, containmentType=-1, heading=0},

      { mobile="prophet_of_the_dark_side", x=0, z=0, y=38, cellid=-1, respawn=300, containmentType=-1, heading=0},
      
      { mobile="imperial_warrant_officer_i", x=4.1, z=0, y=0.8, cellid=2, respawn=300, containmentType=-1, heading=1.57},
      { mobile="imperial_warrant_officer_i", x=4.1, z=0, y=-1.8, cellid=2, respawn=300, containmentType=-1, heading=1.57},
  
      { mobile="dark_trooper", x=-3.5, z=0, y=-4.2, cellid=3, respawn=300, containmentType=-1, heading=1.57},

      { mobile="dark_trooper", x=4.4, z=-6.75, y=4.9, cellid=4, respawn=300, containmentType=-1, heading=4.71},
      { mobile="imp_strong_droideka", x=4.4, z=-6.75, y=3.9, cellid=4, respawn=300, containmentType=-1, heading=4.71},

      { mobile="dark_trooper", x=3.5, z=-6.75, y=-3, cellid=5, respawn=300, containmentType=-1, heading=0},
      { mobile="prophet_of_the_dark_side", x=5, z=-6.75, y=-3, cellid=5, respawn=300, containmentType=-1, heading=0},
      { mobile="dark_trooper", x=3.5, z=-6.75, y=-5, cellid=5, respawn=300, containmentType=-1, heading=0},
      { mobile="dark_trooper", x=5, z=-6.75, y=-5, cellid=5, respawn=300, containmentType=-1, heading=0},

      { mobile="imperial_major", x=-0.35, z=-13.75, y=-3.65, cellid=7, respawn=300, containmentType=-1, heading=4.71},
      { mobile="dark_trooper", x=-6.5, z=-13.75, y=5.5,cellid=7, respawn=300, containmentType=-1, heading=3.14},
      { mobile="dark_trooper", x=-3.4, z=-13.75, y=3,cellid=7, respawn=300, containmentType=-1, heading=3.14},

      { mobile="imperial_medic", x=-5.6, z=-13.75, y=13.6, cellid=8, respawn=300, containmentType=-1, heading=0},
      { mobile="imperial_medic", x=7.3, z=-13.75, y=14.3, cellid=8, respawn=300, containmentType=-1, heading=3.14},

      { mobile="stormtrooper", x=14.2, z=-13.75, y=-10, cellid=10, respawn=300, containmentType=-1, heading=0},
      { mobile="dark_trooper", x=15, z=-13.75, y=-4,cellid=10, respawn=300, containmentType=-1, heading=0},
      { mobile="imperial_general", x=15.9, z=-13.75, y=-17.25,cellid=10, respawn=300, containmentType=-1, heading=0},
      { mobile="master_prophet_of_the_dark_side", x=14.9, z=-13.75, y=-17.25,cellid=10, respawn=600, containmentType=-1, heading=0},

      { mobile="imperial_recruiter", x=11.5, z=-11.5, y=-21, cellid=10, containmentType=-1, 
          respawn=60, heading=1.59},
    },
    


}

ObjectTemplates:addTemplate(object_building_faction_perk_hq_hq_rev_s04_imp, "object/building/faction_perk/hq/hq_rev_s04_imp.iff")
