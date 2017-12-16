-- Author: Matthias Muente (matthias.muente@gmx.de)
-- https://revelationonline.net

worldevent_surgisquil = ScreenPlay:new {
	states = {},
	planetName = "tatooine",
	scriptName = "worldevent_surgisquil",
	TicklifeTime =  6000, --6000,
	spawnMap = {
			{"surgisquil_soldier", 0, 17, 9999, -57, 999, 0, 0},
			{"surgisquil_soldier", 0, 35, 9999, -39, 999, 0, 0},
			{"surgisquil_soldier", 0, 74, 9999, -48, 999, 0, 0},
			{"surgisquil_soldier", 0, 109, 9999, -57, 999, 0, 0},
			{"surgisquil_soldier", 0, 19, 9999, -56, 999, 0, 0},
			{"surgisquil_soldier", 0, -31, 9999, -61, 999, 0, 0},
			{"surgisquil_soldier", 0, -30, 9999, -84, 999, 0, 0},
			{"surgisquil_soldier", 0, -17, 9999, -126, 999, 0, 0},
			{"surgisquil_soldier", 0, -5, 9999, -139, 999, 0, 0},
			{"surgisquil_soldier", 0, 44, 9999, -160, 999, 0, 0},
			{"surgisquil_soldier", 0, 76, 9999, -146, 999, 0, 0},
			{"surgisquil_soldier", 0, 99, 9999, -122, 999, 0, 0},
			{"surgisquil_soldier", 0, 113, 9999, -100, 999, 0, 0},
			{"surgisquil_soldier", 0, 117, 9999, -71, 999, 0, 0},
			{"surgisquil_soldier", 0, 85, 9999, -84, 999, 0, 0},
			{"surgisquil_soldier", 0, 86, 9999, -96, 999, 0, 0},
			{"surgisquil_soldier", 0, 53, 9999, -83, 999, 0, 0},
			{"surgisquil_soldier", 0, 56, 9999, -81, 999, 0, 0},
			{"surgisquil_soldier", 0, 1.9, -10.4, 0.6, 999, 7125560, 0},
			{"surgisquil_soldier", 0, -1.2, -10.5, 0.9, 999, 7125560, 0},
			{"surgisquil_soldier", 0, 4.8, -19.8, -15.8, 999, 7125560, 0},
			{"surgisquil_soldier", 0, 109, 9999, -57, 999, 0, 0},
			{"surgisquil_soldier", 0, -18.5, -29.1, -14.3, 999, 7125561, 0},
			{"surgisquil_soldier", 0, -12.6, -27.3, -25.3, 999, 7125561, 0},
			{"surgisquil_soldier", 0, -28.6, -28.6, -29.4, 999, 7125561, 0},
			{"surgisquil_soldier", 0, -37.8, -30.9, -28.4, 999, 7125561, 0},
			{"surgisquil_soldier", 0, -42.4, -32.8, -26.7, 999, 7125561, 0},
			{"surgisquil_soldier", 0, -36.3, -31.5, -24.7, 999, 7125561, 0},
			{"surgisquil_soldier", 0, -47.4, -37.2, -6.6, 999, 7125561, 0},
			{"surgisquil_soldier", 0, -7.4, -30.3, -44.6, 999, 7125561, 0},
			{"surgisquil_soldier", 0, -4.3, -30.0, -47.4, 999, 34, 7125561, 0},
			{"surgisquil_soldier", 0, -4.6, -30.0, -47.5, 999, 7125561, 0},
			{"surgisquil_soldier", 0, -11.5, -30.7, -45.6, 999, 7125561, 0},

			--Cell [7125578]
			{"surgisquil_soldier", 0, 18.6, -21.2, -16.5, 999, 7125578, 0},
			{"surgisquil_soldier", 0, 18.1, -33.1, -54.6, 999, 7125578, 0},
			
			--Cell [7125579]
			{"surgisquil_soldier", 0, 15.4, -35.4, -69.2, 999, 7125579, 0},
			{"surgisquil_soldier", 0, 18.4, -35.3, -68.7, 999, 7125579, 0},
			{"surgisquil_soldier", 0, 14.4, -35.4, -76.4, 999, 7125579, 0},
			{"surgisquil_soldier", 0, 17.5, -35.2, -82.4, 999, 7125579, 0},
			{"surgisquil_soldier", 0, -10.3, -34.5, -81.4, 999, 7125579, 0},
			{"surgisquil_soldier", 0, -6.5, -35.1, -69.3, 999, 7125579, 0},
			{"surgisquil_soldier", 0, -6.2, -35.1, -64.3, 999, 7125579, 0},
			{"surgisquil_soldier", 0, -10.4, -34.7, -62.3, 999, 7125579, 0},
			{"surgisquil_soldier", 0, 7.2, -35.6, -83.7, 999, 7125579, 0},
			{"surgisquil_soldier", 0, -12.3, -34.9, -78.2, 999, 7125579, 0},
			
			--Cell [7125581]
			{"surgisquil_soldier", 0, -18.0, -43.9, -107.2, 999, 7125581, 0},
			{"surgisquil_soldier", 0, -15.3,-43.5, -107.3, 999, 7125581, 0},
			{"surgisquil_soldier", 0, -11.6, -43.8, -101.3, 999, 7125581, 0},
			{"surgisquil_soldier", 0, -17.6, -44.2, -101.5, 999, 7125581, 0},
			{"surgisquil_soldier", 0, -36.3, -44.0, -93.2, 999, 7125581, 0},
			{"surgisquil_soldier", 0, -37.3, -44.0, -115.3, 999, 7125581, 0},
			{"surgisquil_soldier", 0, -56.4, -50.8, -96.2, 999, 7125581, 0},
			{"surgisquil_soldier", 0, -52.2, -48.8, -95.2, 999, 7125581, 0},
			{"surgisquil_soldier", 0, -53.1, -49.4, -114.3, 999, 7125581, 0},
			
			--Cell [7125568]
			{"surgisquil_soldier", 0, -114.6, -69.8, -116.4, 999, 7125568, 0},
			{"surgisquil_soldier", 0, -110.3, -69.6, -107.4, 999, 7125568, 0},
			{"surgisquil_soldier", 0, -103.4, -69.6, -103.2, 999, 7125568, 0},
			{"surgisquil_soldier", 0, -89.1, -71.6, -106.2, 999, 7125568, 0},
			{"surgisquil_soldier", 0, -89.4, -71.6, -111.5, 999, 7125568, 0},
			{"surgisquil_soldier", 0, -78.3, -71.3, -103.1, 999, 7125568, 0},
			
			--Cell [7125587]
			{"surgisquil_soldier", 0, -42.3, -66.2, -153.4, 999, 7125587, 0},
			{"surgisquil_soldier", 0, -45.3, -66.8, -158.2, 999, 7125587, 0},
			{"surgisquil_soldier", 0, -41.1, -66.0, -168.2, 999, 7125587, 0},
			{"surgisquil_soldier", 0, -49.1, -66.1, -189.5, 999, 7125587, 0},
			{"surgisquil_soldier", 0, -54.4, -65.8, -175.1, 999, 7125587, 0},
			{"surgisquil_soldier", 0, -68.7, -66.3, -165.4, 999, 7125587, 0},
			{"surgisquil_soldier", 0, -87.7, -65.1, -199.3, 999, 7125587, 0},
			{"surgisquil_soldier", 0, -87.5, -65.5, -191.4, 999, 7125587, 0},
			{"surgisquil_soldier", 0, -84.2, -66.4, -176.4, 999, 7125587, 0},
			{"surgisquil_soldier", 0, -80.3, -66.3, -185.6, 999, 7125587, 0},
			
			--Cell [7125588] (primary king chamber, 0},
			{"surgisquil_soldier", 0, -57.4, -66.6, -207.0, 999, 7125588, 0},
			{"surgisquil_soldier", 0, -60.5, -65.5, -223.3, 999, 7125588, 0},
			{"surgisquil_soldier", 0, -51.3, -65.0, -229.6, 999, 7125588, 0},
			{"surgisquil_soldier", 0, -68.0, -64.6, -231.5, 999, 7125588, 0},
			{"surgisquil_soldier", 0, -66.0, -65.9, -239.5, 999, 7125588, 0},
			{"surgisquil_soldier", 0, -55.5, -65.7, -232.4, 999, 7125588, 0},
			
			--Cell [7125585]
			{"surgisquil_soldier", 0, -17.4, -67.7, -115.4, 999, 7125585, 0},
			{"surgisquil_soldier", 0, 6.4, -71.8, -114.3, 999, 7125585, 0},
			{"surgisquil_soldier", 0, -1.3, -68.2, -91.5, 999, 7125585, 0},
			{"surgisquil_soldier", 0, 8.2, -67.2, -82.3, 999, 7125585, 0},
			
			--Cell [7125564]
			{"surgisquil_soldier", 0, -63.4, -46.8, -71.6, 999, 7125564, 0},
			{"surgisquil_soldier", 0, -68.1, -46.8, -75.2, 999, 7125564, 0},
			{"surgisquil_soldier", 0, -79.3, -46.3, -72.2, 999, 7125564, 0},
			{"surgisquil_soldier", 0, -81.3, -46.5, -41.1, 999, 7125564, 0},
			{"surgisquil_soldier", 0, -77.4, -46.9, -47.4, 999, 7125564, 0},
			
			{"surgisquil_soldier", 0, -73.5, -29.9, -40.2, 999, 7125564, 0},
			{"surgisquil_soldier", 0, -75.2, -29.9, -43.1, 999, 7125564, 0},
			{"surgisquil_soldier", 0, -61.3, -30.2, -48.2, 999, 7125564, 0},
			{"surgisquil_soldier", 0, -62.6, -30.9, -58.3, 999, 7125564, 0},
			{"surgisquil_soldier", 0, -65.3, -30.5, -75.6, 999, 7125564, 0},
			{"surgisquil_soldier", 0, -62.3, -30.0, -74.6, 999, 7125564, 0},
			
			--Cell [7125575]
			{"surgisquil_soldier", 0, -122.2, -57.5, -24.0, 999, 7125575, 0},
			{"surgisquil_soldier", 0, -111.6, -57.6, -34.5, 999, 7125575, 0},
			{"surgisquil_soldier", 0, -112.6, -58.1, -32.2, 999, 7125575, 0},
			{"surgisquil_soldier", 0, -106.2, -58.1, -28.4, 999, 7125575, 0},
			{"surgisquil_soldier", 0, -101.2, -58.5, -37.4, 999, 7125575, 0},
			
			--Cell [7125570]
			{"surgisquil_soldier", 0, -121.0, -53.5, -81.5, 999, 7125570, 0},
			{"surgisquil_soldier", 0, -128.7, -53.3, -90.9, 999, 7125570, 0},
			{"surgisquil_soldier", 0, -142.0, -53.4, -78.4, 999, 7125570, 0},
			{"surgisquil_soldier", 0, -145.9, -53.4, -89.4, 999, 7125570, 0},
			
			--Cell [7125569]
			{"surgisquil_soldier", 0, -164.9, -49.2, -63.4, 999, 7125569, 0},
			{"surgisquil_soldier", 0, -160.1, -49.1, -71.3, 999, 7125569, 0},
			{"surgisquil_soldier", 0, -163.1, -50.0, -73.5, 999, 7125569, 0},
			{"surgisquil_soldier", 0, -163.3, -49.4, -80.8, 999, 7125569, 0},
			{"surgisquil_soldier", 0, -161.8, -49.7, -83.5, 999, 7125569, 0},
			
			--Cell [7125565]
			{"surgisquil_soldier", 0, -135.0,  -49.4, -60.6, 999, 7125565, 0},
			{"surgisquil_soldier", 0, -132.6,  -49.4, -59.4, 999, 7125565, 0},
			{"surgisquil_soldier", 0, -133.3,  -49.1, -63.4, 999, 7125565, 0},
			{"surgisquil_soldier", 0, -100.6,  -51.2, -64.4, 999, 7125565, 0},
			{"surgisquil_soldier", 0,  -95.4,  -50.2, -54.3, 999, 7125565, 0},
			
			--Cell [7125571]
			{"surgisquil_soldier", 0,  -176.4, -53.8, -122.8, 999, 7125571, 0},
			{"surgisquil_soldier", 0,  -177.4, -52.7, -109.5, 999, 7125571, 0},
			
			
			--Cell [7125576]
			{"surgisquil_soldier", 0,  -104.3, -42.4, -9.3, 999, 7125576, 0},
			{"surgisquil_soldier", 0,  -123.4, -47.9, -11.9, 999, 7125576, 0},
		},
}
registerScreenPlay("worldevent_surgisquil", true)

