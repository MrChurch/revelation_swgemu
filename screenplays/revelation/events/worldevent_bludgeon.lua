-- Author: Matthias Muente (matthias.muente@gmx.de)
-- https://revelationonline.net

worldevent_bludgeon = ScreenPlay:new {
	states = {},
	planetName = "dathomir",
	scriptName = "worldevent_bludgeon",
	spawnMap = {
			{"buff_npc_worldevent", 0, -480, 9999, 3507, 999, 0, 0},
			{"buff_npc_worldevent", 0, -412, 9999, 3493, 999, 0, 0},
			{"buff_npc_worldevent", 0, -63.4, -46.9, -72.2, 999, 5, 0},
			{"buff_npc_worldevent", 0, -135.1, -49.2, -40.4, 999, 8, 0},
			{"buff_npc_worldevent", 0, -135.1, -53.9, -98.3, 999, 12, 0},
			{"buff_npc_worldevent", 0, -103.9, -35.8, -65.9, 999, 6, 0},
			{"buff_npc_worldevent", 0, -75.2, -29.9, -42.1, 999, 5, 0},
			{"buff_npc_worldevent", 0, 15.4, -21.6, -17.2, 999, 19, 0},
			{"buff_npc_worldevent", 0, -8.4, -43.9, -97.3, 999, 22, 0},
			{"buff_npc_worldevent", 0, -81.1, -65.5, -196.5, 999, 28, 0},
			{"buff_npc_worldevent", 0, -15.9, -67.7, -104.9, 999, 26, 0},
			
			
			{"blodgeon_nightsister_rancor_tamer", 0, -475, 9999, 3548, 999, 0, 1},
			{"blodgeon_singing_mountain_clan_huntress", 0, -460, 9999, 3547, 999, 0, 1},
			{"blodgeon_nightsister_rancor_tamer", 0, -433, 9999, 3546, 999, 0, 1},
			{"blodgeon_nightsister_sentinel", 0, -449, 9999, 3525, 999, 0, 1},
			{"blodgeon_singing_mountain_clan_sentry", 0, -459, 9999, 3558, 999, 0, 0},
			{"blodgeon_singing_mountain_clan_arch_witch", 0, -451, 9999, 3562, 999, 0, 0},
			{"blodgeon_nightsister_rancor_tamer", 0, -447, 9999, 3563, 999, 0, 0},
			{"blodgeon_nightsister_sentinel", 0, -416, 9999, 3557, 999, 0, 1},
			
			--inside
			{"blodgeon_nightsister_rancor_tamer", 0, -1.8, -10.1, 3.4, 999, 1, 0},
			{"blodgeon_spiderclan_web_dancer", 0, 2.0, -12.1, -1.9, 999, 1, 0},
			{"blodgeon_singing_mountain_clan_huntress", 0, 0.1, -16.7, -8.3, 999, 1, 0},
			{"blodgeon_nightsister_rancor_tamer", 0, 7.8, -20.3, -16.4, 999, 1, 0},
			{"blodgeon_nightsister_spell_weaver", 0, -36.2, -32.2, -16.0, 999, 2, 0},
			{"blodgeon_singing_mountain_clan_sentry", 0, -37.2, -31.8, -22.1, 999, 2, 0},
			{"blodgeon_singing_mountain_clan_huntress", 0, -13.2, -30.7, -45, 999, 2, 0},
			{"blodgeon_nightsister_sentinel", 0, -44.4, -35.6, -9.4, 999, 2, 0},
			
			{"blodgeon_nightsister_rancor_tamer", 0, -43.6, -29.6, -41.2, 999, 3, 0},
			{"blodgeon_spiderclan_web_dancer", 0, -41.4, -29.8, -47.8, 999, 3, 0},
			{"blodgeon_nightsister_rancor_tamer", 0, -37.1, -30.0, -48.0, 999, 3, 0},
			
			{"blodgeon_nightsister_rancor_tamer", 0, -56.1, -42.2, -21.1, 999, 4, 0},
			{"blodgeon_nightsister_sentinel", 0, -69.9, -46.8, -19.9, 999, 4, 0},
			{"blodgeon_spiderclan_web_dancer", 0, -65.3, -45.8, -27.8, 999, 4, 0},
			{"blodgeon_singing_mountain_clan_huntress", 0, -63.9, -46.5, -48.4, 999, 5, 0},
			{"blodgeon_nightsister_rancor_tamer", 0, -78.3, -47.0, -43.4, 999, 5, 0},
			{"blodgeon_nightsister_sentinel", 0, -74.9, -46.5, -57.6, 999, 5, 0},
			{"blodgeon_spiderclan_web_dancer", 0, -73.2, -47.3, -71.5, 999, 5, 0},
			{"blodgeon_nightsister_rancor_tamer", 0, -62.2, -30.6, -44.3, 999, 5, 0},
			
			{"blodgeon_nightsister_rancor_tamer", 0, -93.1, -50.0, -64.1, 999, 6, 0},
			{"blodgeon_singing_mountain_clan_sentry", 0, -94.1, -50.4, -56.6, 999, 6, 0},
			{"blodgeon_singing_mountain_clan_arch_witch", 0, -125.1, -49.5, -60.8, 999, 6, 0},
			{"blodgeon_nightsister_rancor_tamer", 0, -142.7, -49.6, -59.3, 999, 6, 0},
			
			{"blodgeon_nightsister_rancor_tamer", 0, -72.1, -32.0, -80.9, 999, 7, 0},
			
			{"blodgeon_nightsister_rancor_tamer", 0, -150.9, -50.9, -43.3, 999, 8, 0},
			{"blodgeon_nightsister_spell_weaver", 0, -152.1, -50.7, -39.3, 999, 8, 0},
			{"blodgeon_nightsister_sentinel", 0, -168.4, -50.0, -46.2, 999, 8, 0},
			
			{"blodgeon_nightsister_rancor_tamer", 0, -104.7, -38.4, -119.9, 999, 9, 0},
			{"blodgeon_singing_mountain_clan_arch_witch", 0, -72.1, -38.0, -119.0, 999, 9, 0},
			{"blodgeon_nightsister_rancor_tamer", 0, -105.2, -69.8, -108, 999, 9, 0},
			{"blodgeon_nightsister_rancor_tamer", 0, -111.2, -69.8, -112, 999, 9, 0},
			{"blodgeon_nightsister_spell_weaver", 0, -108.2, -69.8, -114, 999, 9, 0},
			
			{"blodgeon_nightsister_rancor_tamer", 0, -167.6, -49.5, -57.9, 999, 10, 0},
			{"blodgeon_singing_mountain_clan_sentry", 0, -160.5, -49.3, -67.9, 999, 10, 0},
			{"blodgeon_nightsister_rancor_tamer", 0, -166.2, -49.7, -88.8, 999, 10, 0},
			{"blodgeon_nightsister_sentinel", 0, -163.6, -49.4, -56.3, 999, 10, 0},
			{"blodgeon_nightsister_rancor_tamer", 0, -176.3, -53.7, -114.7, 999, 12, 0},
			{"blodgeon_singing_mountain_clan_huntress", 0, -170.7, -53.3, -113.3, 999, 12, 0},
			{"blodgeon_nightsister_sentinel", 0, -174.3, -52.8, -110.3, 999, 12, 0},
			{"blodgeon_nightsister_rancor_tamer", 0, -154.2, -55.6, -120.9, 999, 12, 0},
			{"blodgeon_spiderclan_web_dancer", 0, -143.3, -53.9, -100.9, 999, 12, 0},
			{"blodgeon_nightsister_spell_weaver", 0, -151.2, -54.6, -120.8, 999, 12, 0},
			
			{"blodgeon_nightsister_rancor_tamer", 0, -122.5, -53.8, -80.4, 999, 11, 0},
			{"blodgeon_spiderclan_web_dancer", 0, -116.8, -54.6, -87.9, 999, 11, 0},
			{"blodgeon_singing_mountain_clan_huntress", 0, -114.3, -54.5, -80.6, 999, 11, 0},
			{"blodgeon_singing_mountain_clan_huntress", 0, -126.1, -38.0, -80.6, 999, 11, 0},
			{"blodgeon_singing_mountain_clan_sentry", 0, -104.1, -38.4, -97.3, 999, 11, 0},
			{"blodgeon_nightsister_rancor_tamer", 0, -142.3, -53.8, -88.5, 999, 11, 0},
			
			{"blodgeon_nightsister_rancor_tamer", 0, -81.2, -57.5, -81.1, 999, 14, 0},
			{"blodgeon_singing_mountain_clan_sentry", 0, -80.9, -60.6, -54.6, 999, 14, 0},
			{"blodgeon_singing_mountain_clan_sentry", 0, -79.9, -60.6, -55.6, 999, 14, 0},
			{"blodgeon_singing_mountain_clan_arch_witch", 0, -114.9, -58.2, -34.0, 999, 16, 0},
			{"blodgeon_singing_mountain_clan_huntress", 0, -107.2, -58.1, -28.2, 999, 16, 0},
			{"blodgeon_nightsister_sentinel", 0, -115.7, -58.2, -34.7, 999, 16, 0},
			{"blodgeon_singing_mountain_clan_sentry", 0, -118.3, -58.1, -28.4, 999, 16, 0},
			
			{"blodgeon_nightsister_rancor_tamer", 0, -135.2, -54.2, -14.0, 999, 18, 0},
			{"blodgeon_nightsister_sentinel", 0, -105.2, -42.5, -12.2, 999, 17, 0},
			
			{"blodgeon_spiderclan_web_dancer", 0, 19.7, -27.3, -38.7, 999, 19, 0},
			{"blodgeon_singing_mountain_clan_huntress", 0, 17.1, -28.2, -41.4, 999, 19, 0},
			{"blodgeon_nightsister_spell_weaver", 0, 16.0, -33.0, -53.4, 999, 19, 0},
			
			{"blodgeon_nightsister_sentinel", 0, -8.6, -35.1, -79.2, 999, 20, 0},
			{"blodgeon_nightsister_rancor_tamer", 0, -12.8, -35.0, -67.3, 999, 20, 0},
			
			{"blodgeon_nightsister_rancor_tamer", 0, -27.9, -35.9, -70.8, 999, 21, 0},
			{"blodgeon_singing_mountain_clan_arch_witch", 0, -17.2, -44.1, -97.6, 999, 22, 0},
			{"blodgeon_nightsister_sentinel", 0, -49.2, -48.2, -99.9, 999, 22, 0},
			{"blodgeon_nightsister_sentinel", 0, -40.2, -45.3, -106.2, 999, 22, 0},
			{"blodgeon_singing_mountain_clan_sentry", 0, -52.4, -49.5, -103.1, 999, 22, 0},
			
			{"blodgeon_singing_mountain_clan_arch_witch", 0, -47.9, -66.6, -158, 999, 28, 0},
			{"blodgeon_singing_mountain_clan_sentry", 0, -81.8, -65.6, -157.7, 999, 28, 0},
			{"blodgeon_nightsister_rancor_tamer", 0, -55.5, -65.2, -193, 999, 28, 0},
			
			{"blodgeon_nightsister_elder", 0, -58.1, -65.8, -232, 999, 29, 0},
			

	},
}
registerScreenPlay("worldevent_bludgeon", true)

