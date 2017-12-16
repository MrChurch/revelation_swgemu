-- Author: Matthias Muente (matthias.muente@gmx.de)
-- https://revelationonline.net

worldevent_xmas_2016 = ScreenPlay:new {
    states = {},
    planetName = "naboo",
    scriptName = "worldevent_xmas_2016",
    TicklifeTime =  7200,
}
registerScreenPlay("worldevent_xmas_2016", true)

local ObjectManager = require("managers.object.object_manager")
local ScreenplayHelper = require("helper.screenplayHelper")
local CombatHelper = require("helper.combatHelper")

function worldevent_xmas_2016:start()
    --self:startInstance()
    self:spawnTerminals()
    writeData("worldevent_xmas_2016:EventIsRunning", 0)
end

function worldevent_xmas_2016:startInstance()
    if  (readData("worldevent_xmas_2016:EventIsRunning") >= 1) then
        return 0
    end
    writeData("worldevent_xmas_2016:EventIsRunning", 1)
    writeData("worldevent_xmas_2016:BossState", 0)
    writeData("worldevent_xmas_2016:Playercount", getConnectionCount())
    self:spawnEndBoss()

    local msg = " \\#AAFF2F[Worldevent Xmas:] Jar Jur Banx from se Theed here. \\#FFFFFF "
    sendBroadCastMessage(msg, "all");
    msg = " \\#AAFF2F[Worldevent Xmas:] whata isa that ?????? HELP !! Call the supa Mighty Generals , something strange is walking to theed from south of the starport. \\#FFFFFF "
    sendBroadCastMessage(msg, "all");
    msg = " \\#FF8C00[Worldevent Xmas:] Something Strange will dissapear in 2h \\#FFFFFF "
    sendBroadCastMessage(msg, "all");
    return 0
end

function worldevent_xmas_2016:despawnCreature(pMobile, pPlayer)
    ObjectManager.withCreatureObject(pMobile, function(mobile)
        CombatHelper:forcePeace(pMobile)
        ScreenplayHelper:despawnCreature(pMobile)
    end)
    writeData("worldevent_xmas_2016:EventIsRunning", 0)
    return 0
end

function worldevent_xmas_2016:spawnEndBoss()
	local pBoss
	pBoss = spawnMobile("naboo", "rev_lifeday_monkey_lizard_boss", 0, -5135, 6, 4000, 0, 0)
    if pBoss ~= nil then
        createObserver(OBJECTDESTRUCTION, self.scriptName, "rewardEndBoss", pBoss)
        createEvent(7197 * 1000, self.scriptName, "despawnCreature", pBoss)
        createObserver(DAMAGERECEIVED,self.scriptName,"logicEndBoss", pBoss)
    end
    return 0
end

function worldevent_xmas_2016:logicEndBoss(pBoss, pPlayer)
    ObjectManager.withCreatureObject(pBoss, function(boss)
        ObjectManager.withCreatureObject(pPlayer, function(player)
            if (CombatHelper:logicBossState(pBoss, 0.90, "worldevent_xmas_2016:EventIsRunning", 0) == true) then
                writeData("worldevent_xmas_2016:EventIsRunning", 1)
                self:spawnDefender(pBoss)
            elseif (CombatHelper:logicBossState(pBoss, 0.80, "worldevent_xmas_2016:EventIsRunning", 1) == true) then
                self:spawnDefender(pBoss)
                self:spawnDefender(pBoss)
                self:spawnDefender(pBoss)
                writeData("worldevent_xmas_2016:EventIsRunning", 2)
            elseif (CombatHelper:logicBossState(pBoss, 0.65, "worldevent_xmas_2016:EventIsRunning", 2) == true) then
                self:spawnDefender(pBoss)
                self:spawnDefender(pBoss)
                self:spawnDefender(pBoss)
                self:spawnDefender(pBoss)
                writeData("worldevent_xmas_2016:EventIsRunning", 3)
            elseif (CombatHelper:logicBossState(pBoss, 0.60, "worldevent_xmas_2016:EventIsRunning", 3) == true) then
                self:spawnDefender(pBoss)
                writeData("worldevent_xmas_2016:EventIsRunning", 4)
            elseif (CombatHelper:logicBossState(pBoss, 0.45, "worldevent_xmas_2016:EventIsRunning", 4) == true) then
                self:spawnDefender(pBoss)
                self:spawnDefender(pBoss)
                writeData("worldevent_xmas_2016:EventIsRunning", 5)
            elseif (CombatHelper:logicBossState(pBoss, 0.43, "worldevent_xmas_2016:EventIsRunning", 5) == true) then
                self:spawnDefender(pBoss)
                self:spawnDefender(pBoss)
                self:spawnDefender(pBoss)
                self:spawnDefender(pBoss)
                self:spawnDefender(pBoss)
                writeData("worldevent_xmas_2016:EventIsRunning", 6)
            elseif (CombatHelper:logicBossState(pBoss, 0.25, "worldevent_xmas_2016:EventIsRunning", 6) == true) then
                self:spawnDefender(pBoss)
                self:spawnDefender(pBoss)
                writeData("worldevent_xmas_2016:EventIsRunning", 7)
            elseif (CombatHelper:logicBossState(pBoss, 0.10, "worldevent_xmas_2016:EventIsRunning", 7) == true) then
                self:spawnDefender(pBoss)
                writeData("worldevent_xmas_2016:EventIsRunning", 8)
            end
        end)
    end)
    return 0
