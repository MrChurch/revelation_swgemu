-- Author: Matthias Muente (matthias.muente@gmx.de)
-- https://revelationonline.net 

czerka_research_pirate = ScreenPlay:new {
}
registerScreenPlay("czerka_research_pirate", true)

local ObjectManager = require("managers.object.object_manager")
local ScreenplayHelper = require("helper.screenplayHelper")
local PatrolHelper = require("helper.patrolHelper")
local CombatHelper = require("helper.combatHelper")

function czerka_research_pirate:start()
    if (isZoneEnabled("endor")) then
        self:spawnBuilding()
        self:spawnMobiles()
        self:spawnTerminals()
        self:spawnTrigger()
    end
end

function czerka_research_pirate:spawnBuilding()
    local walliff = "object/static/structure/military/military_wall_med_imperial_16_style_01.iff"
    local pCreature = spawnMobile("endor", "cll8_binary_load_lifter", 600, -6754.5, 26.6, 5273, 250, 0)   
     
    spawnBuilding(pCreature,"object/building/general/landing_pad_s01.iff", -2570, 5250, 0, 193.5)
    spawnBuilding(pCreature,"object/building/military/pirate_warehouse.iff", -2558, 5187, 0)
    spawnBuilding(pCreature,"object/building/military/pirate_outpost.iff", -2575, 5288, 180)
    spawnBuilding(pCreature,"object/building/military/pirate_warehouse.iff", -2560, 5288, 180)
    spawnBuilding(pCreature,"object/building/poi/scout_camp_s4.iff", -2595, 5171, 0)
    spawnBuilding(pCreature,"object/building/poi/scout_camp_s4.iff", -2700, 5164, 0)
    spawnBuilding(pCreature,"object/building/poi/scout_camp_s4.iff", -2637, 5267, 0)
    spawnBuilding(pCreature,"object/building/poi/scout_camp_s5.iff", -2651, 5155, 0)
    spawnBuilding(pCreature,"object/building/poi/scout_camp_s3.iff", -2705, 5147, 0)
    spawnBuilding(pCreature,"object/building/poi/corellia_swoop_large3.iff", -2619, 5261, 180)

    spawnSceneObject("endor","object/static/structure/military/military_wall_weak_rebl_16_style_01.iff", -2715, 197.5 , 5177, 0, math.rad(135))
    spawnSceneObject("endor","object/static/structure/military/military_wall_weak_rebl_16_style_01.iff", -2722, 197.5 , 5162, 0, math.rad(90))
    spawnSceneObject("endor","object/static/structure/military/military_wall_weak_rebl_16_style_01.iff", -2722, 197.5 , 5144, 0, math.rad(90))
    spawnSceneObject("endor","object/static/installation/mockup_power_generator_photo_bio_style_1.iff", -2569, 9999 , 5186, 0, math.rad(270))
    spawnSceneObject("endor","object/static/installation/mockup_power_generator_fusion_style_1.iff", -2635, 9999 , 5184, 0, math.rad(270))
    spawnSceneObject("endor","object/static/installation/mockup_mining_ore_harvester_style_2.iff", -2612, 9999 , 5202, 0, math.rad(90))    
    spawnSceneObject("endor","object/static/installation/mockup_mining_ore_harvester_style_2.iff", -2630, 9999 , 5202, 0, math.rad(90))

    spawnSceneObject("endor","object/tangible/camp/camp_tent_s6.iff", -2663, 9999 , 5142, 0, math.rad(180))
    spawnSceneObject("endor","object/tangible/camp/camp_tent_s6.iff", -2633, 9999 , 5142, 0, math.rad(150))
    spawnSceneObject("endor","object/tangible/camp/camp_tent_s6.iff", -2570, 9999 , 5160, 0, math.rad(0))
    spawnSceneObject("endor","object/tangible/camp/camp_tent_s6.iff", -2578, 9999 , 5150, 0, math.rad(90))
    spawnSceneObject("endor","object/tangible/camp/camp_tent_s6.iff", -2662, 9999 , 5254, 0, math.rad(150))
    spawnSceneObject("endor","object/tangible/camp/camp_tent_s6.iff", -2657, 9999 , 5267, 0, math.rad(120))

    spawnSceneObject("endor","object/tangible/camp/camp_tent_s6.iff", -2657, 9999 , 5267, 0, math.rad(120))
    spawnSceneObject("endor","object/tangible/camp/camp_tent_s6.iff", -2657, 9999 , 5267, 0, math.rad(120))

    spawnSceneObject("endor","object/tangible/ship/components/engine/eng_corellian_cruiser_grade_mk2.iff", -2612, 9999 , 5265, 0, math.rad(90))
    spawnSceneObject("endor","object/tangible/ship/components/engine/eng_corellian_cruiser_grade_mk2.iff", -2608, 9999 , 5250, 0, math.rad(90))

    spawnSceneObject("endor","object/ship/decimator.iff", -2636, 212 , 5232, 0, math.rad(90)) 
 
    spawnSceneObject("endor","object/static/structure/corellia/corl_power_bubble_node.iff", -2605, 9999 , 5290, 0, math.rad(180))
    spawnSceneObject("endor","object/static/structure/corellia/corl_power_bubble_node.iff", -2630, 9999 , 5177, 0, math.rad(180))

    spawnSceneObject("endor","object/installation/battlefield/destructible/imperial_gate_house.iff", -2690, 9999 , 5240, 0, math.rad(270))
    spawnSceneObject("endor","object/installation/battlefield/destructible/imperial_gate_house.iff", -2677, 9999 , 5185, 0, math.rad(270))
    spawnSceneObject("endor","object/installation/battlefield/destructible/imperial_gate_house.iff", -2677, 9999 , 5130, 0, math.rad(180))
    spawnSceneObject("endor","object/installation/battlefield/destructible/imperial_gate_house.iff", -2590, 9999 , 5130, 0, math.rad(180))
    spawnSceneObject("endor","object/installation/battlefield/destructible/imperial_gate_house.iff", -2544, 9999 , 5174, 0, math.rad(90))
    spawnSceneObject("endor","object/installation/battlefield/destructible/imperial_gate_house.iff", -2544, 9999 , 5220, 0, math.rad(90))
    spawnSceneObject("endor","object/installation/battlefield/destructible/imperial_gate_house.iff", -2544, 9999 , 5295, 0, math.rad(0))
    spawnSceneObject("endor","object/installation/battlefield/destructible/imperial_gate_house.iff", -2633, 9999 , 5295, 0, math.rad(0))

    ScreenplayHelper:spawnSceneObjectlineToDirection("endor", walliff, -2540.0, 5300.0, "W", 6, 16)
    ScreenplayHelper:spawnSceneObjectlineToDirection("endor", walliff, -2540.0, 5300.0, "S", 8, 16)
    ScreenplayHelper:spawnSceneObjectlineToDirection("endor", walliff, -2540.0, 5172.0, "SW", 4, 16)
    ScreenplayHelper:spawnSceneObjectlineToDirection("endor", walliff, -2636.0, 5300.0, "SW", 5, 16)
    ScreenplayHelper:spawnSceneObjectlineToDirection("endor", walliff, -2585.0, 5126.0, "W", 6, 16)
    ScreenplayHelper:spawnSceneObjectlineToDirection("endor", walliff, -2681.0, 5126.0, "N", 4, 16)
    ScreenplayHelper:spawnSceneObjectlineToDirection("endor", walliff, -2693.0, 5243.0, "S", 4, 16)

    spawnSceneObject("endor","object/static/particle/particle_distant_ships_dogfight_t_vs_x_2.iff", -2615, 240 , 5212, 0, math.rad(320))
    spawnSceneObject("endor","object/static/structure/general/ins_shield_generator.iff", -2575, 9999 , 5214, 0, math.rad(0))
    
    spawnSceneObject("endor","object/static/particle/pt_miasma_of_fog_gray.iff", -2648, 201 , 5229, 0, math.rad(0))
    spawnSceneObject("endor","object/static/particle/pt_miasma_of_fog_gray.iff", -2633, 201 , 5229, 0, math.rad(0))

    local pBuilding = spawnBuilding(pCreature,"object/building/general/rori_garyn_bunker.iff", -2595, 5288, 180)
    spawnSceneObject("endor","object/ship/player/player_hutt_light_s01.iff", -2585, 202 , 5250, 0, math.rad(320))
    spawnSceneObject("endor","object/ship/player/player_hutt_light_s01.iff", -2572, 202 , 5250, 0, math.rad(320))
    spawnSceneObject("endor","object/ship/player/player_hutt_light_s01.iff", -2559, 202 , 5250, 0, math.rad(320))
    local sceneCellObject = LuaSceneObject(pBuilding)
    local building = LuaBuildingObject(pBuilding)
    
    for i = 1, 9, 1 do
        sceneCellObject:_setObject(building:getCell(i))
        writeData("czerka_outpost_pirate_boss:cell" .. i, sceneCellObject:getObjectID())
    end
