-- Author: Matthias Muente (matthias.muente@gmx.de)
-- https://revelationonline.net

gcw_bestine_pvpEvents = ScreenPlay:new {
	scriptName = "gcw_bestine_pvpEvents",
	planetName = "tatooine",
	killtime = 900,
	timerTick = 3000,
}
registerScreenPlay("gcw_bestine_pvpEvents", true)

local ObjectManager = require("managers.object.object_manager")
local ScreenplayHelper = require("helper.screenplayHelper")
local PatrolHelper = require("helper.patrolHelper")
local GCWSpawnHelper = require("helper.gcwSpawnHelper")
local combatHelper = require("helper.combatHelper")

function gcw_bestine_pvpEvents:start()
	if (isZoneEnabled("tatooine")) then
		self:spawnAnchor()
		writeData("BestinePVPEventRebBossFactor", 0)
		writeData("BestinePVPEventImpBossFactor", 0)
	end
end

function gcw_bestine_pvpEvents:spawnAnchor()
	local pAnchor = spawnMobile("tatooine", "mouse_droid", 0, -1274, 9999, -3599, 90, 0)
	createEvent(self.timerTick * 1000, self.scriptName, "respawnTrigger", pAnchor)
end

function gcw_bestine_pvpEvents:despawnCreature(pMobile, pPlayer)
	if (SceneObject(pMobile):isPlayerCreature()) then
		return 0
	end
	ObjectManager.withCreatureObject(pMobile, function(mobile)
		combatHelper:forcePeace(pMobile)
		ScreenplayHelper:despawnCreature(pMobile)
	end)
return 0
end

function gcw_bestine_pvpEvents:respawnTrigger(pAnchor)
		
	writeData("Bestine_PVPEvent_Boss", 0)
	
	-- case reb
	if (getQuestStatus("gcw_factioncontrol:gcw_bestine_barracs:") == "1" and 
		getQuestStatus("gcw_factioncontrol:gcw_bestine_bastion:") == "1" and
		getQuestStatus("gcw_factioncontrol:gcw_bestine_powersupply:") == "1") then
		
		
		
		local msg = " \\#000000[GCW:]\\#FFFFFF \\#FF0000 Bestine: Event : \\#FFFFFF "
		local selector = math.random(2)
		if selector == 1 then
			local pMobile = spawnMobile("tatooine", "rev_pvpevent_darth_vader", 0, -1084, 12, -3653, 111, 0)
			createObserver(OBJECTDESTRUCTION, self.scriptName, "rewardRebEndBoss", pMobile)
			createObserver(DAMAGERECEIVED,self.scriptName,"bossLogicImperialGeneral", pMobile)
			createEvent((self.timerTick - 20) * 1000, self.scriptName, "despawnCreature", pMobile)
			sendBroadCastMessage(msg .. " Lord Vader was send to Bestine to enforce the order", "rebel");
			sendBroadCastMessage(msg .. " Lord Vader was send to Bestine to enforce the order", "imperial");
		end
		if selector == 2 then
			local pMobile = spawnMobile("tatooine", "rev_pvpEvent_mara_jade", 0, -1084, 12, -3653, 111, 0)
			createObserver(OBJECTDESTRUCTION, self.scriptName, "rewardRebEndBoss", pMobile)
			createObserver(DAMAGERECEIVED,self.scriptName,"bossLogicImperialGeneral", pMobile)
			createEvent((self.timerTick - 20)  * 1000, self.scriptName, "despawnCreature", pMobile)
			sendBroadCastMessage(msg .. " Mara Jade was send to Bestine to enforce the order", "rebel");
			sendBroadCastMessage(msg .. " Mara Jade was send to Bestine to enforce the order", "imperial");
		end		
	end 

	-- case imp
	if (getQuestStatus("gcw_factioncontrol:gcw_bestine_barracs:") == "0" and 
		getQuestStatus("gcw_factioncontrol:gcw_bestine_bastion:") == "0" and
		getQuestStatus("gcw_factioncontrol:gcw_bestine_powersupply:") == "0") then
		
		local msg = " \\#000000[GCW:]\\#FFFFFF \\#FF0000 Bestine: Event : \\#FFFFFF "
		local selector = math.random(2)
		if selector == 1 then
			local pMobile = spawnMobile("tatooine", "rev_pvpevent_luke_skywalker", 0, -1084, 12, -3653, 111, 0)
			createObserver(OBJECTDESTRUCTION, self.scriptName, "rewardImpEndBoss", pMobile)
			createObserver(DAMAGERECEIVED,self.scriptName,"bossLogicRebelGeneral", pMobile)
			createEvent((self.timerTick - 20)  * 1000, self.scriptName, "despawnCreature", pMobile)
			sendBroadCastMessage(msg .. " Luke Skywalker was send to Bestine to enforce the order", "rebel");
			sendBroadCastMessage(msg .. " Luke Skywalker was send to Bestine to enforce the order", "imperial");
		end
		if selector == 2 then
			local pMobile = spawnMobile("tatooine", "rev_rebel_han_solo", 0, -1084, 12, -3653, 111, 0)
			createObserver(OBJECTDESTRUCTION, self.scriptName, "rewardImpEndBoss", pMobile)
			createObserver(DAMAGERECEIVED,self.scriptName,"bossLogicRebelGeneral", pMobile)
			createEvent((self.timerTick - 20)  * 1000, self.scriptName, "despawnCreature", pMobile)
			sendBroadCastMessage(msg .. " Han Solo was send to Bestine to enforce the order", "rebel");
			sendBroadCastMessage(msg .. " Han Solo was send to Bestine to enforce the order", "imperial");
		end
	end 
	createEvent(self.timerTick * 1000, self.scriptName, "respawnTrigger", pAnchor) 
	return 0
