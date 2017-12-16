halloween_theed = ScreenPlay:new {
    numberOfActs = 1,
    questString = "halloween_theed",
    states = {},
    spawnMapTraps = {
        {"random", -4616, 6, 4050, 14, "naboo"},
        {"random", -4699, 6, 4021, 9, "naboo"},
        {"random", -4910, 6, 4112, 8, "naboo"},
        {"random", -4924, 6, 4165, 9, "naboo"},
        {"random", -4999, 6, 4260, 9, "naboo"},
        {"random", -5053, 6, 4213, 14, "naboo"},
        {"random", -5124, 6, 4196, 9, "naboo"},
        {"random", -5224, 6, 4197, 9, "naboo"},
        {"random", -5241, 6, 4290, 9, "naboo"},
        {"random", -5168, 6, 4329, 16, "naboo"},
        {"random", -5063, 6, 4138, 8, "naboo"},
        {"random", -5290, 6, 4390, 9, "naboo"},
        {"random", -5342, 6, 4529, 14, "naboo"},
        {"random", -5470, 6, 4405, 9, "naboo"},
        {"random", -5581, 6, 4308, 9, "naboo"},
        {"random", -5109, 6, 4086, 9, "naboo"},
        {"random", -4972, 6, 4031, 14, "naboo"},
        {"random", -5534, 6, 4385, 9, "naboo"},
        {"random", -5486, 6, 4212, 9, "naboo"},
		{"random", -5400, 6, 4126, 16, "naboo"},
		{"random", -5310, 6, 4134, 9, "naboo"},
		{"random", -5108, 6, 4059, 14, "naboo"},
		{"random", -4973, 6, 3984, 9, "naboo"},
		{"random", -4893, 6, 4095, 9, "naboo"},
		{"random", -5343, 6, 4281, 14, "naboo"},
		{"random", -4979, 6, 4204, 14, "naboo"},
		{"random", -5107, 6, 4271, 14, "naboo"},
		{"random", -5181, 6, 4398, 14, "naboo"},
		{"random", -5402, 6, 4075, 14, "naboo"},
		{"random", -5617, 6, 4142, 14, "naboo"},
		{"random", -5681, 6, 4290, 14, "naboo"},
    }

}

registerScreenPlay("halloween_theed", true)
local ObjectManager = require("managers.object.object_manager")

function halloween_theed:start()
    if (isZoneEnabled("corellia")) and (isZoneEnabled("naboo")) then
		  self:spawnMobile()
		  self:spawnTraps()
    end
end

function halloween_theed:spawnMobile()
    spawnMobile("naboo", "free_buff_npc", 600, -4857, 6, 4172, 0, 0)
    spawnSceneObject("naboo","object/tangible/symbols/icon_heal.iff", -4857, 9, 4172, 0, 0)
    spawnMobile("naboo", "costume_npc", 600, -4859, 6, 4174, 0, 0)
end

function halloween_theed:spawnCart()
    spawnSceneObject("naboo", "object/static/particle/pt_bunker_allum_mine_car_01.iff",  -5507, 12, 4367, 0, 0)
    
end


