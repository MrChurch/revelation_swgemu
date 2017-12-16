-- Author: Matthias Muente (matthias.muente@gmx.de)
-- https://revelationonline.net

czerka_research_yavin = ScreenPlay:new {
     DespawnTime = 900, 
}
registerScreenPlay("czerka_research_yavin", true)

local ObjectManager = require("managers.object.object_manager")
local ScreenplayHelper = require("helper.screenplayHelper")
local PatrolHelper = require("helper.patrolHelper")
local combatHelper = require("helper.combatHelper")

function czerka_research_yavin:start()
    if (isZoneEnabled("yavin4")) then
        self:spawnBuilding()
        self:spawn()
        self:spawnOutside()
        self:spawnTrapAreas()
        self:spawnEggs()
        self:spawnTrigger()
        writeData("czerka_research_yavin:maxAdds", 0)
        writeData("czerka_research_yavin:egg1", 1)
        writeData("czerka_research_yavin:egg2", 1)
        writeData("czerka_research_yavin:spideregg", 1)
        writeData("czerka_research_yavin:ventilator", 0)
        writeData("czerka_research_yavin:QueenAlive",0)
    end
end

function czerka_research_yavin:spawnBuilding()
    local pCreature = spawnMobile("yavin4", "cll8_binary_load_lifter", 600, -6754.5, 26.6, 5273, 250, 0)
    local pBuilding = spawnBuilding(pCreature,"object/building/general/talus_kahmurra_bunker.iff", -6755, 5253, 0)
    local sceneCellObject = LuaSceneObject(pBuilding)
    local building = LuaBuildingObject(pBuilding)
    if (building ~= nil and sceneCellObject ~= nil) then
        for i = 1, 9, 1 do
            sceneCellObject:_setObject(building:getCell(i))
            writeData("czerka_research_yavin:cell" .. i, sceneCellObject:getObjectID())
        end
    end
end

function czerka_research_yavin:spawn()
    local cell6 = readData("czerka_research_yavin:cell6")
    local cell7 = readData("czerka_research_yavin:cell7")
    local cell8 = readData("czerka_research_yavin:cell8")
    local cell9 = readData("czerka_research_yavin:cell9")

    spawnSceneObject("yavin4","object/tangible/dungeon/poison_gas_cloud.iff", -6741, 27 , 5281, 0, 0, 0, 0, 0)
    spawnSceneObject("yavin4","object/tangible/dungeon/poison_gas_cloud.iff", -6777, 26 , 5262, 0, 0, 0, 0, 0)
    spawnSceneObject("yavin4","object/tangible/dungeon/poison_gas_cloud.iff", -6741, 26.3 , 5298, 0, 0, 0, 0, 0)
    spawnSceneObject("yavin4","object/static/particle/pt_green_hanging_smoke.iff", 5.4, -6.8 , -2, cell7, 0, 0, 0, 0)
    spawnSceneObject("yavin4","object/static/particle/pt_green_hanging_smoke.iff", -6741, 27 , 5279, cell7, 0, 0, 0, 0)
    spawnSceneObject("yavin4","object/tangible/dungeon/poison_gas_cloud.iff", -6741, 27 , 5279, cell7, 0, 0, 0, 0)
    spawnSceneObject("yavin4","object/static/particle/pt_green_hanging_smoke.iff", -6752, 27 , 5270, cell7, 0, 0, 0, 0)
    spawnSceneObject("yavin4","object/static/particle/pt_green_hanging_smoke.iff", -6772, 27 , 5288, cell7, 0, 0, 0, 0)
    spawnSceneObject("yavin4","object/tangible/dungeon/poison_gas_cloud.iff", -6772, 27 , 5288, cell7, 0, 0, 0, 0)
    spawnSceneObject("yavin4","object/tangible/dungeon/poison_gas_cloud.iff", -6782, 25.1 , 5270, cell7, 0, 0, 0, 0)
    spawnSceneObject("yavin4","object/tangible/dungeon/poison_gas_cloud.iff", -6689, 30 , 5255, cell7, 0, 0, 0, 0)

    spawnSceneObject("yavin4", "object/static/structure/corellia/corl_power_bubble_node.iff", -6720.0, 9999, 5307, 0, math.rad(90))


    spawnMobile("yavin4", "czerka_yavin_mite_soldier", 300, -6.1, -13.6, 1.7, 0, cell9)
    spawnMobile("yavin4", "czerka_yavin_mite_soldier", 305, 1.3, -13.6 , -7.6, 0, cell9)
    spawnMobile("yavin4", "czerka_yavin_mite_harvester", 310, -3.6, 0.3, 3.4, 0, cell9)
    spawnMobile("yavin4", "czerka_yavin_mite_soldier", 315, -6.4, -13.6, -14.8, 0, cell9)
    spawnMobile("yavin4", "czerka_yavin_mite_soldier", 300, -3.0, -13.6, 6.4, 0, cell8)
    spawnMobile("yavin4", "czerka_yavin_mite_soldier", 305, 7.2, -6.6, -2.1, 0, cell7)
    spawnMobile("yavin4", "czerka_yavin_mite_harvester", 310, 5.7, -6.6, -6.9, 0, cell7)
    spawnMobile("yavin4", "czerka_yavin_mite_soldier", 303, -7.0, -6.6, -14.5, 0, cell6)
    spawnMobile("yavin4", "czerka_yavin_mite_harvester", 300, 5.7, -6.5, -13.4, 0, cell6)
    spawnMobile("yavin4", "czerka_yavin_mite_soldier", 120, 2.5, 0.5, -3.9, 0, readData("czerka_research_yavin:cell3"))