end

function czerka_research_pirate:spawnMobiles()
    spawnMobile("endor", "czerka_outpost_pirate_privateer", 360, -2700, 200, 5153, 180, 0)
    spawnMobile("endor", "czerka_outpost_pirate_privateer_r", 250, -2691, 200, 5176, 180, 0)
    spawnMobile("endor", "czerka_outpost_pirate_privateer", 360, -2686, 200, 5177, 180, 0)
    spawnMobile("endor", "czerka_outpost_pirate_crewman", 350, -2678, 200, 5193, 270, 0)
    spawnMobile("endor", "czerka_outpost_pirate_crewman_r", 360, -2690, 204.2, 5241, 270, 0)
    spawnMobile("endor", "czerka_outpost_pirate_privateer", 360, -2631, 204.2, 5295, 0, 0)
    spawnMobile("endor", "czerka_outpost_pirate_privateer_r", 250, -2645, 204.2, 5262, 300, 0)
    spawnMobile("endor", "czerka_outpost_pirate_privateer_r", 420, -2544, 204.2, 5295, 0, 0)
    spawnMobile("endor", "czerka_outpost_pirate_privateer", 350, -2543, 204.2, 5220, 90, 0)
    spawnMobile("endor", "czerka_outpost_pirate_privateer", 360, -2543, 204.2, 5173, 90, 0)
    spawnMobile("endor", "czerka_outpost_pirate_privateer_r", 350, -2592, 204.2, 5130, 180, 0)
    spawnMobile("endor", "czerka_outpost_pirate_privateer_r", 420, -2678, 204.2, 5130, 180, 0)
    spawnMobile("endor", "czerka_outpost_pirate_privateer_r", 250, -2678, 204.2, 5186, 270, 0)
    spawnMobile("endor", "czerka_outpost_pirate_crewman", 360, -2644.6, 200, 5261, 270, 0)
    spawnMobile("endor", "czerka_outpost_pirate_privateer", 350, -2719.6, 200, 5164, 270, 0)
    spawnMobile("endor", "czerka_outpost_pirate_privateer_r", 360, -2713.6, 200, 5134, 270, 0)
    spawnMobile("endor", "czerka_outpost_pirate_privateer", 250, -2648.9, 200, 5172, 0, 0)
    spawnMobile("endor", "czerka_outpost_pirate_crewman", 360, -2610.9, 200, 5249, 0, 0)
    spawnMobile("endor", "czerka_outpost_pirate_privateer_r", 350, -2609.9, 200, 5288, 0, 0)
    spawnMobile("endor", "czerka_outpost_pirate_privateer", 350, -2561.9, 200, 5195, 0, 0)
    spawnMobile("endor", "czerka_outpost_pirate_privateer_r", 350, -2562.9, 200, 5278, 180, 0)
    spawnMobile("endor", "czerka_outpost_pirate_crewman", 350, -2594.9, 200, 5165, 180, 0)
    spawnMobile("endor", "czerka_outpost_pirate_crewman_r", 410, -2609.9, 200, 5178, 180, 0)
    spawnMobile("endor", "czerka_outpost_droideka", 450, -2591.9, 200, 5274, 180, 0)
    spawnMobile("endor", "czerka_outpost_droideka", 250, -2687.3, 200, 5193, 180, 0)

    spawnMobile("endor", "czerka_outpost_pirate_lieutenant", 650, -2596.3, 200, 5259, 90, 0)
    spawnMobile("endor", "czerka_outpost_pirate_lieutenant", 650, -2648.3, 200, 5152, 180, 0)
    spawnMobile("endor", "czerka_outpost_pirate_lieutenant", 650, -2591.3, 200, 5171, 290, 0)
    spawnMobile("endor", "czerka_outpost_pirate_lieutenant", 650, -2558.3, 200, 5171, 90, 0)
    ScreenplayHelper:spawnMobileAndIdle("endor", "czerka_outpost_pirate_lieutenant", 650, -2633.3, 200, 5243, 0, 0)

    spawnMobile("endor", "czerka_outpost_slave", 500, -2645.3, 200, 5161, 170, 0)
    spawnMobile("endor", "czerka_outpost_slave", 500, -2699.3, 200, 5158, 160, 0)
    ScreenplayHelper:spawnMobileAndIdle("endor", "czerka_outpost_slave", 500, -2703.3, 200, 5145, 180, 0)
    spawnMobile("endor", "czerka_outpost_slave", 500, -2636.3, 200, 5267, 150, 0)
    spawnMobile("endor", "czerka_outpost_slave", 500, -2613.3, 200, 5253, 180, 0)
    ScreenplayHelper:spawnMobileAndIdle("endor", "czerka_outpost_slave", 500, -2643.3, 200, 5267, 270, 0)
    ScreenplayHelper:spawnMobileAndIdle("endor", "czerka_outpost_slave", 500, -2610.3, 200, 5264, 250, 0)
    spawnMobile("endor", "czerka_outpost_slave", 500, -2613.3, 200, 5166, 270, 0)
    spawnMobile("endor", "czerka_outpost_slave", 500, -2627.3, 200, 5143, 290, 0)
    spawnMobile("endor", "czerka_outpost_slave", 500, -2660.3, 200, 5163, 270, 0)
    spawnMobile("endor", "czerka_outpost_slave", 500, -2621.3, 200, 5261, 260, 0)
    spawnMobile("endor", "czerka_outpost_slave", 500, -2562.3, 200, 5198, 190, 0)
    spawnMobile("endor", "czerka_outpost_slave", 500, -2568.3, 200, 5178, 190, 0)

    spawnMobile("endor", "cll8_binary_load_lifter", 0, -2605.3, 200, 5255, 250, 0)
    spawnMobile("endor", "cll8_binary_load_lifter", 0, -2582.3, 200, 5261, 150, 0)

    ScreenplayHelper:spawnMobileAndIdle("endor", "czerka_outpost_slave", 500, -2654.3, 200, 5208, 270, 0)
    ScreenplayHelper:spawnMobileAndIdle("endor", "czerka_outpost_slave", 500, -2628.3, 200, 5244, 270, 0)
    
    ScreenplayHelper:spawnMobileAndIdle("endor", "czerka_outpost_pirate_crewman_r", 200, -2588.6, 200, 5189, 180, 0)
    
    ScreenplayHelper:spawnMobileAndIdle("endor", "czerka_outpost_pirate_privateer", 360, -2702.6, 200, 5116, 180, 0)
    ScreenplayHelper:spawnMobileAndIdle("endor", "czerka_outpost_pirate_privateer_r", 420, -2716.6, 200, 5124, 270, 0)
    ScreenplayHelper:spawnMobileAndIdle("endor", "czerka_outpost_pirate_privateer_r", 300, -2658.6, 200, 5217, 270, 0)
    ScreenplayHelper:spawnMobileAndIdle("endor", "czerka_outpost_pirate_privateer", 410, -2609.6, 200, 5235, 270, 0)
    ScreenplayHelper:spawnMobileAndIdle("endor", "czerka_outpost_pirate_privateer_r", 370, -2617.6, 200, 5165, 270, 0)

    ScreenplayHelper:spawnMobileAndIdle("endor", "czerka_outpost_fed_battle_droid", 360, -2728.6, 200, 5216, 270, 0)
    ScreenplayHelper:spawnMobileAndIdle("endor", "czerka_outpost_fed_battle_droid", 340, -2760.6, 200, 5124, 270, 0)
    ScreenplayHelper:spawnMobileAndIdle("endor", "czerka_outpost_fed_battle_droid", 370, -2720.6, 200, 5070, 270, 0)
    ScreenplayHelper:spawnMobileAndIdle("endor", "czerka_outpost_fed_battle_droid", 300, -2655.6, 200, 5196, 270, 0)
    ScreenplayHelper:spawnMobileAndIdle("endor", "czerka_outpost_fed_battle_droid", 360, -2723.6, 200, 5196, 270, 0)
    ScreenplayHelper:spawnMobileAndIdle("endor", "czerka_outpost_fed_battle_droid", 300, -2776.6, 200, 5084, 270, 0)
    ScreenplayHelper:spawnMobileAndIdle("endor", "czerka_outpost_fed_battle_droid", 240, -2614.6, 200, 5277, 270, 0)

    spawnMobile("endor", "czerka_outpost_fed_battle_droid", 600, -2580.6, 200, 5208, 270, 0)
    ScreenplayHelper:spawnMobileAndIdle("endor", "czerka_outpost_fed_battle_droid", 600, -2627.6, 200, 5286, 270, 0)
    spawnMobile("endor", "czerka_outpost_fed_battle_droid", 600, -2593.6, 200, 5259, 270, 0)
    spawnMobile("endor", "czerka_outpost_fed_battle_droid", 600, -2561.6, 200, 5259, 270, 0)
    spawnMobile("endor", "czerka_outpost_fed_battle_droid", 600, -2626.3, 200, 5176, 270, 0)

    PatrolHelper:spawnSquadwithRespawn("czerka_research_pirate", 16, 2, -2685, 200, 5157.5, 270, 1.5, 1.5, "endor", "czerka_outpost_fed_battle_droid", 400)
    PatrolHelper:spawnSquadwithRespawn("czerka_research_pirate", 6, 3, -2609, 200, 5147.5, 0, 2, 2, "endor", "czerka_outpost_fed_battle_droid", 400)
    
    -- BOSSRoom
    local cell9 = readData("czerka_outpost_pirate_boss:cell9")
    spawnMobile("endor", "four_lom", 0, -6.8, -13.6, -8.6, 90, cell9)
    spawnMobile("endor", "four_lom", 0, -6.8, -13.6, -6.5, 90, cell9)
    spawnMobile("endor", "four_lom", 0, -6.8, -13.6, -4.2, 90, cell9)
    spawnMobile("endor", "four_lom", 0, 1.7, -13.6, -8.6, 270, cell9)
    spawnMobile("endor", "four_lom", 0, 1.7, -13.6, -6.5, 270, cell9)
    spawnMobile("endor", "four_lom", 0, 1.7, -13.6, -4.2, 270, cell9)
     
    spawnMobile("endor", "czerka_outpost_droideka", 120, 1.3, -13.6, 1.2, 270, cell9)
    spawnMobile("endor", "czerka_outpost_pirate_crewman_r", 320, -2.4, -13.6, -4.1, 0, cell9)
    spawnMobile("endor", "czerka_outpost_pirate_lieutenant", 260, -4.0, -13.6, -6.8, 0, cell9)
    spawnMobile("endor", "czerka_outpost_pirate_crewman", 480, -0.5, -13.6, -8.1, 0, cell9)
    
    spawnMobile("endor", "czerka_outpost_pirate_crewman_r", 280, 5.5, -6.6, -5.1, 0, readData("czerka_outpost_pirate_boss:cell7"))
    spawnMobile("endor", "czerka_outpost_pirate_lieutenant", 320, -4.3, -6.6, -14.2, 0, readData("czerka_outpost_pirate_boss:cell6"))
    spawnMobile("endor", "czerka_outpost_pirate_lieutenant", 320, -4.0, -6.6, -5.5, 0, readData("czerka_outpost_pirate_boss:cell5"))