local ObjectManager = require("managers.object.object_manager")
local ScreenplayHelper = require("helper.screenplayHelper")
local CombatHelper = require("helper.combatHelper")

function worldevent_bludgeon:start()
	self:spawnTerminals()
	writeData("worldevent_bludgeon:EventIsRunning", 0)
end

function worldevent_bludgeon:startInstance()
	if  (readData("worldevent_bludgeon:EventIsRunning") == 1) then
		return 0
	end
	writeData("worldevent_bludgeon:EventIsRunning", 1)
	local pCreature = self:spawnInstance()
	self:spawnMobiles()
	self:spawnTrigger()
	createEvent(7200 * 1000, "worldevent_bludgeon", "dungeonDestroyTimer", pCreature)
	createEvent(3600 * 1000, "worldevent_bludgeon", "TimerInfo", pCreature)
	createEvent(5400 * 1000, "worldevent_bludgeon", "TimerInfo2", pCreature)
	
	local msg = " \\#AAFF2F[Worldevent Bludgeon:] A Storm of Blood is coming. \\#FFFFFF "
	sendBroadCastMessage(msg, "all");
	msg = " \\#AAFF2F[Worldevent Bludgeon:] The Earth on Darthomir trembles !\\#FFFFFF "
	sendBroadCastMessage(msg, "all");
	msg = " \\#AAFF2F[Worldevent Bludgeon:] The renegade Stormwitch clan, start to spread blood all over the altars !\\#FFFFFF "
	sendBroadCastMessage(msg, "all");
	msg = " \\#FF8C00[Worldeventinfo Bludgeon:] Cave will colapse in 2h \\#FFFFFF "
	sendBroadCastMessage(msg, "all");
	msg = " \\#FF8C00[Worldeventinfo Bludgeon:] Dathomir near trading outpost -500 3500 \\#FFFFFF "
	sendBroadCastMessage(msg, "all");
	return 0
