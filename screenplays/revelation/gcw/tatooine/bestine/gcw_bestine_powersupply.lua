-- Author: Matthias Muente (matthias.muente@gmx.de)
-- https://revelationonline.net

gcw_bestine_powersupply = ScreenPlay:new {
     scriptName = "gcw_bestine_powersupply",
     spawnMapRebel = {
        {"rev_rebel_trooper", 500, -1371, 9999, -3445, 999, 0, 1},
        {"rev_rebel_trooper", 500, -1283, 9999, -3441, 999, 0, 1},
        {"rev_specops_trooper", 500, -1275, 9999, -3477, 90, 0, 0},
        {"rev_rebel_sergeant", 500, -1273, 9999, -3478, 270, 0, 0},
        {"rev_rebel_trooper", 500, -1215, 9999, -3498, 0, 0, 0},
        {"rev_rebel_trooper", 500, -1211, 9999, -3550, 999, 0, 1},
        {"rev_rebel_trooper", 400, -1356, 9999, -3465, 0, 0, 0},
        
        --parameter
        {"rev_rebel_trooper", 500, -1440, 9999, -3491, 999, 0, 1},
        {"rev_rebel_trooper", 500, -1467, 9999, -3553, 999, 0, 1},
        {"rev_rebel_trooper", 500, -1478, 9999, -3632, 999, 0, 1},
        {"rev_rebel_trooper", 500, -1474, 9999, -3650, 999, 0, 0},
        
        --starport
        {"rev_specops_trooper", 400, -1291, 9999, -3585, 240, 0, 0},

        {"rev_rebel_trooper", 400, -1290, 9999, -3608, 190, 0, 0},
        {"rev_rebel_trooper", 400, -1288, 9999, -3608, 190, 0, 0},
        {"rev_rebel_sergeant", 400, -1280, 9999, -3619, 0, 0, 1},

        {"rev_rebel_commando", 400, -1340, 9999, -3487, 0, 0, 0},
        -- bank
        {"rev_rebel_army_captain", 400, -1241, 9999, -3628, 180, 0, 0},
        {"rev_rebel_trooper", 400, -1243, 9999, -3626, 90, 0, 0},
        -- bunker
        {"rev_rebel_trooper", 400, 0, 0, 2, 270, 2, 0},
        {"rev_specops_trooper", 400, 0, -12, 24, 0, 4, 0},
        {"rev_rebel_army_captain", 400, 23, -12, 31, 270, 5, 0},
        {"rev_rebel_sergeant", 400, 7, -16, 56.6, 0, 7, 0},
        {"rev_specops_trooper", 400, 0, -16, 56.6, 0, 7, 0},
        {"rev_rebel_battledroid", 500, 3, -16.0, 75, 180, 7, 0},
        {"rebel_bestine_shuttle", 400, 48, -16.0, 84, 270, 8, 0},
        {"rev_rebel_commando", 400, 58, -16.0, 82, 270, 8, 0},
        {"rev_rebel_commando", 400, -29, -14, 82.7, 270, 9, 0},
       
     },

     spawnMapImperial = {
        {"rev_stormtrooper", 500, -1371, 9999, -3445, 999, 0, 1},
        {"rev_stormtrooper", 500, -1283, 9999, -3441, 999, 0, 1},
        {"rev_stormtrooper_medic", 500, -1275, 9999, -3477, 90, 0, 0},
        {"rev_stormtrooper_groupleader", 500, -1273, 9999, -3478, 270, 0, 0},
        {"rev_stormtrooper", 500, -1215, 9999, -3498, 0, 0, 0},
        {"rev_stormtrooper", 500, -1211, 9999, -3550, 999, 0, 1},
        {"rev_stormtrooper", 400, -1356, 9999, -3465, 0, 0, 0},
        
        --parameter
        {"rev_stormtrooper", 500, -1440, 9999, -3491, 999, 0, 1},
        {"rev_stormtrooper", 500, -1467, 9999, -3553, 999, 0, 1},
        {"rev_stormtrooper", 500, -1478, 9999, -3632, 999, 0, 1},
        {"rev_stormtrooper", 500, -1474, 9999, -3650, 999, 0, 0},
        
        --starport
        {"rev_stormtrooper_medic", 400, -1291, 9999, -3585, 240, 0, 0},
        
        {"rev_stormtrooper", 400, -1290, 9999, -3608, 190, 0, 0},
        {"rev_stormtrooper", 400, -1288, 9999, -3608, 190, 0, 0},
        {"rev_stormtrooper_groupleader", 400, -1280, 9999, -3619, 0, 0, 1},
        
        {"rev_storm_commando", 400, -1340, 9999, -3487, 0, 0, 0},
        -- bank
        {"rev_dark_trooper", 400, -1241, 9999, -3628, 180, 0, 0},
        {"rev_elite_sand_trooper", 400, -1243, 9999, -3626, 90, 0, 0},
        -- bunker
        {"rev_stormtrooper", 400, 0, 0, 2, 270, 2, 0},
        {"rev_storm_commando", 400, 0, -12, 24, 0, 4, 0},
        {"rev_dark_trooper", 400, 23, -12, 31, 270, 5, 0},
        {"rev_stormtrooper_groupleader", 400, 7, -16, 56.6, 0, 7, 0},
        {"rev_elite_sand_trooper", 400, 0, -16, 56.6, 0, 7, 0},
        {"imp_strong_droideka", 500, 3, -16.0, 75, 180, 7, 0},
        {"imperial_bestine_shuttle", 400, 48, -16.0, 82, 270, 8, 0},
        {"rev_stormtrooper_sniper", 400, 78, -16.0, 61, 270, 8, 0},
        {"rev_storm_commando", 400, -29, -14, 82.7, 270, 9, 0},
        
        -- NPC
        {"sabol",500,-1291.67,12,-3539,118,0, 0},
     },     
}
registerScreenPlay("gcw_bestine_powersupply", true)

