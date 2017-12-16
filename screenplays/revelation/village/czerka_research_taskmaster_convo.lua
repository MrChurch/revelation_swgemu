czerka_outpost_taskmaster_convo_handler = Object:new {
    tstring = "czerka_outpost_taskmaster_convo_handler",
}
local screenplayHelper = require("helper.screenplayHelper")

function czerka_outpost_taskmaster_convo_handler:getNextConversationScreen(conversationTemplate, conversingPlayer, selectedOption)
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
        if (screenID == "first_screen") then
            if (optionLink == "select_task") then
                if creature:hasScreenPlayState(1, "revelation_jedi_state") then
                   creature:sendSystemMessage("you have the good feeling about that")
                end
            end
                  --ConversationHelper:setScreen(pConversationTemplate, "deny_quest")
            if (optionLink == "select_standing")  then
                if creature:hasScreenPlayState(1, "Czerka_Jedi_State") then
                    creature:sendSystemMessage("you have solved the problem in the research lab")
                else
                    creature:sendSystemMessage("OPEN TASK: research lab")
                end
                if creature:hasScreenPlayState(2, "Czerka_Jedi_State") and
                    creature:hasScreenPlayState(4, "Czerka_Jedi_State") then
                    creature:sendSystemMessage("you have blown up the pirate base")
                else
                    creature:sendSystemMessage("OPEN TASK: pirate base")                   
                end
                if creature:hasScreenPlayState(8, "Czerka_Jedi_State") and
                    creature:hasScreenPlayState(16, "Czerka_Jedi_State") then
                    creature:sendSystemMessage("you have conquered the Lok Alumn Mine")
                else
                    creature:sendSystemMessage("OPEN TASK: Lok Alumn Mine")
                end
                if creature:hasScreenPlayState(32, "Czerka_Jedi_State") then
                    creature:sendSystemMessage("you have conquered the Lok Alumn Mine (HC)")
                else
                    creature:sendSystemMessage("OPEN TASK: Lok Alumn Mine HC")
                end
            end
        end
      end
  end
  return nextConversationScreen
end

function czerka_outpost_taskmaster_convo_handler:runScreenHandlers(conversationTemplate, conversingPlayer, conversingNPC, selectedOption, conversationScreen)
  return conversationScreen
end