end

function gcw_bestine_pvpEvents:rewardImpEndBoss(pBoss, pPlayer)
	local msg = " \\#000000[GCW:]\\#FFFFFF \\#FF0000 Bestine: Event : \\#FFFFFF "
	sendBroadCastMessage(msg .. " The rebel General was killed in Bestine !", "rebel");
	sendBroadCastMessage(msg .. " Long live the Empire ! The rebel General has fallen !", "imperial");
			
	local x
	local y
	local z

		x = -1248 -- mobile:getPositionX()
		z = 12 --mobile:getPositionZ()
		y = -3657 --mobile:getPositionY()
	gcw_bestine_pvpEvents:spawnRewardArea(x, z, y, "imperial")
	local counterImp = readData("BestinePVPEventImpBossFactor")
	local counterReb = readData("BestinePVPEventRebBossFactor")
	
	writeData("BestinePVPEventRebBossFactor", counterReb + 1)
	if counterImp > 0 then
		writeData("BestinePVPEventImpBossFactor", counterImp - 1)
	end
	
	return 0
end

function gcw_bestine_pvpEvents:rewardRebEndBoss(pBoss, pPlayer)
	local msg = " \\#000000[GCW:]\\#FFFFFF \\#FF0000 Bestine: Event : \\#FFFFFF "
	sendBroadCastMessage(msg .. " The imperial General was killed in Bestine !", "imperial");
	sendBroadCastMessage(msg .. " Long live the Rebellion ! The imperial General has fallen !", "rebel");
			
	local x
	local y
	local z

		x = -1248 -- mobile:getPositionX()
		z = 12 --mobile:getPositionZ()
		y = -3657 --mobile:getPositionY()
	gcw_bestine_pvpEvents:spawnRewardArea(x, z, y, "rebel")
	
	local counterImp = readData("BestinePVPEventImpBossFactor")
	local counterReb = readData("BestinePVPEventRebBossFactor")
	
	writeData("BestinePVPEventImpBossFactor", counterImp + 1)
	if counterReb> 0 then
		writeData("BestinePVPEventRebBossFactor", counterReb - 1)
	end
	
	return 0
end

function gcw_bestine_pvpEvents:despawn(pSceneObject)
	if pSceneObject ~= nil then
		ScreenplayHelper:destroy(LuaSceneObject(pSceneObject):getObjectID(),true)
	end
	return 0
end


