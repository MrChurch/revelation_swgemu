disease_coronet_theed = ScreenPlay:new {
    numberOfActs = 1,
    questString = "disease_coronet_theed",
    states = {},
    spawnMapTraps = {
        {"random", -190, 28, -4422, 7, "corellia"},
        {"random", -305, 28, -4381, 8, "corellia"},
        {"random", -389, 28, -4470, 7, "corellia"},
        {"random", -406, 28, -4590, 9, "corellia"},
        {"random", -356, 28, -4595, 6, "corellia"},
        {"random", -299, 28, -4611, 7, "corellia"},
        {"random", -190, 28, -4621, 6, "corellia"},
        {"random", -138, 28, -4679, 7, "corellia"},
        {"random", -218, 28, -4413, 6, "corellia"},
        {"random", -174, 28, -4790, 9, "corellia"},
        {"random", -233, 28, -4682, 9, "corellia"},
        {"random", -146, 28, -4576, 7, "corellia"},
        {"random", -30, 28, -4526, 7, "corellia"},
        {"random", -83.6, 28, -4478, 6, "corellia"},
        {"random", -138, 28, -4458,7, "corellia"},
        {"random", -106, 28, -4394, 9, "corellia"},
        {"random", -137, 28, -4350, 9, "corellia"},
        {"random", -257, 28, -4350, 9, "corellia"},
        {"random", -252, 28, -4529, 9, "corellia"},
        {"random", -299, 28, -4532, 6, "corellia"},
        {"random", -226, 28, -4714, 9, "corellia"},
        {"random", -170, 28, -4484, 9, "corellia"},
        {"random", -4616, 6, 4050, 9, "naboo"},
        {"random", -4699, 6, 4021, 9, "naboo"},
        {"random", -4850, 6, 4148, 8, "naboo"},
        {"random", -4924, 6, 4165, 9, "naboo"},
        {"random", -4999, 6, 4260, 9, "naboo"},
        {"random", -5053, 6, 4213, 9, "naboo"},
        {"random", -5133, 6, 4196, 9, "naboo"},
        {"random", -5224, 6, 4197, 9, "naboo"},
        {"random", -5241, 6, 4290, 9, "naboo"},
        {"random", -5168, 6, 4329, 9, "naboo"},
        {"random", -5063, 6, 4138, 8, "naboo"},
        {"random", -5290, 6, 4390, 9, "naboo"},
        {"random", -5342, 6, 4529, 9, "naboo"},
        {"random", -5470, 6, 4405, 9, "naboo"},
        {"random", -5581, 6, 4308, 9, "naboo"},
        {"random", -5091, 6, 4094, 9, "naboo"},
        {"random", -4959, 6, 4046, 9, "naboo"},
    }

}

registerScreenPlay("disease_coronet_theed", true)
local ObjectManager = require("managers.object.object_manager")

function disease_coronet_theed:start()
    if (isZoneEnabled("corellia")) and (isZoneEnabled("naboo")) then
		  self:spawnMobile()
		  self:spawnTraps()
    end
end

function disease_coronet_theed:spawnMobile()
    spawnMobile("corellia", "buff_npc_advanced", 600, -63, 28, -4467.6, 190, 0)
    spawnMobile("naboo", "buff_npc_advanced", 600, -5026, 6, 4135, 90, 0)
end

function disease_coronet_theed:spawnTraps()
    for i,v in ipairs(self.spawnMapTraps) do
        local pActiveArea = spawnActiveArea(v[6], "object/active_area.iff", v[2], v[3], v[4], v[5], 0)
        local pSceneObject = spawnSceneObject(v[6], "object/static/particle/pt_green_hanging_smoke.iff", v[2] -1 + math.random(3), v[3], v[4]-1 + math.random(3), 0, 0)
        local pGasLeak = spawnSceneObject(v[6], "object/tangible/dungeon/poison_gas_cloud.iff", v[2] -1 + math.random(3), v[3], v[4]-1 + math.random(3), 0, 0)
        local pMobile = spawnMobile(v[6], "event_diseased_bocatt", 120 + math.random(200) , v[2] -3 + math.random(6), v[3], v[4]-3 + math.random(6), math.random(360), 0)
        if pActiveArea ~= nil then
            if (v[1] == "random") then
                createObserver(ENTEREDAREA, "disease_coronet_theed", "setRandomTrap", pActiveArea)
            end
        end
    end
end

function disease_coronet_theed:setRandomTrap(pActiveArea, pMovingObject)
    if not (SceneObject(pMovingObject):isPlayerCreature()) then
        return 0
    end
    if (math.random(1) == 1) then
        local dotTime = math.random(250) + 100
        local dotStr = math.random(55) + 25
        return ObjectManager.withCreatureObject(pMovingObject, function(player)
            player:sendSystemMessage("Something smells strange here...")
            ObjectManager.withActiveArea(pActiveArea, function(activeArea)
                if (math.random(5) == 1) then
                    player:addDotState(pMovingObject, DISEASED, dotStr, CONSTITUTION, dotTime, 120, activeArea:getObjectID(), 0)
		end
                if (math.random(5) == 1) then
                    player:addDotState(pMovingObject, DISEASED, dotStr, STAMINA, dotTime, 120, activeArea:getObjectID(), 0)
                end
		if (math.random(5) == 1) then
                    player:addDotState(pMovingObject, DISEASED, dotStr, HEALTH, dotTime, 120, activeArea:getObjectID(), 0)
                end
                if (math.random(5) == 1) then
                    player:addDotState(pMovingObject, DISEASED, dotStr, ACTION, dotTime, 120, activeArea:getObjectID(), 0)
                end
                if (math.random(5) == 1) then
                    player:addDotState(pMovingObject, DISEASED, dotStr, QUICKNESS, dotTime, 120, activeArea:getObjectID(), 0)
                end
                if (math.random(5) == 1) then
                    player:addDotState(pMovingObject, DISEASED, dotStr, STRENGTH, dotTime, 120, activeArea:getObjectID(), 0)
                end
                if (math.random(5) == 1) then
                    player:addDotState(pMovingObject, DISEASED, dotStr, FOCUS, dotTime, 120, activeArea:getObjectID(), 0)
                end
                if (math.random(5) == 1) then
                    player:addDotState(pMovingObject, DISEASED, dotStr, WILLPOWER, dotTime, 120, activeArea:getObjectID(), 0)
                end
                if (math.random(5) == 1) then
                    player:addDotState(pMovingObject, DISEASED, dotStr, MIND, dotTime, 120, activeArea:getObjectID(), 0)
                end
            end)
            return 0
        end)
    else
        return 0
    end
end