end

function czerka_research_pirate:spawnTrigger()
    local pTrigger = spawnMobile("endor", "czerka_outpost_pirate_lieutenant",1220, -2626, 200, 5146, 0, 0) 
    createObserver(OBJECTDESTRUCTION, "czerka_research_pirate", "spawnBoss", pTrigger)
    return 0
end


function czerka_research_pirate:spawnBoss(pTrigger, pPlayer)
    -- set despawntime like trigger
    spatialChat(pTrigger, "Arghh Boss you should ....")
        
    local pBoss = spawnMobile("yavin4", "czerka_outpost_pirate_leader", 0, -3.1, -13.6, -14.1, 0, readData("czerka_outpost_pirate_boss:cell9"))
 
    createObserver(DAMAGERECEIVED,"czerka_research_pirate","bossLogic", pBoss)
    createObserver(OBJECTDESTRUCTION, "czerka_research_pirate", "reward", pBoss)
    createEvent(1200000, "czerka_research_pirate", "despawnBoss", pBoss)   
    
    writeData("czerka_outpost_pirate_boss_code1", math.random(9800) + 100)
    writeData("czerka_outpost_pirate_boss_code2", math.random(9800) + 100)
    writeData("czerka_outpost_pirate_boss_code3", math.random(899000) + 100000)

    writeData("czerka_outpost_pirate_boss_Msg1Trigger",0)
    writeData("czerka_outpost_pirate_boss_Msg2Trigger",0)
    writeData("czerka_outpost_pirate_boss_Msg3Trigger",0)
    writeData("czerka_outpost_pirate_boss_TerminalState1",0)
    writeData("czerka_outpost_pirate_boss_TerminalState2",0)
    writeData("czerka_outpost_pirate_boss_TerminalState3",0)
    return 0
