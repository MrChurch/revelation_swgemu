-- Author: Matthias Muente (matthias.muente@gmx.de)
--------------------------------------------------------- convohandler -------------------------------

gcw_bestine_imperial_convo_handler = Object:new {

  tstring = "gcw_bestine_imperial_convo_handler",
  scriptName = "gcw_bestine_imperial_convo_handler",
  timer = 600, -- in seconds
  shuttleblocktime = 600
}

local screenplayHelper = require("helper.screenplayHelper")
local ObjectManager = require("managers.object.object_manager")

function gcw_bestine_imperial_convo_handler:getNextConversationScreen(conversationTemplate, conversingPlayer, selectedOption)

  local creature = LuaCreatureObject(conversingPlayer)
  local convosession = creature:getConversationSession()
  local conversation = LuaConversationTemplate(conversationTemplate)
  local nextConversationScreen

  if ( conversation ~= nil ) then
    if ( convosession ~= nil ) then
      local session = LuaConversationSession(convosession)
      if ( session ~= nil ) then
        lastConversationScreen = session:getLastConversationScreen()
      end
    end

    if not creature:isImperial() then
       return conversation:getScreen("wrong_faction")
    end
    local timestamp = readData("imp_shuttleanimation:Bestine:TimerShuttle")
    local timediff = math.floor((getTimestamp() - timestamp))
    if  timediff < self.shuttleblocktime then
       creature:sendSystemMessage("Next Shuttle available in: " .. self.shuttleblocktime - timediff .. " sec" )
       return conversation:getScreen("away")
    end

    if ( lastConversationScreen == nil ) then
        nextConversationScreen = conversation:getInitialScreen()
    else

          local luaLastConversationScreen = LuaConversationScreen(lastConversationScreen)
          local screen = LuaConversationScreen(nextConversationScreen)
          local screenID = luaLastConversationScreen:getScreenID()
          local optionLink = luaLastConversationScreen:getOptionLink(selectedOption)
          nextConversationScreen = conversation:getScreen(optionLink)
          local msg = " \\#000000[GCW:]\\#FFFFFF \\#FF6600 Bestine: Fleet Reinforcements :\\#FFFFFF "
          if (screenID == "select_attack") then
                local ret = false
                if (optionLink == "Powersupply_1") then
                    ret = screenplayHelper:decreaseFactionStanding(conversingPlayer, "imperial", 300)
                    if ret == true then
                        local pShuttle = getCreatureObject(readData("imp_shuttleanimation:Bestine:PowersupplyShuttle"))
                        self:shuttleSequence(pShuttle)
                        createEvent(44000, self.scriptName, "dropTrooperLightPowerSupply", pShuttle)
                        writeData("imp_shuttleanimation:Bestine:TimerShuttle",getTimestamp())
                        sendBroadCastMessage(msg .. "Imperial Reinforcement Shuttle sent to Powersupply", "rebel")
                        sendBroadCastMessage(msg .. "Imperial Reinforcement Shuttle sent to Powersupply", "imperial")
                    end
                elseif (optionLink == "Powersupply_2") then
                    ret = screenplayHelper:decreaseFactionStanding(conversingPlayer, "imperial", 1000)
                    if ret == true then
                        local pShuttle = getCreatureObject(readData("imp_shuttleanimation:Bestine:PowersupplyShuttle"))
                        self:shuttleSequence(pShuttle)
                        createEvent(44000, self.scriptName, "dropTrooperHeavyPowerSupply", pShuttle)
                        writeData("imp_shuttleanimation:Bestine:TimerShuttle",getTimestamp())
                        sendBroadCastMessage(msg .. "Imperial Reinforcement Transport sent to Powersupply", "rebel")
                        sendBroadCastMessage(msg .. "Imperial Reinforcement Transport sent to Powersupply", "imperial")
                    end
                elseif (optionLink == "Barracs_1") then
                    ret = screenplayHelper:decreaseFactionStanding(conversingPlayer, "imperial", 300)
                    if ret == true then
                        local pShuttle = getCreatureObject(readData("imp_shuttleanimation:Bestine:BarracsShuttle"))
                        self:shuttleSequence(pShuttle)
                        createEvent(44000, self.scriptName, "dropTrooperLightBarracsShuttle", pShuttle)
                        writeData("imp_shuttleanimation:Bestine:TimerShuttle",getTimestamp())
                        sendBroadCastMessage(msg .. "Imperial Reinforcement Shuttle sent to Barracs", "rebel")
                        sendBroadCastMessage(msg .. "Imperial Reinforcement Shuttle sent to Barracs", "imperial")
                    end
                elseif (optionLink == "Barracs_2") then
                    ret = screenplayHelper:decreaseFactionStanding(conversingPlayer, "imperial", 1000)
                    if ret == true then
                        local pShuttle = getCreatureObject(readData("imp_shuttleanimation:Bestine:BarracsShuttle"))
                        self:shuttleSequence(pShuttle)
                        createEvent(44000, self.scriptName, "dropTrooperHeavyBarracsShuttle", pShuttle)
                        writeData("imp_shuttleanimation:Bestine:TimerShuttle",getTimestamp())
                        sendBroadCastMessage(msg .. "Imperial Reinforcement Transport sent to Barracs", "rebel")
                        sendBroadCastMessage(msg .. "Imperial Reinforcement Transport sent to Barracs", "imperial")
                    end
                elseif (optionLink == "Bastion_1") then
                    ret = screenplayHelper:decreaseFactionStanding(conversingPlayer, "imperial", 500)
                    if ret == true then
                        createEvent(44000, self.scriptName, "placeAssaultDroids", conversingPlayer)
                        writeData("imp_shuttleanimation:Bestine:TimerShuttle",getTimestamp())
                        sendBroadCastMessage(msg .. "Imperial Assault Droids sent to Bastion", "rebel")
                        sendBroadCastMessage(msg .. "Imperial Assault Droids sent to Bastion", "imperial")
                    end
                end
                if (ret == false) then
                   nextConversationScreen = conversation:getScreen("insufficient_faction")
                end
          end
    end
  end
  return nextConversationScreen
