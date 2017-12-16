-- Author: Matthias Muente (matthias.muente@gmx.de)
-- https://revelationonline.net

worldevent_killiam = ScreenPlay:new {
    states = {},
    planetName = "lok",
    scriptName = "worldevent_killiam",
    TicklifeTime =  7200,
}
registerScreenPlay("worldevent_killiam", true)

local ObjectManager = require("managers.object.object_manager")
local ScreenplayHelper = require("helper.screenplayHelper")
local CombatHelper = require("helper.combatHelper")

function worldevent_killiam:start()
    --self:startInstance()
    self:spawnTerminals()
    writeData("worldevent_killiam:EventIsRunning", 0)
end

function worldevent_killiam:startInstance()
    if  (readData("worldevent_killiam:EventIsRunning") >= 1) then
        return 0
    end
    writeData("worldevent_killiam:EventIsRunning", 1)
    writeData("worldevent_killiam:BossState", 0)
    writeData("worldevent_killiam:Playercount", getConnectionCount())
    self:spawnEndBoss()
    createEvent(3600 * 1000, "worldevent_killiam", "TimerInfo", pCreature)
    createEvent(5400 * 1000, "worldevent_killiam", "TimerInfo2", pCreature)

    local msg = " \\#AAFF2F[Worldevent the old Kimogila:] \\#FFFFFF Hunters have traced on Lok a mutated Kimogila . "
    sendBroadCastMessage(msg, "all");
    msg = " \\#AAFF2F[Worldevent the old Kimogila:]\\#FFFFFF He is in Rage and heading towards the Alumn Mine ! Save the City !"
    sendBroadCastMessage(msg, "all");
    msg = " \\#FF8C00[Worldevent the old Kimogila:] The Kimogila will calm down in 2h \\#FFFFFF "
    sendBroadCastMessage(msg, "all");
    return 0
end

function worldevent_killiam:TimerInfo(pBoss, pPlayer)
    if  readData("worldevent_killiam:EventIsRunning") >= 1 then
        msg = " \\#FF8C00[Worldevent the old Kimogila:] The Kimogila will calm down in 1h \\#FFFFFF "
        sendBroadCastMessage(msg, "all");
    end
    return 0
end

function worldevent_killiam:TimerInfo2(pBoss, pPlayer)
    if  readData("worldevent_killiam:EventIsRunning") >= 1 then
        msg = " \\#FF8C00[Worldevent the old Kimogila:] The Kimogila will calm down in 30min \\#FFFFFF "
        sendBroadCastMessage(msg, "all");
    end
    return 0
end


function worldevent_killiam:despawnCreature(pMobile, pPlayer)
    ObjectManager.withCreatureObject(pMobile, function(mobile)
        CombatHelper:forcePeace(pMobile)
        ScreenplayHelper:despawnCreature(pMobile)
    end)
    writeData("worldevent_killiam:EventIsRunning", 0)
    return 0
end

function worldevent_killiam:spawnEndBoss()
	local connections = readData("worldevent_killiam:Playercount")
	local pBoss
	if connections > 50 then
    	pBoss = spawnMobile("lok", "killiam", 0, -2248, 12, -5959, 0, 0)
    else
    	pBoss = spawnMobile("lok", "killiam_low", 0, -2248, 12, -5959, 0, 0)
    end
    if pBoss ~= nil then
        createObserver(OBJECTDESTRUCTION, self.scriptName, "rewardEndBoss", pBoss)
        createEvent(7197 * 1000, self.scriptName, "despawnCreature", pBoss)
        createObserver(DAMAGERECEIVED,self.scriptName,"logicEndBoss", pBoss)
    end
    return 0
end

function worldevent_killiam:logicEndBoss(pBoss, pPlayer)
    ObjectManager.withCreatureObject(pBoss, function(boss)
        ObjectManager.withCreatureObject(pPlayer, function(player)
            if (CombatHelper:logicBossState(pBoss, 0.90, "worldevent_killiam:EventIsRunning", 0) == true) then
                writeData("worldevent_killiam:EventIsRunning", 1)
                self:spawnDefender(pBoss)
            elseif (CombatHelper:logicBossState(pBoss, 0.80, "worldevent_killiam:EventIsRunning", 1) == true) then
                self:spawnDefender(pBoss)
                self:spawnDefender(pBoss)
                self:spawnDefender(pBoss)
                writeData("worldevent_killiam:EventIsRunning", 2)
            elseif (CombatHelper:logicBossState(pBoss, 0.65, "worldevent_killiam:EventIsRunning", 2) == true) then
                self:spawnDefender(pBoss)
                writeData("worldevent_killiam:EventIsRunning", 3)
            elseif (CombatHelper:logicBossState(pBoss, 0.60, "worldevent_killiam:EventIsRunning", 3) == true) then
                self:spawnDefender(pBoss)
                writeData("worldevent_killiam:EventIsRunning", 4)
            elseif (CombatHelper:logicBossState(pBoss, 0.45, "worldevent_killiam:EventIsRunning", 4) == true) then
                self:spawnDefender(pBoss)
                self:spawnDefender(pBoss)
                writeData("worldevent_killiam:EventIsRunning", 5)
            elseif (CombatHelper:logicBossState(pBoss, 0.43, "worldevent_killiam:EventIsRunning", 5) == true) then
                self:spawnDefender(pBoss)
                self:spawnDefender(pBoss)
                writeData("worldevent_killiam:EventIsRunning", 6)
            elseif (CombatHelper:logicBossState(pBoss, 0.25, "worldevent_killiam:EventIsRunning", 6) == true) then
                self:spawnDefender(pBoss)
                self:spawnDefender(pBoss)
                writeData("worldevent_killiam:EventIsRunning", 7)
            elseif (CombatHelper:logicBossState(pBoss, 0.10, "worldevent_killiam:EventIsRunning", 7) == true) then
                self:spawnDefender(pBoss)
                writeData("worldevent_killiam:EventIsRunning", 8)
            end
        end)
    end)
    return 0