local ObjectManager = require("managers.object.object_manager")
local ScreenplayHelper = require("helper.screenplayHelper")
local CombatHelper = require("helper.combatHelper")

function worldevent_surgisquil:start()
    self:spawnTerminals()
    writeData("worldevent_surgisquil:EventIsRunning", 0)
end

function worldevent_surgisquil:startInstance()
	if  (readData("worldevent_surgisquil:EventIsRunning") >= 1) then
		local msg = " \\#AAFF2F[Worldevent Surgisquil:] The squil King is stil alive and gather his Troops together. \\#FFFFFF "
		sendBroadCastMessage(msg, "all");
	    return 0
	end
	writeData("worldevent_surgisquil:EventIsRunning", 1)
	writeData("worldevent_surgisquil:activeGuards", 0)
	self:spawnMobiles()
	self:spawnEndBoss()
	self:spawnGuardians()
	self:spawnMedic()
    local msg = " \\#AAFF2F[Worldevent Surgisquil:] The squils have choosen a new King !. \\#FFFFFF "
    sendBroadCastMessage(msg, "all");
    msg = " \\#FF8C00[Worldeventinfo Surgisquil:] Kill the King to prevent that all tribes became one \\#FFFFFF "
    sendBroadCastMessage(msg, "all");
    return 0