function gcw_bestine_pvpEvents:spawnRewardArea(x, z, y, winningFaction)
	local cloudTimer = 300
	local pActiveArea = spawnActiveArea("tatooine", "object/active_area.iff", x + 10, 9999 , y + 10 , 10, 0)
	local msg = " \\#000000[GCW:]\\#FFFFFF \\#FF0000 Bestine: Event : \\#FFFFFF "
	local cloudID = math.random(1000)
	
	writeData("gcw_bestine_pvpEvents:cloudID", cloudID)
	sendBroadCastMessage(msg .. " A Rewardcloud appears near the Bank !", "rebel");
	sendBroadCastMessage(msg .. " A Rewardcloud appears near the Bank !", "imperial");
	local sceneObject = spawnSceneObject(self.planetName, "object/static/particle/pt_light_blink_blue.iff", x + 13,9999, y + 13, 0, 0)
	createEvent(cloudTimer * 1000, self.scriptName, "despawn", sceneObject)
	sceneObject = spawnSceneObject(self.planetName, "object/static/particle/pt_light_blink_blue.iff", x + 13, 9999, y + 7, 0, 0)
	createEvent(cloudTimer * 1000, self.scriptName, "despawn", sceneObject)
	sceneObject = spawnSceneObject(self.planetName, "object/static/particle/pt_light_blink_blue.iff", x + 7, 9999, y + 13, 0, 0)
	createEvent(cloudTimer * 1000, self.scriptName, "despawn", sceneObject)
	sceneObject = spawnSceneObject(self.planetName, "object/static/particle/pt_light_blink_blue.iff", x + 10, 9999, y + 10, 0, 0)
	createEvent(cloudTimer * 1000, self.scriptName, "despawn", sceneObject)
	sceneObject = spawnSceneObject(self.planetName, "object/static/particle/pt_light_blink_blue.iff", x + 9.5, 9999, y + 9.5, 0, 0)
	createEvent(cloudTimer * 1000, self.scriptName, "despawn", sceneObject)
	sceneObject = spawnSceneObject(self.planetName, "object/static/particle/pt_light_blink_blue.iff", x + 7, 9999, y + 7, 0, 0)
	createEvent(cloudTimer * 1000, self.scriptName, "despawn", sceneObject)
	sceneObject = spawnSceneObject(self.planetName, "object/static/particle/pt_light_blink_orange.iff", x + 15,  9999, y + 15, 0, 0)
	createEvent(cloudTimer * 1000, self.scriptName, "despawn", sceneObject)
	sceneObject = spawnSceneObject(self.planetName, "object/static/particle/pt_light_blink_orange.iff", x + 15,  9999 , y + 5, 0, 0)
	createEvent(cloudTimer * 1000, self.scriptName, "despawn", sceneObject)
	sceneObject = spawnSceneObject(self.planetName, "object/static/particle/pt_light_blink_orange.iff", x + 5, 9999, y + 15, 0, 0)
	createEvent(cloudTimer * 1000, self.scriptName, "despawn", sceneObject)
	sceneObject = spawnSceneObject(self.planetName, "object/static/particle/pt_light_blink_orange.iff", x + 5, 9999 , y + 5, 0, 0)
	createEvent(cloudTimer * 1000, self.scriptName, "despawn", sceneObject)
	sceneObject = spawnSceneObject(self.planetName, "object/static/particle/pt_miasma_of_fog_red.iff", x + 9, 9999 , y + 10, 0, 0)
	createEvent(cloudTimer * 1000, self.scriptName, "despawn", sceneObject)
	sceneObject = spawnSceneObject(self.planetName, "object/static/particle/pt_miasma_of_fog_greenish.iff", x + 10, 9999 , y + 9, 0, 0)
	createEvent(cloudTimer * 1000, self.scriptName, "despawn", sceneObject)
	
	
	local rewardCall = "rewardRebPlayer" 
	
	if winningFaction == "imperial" then
		rewardCall = "rewardImpPlayer"
	end
	
	
	if pActiveArea ~= nil then
		createObserver(ENTEREDAREA, self.scriptName, rewardCall, pActiveArea)
		createEvent(cloudTimer * 1000, self.scriptName, "despawn", pActiveArea)
	end
end

