-- Author: Matthias Muente (matthias.muente@gmx.de)
-- https://revelationonline.net

theed_invasion = ScreenPlay:new {
    states = {},
    planetName = "naboo",
    scriptName = "theed_invasion",
    x = -5497,
    y = 4365,
}
registerScreenPlay("theed_invasion", true)

local ObjectManager = require("managers.object.object_manager")
local ScreenplayHelper = require("helper.screenplayHelper")
local CombatHelper = require("helper.combatHelper")
local patrolHelper = require("helper.patrolHelper")

function theed_invasion:start()
    self:spawnTerminals()
end


function theed_invasion:despawn(pSceneObject)
    if pSceneObject ~= nil then
        ScreenplayHelper:destroy(LuaSceneObject(pSceneObject):getObjectID(),true)
    end
    return 0
end

function theed_invasion:spawnTerminals()
    local pSceneObject = spawnSceneObject("naboo", "object/tangible/dungeon/terminal_free_s1.iff", -5527, 14, 4452, 0, 0)
    ObjectManager.withSceneObject(pSceneObject, function(scene)
        scene:setCustomObjectName("disabled Terminal")
    end)
    createObserver(OBJECTRADIALUSED, "theed_invasion", "notifyTerminalUsed", pSceneObject)
end

function theed_invasion:notifyTerminalUsed(pKeypad, pPlayer, radialSelected)
    if (radialSelected == 20) then
    local suiManager = LuaSuiManager()
        suiManager:sendKeypadSui(pKeypad, pPlayer, "theed_invasion", "keypadSuiCallback")
    end
    return 0
end

function theed_invasion:keypadSuiCallback(pCreature, pSui, cancelPressed, enteredCode, pressedButton)
    local suiBox = LuaSuiBox(pSui)
    local pUsingObject = suiBox:getUsingObject()
    ObjectManager.withCreatureObject(pCreature, function(player)
        if (pressedButton == "enter") then
            if (tonumber(enteredCode) == 3456001) then
                local msg = " \\#AAFF2F[Event Droid Invasion:] \\#FFFFFF Theed Spacecom identified unknown Fleet"
                sendBroadCastMessage(msg, "all");
           end
           if (tonumber(enteredCode) == 3456002) then
                local msg = " \\#AAFF2F[Event Droid Invasion:] \\#FFFFFF Oh Shit !!! They attacking the Staaa ..... (Explosions)"
                sendBroadCastMessage(msg, "all");
           end
           if (tonumber(enteredCode) == 3456003) then
                local msg = " \\#AAFF2F[Event Droid Invasion:] \\#FFFFFF !!! Emergency Broadcast !!! Theed is under attack by a unkown force !"
                sendBroadCastMessage(msg, "all");
           end
           if (tonumber(enteredCode) == 3456004) then
                local msg = " \\#AAFF2F[Event Droid Invasion:] \\#FFFFFF !!! Emergency Broadcast !!! Defend the Palace Entrance use the Palace as Defense!"
                sendBroadCastMessage(msg, "all");
           end  
           if (tonumber(enteredCode) == 3456005) then
                local msg = " \\#AAFF2F[Event Droid Invasion:] \\#FFFFFF The next Wave is there !!"
                sendBroadCastMessage(msg, "all");
                self:hk47()
           end 
           if (tonumber(enteredCode) == 3456006) then
                local msg = " \\#AAFF2F[Event Droid Invasion:] \\#FFFFFF a old Relict from the Past !! It is General Grievous !"
                sendBroadCastMessage(msg, "all");
           end            
           if (tonumber(enteredCode) == 123456001) then
                local msg = " \\#AAFF2F[Event Droid Invasion:] \\#FFFFFF a Mhystical Field appear HURRY ! and run into it for a reward !"
                sendBroadCastMessage(msg, "all");
                self:spawnRewardArea(self.x, self.y)
           end                         
        end
    end)
    return 0
end