end

function worldevent_surgisquil:dungeonDestroyTimer(pBoss, pPlayer)
    self:removeAllPlayersAndDestoyMobiles(0)
    return 1
end

function worldevent_surgisquil:spawnMobiles()
    local count = 0
    for i,v in ipairs(self.spawnMap) do
        self:spawnCreatures(v,count)
        count = count + 1
    end
end

function worldevent_surgisquil:spawnCreatures(v,count)
    local pCreature
    local cellID = 0
    local rotate = 0

    if v[6] == 999 then
        rotate = math.random(360)
    else
        rotate = v[6]
    end

    if v[8] == 0 then
        pCreature = spawnMobile(self.planetName, v[1], v[2], v[3], v[4], v[5], rotate, v[7] )
    else
        pCreature = ScreenplayHelper:spawnMobileAndIdle(self.planetName, v[1], v[2], v[3], v[4], v[5], rotate, v[7] )
    end

    ObjectManager.withCreatureObject(pCreature, function(mobile)
        writeData("worldevent_surgisquil:CreatureID_" .. count, mobile:getObjectID())
    end)
end

function worldevent_surgisquil:despawnCreature(pMobile, pPlayer)
    ObjectManager.withCreatureObject(pMobile, function(mobile)
        CombatHelper:forcePeace(pMobile)
        ScreenplayHelper:despawnCreature(pMobile)
    end)
    return 0
