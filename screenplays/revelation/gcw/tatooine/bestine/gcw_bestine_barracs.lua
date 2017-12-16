-- Author: Matthias Muente (matthias.muente@gmx.de)
-- https://revelationonline.net

gcw_bestine_barracs = ScreenPlay:new {
     scriptName = "gcw_bestine_barracs",
     spawnMapImperial = {
        -- Citzhall
        {"rev_stormtrooper", 500, -1045, 9999, -3466, 999, 0, 1},
        {"rev_stormtrooper", 500, -1107, 9999, -3471, 999, 0, 1},
        {"rev_stormtrooper_medic", 500, -948, 9999, -3542, 180, 0, 0},
        {"rev_stormtrooper_sniper", 500, -1030, 9999, -3472, 999, 0, 1},
        {"rev_stormtrooper_sniper", 500, -1052, 9999, -3587, 0, 0, 0},
        {"rev_stormtrooper_groupleader", 500, -1069, 9999, -3583, 105, 0, 0},
        {"rev_elite_sand_trooper", 500, -1089, 9999, -3598, 180, 0, 0},
        {"rev_stormtrooper", 500, -1085, 9999, -3597, 180, 0, 0},
        {"rev_elite_sand_trooper", 500, -1104, 9999, -3623, 100, 0, 0},
        {"rev_stormtrooper_groupleader", 500, -989, 9999, -3744, 100, 0, 0},
        {"rev_elite_sand_trooper", 400, -991, 9999, -3744, 100, 0, 0},
        {"rev_stormtrooper_groupleader", 500, -1148, 9999, -3658, 0, 0, 0},
        {"rev_stormtrooper", 400, -1121, 9999, -3690, 270, 0, 0},
        {"rev_storm_commando", 500, -1154, 9999, -3679, 190, 0, 0},
        {"rev_storm_commando", 500, -1212, 9999, -3622, 270, 0, 0},
        {"rev_stormtrooper", 400, -1232, 9999, -3611, 190, 0, 0},
        {"rev_stormtrooper_sniper", 400, -1240, 9999, -3555, 270, 0, 0},
        {"rev_stormtrooper_groupleader", 400, -1239, 9999, -3549, 270, 0, 0},
        {"rev_storm_commando", 500, -1226, 9999, -3505, 35, 0, 0},
        {"rev_stormtrooper", 500, -1226, 9999, -3507, 35, 0, 0},
        {"imp_strong_droideka", 400, -1048, 9999, -3508, 260, 0, 0},
        {"rev_dark_trooper", 400, -1024, 9999, -3461, 80, 0, 1},
        {"rev_stormtrooper_groupleader", 400, -4.4, 0.3, -4.3, 90, 3, 0},
        {"rev_dark_trooper", 400, 2.0, -6.8, -0.3, 180, 5, 0},
        {"imperial_bestine_shuttle", 300, -0.7, -13.7, 5.0, 180, 7, 0},
        {"rev_stormtrooper_groupleader", 300, -0.6, -13.7, -13.3, 0, 7, 0},
        {"rev_stormtrooper_groupleader", 300, -5.4, -13.7, -13.3, 0, 7, 0},
        {"rev_stormtrooper_groupleader", 400, 1, -13.7, 12.5, 270, 8, 0},
        {"rev_storm_commando", 400, 15.7, -13.7, 5.5, 0, 9, 0},
        {"rev_stormtrooper_groupleader", 300, 15.5, -13.8, -9.6, 0, 10, 0},
     },
     spawnMapRebel = {
        -- Citzhall
        {"rev_rebel_trooper", 500, -1045, 9999, -3466, 999, 0, 1},
        {"rev_rebel_trooper", 500, -1107, 9999, -3471, 999, 0, 1},
        {"rev_rebel_commando", 500, -948, 9999, -3542, 180, 0, 0},
        {"rev_rebel_commando", 500, -1030, 9999, -3472, 999, 0, 1},
        {"rev_rebel_commando", 500, -1052, 9999, -3587, 0, 0, 0},
        {"rev_rebel_sergeant", 500, -1069, 9999, -3583, 105, 0, 0},
        {"rev_specops_trooper", 500, -1089, 9999, -3598, 180, 0, 0},
        {"rev_rebel_trooper", 500, -1085, 9999, -3597, 180, 0, 0},
        {"rev_rebel_army_captain", 500, -1104, 9999, -3623, 100, 0, 0},
        {"rev_rebel_sergeant", 500, -989, 9999, -3744, 100, 0, 0},
        {"rev_specops_trooper", 400, -991, 9999, -3744, 100, 0, 0},
        {"rev_rebel_sergeant", 500, -1148, 9999, -3658, 0, 0, 0},
        {"rev_rebel_trooper", 400, -1121, 9999, -3690, 270, 0, 0},
        {"rev_rebel_commando", 500, -1154, 9999, -3679, 190, 0, 0},
        {"rev_rebel_commando", 500, -1212, 9999, -3622, 270, 0, 0},
        {"rev_rebel_trooper", 400, -1232, 9999, -3611, 190, 0, 0},
        {"rev_specops_trooper", 400, -1240, 9999, -3555, 270, 0, 0},
        {"rev_rebel_sergeant", 400, -1239, 9999, -3549, 270, 0, 0},
        {"rev_specops_trooper", 500, -1226, 9999, -3505, 35, 0, 0},
        {"rev_specops_trooper", 500, -1226, 9999, -3507, 35, 0, 0},
        {"rev_rebel_battledroid", 400, -1048, 9999, -3508, 260, 0, 0},
        {"rev_rebel_army_captain", 400, -1024, 9999, -3461, 80, 0, 1},
        {"rev_rebel_sergeant", 400, -4.4, 0.3, -4.3, 90, 3, 0},
        {"rev_specops_trooper", 400, 2.0, -6.8, -0.3, 180, 5, 0},
        {"rebel_bestine_shuttle", 300, -0.7, -13.7, 5.0, 180, 7, 0},
        {"rev_rebel_sergeant", 300, -0.6, -13.7, -13.3, 0, 7, 0},
        {"rev_rebel_sergeant", 300, -5.4, -13.7, -13.3, 0, 7, 0},
        {"rev_rebel_sergeant", 400, 1, -13.7, 12.5, 270, 8, 0},
        {"rev_specops_trooper", 400, 15.7, -13.7, 5.5, 0, 9, 0},
        {"rev_rebel_sergeant", 300, 15.5, -13.8, -9.6, 0, 10, 0},
     },     
}
registerScreenPlay("gcw_bestine_barracs", true)

