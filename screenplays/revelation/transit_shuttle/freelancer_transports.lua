-- Author: Matthias Muente (matthias.muente@gmx.de)

freelancer_transports = ScreenPlay:new {
}
registerScreenPlay("freelancer_transports", true)

local ObjectManager = require("managers.object.object_manager")
local ScreenplayHelper = require("helper.screenplayHelper")

function freelancer_transports:start()
    if (isZoneEnabled("lok") and isZoneEnabled("naboo")) then
        self:spawnBuilding()
    end
end

function freelancer_transports:spawnBuilding()
    local pCreature = spawnMobile("naboo", "cll8_binary_load_lifter", 60, -5768.7, 6.0, 4003.8, 45, 0)
    spawnMobile("naboo", "helper_r2_unit", 0, -5800, 6.0, 4002, 0, 0)
    spawnMobile("naboo", "freelancer_transports", 0, -5800, 6.0, 4007, 280, 0)
    spawnSceneObject("naboo","object/tangible/symbols/icon_transporter.iff", -5800, 8.0, 4007, 0, math.rad(280))
  
    spawnBuilding(pCreature,"object/building/general/landing_pad_s01.iff", -5765, 4024, 180)
    spawnSceneObject("naboo","object/static/installation/mockup_factory_machine_style_1.iff", -5785, 6, 4005, 0, math.rad(0))
    spawnSceneObject("naboo","object/static/installation/mockup_factory_machine_style_1.iff", -5755, 6, 4005, 0, math.rad(0))  
    spawnSceneObject("naboo","object/static/structure/general/allum_mine_car_s01.iff", -5757, 13.2, 4017, 0, math.rad(180))     
    spawnSceneObject("naboo","object/static/structure/general/allum_mine_car_s01.iff", -5784, 12.2, 4012, 0, math.rad(180))  
    spawnSceneObject("naboo","object/static/structure/general/allum_mine_bucket_s01.iff", -5763.5, 13.1, 4030, 0, math.rad(0))
    spawnSceneObject("naboo","object/static/structure/general/allum_mine_bucket_s01.iff", -5785.8, 13.1, 4034.5, 0, math.rad(90))
    spawnSceneObject("naboo","object/static/structure/general/allum_mine_bucket_s01.iff", -5761.6, 13.1, 4019.5, 0, math.rad(90))
    spawnSceneObject("naboo","object/static/structure/general/allum_mine_bucket_s01.iff", -5795.8, 9999, 4008.0, 0, math.rad(90))
    spawnSceneObject("naboo","object/static/structure/general/allum_mine_bucket_s01.iff", -5798.7, 9999, 4012.5, 0, math.rad(90))
    spawnSceneObject("naboo","object/static/installation/mockup_factory_organic_style_1.iff", -5775, 9999, 3970, 0, math.rad(90))
    spawnSceneObject("naboo","object/static/installation/mockup_factory_organic_style_1.iff", -5750, 9999, 3970, 0, math.rad(90))
end

------------------------------------------- convohandler --------------------------------------------
freelancer_transport_convo_handler = Object:new {

  tstring = "freelancer_transport_convo_handler"
}

function freelancer_transport_convo_handler:getNextConversationScreen(conversationTemplate, conversingPlayer, selectedOption)

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
        if (screenID == "travel_theed") then
          if (optionLink == "pay") then
            if (freelancer_transport_convo_handler:removeCash(conversingPlayer,2500)) then
              player:switchZone("naboo", -5744.5, 6, 4041, 0)
            else
              nextConversationScreen = conversation:getScreen("insufficient_funds")
              creature:sendSystemMessage("You dont have enough credits to take the tour!")
            end
          end 
        elseif (screenID == "travel_lok") then
          if (optionLink == "pay") then
            if (freelancer_transport_convo_handler:removeCash(conversingPlayer,2500)) then
              player:switchZone("lok", -1736, 12.1, -6238, 0)
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

function freelancer_transport_convo_handler:removeCash(conversingPlayer, money)
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

function freelancer_transport_convo_handler:runScreenHandlers(conversationTemplate, conversingPlayer, conversingNPC, selectedOption, conversationScreen)
  return conversationScreen
end