end

function worldevent_surgisquil:spawnMedic()
	local medic = spawnMobile("tatooine", "free_buff_npc", 0, -3, 9999, 15, 999, 0)
	createEvent(7000 * 1000, self.scriptName, "despawnCreature", medic)
	return 0
end
			
function worldevent_surgisquil:spawnGuardians()
	
	writeData("worldevent_surgisquil:activeGuards", 3)
	
	local pGuard1 = spawnMobile("tatooine", "surgisquil_guardian", 0,  -59.4, -65.5, -230.4, 999, 7125588)
	local pGuard2 = spawnMobile("tatooine", "surgisquil_guardian", 0,  -173.1, -50, -66, 999, 7125569)
	local pGuard3 = spawnMobile("tatooine", "surgisquil_guardian", 0,  -0,  -63.2, -30.2, -70.1, 999, 7125564)
	
	createObserver(OBJECTDESTRUCTION, self.scriptName, "lowerGuardianCount", pGuard1)
	createObserver(OBJECTDESTRUCTION, self.scriptName, "lowerGuardianCount", pGuard2)
	createObserver(OBJECTDESTRUCTION, self.scriptName, "lowerGuardianCount", pGuard3)

	return 0
end

function worldevent_surgisquil:lowerGuardianCount(pBoss, pPlayer)
	local count = readData("worldevent_surgisquil:activeGuards")
	if count > 0 then
		writeData("worldevent_surgisquil:activeGuards", count -1)
		msg = " \\#FF8C00[Worldeventinfo Surgisquil:] Guard eliminated ! (left: " .. count - 1 .. " )\\#FFFFFF "
		sendBroadCastMessage(msg, "all");	
	end
	return 0
end

function worldevent_surgisquil:spawnEndBoss()
    local pBoss = spawnMobile("tatooine", "surgisquil", 0,  32.2, -67, -74, 999, 7125586)
    if pBoss ~= nil then
        createObserver(OBJECTDESTRUCTION, self.scriptName, "rewardEndBoss", pBoss)
        createObserver(DAMAGERECEIVED,self.scriptName,"logicEndBoss", pBoss)
    end
    return 0
end