end

function worldevent_xmas_2016:spawnDefender(pBoss)
    local x
    local y
    local z

    ObjectManager.withCreatureObject(pBoss, function(mobile)
        x = mobile:getPositionX()
        y = mobile:getPositionY()
    end)
	local creatureName = "rev_lifeday_monkey_lizard_elite"

    local pTrapAttacker = spawnMobile("naboo", creatureName, 0, x + math.random(20), 9999, y + math.random(20), 270, 0)
    if pTrapAttacker ~= nil then
        createEvent(1200 * 1000, self.scriptName, "despawnDefender", pTrapAttacker)
    end
    return 0
end

function worldevent_xmas_2016:despawnDefender(pMobile, pPlayer)
    if (SceneObject(pMobile):isPlayerCreature()) then
        return 0
    end
    ObjectManager.withCreatureObject(pMobile, function(mobile)
        ScreenplayHelper:despawnCreature(pMobile)
    end)
    return 0
end

function worldevent_xmas_2016:rewardEndBoss(pBoss, pPlayer)
    local msg = " \\#AAFF20[Worldevent Xmas:] Something Strange is Dead, Jar Jur Banx is happy, You save the Town !\\#FFFFFF "
    sendBroadCastMessage(msg, "all");
    writeData("worldevent_xmas_2016:EventIsRunning", 0)
    local x
    local y
    local z

    ObjectManager.withCreatureObject(pBoss, function(mobile)
        x = mobile:getPositionX()
        z = mobile:getPositionZ()
        y = mobile:getPositionY()
    end)
    worldevent_xmas_2016:spawnRewardArea(x, z, y)
    return 0
end

function worldevent_xmas_2016:despawn(pSceneObject)
    if pSceneObject ~= nil then
        ScreenplayHelper:destroy(LuaSceneObject(pSceneObject):getObjectID(),true)
    end
    return 0
end

function worldevent_xmas_2016:spawnRewardArea(x, z, y)
   local cloudTimer = 180
   local pActiveArea = spawnActiveArea("naboo", "object/active_area.iff", x + 10, 9999 , y + 10, 10, 0)
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
       createObserver(ENTEREDAREA, "worldevent_xmas_2016", "rewardPlayer", pActiveArea)
       createEvent(cloudTimer * 1000, self.scriptName, "despawn", pActiveArea)
   end
end

function worldevent_xmas_2016:rewardPlayer(pActiveArea, pMovingObject)
    if not (SceneObject(pMovingObject):isPlayerCreature()) then
        return 0
    end
   
    ObjectManager.withCreatureObject(pMovingObject, function(player)
        player:setScreenPlayState(2, "xmas_2016")
        player:sendSystemMessage("Santa has registered your kill.")
    end)
    return 0
end



--------------- temp Admin trigger till we have more players for a random observer ---------------
function worldevent_xmas_2016:spawnTerminals()

    -- bosspower
    local pSceneObject = spawnSceneObject("naboo", "object/tangible/dungeon/terminal_free_s1.iff", -5000, 6, 4000, 0, 0)
    ObjectManager.withSceneObject(pSceneObject, function(scene)
        scene:setCustomObjectName("disabled Terminal")
    end)
    createObserver(OBJECTRADIALUSED, "worldevent_xmas_2016", "notifyTerminalUsed", pSceneObject)
    createEvent(self.TicklifeTime * 1000, self.scriptName, "lifeTimeTick", pSceneObject)
    return 0
end

function worldevent_xmas_2016:lifeTimeTick(pAnchor)
    createEvent((self.TicklifeTime + math.random(self.TicklifeTime/2))  * 1000, self.scriptName, "lifeTimeTick", pAnchor)
    return 0
end

function worldevent_xmas_2016:notifyTerminalUsed(pKeypad, pPlayer, radialSelected)
    if (radialSelected == 20) then
    local suiManager = LuaSuiManager()
        suiManager:sendKeypadSui(pKeypad, pPlayer, "worldevent_xmas_2016", "keypadSuiCallback")
    end
    return 0
end

function worldevent_xmas_2016:keypadSuiCallback(pCreature, pSui, cancelPressed, enteredCode, pressedButton)
    local suiBox = LuaSuiBox(pSui)
    local pUsingObject = suiBox:getUsingObject()
    ObjectManager.withCreatureObject(pCreature, function(player)
        if (pressedButton == "enter") then
            if (tonumber(enteredCode) == 14686002) then
                player:sendSystemMessage("Starting WorldEvent xmas")
                self:startInstance()
           end
        end
    end)
    return 0
end
 