-- Author: Matthias Muente (matthias.muente@gmx.de)
-- https://revelationonline.net

gcw_bestine_bastion = ScreenPlay:new {
     scriptName = "gcw_bestine_bastion",
     spawnMapImperial = {
        -- bastion
        {"rev_stormtrooper", 500, -1142.5, 9999, -3892, 90, 0, 0},
        {"rev_stormtrooper", 500, -1132.0, 9999, -3891, 270, 0, 0},
        {"rev_stormtrooper", 500, -1104, 9999, -3862, 0, 0, 1},
        {"rev_stormtrooper_medic", 500, -1145, 9999, -3916, 180, 0, 0},
        {"rev_stormtrooper_groupleader", 500, -1241, 9999, -3640, 270, 0, 0},
        {"rev_stormtrooper_groupleader", 500, -1144, 9999, -3918, 180, 0, 0},
        {"rev_stormtrooper_groupleader", 500, -1139, 9999, -3898, 110, 0, 0},
        {"rev_storm_commando", 400, -1130, 9999, -3898, 320, 0, 0},
        {"imperial_first_lieutenant", 400, 3.9, 0, 0.5, 180, 1279922, 0},
        {"imperial_sergeant", 400, -2.3, 0, -3.9, 13, 1279924, 0},        
        {"imperial_bestine_shuttle", 300, -1151, 98, -3892.5, 180, 7, 0},
        --parameter
        {"rev_stormtrooper", 500, -1239, 9999, -3802, 0, 0, 1},
        {"rev_stormtrooper_sniper", 500, -1240, 9999, -3704, 999, 0, 1},
        {"rev_storm_commando", 500, -1303, 9999, -3688, 330, 0, 0},
        {"rev_elite_sand_trooper", 500, -1306, 9999, -3688, 330, 0, 0},
        {"rev_stormtrooper_sniper", 500, -1134, 9999, -3699, 20, 0, 0},
        
        -- bridge
        {"rev_elite_sand_trooper", 500, -1389, 9999, -3732, 30, 0, 0},
        -- near cantina
        {"rev_stormtrooper_groupleader", 500, -1364, 9999, -3703, 999, 0, 0},
        -- NPC
        {"coa2_imperial_coordinator",500,-1131.72,12,-3660.15,18.1873,0, 0},
     },
     spawnMapRebel = {
        -- bastion
        {"rev_rebel_trooper", 500, -1142.5, 9999, -3892, 90, 0, 0},
        {"rev_rebel_trooper", 500, -1132.0, 9999, -3891, 270, 0, 0},
        {"rev_rebel_trooper", 500, -1104, 9999, -3862, 0, 0, 1},
        {"rev_specops_trooper", 500, -1145, 9999, -3916, 180, 0, 0},
        {"rev_rebel_sergeant", 500, -1144, 9999, -3918, 180, 0, 0},
        {"rev_rebel_sergeant", 500, -1139, 9999, -3898, 110, 0, 0},
        {"rev_specops_trooper", 400, -1130, 9999, -3898, 320, 0, 0},
        {"rev_rebel_sergeant", 400, 3.9, 0, 0.5, 180, 1279922, 0},
        {"rev_specops_trooper", 400, -2.3, 0, -3.9, 13, 1279924, 0},        
        {"rebel_bestine_shuttle", 300, -1151, 98, -3892.5, 180, 7, 0},         
        --parameter
        {"rev_rebel_trooper", 500, -1239, 9999, -3802, 0, 0, 1},
        {"rev_rebel_commando", 500, -1240, 9999, -3704, 999, 0, 1},
        {"rev_rebel_commando", 500, -1303, 9999, -3688, 330, 0, 0},
        {"rev_rebel_commando", 500, -1306, 9999, -3688, 330, 0, 0},
        {"rev_rebel_commando", 500, -1134, 9999, -3699, 20, 0, 0},
        
        -- bridge
        {"rev_rebel_commando", 500, -1389, 9999, -3732, 30, 0, 0},
        -- near cantina
        {"rev_rebel_sergeant", 500, -1364, 9999, -3703, 999, 0, 0},
     },     
}
registerScreenPlay("gcw_bestine_bastion", true)