function gcw_bestine_pvpEvents:rewardRebPlayer(pActiveArea, pMovingObject)
	if not (SceneObject(pMovingObject):isPlayerCreature()) then
		return 0
	end

	ObjectManager.withCreatureObject(pMovingObject, function(player)
		local stateValue = 0
		local cloudID = readData("gcw_bestine_pvpEvents:cloudID")
		if cloudID   ~= player:getScreenPlayState("gcw_bestine_pvpEvents:cloudID") then
			local playerObjPointer = player:getPlayerObject()
			local playerObj = LuaPlayerObject(playerObjPointer)
			if playerObj ~= nil then
				ObjectManager.withCreaturePlayerObject(pMovingObject, function(playerCreature)      
					if not playerCreature:isOnLeave() then			
						stateValue = player:getScreenPlayState("GCW_Bestine_Specialreward")
						if player:isRebel() then
							playerObj:addExperience("gcw_xp", 400)	
							player:setScreenPlayStateValue(stateValue + 2, "GCW_Bestine_Specialreward")
							player:setScreenPlayStateValue(cloudID, "gcw_bestine_pvpEvents:cloudID")
							player:sendSystemMessage("Your GCW Special Reward Counter is now at " .. stateValue + 2)
						--elseif player:isImperial() then
						--	playerObj:addExperience("gcw_xp", 250)	
						--	player:setScreenPlayStateValue(stateValue + 1, "GCW_Bestine_Specialreward")
						--	player:setScreenPlayStateValue(cloudID, "gcw_bestine_pvpEvents:cloudID")
						--	player:sendSystemMessage("Your GCW Special Reward Counter is now at " .. stateValue + 1)
						end
					end
				end)
			end
		end		
	end)
	return 0
end

function gcw_bestine_pvpEvents:rewardImpPlayer(pActiveArea, pMovingObject)
	if not (SceneObject(pMovingObject):isPlayerCreature()) then
		return 0
	end

	ObjectManager.withCreatureObject(pMovingObject, function(player)
		local stateValue = 0
		local cloudID = readData("gcw_bestine_pvpEvents:cloudID")
		if cloudID   ~= player:getScreenPlayState("gcw_bestine_pvpEvents:cloudID") then
			local playerObjPointer = player:getPlayerObject()
			local playerObj = LuaPlayerObject(playerObjPointer)
			if playerObj ~= nil then
				ObjectManager.withCreaturePlayerObject(pMovingObject, function(playerCreature)      
					if not playerCreature:isOnLeave() then
						stateValue = player:getScreenPlayState("GCW_Bestine_Specialreward")
						if player:isImperial() then
							playerObj:addExperience("gcw_xp", 500)	
							player:setScreenPlayStateValue(stateValue + 2, "GCW_Bestine_Specialreward")
							player:setScreenPlayStateValue(cloudID, "gcw_bestine_pvpEvents:cloudID")
							player:sendSystemMessage("Your GCW Special Reward Counter is now at " .. stateValue + 2)
						--elseif player:isRebel() then
						--	playerObj:addExperience("gcw_xp", 250)	
						--	player:setScreenPlayStateValue(stateValue + 1, "GCW_Bestine_Specialreward")
						--	player:setScreenPlayStateValue(cloudID, "gcw_bestine_pvpEvents:cloudID")
						--	player:sendSystemMessage("Your GCW Special Reward Counter is now at " .. stateValue + 1)
						end
					end	
				end)
			end
		end	
	end)
	return 0
end

function gcw_bestine_pvpEvents:bossLogicImperialGeneral(pBoss, pPlayer)
	ObjectManager.withCreatureObject(pBoss, function(boss)
		ObjectManager.withCreatureObject(pPlayer, function(player)
			if (combatHelper:checkCreatureWorldDistance(-1084, 12 -3653, 50, pBoss) == false) then
				player:sendSystemMessage(" ***** The General return to his Command Point *****")
				combatHelper:healCreatureToMax(pBoss)
				combatHelper:forcePeace(pBoss)
			end
			if (combatHelper:logicBossState(pBoss, 0.60, "Bestine_PVPEvent_Boss", 0) == true) then
				writeData("Bestine_PVPEvent_Boss", 1)
				self:spawnImpDefender(pBoss)
			end
		end)
	end)
	return 0