end

function gcw_bestine_imperial_convo_handler:runScreenHandlers(conversationTemplate, conversingPlayer, conversingNPC, selectedOption, conversationScreen)
  return conversationScreen
end

function gcw_bestine_imperial_convo_handler:shuttleSequence(pShuttle)
    createEvent(23000, self.scriptName, "landferry", pShuttle)
    createEvent(44000, self.scriptName, "launchferry", pShuttle)
    return 0
end

function gcw_bestine_imperial_convo_handler:dropTrooperLightPowerSupply(pShuttle)
    self:placeCombatSquad(-1352, -3458, 160, 0)
    return 0
end

function gcw_bestine_imperial_convo_handler:dropTrooperHeavyPowerSupply(pShuttle)
    self:placeCombatSquad(-1352, -3458, 160, 1)
    return 0
end

function gcw_bestine_imperial_convo_handler:dropTrooperLightBarracsShuttle(pShuttle)
    self:placeCombatSquad(-1045, -3476, 160, 0)
    return 0
end

function gcw_bestine_imperial_convo_handler:dropTrooperHeavyBarracsShuttle(pShuttle)
    self:placeCombatSquad(-1045, -3476, 160, 1)
    return 0
end

function gcw_bestine_imperial_convo_handler:placeCombatSquad(x,y,direction,type)
  self:killTimer(spawnMobile("tatooine", "rev_elite_sand_trooper", 0, x, 9999, y, direction, 0))
  self:killTimer(spawnMobile("tatooine", "rev_elite_sand_trooper", 0, x+1, 9999, y, direction, 0))
  self:killTimer(spawnMobile("tatooine", "rev_elite_sand_trooper", 0, x+2, 9999, y, direction, 0))
  self:killTimer(spawnMobile("tatooine", "rev_elite_sand_trooper", 0, x+3, 9999, y, direction, 0))
  self:killTimer(spawnMobile("tatooine", "rev_stormtrooper_groupleader", 0, x, 9999, y + 1, direction, 0))
  self:killTimer(spawnMobile("tatooine", "rev_storm_commando", 0, x+3, 9999, y + 1, direction, 0))
  if type == 1 then
      self:killTimer(spawnMobile("tatooine", "rev_at_st", 0, x-3, 9999, y-2, direction, 0))
  end
  
  return 0
end

function gcw_bestine_imperial_convo_handler:placeAssaultDroids()
    self:killTimer(spawnMobile("tatooine", "rev_imp_probot", 0, -1138, 9999, -3886, 0, 0))
    self:killTimer(spawnMobile("tatooine", "rev_imp_probot", 0, -1133, 9999, -3883, 0, 0))
    self:killTimer(spawnMobile("tatooine", "rev_imp_probot", 0, -1142, 9999, -3895, 0, 0))
    self:killTimer(spawnMobile("tatooine", "rev_imp_probot", 0, -1150, 9999, -3915, 0, 0))
    self:killTimer(spawnMobile("tatooine", "rev_imp_probot", 0, -1156, 9999, -3924, 0, 0))
    self:killTimer(spawnMobile("tatooine", "rev_imp_probot", 0, -1140, 9999, -3930, 0, 0))
end

function gcw_bestine_imperial_convo_handler:killTimer(pMobile)
    createEvent(self.timer * 1000, self.scriptName, "despawn", pMobile)
    return 0
end
function gcw_bestine_imperial_convo_handler:despawn(pMobile)
    screenplayHelper:despawnCreature(pMobile)
    return 0
end


function gcw_bestine_imperial_convo_handler:launchferry(pShuttle)
  ObjectManager.withCreatureObject(pShuttle, function(shuttle)
    shuttle:setPosture(FLYING)
  end)
  return 0
end

function gcw_bestine_imperial_convo_handler:landferry(pShuttle)
  ObjectManager.withCreatureObject(pShuttle, function(shuttle)
    shuttle:setPosture(PRONE)
  end)
  return 0
end