local ObjectManager = require("managers.object.object_manager")
local ScreenplayHelper = require("helper.screenplayHelper")
local PatrolHelper = require("helper.patrolHelper")
local GCWSpawnHelper = require("helper.gcwSpawnHelper")

function gcw_bestine_barracs:start()
    if (isZoneEnabled("tatooine")) then
        self:spawnAnchor()
        self:spawnBuilding()
        self:spawnGuards()
        self:spawnHQBoss()
    end
end

function gcw_bestine_barracs:spawnAnchor()
    local pAnchor = spawnMobile("tatooine", "mouse_droid", 0, -1274, 9999, -3597, 90, 0)
    createEvent(500 * 1000, self.scriptName, "respawnTrigger", pAnchor)   
end

function gcw_bestine_barracs:spawnBuilding()
    local pCreature = spawnMobile("tatooine", "cll8_binary_load_lifter", 0, -958, -9999, -3726, 250, 0)
    local pBuilding = spawnBuilding(pCreature,"object/building/general/bunker_imperial_03.iff", -1037, -3497, 255)
    local sceneCellObject = LuaSceneObject(pBuilding)
    local building = LuaBuildingObject(pBuilding)
    if (building ~= nil and sceneCellObject ~= nil) then
        for i = 1, 10, 1 do
            sceneCellObject:_setObject(building:getCell(i))
            local cellID = sceneCellObject:getObjectID()
            writeData("gcw_defender:gcw_bestine_barracs:CellID:" .. i, cellID)
        end
    end
    
end

function gcw_bestine_barracs:spawnGuards()
    -- 0 imp, 1 reb
    if self:getCondition() then
        GCWSpawnHelper:spawnCityDefender(self.spawnMapRebel, "gcw_bestine_barracs", "rebel", "tatooine")
    else
        GCWSpawnHelper:spawnCityDefender(self.spawnMapImperial, "gcw_bestine_barracs", "imperial", "tatooine")
    end
end