end

function gcw_bestine_pvpEvents:bossLogicRebelGeneral(pBoss, pPlayer)
	ObjectManager.withCreatureObject(pBoss, function(boss)
		ObjectManager.withCreatureObject(pPlayer, function(player)
			if (combatHelper:checkCreatureWorldDistance(-1084, 12 -3653, 50, pBoss) == false) then
				player:sendSystemMessage(" ***** The General return to his Command Point *****")
				combatHelper:healCreatureToMax(pBoss)
				combatHelper:forcePeace(pBoss)		
			end
			if (combatHelper:logicBossState(pBoss, 0.60, "Bestine_PVPEvent_Boss", 0) == true) then
				writeData("Bestine_PVPEvent_Boss", 1)
				self:spawnRebDefender(pBoss)
			end
		end)
	end)
	return 0
end

function gcw_bestine_pvpEvents:spawnImpDefender(pBoss)


	local msg = " \\#000000[GCW:]\\#FFFFFF \\#FF0000 Bestine: Event : \\#FFFFFF "
	local cloudID = math.random(1000)
	local counterReb = readData("BestinePVPEventImpBossFactor")
	if counterReb > 0 then
		sendBroadCastMessage(msg .. " The General calling Reinforcements !", "rebel");
		sendBroadCastMessage(msg .. " The General calling Reinforcements !", "imperial");
	
		spawnMobile("tatooine", "rev_dark_trooper", 0, -1099, 9999, -3601, 270, 0)
		spawnMobile("tatooine", "rev_stormtrooper_groupleader", 0, -1090, 9999, -3608, 270, 0)
		spawnMobile("tatooine", "rev_dark_trooper", 0, -1134, 9999, -3646, 270, 0)
		spawnMobile("tatooine", "rev_stormtrooper_groupleader", 0, -1133, 9999, -3655, 270, 0)
		spawnMobile("tatooine", "rev_dark_trooper", 0, -1069, 9999, -3660, 270, 0)
		spawnMobile("tatooine", "rev_dark_trooper", 0, -1077, 9999, -3665, 270, 0)
		spawnMobile("tatooine", "rev_dark_trooper", 0, -1099, 9999, -3622, 270, 0)
		spawnMobile("tatooine", "rev_stormtrooper_groupleader", 0, -1111, 9999, -3638, 270, 0)
		spawnMobile("tatooine", "rev_dark_trooper", 0, -1258, 9999, -3623, 270, 0)
		spawnMobile("tatooine", "rev_dark_trooper", 0, -1247, 9999, -3624, 270, 0)
	end
	if counterReb > 1 then
		spawnMobile("tatooine", "rev_dark_trooper", 0, -1281, 9999, -3618, 270, 0)
		spawnMobile("tatooine", "rev_stormtrooper_groupleader", 0, -1280, 9999, -3615, 270, 0)
		spawnMobile("tatooine", "rev_dark_trooper", 0, -1279, 9999, -3610, 270, 0)
		spawnMobile("tatooine", "imp_strong_droideka", 0, -1095, 9999, -3605, 270, 0)	
		spawnMobile("tatooine", "rev_stormtrooper_groupleader", 0, -1138, 9999, -3653, 270, 0)
		spawnMobile("tatooine", "rev_stormtrooper_groupleader", 0, -1071, 9999, -3662, 270, 0)
		spawnMobile("tatooine", "rev_stormtrooper_groupleader", 0, -1238, 9999, -3670, 270, 0)
		spawnMobile("tatooine", "imp_strong_droideka", 0, -1240, 9999, -3638, 270, 0)
		spawnMobile("tatooine", "rev_bastion_boss", 0, -1246, 9999, -3629, 270, 0)
	end
	if counterReb > 2 then
		spawnMobile("tatooine", "rev_at_st", 0, -1094, 9999, -3642, 270, 0)
		spawnMobile("tatooine", "rev_at_st", 0, -1251, 9999, -3622, 270, 0)

		local msgX = " \\#000000[GCW:]\\#FFFFFF \\#660066 Bestine: Rebel Domination : \\#FFFFFF "
		sendBroadCastMessage(msgX .. " The rebel Fleetcommand send reinforcements to Naboo !", "all");
		local pShuttle = getCreatureObject(readData("gcw_shuttleanimation:naboo:Starport"))
		self:shuttleSequence(pShuttle)
		createEvent(44000, self.scriptName, "dropTrooperNabooSquadRebel", pShuttle)
	end	
	if counterReb > 3 then
		spawnMobile("tatooine", "rev_stormtrooper_groupleader", 0, -1101, 9999, -3620, 270, 0)
		spawnMobile("tatooine", "rev_stormtrooper_groupleader", 0, -1058, 9999, -3663, 270, 0)
		spawnMobile("tatooine", "rev_stormtrooper_groupleader", 0, -1082, 9999, -3663, 270, 0)
		spawnMobile("tatooine", "rev_stormtrooper_groupleader", 0, -1255, 9999, -3644, 270, 0)		
	end		
	
	return 0