end

function czerka_research_pirate:despawnBoss(pMobile, pPlayer)
   
    CombatHelper:forcePeace(pMobile)
    ScreenplayHelper:despawnCreature(pMobile)

    writeData("czerka_outpost_pirate_boss_Msg1Trigger",0)
    writeData("czerka_outpost_pirate_boss_Msg2Trigger",0)
    writeData("czerka_outpost_pirate_boss_Msg3Trigger",0)
    writeData("czerka_outpost_pirate_boss_TerminalState1",0)
    writeData("czerka_outpost_pirate_boss_TerminalState2",0)
    writeData("czerka_outpost_pirate_boss_TerminalState3",0)
    writeData("czerka_outpost_pirate_boss_code1", math.random(9800) + 100)
    writeData("czerka_outpost_pirate_boss_code2", math.random(9800) + 100)
    writeData("czerka_outpost_pirate_boss_code3", math.random(899000) + 100000)
end

function czerka_research_pirate:bossLogic(pBoss, pPlayer)
    ObjectManager.withCreatureObject(pBoss, function(boss)
        ObjectManager.withCreatureObject(pPlayer, function(player)
            if (CombatHelper:checkCreatureDistance(-2592, 186, 5303, 15, pBoss) == false) then
                spatialChat(pBoss, "Time to go back to my Medic Droids")
                CombatHelper:healCreatureToMax(pBoss)
                CombatHelper:forcePeace(pBoss)
                writeData("czerka_outpost_pirate_boss_bossState:",0)
            else
                if (CombatHelper:logicBossState(pBoss, 0.7, "czerka_outpost_pirate_boss_TerminalState1", 0) == true) then
                    if (readData("czerka_outpost_pirate_boss_Msg1Trigger") == 0) then
                        printf("Pirate Base code 1:" .. readData("czerka_outpost_pirate_boss_code1") .. "\n")
                        spatialChat(pBoss, "Activate the * pirate emergency shields * ! (you see a blue glowing around him). He used a Passcode: " .. readData("czerka_outpost_pirate_boss_code1"))
                        spatialChat(pBoss, "Activate reflector shield !")
                        writeData("czerka_outpost_pirate_boss_Msg1Trigger",1)
                    end
                    CombatHelper:setHAM(pBoss, 0.7)
                    player:inflictDamage(pPlayer, 0, 650, 0)
                    player:sendSystemMessage("You feel electricity coursing through your body! The shield is reflecting the damage !")
                end
                if (CombatHelper:logicBossState(pBoss, 0.5, "czerka_outpost_pirate_boss_TerminalState2", 0) == true) then
                    if (readData("czerka_outpost_pirate_boss_Msg2Trigger") == 0) then
                        printf("Pirate Base code 2:" .. readData("czerka_outpost_pirate_boss_code2") .. "\n")
                        spatialChat(pBoss, "Activate the emergency procedures! (you see the medic droids moving) " .. readData("czerka_outpost_pirate_boss_code2"))
                        writeData("czerka_outpost_pirate_boss_Msg2Trigger",1)
                    end
                    CombatHelper:healCreatureHAM(pBoss, 5000)
                end
                if (CombatHelper:logicBossState(pBoss, 0.3, "czerka_outpost_pirate_boss_TerminalState1", 1) == true) then
                    if (readData("czerka_outpost_pirate_boss_Msg3Trigger") == 0) then
                        writeData("czerka_outpost_pirate_boss_code1", math.random(9800) + 100)
                        spatialChat(pBoss, "Reset and overload the emergency shields! (you see a blue glowing around him) " .. readData("czerka_outpost_pirate_boss_code1"))
                        writeData("czerka_outpost_pirate_boss_Msg3Trigger",1)
                        spatialChat(pBoss, "Activate reflector shield !")
                    end
                    CombatHelper:setHAM(pBoss, 0.3)
                    player:inflictDamage(pPlayer, 0, 850, 0)
                    player:sendSystemMessage("You feel electricity coursing through your body! The shield is reflecting the damage !")
                end
            end
        end)
    end)
    return 0