end

function worldevent_bludgeon:TimerInfo(pBoss, pPlayer)
	if  (readData("worldevent_bludgeon:EventIsRunning") == 0) then
		return 1
	end
	local msg = " \\#FF8C00[Worldeventinfo Bludgeon:] Cave will colapse in 1h \\#FFFFFF "
	sendBroadCastMessage(msg, "all");
	return 0
end

function worldevent_bludgeon:TimerInfo2(pBoss, pPlayer)
	if  (readData("worldevent_bludgeon:EventIsRunning") == 0) then
		return 1
	end
	local msg = " \\#FF8C00[Worldeventinfo Bludgeon:] Cave will colapse in 30min \\#FFFFFF "
	sendBroadCastMessage(msg, "all");
	return 0
end

function worldevent_bludgeon:dungeonDestroyTimer(pBoss, pPlayer)
	self:removeAllPlayersAndDestoyMobiles(0)
	return 1
end

function worldevent_bludgeon:spawnInstance()
	local pCreature = spawnMobile("dathomir", "cll8_binary_load_lifter", 60, 564, 9999, 3100, 290, 0)
	ObjectManager.withCreatureObject(pCreature, function(mobile)
		writeData("worldevent_bludgeon:AnchorID", mobile:getObjectID())
	end)
	local pBuilding = spawnBuilding(pCreature,"object/building/general/cave_03.iff", -468, 3580, 150, 21)
	ObjectManager.withSceneObject(pBuilding, function(scene)
		writeData("worldevent_bludgeon:DungeonID", scene:getObjectID())
		printf("spawn:" .. readData("worldevent_bludgeon:DungeonID") .. "\n")
	end)
	
	local sceneCellObject = LuaSceneObject(pBuilding)
	local building = LuaBuildingObject(pBuilding)
	for i = 1, 29, 1 do
	sceneCellObject:_setObject(building:getCell(i))
		writeData("worldevent_bludgeon:cell" .. i, sceneCellObject:getObjectID())
	end
	return pCreature