end

function czerka_research_yavin:spawnOutside()

  local pAnchor = spawnMobile("yavin4", "defect_e5", 0, -6718, 27.4, 5303.3, 35, 0)
  ObjectManager.withCreatureObject(pAnchor, function(anchor)
      writeData("czerka_research_yavin_ventillation_anchor",anchor:getObjectID())
  end)
  spawnMobile("yavin4", "czerka_yavin_mite_harvester", 240, -6782, 25.1, 5270.8, 5, 0)
  spawnMobile("yavin4", "czerka_yavin_mite_soldier", 210, -6782, 28, 5258.5, 55, 0)
  spawnMobile("yavin4", "czerka_yavin_mite_harvester", 210, -6812, 29.9, 5265.5, 55, 0)
  ScreenplayHelper:spawnMobileAndIdle("yavin4", "czerka_yavin_mite_harvester", 240, -6790, 24.1, 5308.8, 170, 0)
  ScreenplayHelper:spawnMobileAndIdle("yavin4", "czerka_yavin_mite_harvester", 240, -6772, 23.3, 5333.8, 111, 0)
  ScreenplayHelper:spawnMobileAndIdle("yavin4", "czerka_yavin_mite_harvester", 210, -6720, 26.2, 5332.8, 55, 0)
  ScreenplayHelper:spawnMobileAndIdle("yavin4", "czerka_yavin_mite_harvester", 240, -6701, 28.3, 5300.8, 0, 0)
  ScreenplayHelper:spawnMobileAndIdle("yavin4", "czerka_yavin_mite_harvester", 240, -6689, 30.1, 5255.8, 111, 0)
  ScreenplayHelper:spawnMobileAndIdle("yavin4", "czerka_yavin_mite_harvester", 240, -6720, 33.7, 5215.8, 212, 0)
  ScreenplayHelper:spawnMobileAndIdle("yavin4", "czerka_yavin_mite_harvester", 270, -6762, 38.9, 5217.8, 55, 0)
  ScreenplayHelper:spawnMobileAndIdle("yavin4", "czerka_yavin_mite_harvester", 240, -6776, 32.6, 5242.8, 211, 0)
  ScreenplayHelper:spawnMobileAndIdle("yavin4", "czerka_yavin_mite_soldier", 240, -6714, 28.4, 5273.8, 211, 0)
  spawnMobile("yavin4", "czerka_yavin_mite_harvester", 210, -6761, 25.5, 5289.8, 111, 0)
  spawnMobile("yavin4", "czerka_yavin_mite_soldier", 240, -6754, 26.5, 5270.8, 111, 0)
  spawnMobile("yavin4", "czerka_yavin_mite_soldier", 270, -6733, 27, 5290.8, 111, 0)
  spawnMobile("yavin4", "czerka_yavin_mite_soldier", 180, -6705, 27.9, 5309.8, 111, 0)
  spawnMobile("yavin4", "czerka_yavin_mite_soldier", 220, -6728, 26.4, 5315.8, 111, 0)
