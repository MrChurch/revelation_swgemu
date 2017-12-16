------------------------------------------- convohandler --------------------------------------------
buff_npc_worldevent_convo_handler = Object:new {
  tstring = "buff_npc_worldevent_convo_handler"
}
local screenplayHelper = require("helper.screenplayHelper")

function buff_npc_worldevent_convo_handler:getNextConversationScreen(conversationTemplate, conversingPlayer, selectedOption)
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
      if (screenID == "select_buff") then
      local ret = false
        printf("option:" .. optionLink .. "\n")
        if (optionLink == "buff_worldevent") then
          ret = screenplayHelper:buyPlayerHABuff(conversingPlayer, 10000, 300, 1)
          ret = screenplayHelper:buyPlayerMBuff(conversingPlayer, 10000, 300, 1)
        end
        if (ret == false) then
          nextConversationScreen = conversation:getScreen("insufficient_funds")
        end
      end
    end
  end
  return nextConversationScreen
end



function buff_npc_worldevent_convo_handler:runScreenHandlers(conversationTemplate, conversingPlayer, conversingNPC, selectedOption, conversationScreen)
  return conversationScreen
end
