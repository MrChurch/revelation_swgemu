-- Author: Matthias Muente (matthias.muente@gmx.de)
-- https://revelationonline.net

gcw_bestine_scanner = ScreenPlay:new {
}
registerScreenPlay("gcw_bestine_scanner", true)

local ObjectManager = require("managers.object.object_manager")

function gcw_bestine_scanner:start()
    if (isZoneEnabled("tatooine")) then
        self:spawnArea()
        self:spawnScanner()
    end
end

function gcw_bestine_scanner:spawnScanner()

    spawnSceneObject("tatooine","object/installation/faction_perk/covert_detector/detector_base.iff", -1346, 12 , -3470, 0, 0)
    spawnSceneObject("tatooine","object/installation/faction_perk/covert_detector/detector_base.iff", -1277.8, 12 , -3476.6, 0, 0)
    spawnSceneObject("tatooine","object/installation/faction_perk/covert_detector/detector_base.iff", -1292, 12 , -3594, 0, 0)
    spawnSceneObject("tatooine","object/installation/faction_perk/covert_detector/detector_base.iff", -1265, 54.9 , -3809, 0, 0)
    spawnSceneObject("tatooine","object/installation/faction_perk/covert_detector/detector_base.iff", -1027.8, 13.4 , -3585, 0, 0)
    spawnSceneObject("tatooine","object/installation/faction_perk/covert_detector/detector_base.iff", -990, 21.6 , -3460, 0, 0)
    spawnSceneObject("tatooine","object/installation/faction_perk/covert_detector/detector_base.iff", -1248, 12 , -3657, 0, 0)
end

function gcw_bestine_scanner:spawnArea()

    -- reward Area
    local pControlArea = spawnSceneObject("tatooine", "object/active_area.iff", -1238, 12, -3657, 0, 0, 0, 0, 0)
    ObjectManager.withActiveArea(pControlArea, function(oControlArea)
        oControlArea:setRadius(15)
        createObserver(ENTEREDAREA, "gcw_bestine_scanner", "enterControlArea_event", pControlArea)  
    end)
    
    -- bastion Area
    pControlArea = spawnSceneObject("tatooine", "object/active_area.iff", -1141, 98, -3897, 0, 0, 0, 0, 0)
    ObjectManager.withActiveArea(pControlArea, function(oControlArea)
        oControlArea:setRadius(125)
        createObserver(ENTEREDAREA, "gcw_bestine_scanner", "enterControlArea_event", pControlArea)  
    end)
    -- powersupply
    pControlArea = spawnSceneObject("tatooine", "object/active_area.iff", -1346, 12, -3470, 0, 0, 0, 0, 0)
    ObjectManager.withActiveArea(pControlArea, function(oControlArea)
        oControlArea:setRadius(80)
        createObserver(ENTEREDAREA, "gcw_bestine_scanner", "enterControlArea_event", pControlArea)  
    end)
	-- barracs
	pControlArea = spawnSceneObject("tatooine", "object/active_area.iff", -1055, 10, -3502, 0, 0, 0, 0, 0)
	ObjectManager.withActiveArea(pControlArea, function(oControlArea)
		oControlArea:setRadius(100)
		createObserver(ENTEREDAREA, "gcw_bestine_scanner", "enterControlArea_event", pControlArea)  
	end)
	-- Imp Spawn
	pControlArea = spawnSceneObject("tatooine", "object/active_area.iff", -569, 10, -2908, 0, 0, 0, 0, 0)
	ObjectManager.withActiveArea(pControlArea, function(oControlArea)
		oControlArea:setRadius(80)
		createObserver(ENTEREDAREA, "gcw_bestine_scanner", "enterControlArea_event", pControlArea)  
	end)
	-- Reb Spawn
	pControlArea = spawnSceneObject("tatooine", "object/active_area.iff", -1070, 10, -2826, 0, 0, 0, 0, 0)
	ObjectManager.withActiveArea(pControlArea, function(oControlArea)
		oControlArea:setRadius(80)
		createObserver(ENTEREDAREA, "gcw_bestine_scanner", "enterControlArea_event", pControlArea)  
	end)	
end
function gcw_bestine_scanner:enterControlArea_event(pActiveArea, pMovingObject)
    ObjectManager.withSceneObject(pMovingObject, function(movingObject)   
        if (movingObject:isPlayerCreature()) then
            ObjectManager.withCreatureObject(pMovingObject, function(creature)
                if creature:isImperial() or creature:isRebel() then
                    ObjectManager.withCreaturePlayerObject(pMovingObject, function(player)      
                        if player:isCovert() then
                           player:setFactionStatus(2)
                           creature:sendSystemMessage("You enter a combat Zone, you are now flagged as Special Forces !")
                           creature:sendSystemMessage("You enter a combat Zone, you are now flagged as Special Forces !")
                        end
                    end)
                end
            end)
        end
    end)
    return 0
end