end

function czerka_research_yavin:spawnTrapAreas()
	local pActiveArea = spawnActiveArea("yavin4", "object/active_area.iff", -6758.6, 25.9, 5278, 30, 0)
	if (pActiveArea ~= nil) then
		createObserver(ENTEREDAREA, "czerka_research_yavin", "outlandsDisease", pActiveArea)
	end
	local pActiveArea1 = spawnActiveArea("yavin4", "object/active_area.iff", -6759.8, 20.2, 5248.0, 6, readData("czerka_research_yavin:cell5"))
	if (pActiveArea1 ~= nil) then
		createObserver(ENTEREDAREA, "czerka_research_yavin", "firstTrap", pActiveArea1)
	end
	local pActiveArea2 = spawnActiveArea("yavin4", "object/active_area.iff", -6750.6, 20.2, 5250.9, 4, readData("czerka_research_yavin:cell7"))
	if (pActiveArea2 ~= nil) then
		createObserver(ENTEREDAREA, "czerka_research_yavin", "toxicPoo", pActiveArea2)
	end
end

function czerka_research_yavin:firstTrap(pActiveArea, pMovingObject)
    if not (SceneObject(pMovingObject):isPlayerCreature()) then
        return 0
    end
    local pTrapAttacker = spawnMobile("yavin4", "czerka_yavin_mite_soldier", 0, -3.9, -6.6, -5.4, 0, readData("czerka_research_yavin:cell5"))
    createEvent(self.DespawnTime * 1000, "czerka_research_yavin", "despawnCreature", pTrapAttacker)

    return ObjectManager.withCreatureObject(pMovingObject, function(player)
        player:sendSystemMessage("Whats that !! Part of the wall's collapsed")
        local ventilator = readData("czerka_research_yavin_ventillation")
        local ventilatorOff = 1

        if (ventilator == 0) then
            player:sendSystemMessage("\\#ffff33 The miasma is very toxic here, the ventilation system seems offline")
            ventilatorOff = 1
        else
            player:sendSystemMessage("\\#ffff33 The ventilation system is active and prevents you from more damage")
            ventilatorOff = 0
        end
        ObjectManager.withActiveArea(pActiveArea, function(activeArea)
            local objectID = activeArea:getObjectID()
            player:addDotState(pMovingObject, DISEASED, 10 + ventilatorOff * 120, STRENGTH, 20 + ventilatorOff * 240, 120, objectID, 0)
            player:addDotState(pMovingObject, DISEASED, 10 + ventilatorOff * 120, ACTION, 20 + ventilatorOff * 240, 120, objectID, 0)
            player:addDotState(pMovingObject, DISEASED, 10 + ventilatorOff * 80, MIND, 20 + ventilatorOff * 240, 120, objectID, 0)
            player:addDotState(pMovingObject, POISONED, 20 + ventilatorOff * 300, HEALTH, 20 + ventilatorOff * 240, 120, objectID, 0)
        end)
        return 0
    end)
end

