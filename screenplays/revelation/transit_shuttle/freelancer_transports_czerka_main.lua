-- Author: Matthias Muente (matthias.muente@gmx.de)

freelancer_transports_czerka_main = ScreenPlay:new {
}
registerScreenPlay("freelancer_transports_czerka_main", true)

local ObjectManager = require("managers.object.object_manager")
local ScreenplayHelper = require("helper.screenplayHelper")

function freelancer_transports_czerka_main:start()
    if (isZoneEnabled("lok")) and (isZoneEnabled("dathomir")) and (isZoneEnabled("yavin4"))  and (isZoneEnabled("endor")) then
          spawnMobile("dathomir", "freelancer_transports_czerka_main", 0, 5360.5, 78.6, -4109, 180, 0)
          spawnSceneObject("dathomir","object/tangible/symbols/icon_transporter.iff", 5360.5, 80.6, -4109, 0, math.rad(180))
          spawnMobile("lok", "freelancer_transports_czerka_village", 60, -1625, 12.1, -6234, 290, 0)
          spawnSceneObject("lok","object/tangible/symbols/icon_transporter.iff", -1625, 14.1, -6234, 0, math.rad(290))
          self:yavin()
          self:endor()
    end
end

function freelancer_transports_czerka_main:yavin()
    local pCreature = spawnMobile("yavin4", "cll8_binary_load_lifter", 0, -6871, 9999, 5433, 290, 0)
    spawnBuilding(pCreature,"object/building/poi/transit_camp_s1.iff", -6913, 5440, 0)
    spawnMobile("yavin4", "freelancer_transports_czerka_village", 0, -6911, 9999, 5431, 290, 0)
    spawnSceneObject("yavin4","object/tangible/symbols/icon_transporter.iff", -6911, 12.0, 5431, 0, math.rad(290))
    ScreenplayHelper:spawnMobileAndIdle("yavin4", "czerka_outpost_guard_r", 600, -6897, 9999, 5450, 290, 0)
    ScreenplayHelper:spawnMobileAndIdle("yavin4", "czerka_outpost_guard", 600, -6906, 9999, 5401, 290, 0)
end

function freelancer_transports_czerka_main:endor()
    local pCreature = spawnMobile("endor", "cll8_binary_load_lifter", 0, -2700, 9999, 5644, 290, 0)
    spawnBuilding(pCreature,"object/building/poi/transit_camp_s1.iff", -2668, 5597, 0)
    spawnMobile("endor", "freelancer_transports_czerka_village", 0, -2667, 9999, 5587, 290, 0)
    spawnSceneObject("endor","object/tangible/symbols/icon_transporter.iff", -2667, 202.0, 5587, 0, math.rad(290))
    ScreenplayHelper:spawnMobileAndIdle("endor", "czerka_outpost_guard_r", 600, -2644, 9999, 5540, 290, 0)
    ScreenplayHelper:spawnMobileAndIdle("endor", "czerka_outpost_guard", 600, -2667, 9999, 5545, 290, 0)
end



  ------------------------------ convohandler --------------------------------------------
freelancer_transport_czerka_main_convo_handler = Object:new {

  tstring = "freelancer_transport_czerka_main_convo_handler"
}

function freelancer_transport_czerka_main_convo_handler:getNextConversationScreen(conversationTemplate, conversingPlayer, selectedOption)

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

    if ( lastConversationScreen == nil ) then
      nextConversationScreen = conversation:getInitialScreen()
    else
      local luaLastConversationScreen = LuaConversationScreen(lastConversationScreen)
      local screen = LuaConversationScreen(nextConversationScreen)
      local screenID = luaLastConversationScreen:getScreenID()
      local optionLink = luaLastConversationScreen:getOptionLink(selectedOption)
      nextConversationScreen = conversation:getScreen(optionLink)
      local player = LuaSceneObject(conversingPlayer)
      if ( player ~= nil ) then
          if (screenID == "travel_alumn") then
              if (optionLink == "pay") then
                  if (freelancer_transport_czerka_main_convo_handler:removeCash(conversingPlayer,10000)) then
                      player:switchZone("lok", -1736, 12.1, -6238, 0)
                  else
                      nextConversationScreen = conversation:getScreen("insufficient_funds")
                      creature:sendSystemMessage("You dont have enough credits to take the tour!")
                  end
              end 
          elseif (screenID == "travel_theed") then
              if (optionLink == "pay") then
                  if (freelancer_transport_czerka_main_convo_handler:removeCash(conversingPlayer,20000)) then
                      player:switchZone("naboo", -5744.5, 6, 4041, 0)
                  else
                      nextConversationScreen = conversation:getScreen("insufficient_funds")
                      creature:sendSystemMessage("You dont have enough credits to take the tour!")
                  end
              end 
          elseif (screenID == "travel_research") then
              if (optionLink == "pay") then
                  if (freelancer_transport_czerka_main_convo_handler:removeCash(conversingPlayer,5000)) then
                      player:switchZone("yavin4", -6938, 9, 5444, 0)
                  else
                      nextConversationScreen = conversation:getScreen("insufficient_funds")
                      creature:sendSystemMessage("You dont have enough credits to take the tour!")
                  end
              end 
          elseif (screenID == "travel_pirate") then
              if (optionLink == "pay") then
                  if (freelancer_transport_czerka_main_convo_handler:removeCash(conversingPlayer,5000)) then
                      player:switchZone("endor", -2693, 200, 5606, 0)
                  else
                      nextConversationScreen = conversation:getScreen("insufficient_funds")
                      creature:sendSystemMessage("You dont have enough credits to take the tour!")
                  end
              end 
          end                            
      end
    end
  end
  return nextConversationScreen
end

function freelancer_transport_czerka_main_convo_handler:removeCash(conversingPlayer, money)
  local creature = LuaCreatureObject(conversingPlayer)
  local ret = false 
  if ( creature ~= nil ) then
    local credits = creature:getCashCredits()
    if (credits >= money) then
      creature:subtractCashCredits(money)
      ret = true
    end
  end
  return ret
end

function freelancer_transport_czerka_main_convo_handler:runScreenHandlers(conversationTemplate, conversingPlayer, conversingNPC, selectedOption, conversationScreen)
  return conversationScreen
end