function theed_invasion:hk47()
  	patrolHelper:spawnSquad("droid_invasion", 16, 4, -5474, 6, 4379, 0, 2, 2, "naboo", "rev_hk47")
  	patrolHelper:spawnSquad("droid_invasion", 32, 4, -5506, 6, 4370, 0, 3, 3, "naboo", "rev_fed_battle_droid")
  	patrolHelper:spawnSquad("droid_invasion", 2, 2, -5526, 6, 4388, 0, 3, 3, "naboo", "rev_droideka")
 end
    


function theed_invasion:spawnRewardArea(x, y)
     
   local pActiveArea = spawnActiveArea(self.planetName, "object/active_area.iff", x, 9999 , y, 10, 0)
   local sceneObject = spawnSceneObject(self.planetName, "object/static/particle/pt_light_blink_blue.iff", x + 3,9999, y + 3, 0, 0)
   createEvent(40 * 1000, self.scriptName, "despawn", sceneObject)
   sceneObject = spawnSceneObject(self.planetName, "object/static/particle/pt_light_blink_blue.iff", x + 3, 9999, y -3, 0, 0)
   createEvent(40 * 1000, self.scriptName, "despawn", sceneObject)
   sceneObject = spawnSceneObject(self.planetName, "object/static/particle/pt_light_blink_blue.iff", x -3, 9999, y + 3, 0, 0)
   createEvent(40 * 1000, self.scriptName, "despawn", sceneObject)
   sceneObject = spawnSceneObject(self.planetName, "object/static/particle/pt_light_blink_blue.iff", x , 9999, y, 0, 0)
   createEvent(40 * 1000, self.scriptName, "despawn", sceneObject)
   sceneObject = spawnSceneObject(self.planetName, "object/static/particle/pt_light_blink_blue.iff", x + 0.5, 9999, y + 0.5, 0, 0)
   createEvent(40 * 1000, self.scriptName, "despawn", sceneObject)
   sceneObject = spawnSceneObject(self.planetName, "object/static/particle/pt_light_blink_blue.iff", x -3, 9999, y -3, 0, 0)
   createEvent(40 * 1000, self.scriptName, "despawn", sceneObject)
   sceneObject = spawnSceneObject(self.planetName, "object/static/particle/pt_light_blink_orange.iff", x + 5,  9999, y + 5, 0, 0)
   createEvent(40 * 1000, self.scriptName, "despawn", sceneObject)
   sceneObject = spawnSceneObject(self.planetName, "object/static/particle/pt_light_blink_orange.iff", x + 5,  9999 , y - 5, 0, 0)
   createEvent(40 * 1000, self.scriptName, "despawn", sceneObject)
   sceneObject = spawnSceneObject(self.planetName, "object/static/particle/pt_light_blink_orange.iff", x - 5, 9999, y + 5, 0, 0)
   createEvent(40 * 1000, self.scriptName, "despawn", sceneObject)
   sceneObject = spawnSceneObject(self.planetName, "object/static/particle/pt_light_blink_orange.iff", x - 5, 9999 , y - 5, 0, 0)
   createEvent(40 * 1000, self.scriptName, "despawn", sceneObject)
   sceneObject = spawnSceneObject(self.planetName, "object/static/particle/pt_miasma_of_fog_red.iff", x - 2, 9999 , y , 0, 0)
   createEvent(40 * 1000, self.scriptName, "despawn", sceneObject)
   sceneObject = spawnSceneObject(self.planetName, "object/static/particle/pt_miasma_of_fog_greenish.iff", x , 9999 , y, 0, 0)
   createEvent(40 * 1000, self.scriptName, "despawn", sceneObject)
   
   if pActiveArea ~= nil then
       createObserver(ENTEREDAREA, "theed_invasion", "rewardPlayer", pActiveArea)
       createEvent(50 * 1000, self.scriptName, "despawn", pActiveArea)
   end
end

function theed_invasion:rewardPlayer(pActiveArea, pMovingObject)
    if not (SceneObject(pMovingObject):isPlayerCreature()) then
        return 0
    end
   
    ObjectManager.withCreatureObject(pMovingObject, function(player)
        player:setScreenPlayState(256, "worldevent_bosskill")
        player:sendSystemMessage("The National Hunting Association has registered your kill.")
    end)
    ObjectManager.withCreaturePlayerObject(pMovingObject, function(player)
        player:awardBadge(157)
    end)

    return 0
end