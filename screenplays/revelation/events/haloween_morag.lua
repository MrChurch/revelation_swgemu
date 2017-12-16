-- Author: Matthias Muente (matthias.muente@gmx.de)
-- https://revelationonline.net

haloween_morag = ScreenPlay:new {
    states = {},
    planetName = "naboo",
    scriptName = "haloween_morag",
    x = -5497,
    y = 4365,
}
registerScreenPlay("haloween_morag", true)

local ObjectManager = require("managers.object.object_manager")
local ScreenplayHelper = require("helper.screenplayHelper")
local CombatHelper = require("helper.combatHelper")

function haloween_morag:start()
    self:spawnTerminals()
end


function haloween_morag:despawn(pSceneObject)
    if pSceneObject ~= nil then
        ScreenplayHelper:destroy(LuaSceneObject(pSceneObject):getObjectID(),true)
    end
    return 0
end

function haloween_morag:spawnTerminals()
    local pSceneObject = spawnSceneObject("naboo", "object/tangible/dungeon/terminal_free_s1.iff", -5543, 6, 4318.5, 0, 0)
    ObjectManager.withSceneObject(pSceneObject, function(scene)
        scene:setCustomObjectName("disabled Terminal")
    end)
    createObserver(OBJECTRADIALUSED, "haloween_morag", "notifyTerminalUsed", pSceneObject)
end

function haloween_morag:notifyTerminalUsed(pKeypad, pPlayer, radialSelected)
    if (radialSelected == 20) then
    local suiManager = LuaSuiManager()
        suiManager:sendKeypadSui(pKeypad, pPlayer, "haloween_morag", "keypadSuiCallback")
    end
    return 0
end

function haloween_morag:keypadSuiCallback(pCreature, pSui, cancelPressed, enteredCode, pressedButton)
    local suiBox = LuaSuiBox(pSui)
    local pUsingObject = suiBox:getUsingObject()
    ObjectManager.withCreatureObject(pCreature, function(player)
        if (pressedButton == "enter") then
            if (tonumber(enteredCode) == 3456001) then
                local msg = " \\#AAFF2F[Event Morag Madness:] \\#FFFFFF The Morags started a incantation in Theed ! "
                sendBroadCastMessage(msg, "all");
                self:spawnFires()
           end
           if (tonumber(enteredCode) == 3456002) then
                local msg = " \\#AAFF2F[Event Morag Madness:] \\#FFFFFF Rancors ! Save Theed !!! "
                sendBroadCastMessage(msg, "all");
                self:spawnRancors()
           end
           if (tonumber(enteredCode) == 3456003) then
                self:spawnGurk()
           end
           if (tonumber(enteredCode) == 3456004) then
                local msg = " \\#AAFF2F[Event Morag Madness:] \\#FFFFFF DRAGONS ??!??!"
                sendBroadCastMessage(msg, "all");
                self:dragon()
           end  
           if (tonumber(enteredCode) == 3456005) then
                local msg = " \\#AAFF2F[Event Morag Madness:] \\#FFFFFF a Nightsister Army ! "
                sendBroadCastMessage(msg, "all");
                self:nightsister()
           end 
           if (tonumber(enteredCode) == 123456001) then
                local msg = " \\#AAFF2F[Event Morag Madness:] \\#FFFFFF a Mhystical Field appear HURRY ! and run into it for a reward !"
                sendBroadCastMessage(msg, "all");
                self:spawnRewardArea(self.x, self.y)
           end                         
        end
    end)
    return 0
end

function haloween_morag:spawnFires()
    local sceneObject
    for i = 0 , 8 , 1 do
        sceneObject = spawnSceneObject(self.planetName, "object/building/poi/dathomir_nightsister_small1.iff", self.x + math.random(50) - 25,9999, self.y + math.random(50) - 25, 0, 0)
        createEvent(1200 * 1000, self.scriptName, "despawn", sceneObject) 
    end
end
    
function haloween_morag:spawnRancors()
    local sceneObject
    for i = 0 , 12 , 1 do
        spawnMobile("naboo", "rancor", 0, self.x + math.random(50) - 25,9999, self.y + math.random(50) - 25, 0, 0)
    end
end
function haloween_morag:spawnGurk()
    for i = 0 , 6 , 1 do
        spawnMobile("naboo", "reclusive_gurk_king", 0, self.x + math.random(50) - 25,9999, self.y + math.random(50) - 25, 0, 0)
        spawnMobile("naboo", "gurk_tracker", 0, self.x + math.random(50) - 25,9999, self.y + math.random(50) - 25, 0, 0)
        spawnMobile("naboo", "gurk_tracker", 0, self.x + math.random(50) - 25,9999, self.y + math.random(50) - 25, 0, 0)
        spawnMobile("naboo", "gurk_tracker", 0, self.x + math.random(50) - 25,9999, self.y + math.random(50) - 25, 0, 0)
        spawnMobile("naboo", "gurk_tracker", 0, self.x + math.random(50) - 25,9999, self.y + math.random(50) - 25, 0, 0)
        spawnMobile("naboo", "gurk_tracker", 0, self.x + math.random(50) - 25,9999, self.y + math.random(50) - 25, 0, 0)
        spawnMobile("naboo", "woolamander_harrower", 0, self.x + math.random(50) - 25,9999, self.y + math.random(50) - 25, 0, 0)
    end
end
function haloween_morag:dragon()
    spawnMobile("krayt_dragon_aged_ancient", "krayt_dragon_aged_ancient", 0, self.x + math.random(50) - 25,9999, self.y + math.random(50) - 25, 0, 0)
    for i = 0 , 2 , 1 do
        spawnMobile("naboo", "krayt_dragon_grand", 0, self.x + math.random(50) - 25,9999, self.y + math.random(50) - 25, 0, 0)
    end
end                
function haloween_morag:nightsister()
    
    for i = 0 , 4 , 1 do
        spawnMobile("naboo", "axkva_min", 0, self.x + math.random(50) - 25,9999, self.y + math.random(50) - 25, 0, 0)
    end
    for i = 0 , 4 , 1 do
        spawnMobile("naboo", "nightsister_elder", 0, self.x + math.random(50) - 25,9999, self.y + math.random(50) - 25, 0, 0)
    end
    for i = 0 , 4 , 1 do
        spawnMobile("naboo", "nightsister_spell_weaver", 0, self.x + math.random(50) - 25,9999, self.y + math.random(50) - 25, 0, 0)
    end
    
end   

function haloween_morag:spawnRewardArea(x, y)
     
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
       createObserver(ENTEREDAREA, "haloween_morag", "rewardPlayer", pActiveArea)
       createEvent(40 * 1000, self.scriptName, "despawn", pActiveArea)
   end
end

function haloween_morag:rewardPlayer(pActiveArea, pMovingObject)
    if not (SceneObject(pMovingObject):isPlayerCreature()) then
        return 0
    end
   
    ObjectManager.withCreatureObject(pMovingObject, function(player)
        player:setScreenPlayState(32, "worldevent_bosskill")
        player:sendSystemMessage("The National Hunting Association has registered your kill. You can claim your Reward in some Days.")
    end)
    ObjectManager.withCreaturePlayerObject(pMovingObject, function(player)
        player:awardBadge(143)
    end)

    return 0
end