function halloween_theed:spawnTraps()
    for i,v in ipairs(self.spawnMapTraps) do
        local pActiveArea = spawnActiveArea(v[6], "object/active_area.iff", v[2], v[3], v[4], v[5], 0)
        local pSceneObject = spawnSceneObject(v[6], "object/static/particle/pt_miasma_of_fog_gray.iff", v[2] -1 + math.random(3), v[3], v[4]-1 + math.random(3), 0, 0)
        local pGasLeak = spawnSceneObject(v[6], "object/static/particle/pt_smoke_large.iff", v[2] -1 + math.random(3), v[3], v[4]-1 + math.random(3), 0, 0)
        if (math.random(3) == 1) then
        	spawnSceneObject(v[6], "object/static/particle/pt_bunker_allum_mine_car_01.iff", v[2] -1 + math.random(3), v[3] + 4 , v[4]-1 + math.random(3), 0, 0)
        end
        spawnSceneObject(v[6], "object/static/particle/pt_green_hanging_smoke.iff", v[2] -1 + math.random(15), v[3], v[4]-1 + math.random(15), 0, 0)
        spawnSceneObject(v[6], "object/static/particle/pt_buzzing_insects_large.iff", v[2] -1 + math.random(20), v[3], v[4]-1 + math.random(20), 0, 0)
        spawnSceneObject(v[6], "object/static/particle/pt_green_hanging_smoke.iff", v[2] -1 - math.random(15), v[3], v[4]-1 + math.random(15), 0, 0)
        spawnSceneObject(v[6], "object/static/particle/particle_newbie_hanging_smoke.iff", v[2] -1 + math.random(15), v[3], v[4]-1 + math.random(15), 0, 0)
        spawnSceneObject(v[6], "object/static/particle/particle_newbie_hanging_smoke.iff", v[2] -1 + math.random(15), v[3], v[4]-1 - math.random(15), 0, 0)
        spawnSceneObject(v[6], "object/static/particle/pt_miasma_of_fog_gray.iff", v[2] -1 + math.random(30), v[3], v[4]-1 + math.random(30), 0, 0)
        spawnSceneObject(v[6], "object/static/particle/pt_miasma_of_fog_gray.iff", v[2] -1 - math.random(30), v[3], v[4]-1 - math.random(30), 0, 0)
        spawnSceneObject(v[6], "object/static/particle/pt_miasma_of_fog_gray.iff", v[2] -1 - math.random(30), v[3], v[4]-1 + math.random(30), 0, 0)
        spawnSceneObject(v[6], "object/static/particle/pt_miasma_of_fog_gray.iff", v[2] -1 + math.random(30), v[3], v[4]-1 - math.random(30), 0, 0)
        spawnSceneObject(v[6], "object/static/particle/particle_newbie_hanging_smoke.iff", v[2] -1 + math.random(16), v[3], v[4]-1 + math.random(16), 0, 0)
        local pCampfire = spawnSceneObject(v[6], "object/building/poi/dathomir_nightsister_medium3.iff", v[2] -1 + math.random(3), v[3], v[4]-1 + math.random(3), 0, 0)

        	spawnMobile(v[6], "lw_undead_trooper_m", 120 + math.random(200) , v[2] -3 + math.random(6), v[3], v[4]-3 + math.random(6), math.random(360), 0)
        	spawnMobile(v[6], "lw_undead_trooper_m", 120 + math.random(200) , v[2] -3 + math.random(6), v[3], v[4]-3 + math.random(6), math.random(360), 0)
        	spawnMobile(v[6], "lw_undead_trooper_m", 120 + math.random(200) , v[2] -3 + math.random(6), v[3], v[4]-3 + math.random(6), math.random(360), 0)
			spawnMobile(v[6], "lw_undead_trooper_m", 120 + math.random(200) , v[2] -3 + math.random(6), v[3], v[4]-3 + math.random(6), math.random(360), 0)
			spawnMobile(v[6], "lw_undead_trooper_m", 120 + math.random(200) , v[2] -2 + math.random(12), v[3], v[4]-2 + math.random(12), math.random(360), 0)
			spawnMobile(v[6], "lw_undead_trooper_m", 120 + math.random(200) , v[2] -2 + math.random(12), v[3], v[4]-2 + math.random(12), math.random(360), 0)
			
		if (math.random(2) == 1) then
        	spawnMobile(v[6], "lw_undead_trooper_m_boss", 120 + math.random(200) , v[2] -5 + math.random(6), v[3], v[4]-5 + math.random(6), math.random(360), 0)
        end
			
        if pActiveArea ~= nil then
            if (v[1] == "random") then
                createObserver(ENTEREDAREA, "halloween_theed", "setRandomTrap", pActiveArea)
            end
        end
    end
end

function halloween_theed:setRandomTrap(pActiveArea, pMovingObject)
    if not (SceneObject(pMovingObject):isPlayerCreature()) then
        return 0
    end
    if (math.random(7) == 1) then
        local dotTime = math.random(150) + 100
        local dotStr = math.random(20) + 10
        return ObjectManager.withCreatureObject(pMovingObject, function(player)
            player:sendSystemMessage("Something smells strange here...")
			player:setAppearance("object/mobile/shared_outbreak_undead_deathtrooper_01_m.iff")
            ObjectManager.withActiveArea(pActiveArea, function(activeArea)
                if (math.random(2) == 1) then
                    player:addDotState(pMovingObject, DISEASED, dotStr, FOCUS, dotTime, 120, activeArea:getObjectID(), 0)
                end
                if (math.random(2) == 1) then
                    player:addDotState(pMovingObject, DISEASED, dotStr, WILLPOWER, dotTime, 120, activeArea:getObjectID(), 0)
                end
                if (math.random(2) == 1) then
                    player:addDotState(pMovingObject, DISEASED, dotStr, MIND, dotTime, 120, activeArea:getObjectID(), 0)
                end
            end)
            return 0
        end)
    else
        return 0
    end
end