local ObjectManager = require("managers.object.object_manager")
local ScreenplayHelper = require("helper.screenplayHelper")
local PatrolHelper = require("helper.patrolHelper")
local GCWSpawnHelper = require("helper.gcwSpawnHelper")

function gcw_bestine_powersupply:start()
    if (isZoneEnabled("tatooine")) then
        self:spawnBuilding()
        self:spawnDecoration()
        self:spawnHQBoss()
        self:spawnAnchor()
        self:spawnGuards()        
    end
end

function gcw_bestine_powersupply:spawnAnchor()
    local pAnchor = spawnMobile("tatooine", "mouse_droid", 0, -1270, 9999, -3540, 190, 0)
    createEvent(500 * 1000, self.scriptName, "respawnTrigger", pAnchor)   
end

function gcw_bestine_powersupply:spawnBuilding()
    local pCreature = spawnMobile("tatooine", "cll8_binary_load_lifter", 0, -1283, -9999, -3660, 250, 0)
    local pBuilding = spawnBuilding(pCreature,"object/building/general/bunker_small_outpost_02.iff", -1375, -3482, 90)
    --spawnBuilding(pCreature,"object/building/faction_perk/hq/hq_s04_imp.iff", -650, -3442, 180)
    
    local sceneCellObject = LuaSceneObject(pBuilding)
    local building = LuaBuildingObject(pBuilding)
    if (building ~= nil and sceneCellObject ~= nil) then
        for i = 1, 9, 1 do
            sceneCellObject:_setObject(building:getCell(i))
            local cellID = sceneCellObject:getObjectID()
            writeData("gcw_defender:gcw_bestine_powersupply:CellID:" .. i, cellID)
        end
    end
    
end

function gcw_bestine_powersupply:spawnDecoration()
    local walliff = "object/static/structure/military/military_wall_med_imperial_16_style_01.iff"
    spawnSceneObject("tatooine","object/static/structure/general/ins_shield_generator.iff", -1372, 9999 , -3500, 0, 0)
    --spawnSceneObject("tatooine","object/installation/faction_perk/covert_detector/detector_base.iff", -1144, 9999 , -3449, 0, 0)
        
    ScreenplayHelper:spawnSceneObjectlineToDirection("tatooine", walliff, -1382.0, -3483.5, "S", 2, 16)
    ScreenplayHelper:spawnSceneObjectlineToDirection("tatooine", walliff, -1355.0, -3465.0, "E", 2, 16)
end

function gcw_bestine_powersupply:spawnGuards()
    -- 0 imp, 1 reb
    if self:getCondition() then
        GCWSpawnHelper:spawnCityDefender(self.spawnMapRebel, "gcw_bestine_powersupply", "rebel", "tatooine")
    else
        GCWSpawnHelper:spawnCityDefender(self.spawnMapImperial, "gcw_bestine_powersupply", "imperial", "tatooine")
    end
end

function gcw_bestine_powersupply:despawnGuards()
    if self:getCondition() then
        GCWSpawnHelper:despawnCityDefender(self.spawnMapRebel, "gcw_bestine_powersupply", "rebel")
    else
        GCWSpawnHelper:despawnCityDefender(self.spawnMapImperial, "gcw_bestine_powersupply", "imperial")
    end
end

function gcw_bestine_powersupply:spawnHQBoss()
    local pBoss
    -- 0 imp, 1 reb
    if self:getCondition() then
        pBoss = spawnMobile("tatooine", "rev_rebel_powersupply_boss", 0, -43, -14, 78.1, 90, readData("gcw_defender:gcw_bestine_powersupply:CellID:9"))
    else
        pBoss = spawnMobile("tatooine", "rev_powersupply_boss", 0, -43, -14, 78.1, 90, readData("gcw_defender:gcw_bestine_powersupply:CellID:9"))
    end
    if pBoss ~= nil then
        createObserver(OBJECTDESTRUCTION, self.scriptName, "EndBossDead", pBoss)
    end    
    return 0
end


function gcw_bestine_powersupply:EndBossDead(pBoss, pPlayer)
    local msg = " \\#000000[GCW:]\\#FFFFFF \\#FF0000 Bestine: Powersupply HQ :\\#FFFFFF "
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
    self:switchFaction()
    return 0
end

function gcw_bestine_powersupply:switchFaction(pBoss)
    -- 0 imp, 1 reb
    if self:getCondition() then
        setQuestStatus("gcw_factioncontrol:gcw_bestine_powersupply:", "0")
    else
        setQuestStatus("gcw_factioncontrol:gcw_bestine_powersupply:", "1")
    end    
    self:spawnGuards()
    createEvent(1500 * 1000, self.scriptName, "spawnHQBoss", pBoss) 
    return 0
end

function gcw_bestine_powersupply:getCondition()
    if getQuestStatus("gcw_factioncontrol:gcw_bestine_powersupply:") == "1" then
        return true
    else
        return false
    end
end

function gcw_bestine_powersupply:respawnTrigger(pAnchor)
    self:spawnGuards()
    createEvent(900 * 1000, self.scriptName, "respawnTrigger", pAnchor) 
    return 0
end

function gcw_bestine_powersupply:reward(pBoss)
	local pCell = getSceneObject(readData("gcw_defender:gcw_bestine_powersupply:CellID:9"))
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
							
							if creature:isImperial() and getQuestStatus("gcw_factioncontrol:gcw_bestine_powersupply:") == "1" then
								playerObj:increaseFactionStanding("imperial",300)
							elseif creature:isRebel() and getQuestStatus("gcw_factioncontrol:gcw_bestine_powersupply:") == "0" then
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