end

function czerka_research_pirate:spawnTerminals()

    -- bosspower
    local pSceneObject = spawnSceneObject("endor", "object/tangible/dungeon/terminal_free_s1.iff", -2608, 200, 5290, 0, math.rad(270))
    ObjectManager.withSceneObject(pSceneObject, function(scene)
        scene:setCustomObjectName("Pirate Shieldcontrol")
    end)
    createObserver(OBJECTRADIALUSED, "czerka_research_pirate", "notifyTerminalUsed", pSceneObject)
    writeData("czerka_outpost_pirate_boss:Termianal1_id:", LuaSceneObject(pSceneObject):getObjectID())
    -- droidcontrol
    pSceneObject = spawnSceneObject("endor", "object/tangible/dungeon/terminal_free_s1.iff", -2627.4, 200, 5177, 0, math.rad(90))
    ObjectManager.withSceneObject(pSceneObject, function(scene)
        scene:setCustomObjectName("Droidcontrol")
    end)
    createObserver(OBJECTRADIALUSED, "czerka_research_pirate", "notifyTerminalUsed", pSceneObject)
    writeData("czerka_outpost_pirate_boss:Termianal2_id:", LuaSceneObject(pSceneObject):getObjectID())
    -- shieldgenerator 
    pSceneObject = spawnSceneObject("endor", "object/tangible/dungeon/terminal_free_s1.iff", -2578, 200, 5211, 0, math.rad(270))
    ObjectManager.withSceneObject(pSceneObject, function(scene)
        scene:setCustomObjectName("Outpost Shieldgenerator Control")
    end)
    createObserver(OBJECTRADIALUSED, "czerka_research_pirate", "notifyTerminalUsed", pSceneObject)
    writeData("czerka_outpost_pirate_boss:Termianal3_id:", LuaSceneObject(pSceneObject):getObjectID())