local ObjectManager = require("managers.object.object_manager")
local ScreenplayHelper = require("helper.screenplayHelper")
local PatrolHelper = require("helper.patrolHelper")
local GCWSpawnHelper = require("helper.gcwSpawnHelper")

function gcw_bestine_bastion:start()
    if (isZoneEnabled("tatooine")) then
        self:spawnAnchor()
        self:spawnGuards()
        self:spawnHQBoss()
    end
end

function gcw_bestine_bastion:spawnAnchor()
    local pAnchor = spawnMobile("tatooine", "mouse_droid", 0, -1266, 9999, -3564, 134, 0)
    createEvent(500 * 1000, self.scriptName, "respawnTrigger", pAnchor)   
end

function gcw_bestine_bastion:spawnGuards()
    -- 0 imp, 1 reb
    if self:getCondition() then
        GCWSpawnHelper:spawnCityDefender(self.spawnMapRebel, "gcw_bestine_bastion", "rebel", "tatooine")
    else
        GCWSpawnHelper:spawnCityDefender(self.spawnMapImperial, "gcw_bestine_bastion", "imperial", "tatooine")
    end
end

function gcw_bestine_bastion:despawnGuards()
    if self:getCondition() then
        GCWSpawnHelper:despawnCityDefender(self.spawnMapRebel, "gcw_bestine_bastion", "rebel")
    else
        GCWSpawnHelper:despawnCityDefender(self.spawnMapImperial, "gcw_bestine_bastion", "imperial")
    end
end

function gcw_bestine_bastion:spawnHQBoss()
    local pBoss
    -- 0 imp, 1 reb
    if self:getCondition() then
        pBoss = spawnMobile("tatooine", "rev_rebel_bastion_boss", 0, 4, 0.1, -3.9, 90, 1279923)
    else
        pBoss = spawnMobile("tatooine", "rev_bastion_boss", 0, 4, 0.1, -3.9, 90, 1279923)
    end
    if pBoss ~= nil then
        createObserver(OBJECTDESTRUCTION, self.scriptName, "EndBossDead", pBoss)
    end   
    writeData("gcw_bestine_bastion:BossDead",0)
    return 0
end


function gcw_bestine_bastion:EndBossDead(pBoss, pPlayer)
    local msg = " \\#000000[GCW:]\\#FFFFFF \\#FF0000 Bestine: Bastion HQ :\\#FFFFFF "
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
    if readData("gcw_bestine_bastion:BossDead") == 0 then
        writeData("gcw_bestine_bastion:BossDead",1)
        self:switchFaction()   
    end
    return 0
end

function gcw_bestine_bastion:switchFaction(pBoss)
    -- 0 imp, 1 reb
    if self:getCondition() then
        setQuestStatus("gcw_factioncontrol:gcw_bestine_bastion:", "0")
    else
        setQuestStatus("gcw_factioncontrol:gcw_bestine_bastion:", "1")
    end
    createEvent(1500 * 1000, self.scriptName, "spawnHQBoss", pBoss) 
    return 0
end

function gcw_bestine_bastion:getCondition()
    if getQuestStatus("gcw_factioncontrol:gcw_bestine_bastion:") == "1" then
        return true
    else
        return false
    end
end

function gcw_bestine_bastion:respawnTrigger(pAnchor)
    self:spawnGuards()
    createEvent(1000 * 1000, self.scriptName, "respawnTrigger", pAnchor) 
    return 0
end

function gcw_bestine_bastion:reward(pBoss)
	local pCell = getSceneObject(1279923)
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
							
							if creature:isImperial() and getQuestStatus("gcw_factioncontrol:gcw_bestine_bastion:") == "1" then
								playerObj:increaseFactionStanding("imperial",300)
							elseif creature:isRebel() and getQuestStatus("gcw_factioncontrol:gcw_bestine_bastion:") == "0" then
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