end

function worldevent_bludgeon:spawnMobiles()
	local count = 0
	for i,v in ipairs(self.spawnMap) do
		self:spawnCreatures(v,count)
		count = count + 1
	end
end

function worldevent_bludgeon:spawnCreatures(v,count)
	local pCreature
	local cellID = 0
	local rotate = 0
	
	if v[6] == 999 then
		rotate = math.random(360)
	else
		rotate = v[6]
	end
	
	if v[7] > 0 then
		cellID = readData("worldevent_bludgeon:cell" .. v[7])
	end
	
	if v[8] == 0 then
		pCreature = spawnMobile(self.planetName, v[1], v[2], v[3], v[4], v[5], rotate, cellID )
	else
		pCreature = ScreenplayHelper:spawnMobileAndIdle(self.planetName, v[1], v[2], v[3], v[4], v[5], rotate, cellID )
	end
	
	ObjectManager.withCreatureObject(pCreature, function(mobile)
		writeData("worldevent_bludgeon:CreatureID_" .. count, mobile:getObjectID())
	end)
end

function worldevent_bludgeon:despawnCreature(pMobile, pPlayer)
	ObjectManager.withCreatureObject(pMobile, function(mobile)
	CombatHelper:forcePeace(pMobile)
		ScreenplayHelper:despawnCreature(pMobile)
	end)
	return 0
end