end    
    
function czerka_research_pirate:notifyTerminalUsed(pKeypad, pPlayer, radialSelected)
    if (radialSelected == 20) then
        --We need to show to the user the keypad sui.
        local suiManager = LuaSuiManager()
        suiManager:sendKeypadSui(pKeypad, pPlayer, "czerka_research_pirate", "keypadSuiCallback")
    end
    return 0
end

function czerka_research_pirate:keypadSuiCallback(pCreature, pSui, cancelPressed, enteredCode, pressedButton)
    local suiBox = LuaSuiBox(pSui)
    local pUsingObject = suiBox:getUsingObject()
    ObjectManager.withCreatureObject(pCreature, function(player)
        local objectID = LuaSceneObject(pUsingObject):getObjectID()
        local keypadCode = math.random(99900) + 100
        local isTerminalNr = 0

        if objectID == readData("czerka_outpost_pirate_boss:Termianal1_id:") then
            keypadCode = readData("czerka_outpost_pirate_boss_code1")
            isTerminalNr = 1
        elseif objectID == readData("czerka_outpost_pirate_boss:Termianal2_id:") then
            keypadCode = readData("czerka_outpost_pirate_boss_code2")
            isTerminalNr = 2
        elseif objectID == readData("czerka_outpost_pirate_boss:Termianal3_id:") then
            keypadCode = readData("czerka_outpost_pirate_boss_code3")
            isTerminalNr = 3
        end

        if (pressedButton == "enter") then
            if (tonumber(enteredCode) == keypadCode) then
                player:sendSystemMessage("You have successfully entered the code")
                if (isTerminalNr == 1) then
                    if readData("czerka_outpost_pirate_boss_TerminalState1") == 1 then
                        writeData("czerka_outpost_pirate_boss_TerminalState1",2)
                    else
                        writeData("czerka_outpost_pirate_boss_TerminalState1",1)
                    end
                    player:sendSystemMessage("The generator is shutting down")
                elseif (isTerminalNr == 2) then
                    writeData("czerka_outpost_pirate_boss_TerminalState2",1)
                    player:sendSystemMessage("You deactivated the droid control")
                elseif (isTerminalNr == 3) then
                    self:finish(pCreature)
                end
            else
                player:sendSystemMessage("The code is not valid, security is on alert")
                if (isTerminalNr == 1) then
                    spawnMobile("endor", "czerka_outpost_fed_battle_droid", 0, -2612, 200, 5280, 0, 0)
                elseif (isTerminalNr == 2) then
                    spawnMobile("endor", "czerka_outpost_fed_battle_droid", 0, -2620, 200, 5185, 0, 0)
                elseif (isTerminalNr == 3) then
                    spawnMobile("endor", "czerka_outpost_droideka", 0, -2586, 200, 5203, 0, 0)
                end
            end
        elseif (pressedButton == "slice") then
            if (CreatureObject(pCreature):hasSkill("crafting_droidengineer_novice") or CreatureObject(pCreature):hasSkill("combat_smuggler_master")) then
                if (isTerminalNr == 1) then
                     player:sendSystemMessage("The security mechanism is too strong, you failed")
                elseif (isTerminalNr == 2) then
                    writeData("czerka_outpost_pirate_boss_TerminalState2",1)
                    player:sendSystemMessage("You sliced the terminal, you deactivated the droidcontrol")
                elseif (isTerminalNr == 3) then
                    player:sendSystemMessage("The security mechanism is too strong, you failed")
                end
            else
                CreatureObject(pCreature):sendSystemMessage("Your technology knowledge is not high enough.")
            end
        elseif (pressedButton == "keycard") then
            CreatureObject(pCreature):sendSystemMessage("You have no valid keycard")
        end
        if (tonumber(enteredCode) == 28061974) then
           self:triggerExplosions()
        end
    end)
    return 0