function czerka_research_yavin:toxicPoo(pActiveArea, pMovingObject)
    if not (SceneObject(pMovingObject):isPlayerCreature()) then
        return 0
    end
    return ObjectManager.withCreatureObject(pMovingObject, function(player)
        player:sendSystemMessage("you walk directly into toxic Bug Poo, ...  ")
        local ventilator = readData("czerka_research_yavin:ventilator")
        local ventilatorOff = 1
        if (ventilator == 0) then
            player:sendSystemMessage("\\#ffff33 The miasma is very toxic here, the ventilation system seems offline")
            ventilatorOff = 1
        else
            player:sendSystemMessage("\\#ffff33 The ventilation system is active and prevents you from more damage")
            ventilatorOff = 0
        end
        ObjectManager.withActiveArea(pActiveArea, function(activeArea)
            local objectID = activeArea:getObjectID()
            player:addDotState(pMovingObject, DISEASED, 25 + ventilatorOff * 255, QUICKNESS, 185 + ventilatorOff * 240, 250, objectID, 0)
            player:addDotState(pMovingObject, DISEASED, 25 + ventilatorOff * 255, STAMINA, 185 + ventilatorOff * 240, 250, objectID, 0)
            player:addDotState(pMovingObject, DISEASED, 25 + ventilatorOff * 255, STRENGTH, 185 + ventilatorOff * 240, 250, objectID, 0)
            player:addDotState(pMovingObject, DISEASED, 25 + ventilatorOff * 255, CONSTITUTION, 185 + ventilatorOff * 240, 250, objectID, 0)
            player:addDotState(pMovingObject, DISEASED, 20 + ventilatorOff * 160, FOCUS, 185 + ventilatorOff * 240, 250, objectID, 0)
            player:addDotState(pMovingObject, DISEASED, 20 + ventilatorOff * 160, WILLPOWER, 185 + ventilatorOff * 240, 250, objectID, 0)
            player:addDotState(pMovingObject, POISONED, 50 + ventilatorOff * 350, HEALTH, 20 + ventilatorOff * 240, 200, objectID, 0)
        end)
        return 0
    end)
end

function czerka_research_yavin:BugTrap(pActiveArea, pMovingObject)
    if not (SceneObject(pMovingObject):isPlayerCreature()) then
        return 0
    end
    local cell3 = readData("czerka_research_yavin:cell3")
    local pTrapAttacker = spawnMobile("yavin4", "czerka_yavin_mite_soldier", 0, -6733, 27, 5290.8, 111, cell3)
    createEvent(self.DespawnTime, "czerka_research_yavin", "despawnCreature", pTrapAttacker)
    local pTrapAttacker1 = spawnMobile("yavin4", "czerka_yavin_mite_soldier", 0, -6733, 27, 5290.8, 111, cell3)
    createEvent(self.DespawnTime, "czerka_research_yavin", "despawnCreature", pTrapAttacker1)
    local pTrapAttacker2 = spawnMobile("yavin4", "czerka_yavin_mite_soldier", 0, -6732, 27, 5290.8, 111, cell3)
    createEvent(self.DespawnTime, "czerka_research_yavin", "despawnCreature", pTrapAttacker2)
    return ObjectManager.withCreatureObject(pMovingObject, function(player)
        player:sendSystemMessage("\\#ffff33 It is a Trap, do not move careless around --- damn BUGS !!! ")
        return 0
    end)
end

function czerka_research_yavin:outlandsDisease(pActiveArea, pMovingObject)
    if not (SceneObject(pMovingObject):isPlayerCreature()) then
        return 0
    end
    return ObjectManager.withCreatureObject(pMovingObject, function(player)
        player:sendSystemMessage("Something smells strange, you feel sick")
        ObjectManager.withActiveArea(pActiveArea, function(activeArea)
            local objectID = activeArea:getObjectID()
            player:addDotState(pMovingObject, DISEASED, 10, STAMINA, 240, 100, objectID, 0)
            player:addDotState(pMovingObject, DISEASED, 10, CONSTITUTION, 240, 100, objectID, 0)
            player:addDotState(pMovingObject, DISEASED, 5, WILLPOWER, 240, 100, objectID, 0)
            player:addDotState(pMovingObject, POISONED, 50, HEALTH, 30, 100, objectID, 0)
        end)
        return 0
    end)
end

function czerka_research_yavin:despawnCreature(pMobile, pPlayer)
    if (SceneObject(pMobile):isPlayerCreature()) then
        return 0
    end
    ObjectManager.withCreatureObject(pMobile, function(mobile)
        combatHelper:forcePeace(pMobile)
        ScreenplayHelper:despawnCreature(pMobile)
    end)
    return 0
