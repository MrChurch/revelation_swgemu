-- Author: Matthias Muente (matthias.muente@gmx.de)
-- https://revelationonline.net

worldevent_panthera = ScreenPlay:new {
	states = {},
	planetName = "talus",
	scriptName = "worldevent_panthera",
	TicklifeTime =  5400,
}
registerScreenPlay("worldevent_panthera", true)

local ObjectManager = require("managers.object.object_manager")
local ScreenplayHelper = require("helper.screenplayHelper")
local CombatHelper = require("helper.combatHelper")

function worldevent_panthera:start()
	self:spawnTerminals()
	writeData("worldevent_panthera:EventIsRunning", 0)
end

function worldevent_panthera:startInstance()
	if  (readData("worldevent_panthera:EventIsRunning") >= 1) then
		return 0
	end
	writeData("worldevent_panthera:EventIsRunning", 1)
	writeData("worldevent_panthera:BossState", 0)
	writeData("worldevent_panthera:Playercount", getConnectionCount())
	local dirRandom = math.random(3)
	local dir
	if dirRandom == 0 then
		dir = "NE"
		writeData("worldevent_panthera:X", 3800 + math.random(700))
		writeData("worldevent_panthera:Y", 3950 + math.random(700))
	elseif dirRandom == 1 then
		dir = "SE"
		writeData("worldevent_panthera:X", 3500 + math.random(1200))
		writeData("worldevent_panthera:Y", -2800 + math.random(1200))
	elseif dirRandom == 2 then
		dir = "SW"
		writeData("worldevent_panthera:X", -4000 + math.random(1200))
		writeData("worldevent_panthera:Y", -3600 + math.random(1200))
	elseif dirRandom == 3 then
		dir = "NW"
		writeData("worldevent_panthera:X", -5267)
		writeData("worldevent_panthera:Y", 4612)
	end
	
	writeData("worldevent_panthera:BossState", 0)
	writeData("worldevent_panthera:BossState", 0)
	self:spawnEndBoss()
	createEvent(1800 * 1000, "worldevent_panthera", "TimerInfo", pCreature)
	createEvent(2700 * 1000, "worldevent_panthera", "TimerInfo2", pCreature)
	
	local msg = " \\#AAFF2F[Worldevent The Wild  Hunt:] \\#FFFFFF Hunters have traced on Talus the rare Panthera. "
	sendBroadCastMessage(msg, "all");
	msg = " \\#AAFF2F[Worldevent The Wild  Hunt:]\\#FFFFFF The last Hunter reports coming from " .. dir
	sendBroadCastMessage(msg, "all");
	msg = " \\#FF8C00[Worldevent The Wild  Hunt:] The traces of Panthera will vanish in 1,5 h \\#FFFFFF "
	sendBroadCastMessage(msg, "all");
	return 0
end

function worldevent_panthera:TimerInfo(pBoss, pPlayer)
    if  readData("worldevent_panthera:EventIsRunning") >= 1 then
        msg = " \\#FF8C00[Worldevent The Wild  Hunt:] The traces of Panthera will vanish in 1h \\#FFFFFF "
        sendBroadCastMessage(msg, "all");
    end
    return 0
end

function worldevent_panthera:TimerInfo2(pBoss, pPlayer)
    if  readData("worldevent_panthera:EventIsRunning") >= 1 then
        msg = " \\#FF8C00[Worldevent The Wild  Hunt:] The traces of Panthera will vanish in  30min \\#FFFFFF "
        sendBroadCastMessage(msg, "all");
    end
    return 0
end


function worldevent_panthera:despawnCreature(pMobile, pPlayer)
    ObjectManager.withCreatureObject(pMobile, function(mobile)
        CombatHelper:forcePeace(pMobile)
        ScreenplayHelper:despawnCreature(pMobile)
    end)
    writeData("worldevent_panthera:EventIsRunning", 0)
    return 0
end