function gcw_bestine_barracs:despawnGuards()
    if self:getCondition() then
        GCWSpawnHelper:despawnCityDefender(self.spawnMapRebel, "gcw_bestine_barracs", "rebel")
    else
        GCWSpawnHelper:despawnCityDefender(self.spawnMapImperial, "gcw_bestine_barracs", "imperial")
    end
end

function gcw_bestine_barracs:spawnHQBoss()
    local pBoss
    -- 0 imp, 1 reb
    if self:getCondition() then
        pBoss = spawnMobile("tatooine", "rev_rebel_barracs_boss", 0, 14.4, -11.3, -20.4, 0, readData("gcw_defender:gcw_bestine_barracs:CellID:10"))
    else
        pBoss = spawnMobile("tatooine", "rev_barracs_boss", 0, 14.4, -11.3, -20.4, 0, readData("gcw_defender:gcw_bestine_barracs:CellID:10"))
    end
    if pBoss ~= nil then
        createObserver(OBJECTDESTRUCTION, self.scriptName, "EndBossDead", pBoss)
    end
    writeData("gcw_bestine_barracs:BossDead",0)
    return 0
end


function gcw_bestine_barracs:EndBossDead(pBoss, pPlayer)
    local msg = " \\#000000[GCW:]\\#FFFFFF \\#FF0000 Bestine: Barracs HQ :\\#FFFFFF "
        -- 0 imp, 1 reb
    if self:getCondition() then
        sendBroadCastMessage(msg .. "lost", "rebel");
        sendBroadCastMessage(msg .. "captured", "imperial");
    else
        sendBroadCastMessage(msg .. "lost", "imperial");
        sendBroadCastMessage(msg .. "captured", "rebel");
    end
    self:reward(pBoss)
    self:despawnGuards()
    if readData("gcw_bestine_barracs:BossDead") == 0 then
        writeData("gcw_bestine_barracs:BossDead",1)
        self:switchFaction()   
    end
    return 0
end

function gcw_bestine_barracs:switchFaction(pBoss)
    -- 0 imp, 1 reb
    if self:getCondition() then
        setQuestStatus("gcw_factioncontrol:gcw_bestine_barracs:", "0")
    else
        setQuestStatus("gcw_factioncontrol:gcw_bestine_barracs:", "1")
    end    
    self:spawnGuards()
    createEvent(1500 * 1000, self.scriptName, "spawnHQBoss", pBoss) 
    return 0
end

function gcw_bestine_barracs:getCondition()
    if getQuestStatus("gcw_factioncontrol:gcw_bestine_barracs:") == "1" then
        return true
    else
        return false
    end
end

function gcw_bestine_barracs:respawnTrigger(pAnchor)
    self:spawnGuards()
    createEvent(1100 * 1000, self.scriptName, "respawnTrigger", pAnchor) 
    return 0
end

function gcw_bestine_barracs:reward(pBoss)
	local pCell = getSceneObject(readData("gcw_defender:gcw_bestine_barracs:CellID:10"))
	ObjectManager.withSceneObject(pCell, function(cell)
		for j = cell:getContainerObjectsSize(), 1, -1 do
			local pObject = cell:getContainerObject(j - 1)
			ObjectManager.withSceneObject(pObject, function(object)
				if object:isPlayerCreature() then
					ObjectManager.withCreatureObject(pObject, function(player)
						player:sendSystemMessage("The High Command registered your Effort in the War.")
					end)
					ObjectManager.withCreatureObject(pObject, function(creature)
						local playerObjPointer = creature:getPlayerObject()
						local playerObj = LuaPlayerObject(playerObjPointer)
						if playerObj ~= nil then
							playerObj:addExperience("gcw_xp", 250)	
							
							if creature:isImperial() and getQuestStatus("gcw_factioncontrol:gcw_bestine_barracs:") == "1" then
								playerObj:increaseFactionStanding("imperial",300)
							elseif creature:isRebel() and getQuestStatus("gcw_factioncontrol:gcw_bestine_barracs:") == "0" then
								playerObj:increaseFactionStanding("rebel",300)
							end
							local stateValue = 0
							stateValue = creature:getScreenPlayState("GCW_Bestine_Bossreward")
							creature:setScreenPlayStateValue(stateValue + 1, "GCW_Bestine_Bossreward")
							creature:sendSystemMessage("Your GCW Reward Counter is now at " .. stateValue + 1)
						end
					end)
				end
			end)
		end
	end)
	return 0
end