function worldevent_bludgeon:spawnEndBoss_low(pBoss)
	local pBoss = spawnMobile("dathomir", "bludgeon_low", 0, 36.7, -66.4, -87.7, 0, readData("worldevent_bludgeon:cell27"))
	if pBoss ~= nil then
		local msg = " \\#FF8C00[Worldeventinfo Bludgeon:] Bludgeon raises out of the sea of Blood ! \\#FFFFFF "
		sendBroadCastMessage(msg, "all");
		createObserver(OBJECTDESTRUCTION, self.scriptName, "spawnEndBoss_med", pBoss)
	end
	return 0
end

function worldevent_bludgeon:spawnEndBoss_med(pBoss)
	local pBoss = spawnMobile("dathomir", "bludgeon_medium", 0, 36.7, -66.4, -87.7, 0, readData("worldevent_bludgeon:cell27"))
	if pBoss ~= nil then
		local msg = " \\#FF8C00[Worldeventinfo Bludgeon:] Bludgeon mutated again ?! \\#FFFFFF "
		sendBroadCastMessage(msg, "all");	
		createObserver(OBJECTDESTRUCTION, self.scriptName, "spawnEndBoss_normal", pBoss)
	end
	return 0
end

function worldevent_bludgeon:spawnEndBoss_normal(pBoss)
	local pBoss = spawnMobile("dathomir", "bludgeon_normal", 0, 36.7, -66.4, -87.7, 0, readData("worldevent_bludgeon:cell27"))
	if pBoss ~= nil then
		local msg = " \\#FF8C00[Worldeventinfo Bludgeon:] Bludgeon mutated again !!! This will become worse ! \\#FFFFFF "
		sendBroadCastMessage(msg, "all");	
		createObserver(OBJECTDESTRUCTION, self.scriptName, "spawnEndBoss", pBoss)
	end
	pBoss = spawnMobile("dathomir", "bludgeon_low", 0, 35.7, -66.4, -87.7, 0, readData("worldevent_bludgeon:cell27"))
	pBoss = spawnMobile("dathomir", "bludgeon_low", 0, 34.7, -66.4, -87.7, 0, readData("worldevent_bludgeon:cell27"))
	return 0
end

function worldevent_bludgeon:spawnEndBoss(pBoss)
	local pBoss = spawnMobile("dathomir", "bludgeon_normal", 0, 36.7, -66.4, -87.7, 0, readData("worldevent_bludgeon:cell27"))
	if pBoss ~= nil then
		local msg = " \\#FF8C00[Worldeventinfo Bludgeon:] The Altars are red from all the Blood, is this the last dawn of dathomir ?? \\#FFFFFF "
		sendBroadCastMessage(msg, "all");	
		createObserver(OBJECTDESTRUCTION, self.scriptName, "rewardEndBoss", pBoss)
	end
	pBoss = spawnMobile("dathomir", "bludgeon_low", 0, 35.7, -66.4, -89.7, 0, readData("worldevent_bludgeon:cell27"))
	pBoss = spawnMobile("dathomir", "bludgeon_medium", 0, 34.7, -66.4, -89.7, 0, readData("worldevent_bludgeon:cell27"))
	pBoss = spawnMobile("dathomir", "bludgeon_medium", 0, 35.7, -66.4, -85.7, 0, readData("worldevent_bludgeon:cell27"))
	pBoss = spawnMobile("dathomir", "bludgeon_low", 0, 34.7, -66.4, -85.7, 0, readData("worldevent_bludgeon:cell27"))
	return 0
end

function worldevent_bludgeon:spawnTrigger()
	local pBoss = spawnMobile("dathomir", "blodgeon_nightsister_elder", 0, -140, -53.8, -84.3, 0, readData("worldevent_bludgeon:cell11"))
	if pBoss ~= nil then
		createObserver(OBJECTDESTRUCTION, self.scriptName, "spawnEndBoss_low", pBoss)
	end
	return 0
end

function worldevent_bludgeon:rewardEndBoss(pBoss, pPlayer)
	local msg = " \\#AAFF20[Worldevent Bludgeon:] The Incarnation is broken, the earth on dathomir clams down again ! Our Heroes wiped the Stormwitch Clan ! \\#FFFFFF "
	sendBroadCastMessage(msg, "all");
	worldevent_bludgeon:removeAllPlayersAndDestoyMobiles(1)
	return 0