end

function gcw_bestine_pvpEvents:spawnRebDefender(pBoss)


	local msg = " \\#000000[GCW:]\\#FFFFFF \\#FF0000 Bestine: Event : \\#FFFFFF "
	local cloudID = math.random(1000)
	local counterReb = readData("BestinePVPEventRebBossFactor")
	if counterReb > 0 then
		sendBroadCastMessage(msg .. " The General calling Reinforcements !", "rebel");
		sendBroadCastMessage(msg .. " The General calling Reinforcements !", "imperial");
		
		spawnMobile("tatooine", "rev_specops_trooper", 0, -1099, 9999, -3601, 270, 0)
		spawnMobile("tatooine", "rev_rebel_sergeant", 0, -1090, 9999, -3608, 270, 0)
		spawnMobile("tatooine", "rev_specops_trooper", 0, -1134, 9999, -3646, 270, 0)
		spawnMobile("tatooine", "rev_rebel_sergeant", 0, -1133, 9999, -3655, 270, 0)
		spawnMobile("tatooine", "rev_specops_trooper", 0, -1069, 9999, -3660, 270, 0)
		spawnMobile("tatooine", "rev_specops_trooper", 0, -1077, 9999, -3665, 270, 0)
		spawnMobile("tatooine", "rev_specops_trooper", 0, -1099, 9999, -3622, 270, 0)
		spawnMobile("tatooine", "rev_rebel_sergeant", 0, -1111, 9999, -3638, 270, 0)
		spawnMobile("tatooine", "rev_specops_trooper", 0, -1258, 9999, -3623, 270, 0)
		spawnMobile("tatooine", "rev_rebel_sergeant", 0, -1247, 9999, -3624, 270, 0)
	end
	if counterReb > 1 then
		spawnMobile("tatooine", "rev_rebel_sergeant", 0, -1281, 9999, -3618, 270, 0)
		spawnMobile("tatooine", "rev_rebel_sergeant", 0, -1280, 9999, -3615, 270, 0)
		spawnMobile("tatooine", "rev_rebel_sergeant", 0, -1238, 9999, -3670, 270, 0)
		spawnMobile("tatooine", "rev_specops_trooper", 0, -1279, 9999, -3610, 270, 0)
		spawnMobile("tatooine", "rev_rebel_battledroid", 0, -1095, 9999, -3605, 270, 0)	
		spawnMobile("tatooine", "rev_rebel_sergeant", 0, -1138, 9999, -3653, 270, 0)
		spawnMobile("tatooine", "rev_rebel_sergeant", 0, -1071, 9999, -3662, 270, 0)
		spawnMobile("tatooine", "rev_rebel_battledroid", 0, -1240, 9999, -3638, 270, 0)
		spawnMobile("tatooine", "rev_rebel_bastion_boss", 0, -1246, 9999, -3629, 270, 0)
	end
	if counterReb > 2 then
		spawnMobile("tatooine", "rev_at_xt", 0, -1094, 9999, -3642, 270, 0)
		spawnMobile("tatooine", "rev_at_xt", 0, -1251, 9999, -3622, 270, 0)
		local msgX = " \\#000000[GCW:]\\#FFFFFF \\#660066 Bestine: Imperial Domination : \\#FFFFFF "
		sendBroadCastMessage(msgX .. " The imperial Fleetcommand send reinforcements to Naboo !", "all");
		local pShuttle = getCreatureObject(readData("gcw_shuttleanimation:naboo:Starport"))
		self:shuttleSequence(pShuttle)
		createEvent(44000, self.scriptName, "dropTrooperNabooSquadImperial", pShuttle)
	end
	if counterReb > 3 then
		spawnMobile("tatooine", "rev_rebel_sergeant", 0, -1101, 9999, -3620, 270, 0)
		spawnMobile("tatooine", "rev_rebel_sergeant", 0, -1058, 9999, -3663, 270, 0)
		spawnMobile("tatooine", "rev_rebel_sergeant", 0, -1082, 9999, -3663, 270, 0)
		spawnMobile("tatooine", "rev_rebel_sergeant", 0, -1255, 9999, -3644, 270, 0)
	end	
	return 0