function worldevent_panthera:spawnEndBoss()
	local connections = readData("worldevent_panthera:Playercount")
	local bossName = "panthera_low"
	if connections > 50 then
		bossName = "panthera"
	end
    local pBoss = spawnMobile("talus", bossName, 0, readData("worldevent_panthera:X"), 9999, readData("worldevent_panthera:Y"), 0, 0)
    if pBoss ~= nil then
        createObserver(OBJECTDESTRUCTION, self.scriptName, "rewardEndBoss", pBoss)
        createEvent(5400 * 1000, self.scriptName, "despawnCreature", pBoss)
        createObserver(DAMAGERECEIVED,self.scriptName,"logicEndBoss", pBoss)
    end
    return 0
end

function worldevent_panthera:logicEndBoss(pBoss, pPlayer)
	ObjectManager.withCreatureObject(pBoss, function(boss)
		ObjectManager.withCreatureObject(pPlayer, function(player)
			if (CombatHelper:logicBossState(pBoss, 0.90, "worldevent_panthera:EventIsRunning", 0) == true) then
				writeData("worldevent_panthera:EventIsRunning", 1)
				self:spawnDefender(pBoss)
			elseif (CombatHelper:logicBossState(pBoss, 0.80, "worldevent_panthera:EventIsRunning", 1) == true) then
				self:spawnDefender(pBoss)
				 writeData("worldevent_panthera:EventIsRunning", 2)
			elseif (CombatHelper:logicBossState(pBoss, 0.70, "worldevent_panthera:EventIsRunning", 2) == true) then
				self:spawnDefender(pBoss)
				writeData("worldevent_panthera:EventIsRunning", 3)
			elseif (CombatHelper:logicBossState(pBoss, 0.60, "worldevent_panthera:EventIsRunning", 3) == true) then
				self:spawnDefender(pBoss)
				writeData("worldevent_panthera:EventIsRunning", 4)
			elseif (CombatHelper:logicBossState(pBoss, 0.50, "worldevent_panthera:EventIsRunning", 4) == true) then
				self:spawnDefender(pBoss)
				writeData("worldevent_panthera:EventIsRunning", 5)
			elseif (CombatHelper:logicBossState(pBoss, 0.40, "worldevent_panthera:EventIsRunning", 5) == true) then
				self:spawnDefender(pBoss)
				writeData("worldevent_panthera:EventIsRunning", 6)
			elseif (CombatHelper:logicBossState(pBoss, 0.30, "worldevent_panthera:EventIsRunning", 6) == true) then
				self:spawnDefender(pBoss)
				writeData("worldevent_panthera:EventIsRunning", 7)
			elseif (CombatHelper:logicBossState(pBoss, 0.20, "worldevent_panthera:EventIsRunning", 7) == true) then
				self:spawnDefender(pBoss)
				writeData("worldevent_panthera:EventIsRunning", 8)
			end
		end)
	end)
	return 0
end

function worldevent_panthera:spawnDefender(pBoss)
	local x
	local y
	local z
	local connections = readData("worldevent_panthera:Playercount")
	local creatureName = "panthera_add_low"
	if connections > 50 then
		creatureName = "panthera_add"
	end
	ObjectManager.withCreatureObject(pBoss, function(mobile)
		x = mobile:getPositionX()
		y = mobile:getPositionY()
	end)
	local pTrapAttacker = spawnMobile("talus", creatureName, 0, x + math.random(25), 9999, y + math.random(25), 270, 0)
	if pTrapAttacker ~= nil then
		createEvent(1200 * 1000, self.scriptName, "despawnDefender", pTrapAttacker)
	end
	pTrapAttacker = spawnMobile("talus", creatureName, 0, x - math.random(25), 9999, y - math.random(25), 90, 0)
	if pTrapAttacker ~= nil then
		createEvent(1200 * 1000, self.scriptName, "despawnDefender", pTrapAttacker)
	end
	pTrapAttacker = spawnMobile("talus", creatureName, 0, x + math.random(25), 9999, y - math.random(25), 90, 0)
	if pTrapAttacker ~= nil then
		createEvent(1200 * 1000, self.scriptName, "despawnDefender", pTrapAttacker)
	end
	pTrapAttacker = spawnMobile("talus", creatureName, 0, x - math.random(25), 9999, y + math.random(25), 90, 0)
	if pTrapAttacker ~= nil then
		createEvent(1200 * 1000, self.scriptName, "despawnDefender", pTrapAttacker)
	end	
	return 0