end

function worldevent_bludgeon:despawn(pSceneObject)
	if pSceneObject ~= nil then
		ScreenplayHelper:destroy(LuaSceneObject(pSceneObject):getObjectID(),true)
	end
	return 0
end


-- -----------------------------
-- -- functions cleanuptask   --

function worldevent_bludgeon:removeAllPlayersAndDestoyMobiles(bossWasKilled)
	if readData("worldevent_bludgeon:EventIsRunning") == 0 then
	return 0
	end
	local playersToRemove = {}
	for i = 1, 29, 1 do
		local pCell = getSceneObject(readData("worldevent_bludgeon:cell" .. i))
		ObjectManager.withSceneObject(pCell, function(cell)
			for j = cell:getContainerObjectsSize(), 1, -1 do
				local pObject = cell:getContainerObject(j - 1)
				ObjectManager.withSceneObject(pObject, function(object)
					if object:isPlayerCreature() then
						table.insert(playersToRemove, pObject)
						if bossWasKilled == 1 then
							ObjectManager.withCreatureObject(pObject, function(player)
								player:setScreenPlayState(4, "worldevent_bosskill")
								player:setScreenPlayState(8, "worldevent_bosskill")
								player:sendSystemMessage("The National Hunting Association has registered your kill.")
							end)
							ObjectManager.withCreaturePlayerObject(pObject, function(player)
								player:awardBadge(148)
							end)
						end
					end
				end)
			end
		end)
	end
	
	local count = 0
	for i,v in ipairs(self.spawnMap) do
		ScreenplayHelper:destroy(readData("worldevent_bludgeon:CreatureID_" .. count), false)
		count = count + 1
	end
	
	for i = 1, #playersToRemove, 1 do
		local pObject = playersToRemove[i]
		createEvent(1000, self.scriptName, "removePlayer", pObject)
	end
	local pObject = getCreatureObject(readData("worldevent_bludgeon:AnchorID")) 
	createEvent(2000, self.scriptName, "destroyDungeon", pObject)
	writeData("worldevent_bludgeon:EventIsRunning", 0)
	return 0
end

function worldevent_bludgeon:destroyDungeon(pPlayer)
	printf("destroy:" .. readData("worldevent_bludgeon:DungeonID") .. "\n")
	ScreenplayHelper:destroy(readData("worldevent_bludgeon:DungeonID"), false) 
	ScreenplayHelper:destroy(readData("worldevent_bludgeon:AnchorID"), false)
	return 0
end

function worldevent_bludgeon:removePlayer(pPlayer)
	if pPlayer == nil then
		return 0
	end
	local player = LuaSceneObject(pPlayer)
	if (player ~= nil) then
		player:switchZone(self.planetName, 600, 6, 3067, 0)
	end
	return 0
end
--------------- temp Admin trigger till we have more players for a random observer ---------------
function worldevent_bludgeon:spawnTerminals()
	-- bosspower
	local pSceneObject = spawnSceneObject("dathomir", "object/tangible/dungeon/terminal_free_s1.iff", 635, 6, 3066, 0, 20)
	ObjectManager.withSceneObject(pSceneObject, function(scene)
		scene:setCustomObjectName("disabled Terminal")
	end)
	createObserver(OBJECTRADIALUSED, "worldevent_bludgeon", "notifyTerminalUsed", pSceneObject)
end

function worldevent_bludgeon:notifyTerminalUsed(pKeypad, pPlayer, radialSelected)
	if (radialSelected == 20) then
	local suiManager = LuaSuiManager()
		suiManager:sendKeypadSui(pKeypad, pPlayer, "worldevent_bludgeon", "keypadSuiCallback")
	end
	return 0
end

function worldevent_bludgeon:keypadSuiCallback(pCreature, pSui, cancelPressed, enteredCode, pressedButton)
	local suiBox = LuaSuiBox(pSui)
	local pUsingObject = suiBox:getUsingObject()
	ObjectManager.withCreatureObject(pCreature, function(player)
		if (pressedButton == "enter") then
			if (tonumber(enteredCode) == 14686003) then
				player:sendSystemMessage("Starting WorldEvent Bludgeon")
				self:startInstance()
			end
		end
	end)
	return 0
end
 
 
 