end

function czerka_research_yavin:despawnBoss(pMobile, pPlayer)
    writeData("czerka_research_yavin:QueenAlive",0)
    if (SceneObject(pMobile):isPlayerCreature()) then
        return 0
    end
    ObjectManager.withCreatureObject(pMobile, function(mobile)
        combatHelper:forcePeace(pMobile)
        ScreenplayHelper:despawnCreature(pMobile)
    end)
    return 0
end

function czerka_research_yavin:spawnEggs()
    local cell9 = readData("czerka_research_yavin:cell9")
    if (readData("czerka_research_yavin:egg1") == 0) then
        local pEggs1 = spawnSceneObject("yavin4", "object/static/destructible/destructible_tato_cave_rock_med.iff", 4.6, -13.8, -11.9, cell9, 1, 0, 0, 0)
        if pEggs1 ~= nil then
            writeData("czerka_research_yavin:egg1", 1)
            createObserver(OBJECTDESTRUCTION, "czerka_research_yavin", "notifyEgg1Destroyed", pEggs1)
            self:setCustomname(pEggs1, "Egg")
        end
    end
    if (readData("czerka_research_yavin:egg2") == 0) then
        local pEggs2 = spawnSceneObject("yavin4", "object/static/destructible/destructible_tato_cave_rock_med.iff", 3.2, -13.8, -0.4, cell9, 1, 0, 0, 0)
        if pEggs2 ~= nil then
            writeData("czerka_research_yavin:egg2", 1)
            createObserver(OBJECTDESTRUCTION, "czerka_research_yavin", "notifyEgg2Destroyed", pEggs2)
            self:setCustomname(pEggs2, "Egg")
        end
    end
    if (readData("czerka_research_yavin:spideregg") == 0) then
        local pSpiderEgg = spawnSceneObject("yavin4", "object/static/destructible/destructible_tato_cave_rock_med.iff", 3.6, -13.8, -5.4, cell9, 1, 0, 0, 0)
        if pSpiderEgg ~= nil then
            writeData("czerka_research_yavin:spideregg", 1)
            createObserver(OBJECTDESTRUCTION, "czerka_research_yavin", "notifyspidereggDestroyed", pSpiderEgg)
            self:setCustomname(pSpiderEgg, "Strange Egg")
        end
    end
    return 0
end

function czerka_research_yavin:setCustomname(pObject, name)
    ObjectManager.withSceneObject(pObject, function(object)
        object:setCustomObjectName(name)
    end)
    return 0
end

function czerka_research_yavin:notifyEgg1Destroyed(pEgg, pPlayer)
	writeData("czerka_research_yavin:egg1", 0)
	czerka_research_yavin:DestroyEgg(pEgg, pPlayer)
	return 0
end

function czerka_research_yavin:notifyEgg2Destroyed(pEgg, pPlayer)
	writeData("czerka_research_yavin:egg2", 0)
	czerka_research_yavin:DestroyEgg(pEgg, pPlayer)
	return 0
end

function czerka_research_yavin:notifyspidereggDestroyed(pSpiderEgg, pPlayer)
    writeData("czerka_research_yavin:spideregg", 0)
    ObjectManager.withCreatureObject(pMovingObject, function(player)
        player:sendSystemMessage("\\#ffff33 Oh no you hit a spider Nest ! Hundrets of tiny spiders attacking you")
        player:addDotState(pMovingObject, POISONED, 600, HEALTH, 20, 100, activeArea:getObjectID(), 0)
        player:addDotState(pMovingObject, POISONED, 600, ACTION, 20, 100, activeArea:getObjectID(), 0)
        player:inflictDamage(pPlayer, 0, 400, 0)
    end)
    czerka_research_yavin:DestroyEgg(pSpiderEgg, pPlayer)
    return 0
end