function worldevent_surgisquil:logicEndBoss(pBoss, pPlayer)
    ObjectManager.withCreatureObject(pBoss, function(boss)
        ObjectManager.withCreatureObject(pPlayer, function(player)
        	local guardCount = readData("worldevent_surgisquil:activeGuards")
            if (CombatHelper:logicBossState(pBoss, 0.80, "worldevent_surgisquil:EventIsRunning", 0) == true) then
            	printf(guardCount .. "")
				if guardCount > 0 then
					player:sendSystemMessage("*** Guards shooting from secret openings, you should eliminate the Guardians *** !")
					player:addDotState(pMovingObject, POISONED, 250 , HEALTH, 15, 230, objectID, 0)
					player:addDotState(pMovingObject, POISONED, 250 , ACTION, 15, 230, objectID, 0)
					player:addDotState(pMovingObject, DISEASED, 65 , QUICKNESS, 240, 250, objectID, 0)
					player:addDotState(pMovingObject, DISEASED, 65 , STRENGTH, 240, 250, objectID, 0)
					player:inflictDamage(pPlayer, 0, 250, 0)
					CombatHelper:setHAM(pBoss, 0.8)
				else
					writeData("worldevent_surgisquil:EventIsRunning", 1)
				end
			elseif (CombatHelper:logicBossState(pBoss, 0.60, "worldevent_surgisquil:EventIsRunning", 1) == true) then
				self:spawnGuardians()
				msg = " \\#FF8C00[Worldeventinfo Surgisquil:] The King called new Guards ! \\#FFFFFF "
				sendBroadCastMessage(msg, "all");				
				writeData("worldevent_surgisquil:EventIsRunning", 2)
			elseif (CombatHelper:logicBossState(pBoss, 0.40, "worldevent_surgisquil:EventIsRunning", 2) == true) then
				if guardCount > 0 then
					player:sendSystemMessage("*** Guards shooting from secret openings, you should eliminate the Guardians *** !")
					player:addDotState(pMovingObject, POISONED, 250 , HEALTH, 15, 230, objectID, 0)
					player:addDotState(pMovingObject, POISONED, 250 , ACTION, 15, 230, objectID, 0)
					player:addDotState(pMovingObject, DISEASED, 65 , STAMINA, 240, 250, objectID, 0)
					player:addDotState(pMovingObject, DISEASED, 65 , CONSTITUTION, 240, 250, objectID, 0)
					player:inflictDamage(pPlayer, 0, 250, 0)
					CombatHelper:setHAM(pBoss, 0.4)
				else
					writeData("worldevent_surgisquil:EventIsRunning", 3)
				end
            end
        end)
    end)
    return 0
end

function worldevent_surgisquil:rewardEndBoss(pBoss, pPlayer)
    local msg = " \\#AAFF20[Worldevent Surgisquil:] The Kind is Dead ! The Tribes apart again. \\#FFFFFF "
    local msg = " \\#AAFF20[Worldevent Surgisquil:] A Rewardcloud spawned. \\#FFFFFF "
    sendBroadCastMessage(msg, "all");
    writeData("worldevent_surgisquil:EventIsRunning", 0)
    self:spawnRewardArea(38.8,-67.0, -79.3)
    return 0
end

function worldevent_surgisquil:despawn(pSceneObject)
    if pSceneObject ~= nil then
        ScreenplayHelper:destroy(LuaSceneObject(pSceneObject):getObjectID(),true)
    end
    return 0
end

function worldevent_surgisquil:rewardPlayer(pActiveArea, pMovingObject)
    if not (SceneObject(pMovingObject):isPlayerCreature()) then
        return 0
    end
   
    ObjectManager.withCreatureObject(pMovingObject, function(player)
        player:setScreenPlayState(128, "worldevent_bosskill")
        player:setScreenPlayState(8, "worldevent_bosskill")
        player:sendSystemMessage("The National Hunting Association has registered your kill.")
    end)
    ObjectManager.withCreaturePlayerObject(pMovingObject, function(player)
        player:awardBadge(154)
    end)

    return 0
end