end

function worldevent_killiam:spawnDefender(pBoss)
    local x
    local y
    local z

    ObjectManager.withCreatureObject(pBoss, function(mobile)
        x = mobile:getPositionX()
        y = mobile:getPositionY()
    end)
    local connections = readData("worldevent_killiam:Playercount")
	local creatureName = "killian_kimogila_low"
	if connections > 50 then
		creatureName = "killian_kimogila"
	end
    local pTrapAttacker = spawnMobile("lok", creatureName, 0, x + math.random(20), 9999, y + math.random(20), 270, 0)
    if pTrapAttacker ~= nil then
        createEvent(1200 * 1000, self.scriptName, "despawnDefender", pTrapAttacker)
    end
    pTrapAttacker = spawnMobile("lok", creatureName, 0, x - math.random(20), 9999, y - math.random(20), 90, 0)
    if pTrapAttacker ~= nil then
        createEvent(1200 * 1000, self.scriptName, "despawnDefender", pTrapAttacker)
    end
    return 0
end

function worldevent_killiam:despawnDefender(pMobile, pPlayer)
    if (SceneObject(pMobile):isPlayerCreature()) then
        return 0
    end
    ObjectManager.withCreatureObject(pMobile, function(mobile)
        ScreenplayHelper:despawnCreature(pMobile)
    end)
    return 0
end

function worldevent_killiam:rewardEndBoss(pBoss, pPlayer)
    local msg = " \\#AAFF20[Worldevent the old Kimogila:] Killiam died ! You save the Town !\\#FFFFFF "
    sendBroadCastMessage(msg, "all");
    writeData("worldevent_killiam:EventIsRunning", 0)
    local x
    local y
    local z

    ObjectManager.withCreatureObject(pBoss, function(mobile)
        x = mobile:getPositionX()
        z = mobile:getPositionZ()
        y = mobile:getPositionY()
    end)
    worldevent_killiam:spawnRewardArea(x, z, y)
    return 0
end

function worldevent_killiam:despawn(pSceneObject)
    if pSceneObject ~= nil then
        ScreenplayHelper:destroy(LuaSceneObject(pSceneObject):getObjectID(),true)
    end
    return 0
end

function worldevent_killiam:spawnRewardArea(x, z, y)
   local cloudTimer = 180
   local pActiveArea = spawnActiveArea("lok", "object/active_area.iff", x + 10, 9999 , y + 10, 10, 0)
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
       createObserver(ENTEREDAREA, "worldevent_killiam", "rewardPlayer", pActiveArea)
       createEvent(cloudTimer * 1000, self.scriptName, "despawn", pActiveArea)
   end
end

function worldevent_killiam:rewardPlayer(pActiveArea, pMovingObject)
    if not (SceneObject(pMovingObject):isPlayerCreature()) then
        return 0
    end
   
    ObjectManager.withCreatureObject(pMovingObject, function(player)
        player:setScreenPlayState(2, "worldevent_bosskill")
        player:setScreenPlayState(8, "worldevent_bosskill")
        player:sendSystemMessage("The National Hunting Association has registered your kill.")
    end)
    ObjectManager.withCreaturePlayerObject(pMovingObject, function(player)
        player:awardBadge(141)
    end)

    return 0
end



--------------- temp Admin trigger till we have more players for a random observer ---------------
function worldevent_killiam:spawnTerminals()

    -- bosspower
    local pSceneObject = spawnSceneObject("lok", "object/tangible/dungeon/terminal_free_s1.iff", -1628, 12, -6257, 0, 0)
    ObjectManager.withSceneObject(pSceneObject, function(scene)
        scene:setCustomObjectName("disabled Terminal")
    end)
    createObserver(OBJECTRADIALUSED, "worldevent_killiam", "notifyTerminalUsed", pSceneObject)
    createEvent(self.TicklifeTime * 1000, self.scriptName, "lifeTimeTick", pSceneObject)
    return 0
end

function worldevent_killiam:lifeTimeTick(pAnchor)
    local roll = math.random(12)
    if roll == 10 then
        self:startInstance()
    end
    createEvent((self.TicklifeTime + math.random(self.TicklifeTime/2))  * 1000, self.scriptName, "lifeTimeTick", pAnchor)
    return 0
end

function worldevent_killiam:notifyTerminalUsed(pKeypad, pPlayer, radialSelected)
    if (radialSelected == 20) then
    local suiManager = LuaSuiManager()
        suiManager:sendKeypadSui(pKeypad, pPlayer, "worldevent_killiam", "keypadSuiCallback")
    end
    return 0
end

function worldevent_killiam:keypadSuiCallback(pCreature, pSui, cancelPressed, enteredCode, pressedButton)
    local suiBox = LuaSuiBox(pSui)
    local pUsingObject = suiBox:getUsingObject()
    ObjectManager.withCreatureObject(pCreature, function(player)
        if (pressedButton == "enter") then
            if (tonumber(enteredCode) == 14686002) then
                player:sendSystemMessage("Starting WorldEvent Killiam")
                self:startInstance()
           end
        end
    end)
    return 0
end
 