end

function worldevent_panthera:despawnDefender(pMobile, pPlayer)
    if (SceneObject(pMobile):isPlayerCreature()) then
        return 0
    end
    ObjectManager.withCreatureObject(pMobile, function(mobile)
        ScreenplayHelper:despawnCreature(pMobile)
    end)
    return 0
end

function worldevent_panthera:rewardEndBoss(pBoss, pPlayer)
    local msg = " \\#AAFF20[Worldevent The Wild  Hunt:] Panthera died !The Hunt is over !\\#FFFFFF "
    sendBroadCastMessage(msg, "all");
    writeData("worldevent_panthera:EventIsRunning", 0)
    local x
    local y
    local z

    ObjectManager.withCreatureObject(pBoss, function(mobile)
        x = mobile:getPositionX()
        z = mobile:getPositionZ()
        y = mobile:getPositionY()
    end)
    worldevent_panthera:spawnRewardArea(x, z, y)
    return 0
end

function worldevent_panthera:despawn(pSceneObject)
    if pSceneObject ~= nil then
        ScreenplayHelper:destroy(LuaSceneObject(pSceneObject):getObjectID(),true)
    end
    return 0
end

function worldevent_panthera:spawnRewardArea(x, z, y)
   local cloudTimer = 180
   local pActiveArea = spawnActiveArea("talus", "object/active_area.iff", x + 1, 9999 , y + 1, 12, 0)
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

   if pActiveArea ~= nil then
       createObserver(ENTEREDAREA, "worldevent_panthera", "rewardPlayer", pActiveArea)
       createEvent(cloudTimer * 1000, self.scriptName, "despawn", pActiveArea)
   end
end

function worldevent_panthera:rewardPlayer(pActiveArea, pMovingObject)
    if not (SceneObject(pMovingObject):isPlayerCreature()) then
        return 0
    end
   
    ObjectManager.withCreatureObject(pMovingObject, function(player)
        player:setScreenPlayState(16, "worldevent_bosskill")
        player:setScreenPlayState(8, "worldevent_bosskill")
        player:sendSystemMessage("The National Hunting Association has registered your kill.")
    end)
    ObjectManager.withCreaturePlayerObject(pMovingObject, function(player)
        player:awardBadge(152)
    end)

    return 0
end



--------------- temp Admin trigger till we have more players for a random observer ---------------
function worldevent_panthera:spawnTerminals()

    -- bosspower
    local pSceneObject = spawnSceneObject("talus", "object/tangible/dungeon/terminal_free_s1.iff", -2241, 20, 2265, 0, 0)
    ObjectManager.withSceneObject(pSceneObject, function(scene)
        scene:setCustomObjectName("disabled Terminal")
    end)
    createObserver(OBJECTRADIALUSED, "worldevent_panthera", "notifyTerminalUsed", pSceneObject)
    createEvent(self.TicklifeTime * 1000, self.scriptName, "lifeTimeTick", pSceneObject)
    return 0
end

function worldevent_panthera:lifeTimeTick(pAnchor)
    local roll = math.random(12)
    if roll == 10 then
        self:startInstance()
    end
    createEvent((self.TicklifeTime + math.random(self.TicklifeTime/2))  * 1000, self.scriptName, "lifeTimeTick", pAnchor)
    return 0
end

function worldevent_panthera:notifyTerminalUsed(pKeypad, pPlayer, radialSelected)
    if (radialSelected == 20) then
    local suiManager = LuaSuiManager()
        suiManager:sendKeypadSui(pKeypad, pPlayer, "worldevent_panthera", "keypadSuiCallback")
    end
    return 0
end

function worldevent_panthera:keypadSuiCallback(pCreature, pSui, cancelPressed, enteredCode, pressedButton)
    local suiBox = LuaSuiBox(pSui)
    local pUsingObject = suiBox:getUsingObject()
    ObjectManager.withCreatureObject(pCreature, function(player)
        if (pressedButton == "enter") then
            if (tonumber(enteredCode) == 14686005) then
                player:sendSystemMessage("Starting WorldEvent panthera")
                self:startInstance()
           end
        end
    end)
    return 0
end
 