function worldevent_surgisquil:spawnRewardArea(x, z, y)
   local cloudTimer = 220
   local pActiveArea = spawnActiveArea(self.planetName, "object/active_area.iff", 27.6 , 89.2 , -201 , 12, 7125586)
   local sceneObject = spawnSceneObject(self.planetName, "object/static/particle/pt_light_blink_blue.iff", x , z, y , 7125586, 0)
   createEvent(cloudTimer * 1000, self.scriptName, "despawn", sceneObject)
   sceneObject = spawnSceneObject(self.planetName, "object/static/particle/pt_light_blink_blue.iff", x - 2, z, y - 2, 7125586, 0)
   createEvent(cloudTimer * 1000, self.scriptName, "despawn", sceneObject)
   sceneObject = spawnSceneObject(self.planetName, "object/static/particle/pt_light_blink_blue.iff", x -1.5, z, y - 1.5, 7125586, 0)
   createEvent(cloudTimer * 1000, self.scriptName, "despawn", sceneObject)
   sceneObject = spawnSceneObject(self.planetName, "object/static/particle/pt_light_blink_blue.iff", x -1, z, y -1, 7125586, 0)
   createEvent(cloudTimer * 1000, self.scriptName, "despawn", sceneObject)
   sceneObject = spawnSceneObject(self.planetName, "object/static/particle/pt_light_blink_orange.iff", x ,  z, y , 7125586, 0)
   createEvent(cloudTimer * 1000, self.scriptName, "despawn", sceneObject)
   sceneObject = spawnSceneObject(self.planetName, "object/static/particle/pt_light_blink_orange.iff", x + 1,  z , y , 7125586, 0)
   createEvent(cloudTimer * 1000, self.scriptName, "despawn", sceneObject)
   sceneObject = spawnSceneObject(self.planetName, "object/static/particle/pt_light_blink_orange.iff", x + 2, z, y + 1, 7125586, 0)
   createEvent(cloudTimer * 1000, self.scriptName, "despawn", sceneObject)
   sceneObject = spawnSceneObject(self.planetName, "object/static/particle/pt_light_blink_orange.iff", x + 3, z , y + 2, 7125586, 0)
   createEvent(cloudTimer * 1000, self.scriptName, "despawn", sceneObject)
   sceneObject = spawnSceneObject(self.planetName, "object/static/particle/pt_miasma_of_fog_red.iff", x + 1, z , y + 1, 7125586, 0)
   createEvent(cloudTimer * 1000, self.scriptName, "despawn", sceneObject)
   sceneObject = spawnSceneObject(self.planetName, "object/static/particle/pt_miasma_of_fog_greenish.iff", x , z , y , 7125586, 0)
   createEvent(cloudTimer * 1000, self.scriptName, "despawn", sceneObject)

   if pActiveArea ~= nil then
       createObserver(ENTEREDAREA, "worldevent_surgisquil", "rewardPlayer", pActiveArea)
       createEvent(cloudTimer * 1000, self.scriptName, "despawn", pActiveArea)
   end
end
-- -----------------------------
-- -- functions cleanuptask   --

--------------- temp Admin trigger till we have more players for a random observer ---------------
function worldevent_surgisquil:spawnTerminals()

    local pSceneObject = spawnSceneObject("tatooine", "object/tangible/dungeon/terminal_free_s1.iff", -2816, 5, 2341, 0, 180)
    ObjectManager.withSceneObject(pSceneObject, function(scene)
        scene:setCustomObjectName("disabled Terminal")
    end)
    createObserver(OBJECTRADIALUSED, "worldevent_surgisquil", "notifyTerminalUsed", pSceneObject)
    --createEvent(self.TicklifeTime * 1000, self.scriptName, "lifeTimeTick", pSceneObject)
end

function worldevent_surgisquil:lifeTimeTick(pAnchor)
    local roll = math.random(10)
    if roll == 10 then
        self:startInstance()
    end
    createEvent((self.TicklifeTime + math.random(self.TicklifeTime/2))  * 1000, self.scriptName, "lifeTimeTick", pAnchor)
    return 0
end

function worldevent_surgisquil:notifyTerminalUsed(pKeypad, pPlayer, radialSelected)
    if (radialSelected == 20) then
    local suiManager = LuaSuiManager()
        suiManager:sendKeypadSui(pKeypad, pPlayer, "worldevent_surgisquil", "keypadSuiCallback")
    end
    return 0
end

function worldevent_surgisquil:keypadSuiCallback(pCreature, pSui, cancelPressed, enteredCode, pressedButton)
    local suiBox = LuaSuiBox(pSui)
    local pUsingObject = suiBox:getUsingObject()
    ObjectManager.withCreatureObject(pCreature, function(player)
        if (pressedButton == "enter") then
            if (tonumber(enteredCode) == 14686006) then
                player:sendSystemMessage("Starting WorldEvent Surgisquil")
                self:startInstance()
           end
        end
    end)
    return 0
end
 