end

function gcw_bestine_pvpEvents:shuttleSequence(pShuttle)
    createEvent(23000, self.scriptName, "landferry", pShuttle)
    createEvent(44000, self.scriptName, "launchferry", pShuttle)
    return 0
end

function gcw_bestine_pvpEvents:dropTrooperNabooSquadImperial(pShuttle)
    self:placeCombatSquadImperial(-4880, 4140, 160)
    return 1
end

function gcw_bestine_pvpEvents:dropTrooperNabooSquadRebel(pShuttle)
    self:placeCombatSquadRebel(-4880, 4140, 160)
    return 1
end

function gcw_bestine_pvpEvents:placeCombatSquadRebel(x,y,direction)
  self:killTimer(ScreenplayHelper:spawnMobileAndIdle("naboo", "rev_rebel_commando", 0, x, 9999, y, direction, 0))
  self:killTimer(ScreenplayHelper:spawnMobileAndIdle("naboo", "rev_rebel_commando", 0, x+1, 9999, y + 7, direction, 0))
  self:killTimer(ScreenplayHelper:spawnMobileAndIdle("naboo", "rev_rebel_commando", 0, x+4, 9999, y, direction, 0))
  self:killTimer(ScreenplayHelper:spawnMobileAndIdle("naboo", "rev_rebel_commando", 0, x+7, 9999, y+ 7, direction, 0))
  self:killTimer(ScreenplayHelper:spawnMobileAndIdle("naboo", "rev_rebel_sergeant", 0, x, 9999, y - 7, direction, 0))
  self:killTimer(ScreenplayHelper:spawnMobileAndIdle("naboo", "rev_at_xt", 0, x-8, 9999, y-8, direction, 0))
  return 0
end

function gcw_bestine_pvpEvents:placeCombatSquadImperial(x,y,direction)
  self:killTimer(spawnMobile("naboo", "rev_elite_sand_trooper", 0, x, 9999, y, direction, 0))
  self:killTimer(spawnMobile("naboo", "rev_elite_sand_trooper", 0, x+1, 9999, y, direction, 0))
  self:killTimer(spawnMobile("naboo", "rev_elite_sand_trooper", 0, x+2, 9999, y, direction, 0))
  self:killTimer(spawnMobile("naboo", "rev_elite_sand_trooper", 0, x+3, 9999, y, direction, 0))
  self:killTimer(spawnMobile("tatooine", "rev_stormtrooper_groupleader", 0, x, 9999, y + 1, direction, 0))
  return 0
end

function gcw_bestine_pvpEvents:killTimer(pMobile)
    createEvent(900 * 1000, self.scriptName, "despawnSquad", pMobile)
    return 0
end
function gcw_bestine_pvpEvents:despawnSquad(pMobile)
    ScreenplayHelper:despawnCreature(pMobile)
    return 0
end


function gcw_bestine_pvpEvents:launchferry(pShuttle)
  ObjectManager.withCreatureObject(pShuttle, function(shuttle)
    shuttle:setPosture(FLYING)
  end)
  return 1
end

function gcw_bestine_pvpEvents:landferry(pShuttle)
  ObjectManager.withCreatureObject(pShuttle, function(shuttle)
    shuttle:setPosture(PRONE)
  end)
  return 1
end