function czerka_research_yavin:DestroyEgg(pEgg, pPlayer)
	ObjectManager.withSceneObject(pEgg, function(egg)
		egg:destroyObjectFromWorld()
		createEvent(20000, "czerka_research_yavin", "spawnEggs", pEgg)
	end)
	return 0
end

function czerka_research_yavin:spawnTrigger()
	local pTrigger = spawnMobile("yavin4", "czerka_yavin_mite_soldier", self.DespawnTime + 5, -5.0, -13.6, -8.6, 0, readData("czerka_research_yavin:cell9")) 
	createObserver(OBJECTDESTRUCTION, "czerka_research_yavin", "spawnBoss", pTrigger)
	return 0
end

function czerka_research_yavin:spawnBoss(pTrigger, pPlayer)
    if readData("czerka_research_yavin:QueenAlive") == 0 then
        writeData("czerka_research_yavin:QueenAlive",1)
        local pBoss = spawnMobile("yavin4", "czerka_yavin_mite_queen", 0, -5.0, -13.6, -8.6, 0, readData("czerka_research_yavin:cell9"))
        writeData("czerka_research_yavin:maxAdds", 0)
        if pBoss ~= nil then
           createEvent(self.DespawnTime * 1000, "czerka_research_yavin", "despawnBoss", pBoss)
           createObserver(DAMAGERECEIVED,"czerka_research_yavin","bossLogic", pBoss)
           createObserver(OBJECTDESTRUCTION, "czerka_research_yavin", "reward", pBoss)
        end
    end
    return 0
end

function czerka_research_yavin:bossLogic(pBoss, pPlayer)
    ObjectManager.withCreatureObject(pBoss, function(boss)
        ObjectManager.withCreatureObject(pPlayer, function(player)
            if (combatHelper:checkCreatureDistance(-6759.8, 13.2, 5244.8, 8, pBoss) == false) then
                player:sendSystemMessage("The Queen moving back to her Eggs.")
                combatHelper:healCreatureToMax(pBoss)
                combatHelper:forcePeace(pBoss)
                writeData("czerka_research_yavin:maxAdds", 0)
            else
                if math.random(7) == 1 then
                    local maxAdds = readData("czerka_research_yavin:maxAdds")
                    if (maxAdds <= 30) then
                  	local cell9 = readData("czerka_research_yavin:cell9")
                        if (readData("czerka_research_yavin:egg1") == 1)then
                            player:sendSystemMessage("\\#ff0000 Oh no! Bugs coming out of the Eggs ! ")
                            local pTrapAttacker = spawnMobile("yavin4", "czerka_yavin_mite_soldier", 0, 1, -13.7, -12, 111, cell9)
                    	      if pTrapAttacker ~= nil then
                              	createEvent(self.DespawnTime * 1000, "czerka_research_yavin", "despawnCreature", pTrapAttacker)
                            	  writeData("czerka_research_yavin:maxAdds", maxAdds + 1)
                      	    end
                        end
                        if (readData("czerka_research_yavin:egg2") == 1)then
                            player:sendSystemMessage("\\#ff0000 Oh no! Bugs coming out of the Eggs ! ")
                            local pTrapAttacker = spawnMobile("yavin4", "czerka_yavin_mite_harvester", 0, -3.7, -13.7, -0.7, 111, cell9)
                    	      if pTrapAttacker ~= nil then
                                createEvent(self.DespawnTime * 1000, "czerka_research_yavin", "despawnCreature", pTrapAttacker)
                            	  writeData("czerka_research_yavin:maxAdds", maxAdds + 1)
                  	        end
                      	end
                    end
                end
            end
        end)
    end)
    return 0
 end

function czerka_research_yavin:reward(pMobile, pPlayer)
    writeData("czerka_research_yavin:QueenAlive",0)
    return ObjectManager.withCreatureObject(pPlayer, function(player)
        player:sendSystemMessage("The Mite Queen is dead, the Bunker is now safe again")
        combatHelper:awardGroupKillwithCondCheck(pPlayer, -6757, 13.2, 5245.4, 50, "Czerka_Jedi_State", 1, "You feel a inner glow", "revelation_jedi_state", 1)
        return 0
    end)
end