end
 
function czerka_research_pirate:reward(pMobile, pPlayer)
    ObjectManager.withCreatureObject(pPlayer, function(player)
        player:sendSystemMessage("*** The Pirate Leader is dead, there is a note with some numbers:" .. readData("czerka_outpost_pirate_boss_code3"))
        player:sendSystemMessage("*** The Pirate Leader is dead, there is a note with some numbers:" .. readData("czerka_outpost_pirate_boss_code3"))
        spatialChat(pMobile, "The Pirate Leader is dead, there is a note with some numbers:" .. readData("czerka_outpost_pirate_boss_code3"))
        printf("Pirate Base code 3:" .. readData("czerka_outpost_pirate_boss_code3") .. "\n")
        --CombatHelper:addGroupBounty(pPlayer, -2592, 186, 5303, 100, 15000, "Angry pirates set a bounty on your head")
        CombatHelper:awardGroupKillwithCondCheck(pPlayer, -2592, 186, 5303, 100, "Czerka_Jedi_State", 2, "You feel an inner glow", "revelation_jedi_state", 1)
    end)
    return 0
end

function czerka_research_pirate:finish(pPlayer)
    ObjectManager.withCreatureObject(pPlayer, function(player)
        player:sendSystemMessage("The Base is about to explode ! Run away now !")
        CombatHelper:awardGroupKillwithCondCheck(pPlayer, -2578, 200, 5211, 100, "Czerka_Jedi_State", 4, "You feel an inner glow", "revelation_jedi_state", 1)
        self:triggerExplosions()
    end)
    return 0
end

function czerka_research_pirate:triggerExplosions()
    local pSceneObject = spawnSceneObject("endor", "object/static/particle/particle_lg_explosion.iff", -2582, 200, 5220, 0, math.rad(270))
    createEvent(15000, "czerka_research_pirate", "destroyExplosionAnimation", pSceneObject)   
    
    pSceneObject = spawnSceneObject("endor", "object/static/particle/particle_lg_explosion.iff", -2569, 200, 5216, 0, math.rad(270))
    createEvent(15000, "czerka_research_pirate", "destroyExplosionAnimation", pSceneObject)   
    
    pSceneObject = spawnSceneObject("endor", "object/static/particle/particle_lg_explosion.iff", -2608, 200, 5195, 0, math.rad(270))
    createEvent(15000, "czerka_research_pirate", "destroyExplosionAnimation", pSceneObject)   
    
    pSceneObject = spawnSceneObject("endor", "object/static/particle/particle_lg_explosion.iff", -2634, 200, 5179, 0, math.rad(270))
    createEvent(15000, "czerka_research_pirate", "destroyExplosionAnimation", pSceneObject)   

    pSceneObject = spawnSceneObject("endor", "object/static/particle/particle_lg_explosion.iff", -2636, 200, 5206, 0, math.rad(270))
    createEvent(15000, "czerka_research_pirate", "destroyExplosionAnimation", pSceneObject)   

    pSceneObject = spawnSceneObject("endor", "object/static/particle/particle_lg_explosion.iff", -2606, 200, 5287, 0, math.rad(270))
    createEvent(15000, "czerka_research_pirate", "destroyExplosionAnimation", pSceneObject)   
    
    pSceneObject = spawnSceneObject("endor", "object/static/particle/particle_lg_explosion.iff", -2595, 200, 5244, 0, math.rad(270))
    createEvent(15000, "czerka_research_pirate", "destroyExplosionAnimation", pSceneObject)
    
    pSceneObject = spawnSceneObject("endor", "object/static/particle/particle_lg_explosion.iff", -2572, 200, 5258, 0, math.rad(270))
    createEvent(15000, "czerka_research_pirate", "destroyExplosionAnimation", pSceneObject)
    return 0
end

function czerka_research_pirate:destroyExplosionAnimation(pSceneObject, pPlayer)
    if pSceneObject ~= nil then
        ScreenplayHelper:destroy(LuaSceneObject(pSceneObject):getObjectID(),true)
    end
    return 0
end
