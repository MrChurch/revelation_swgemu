---------------------------------- convo handler ----------------------------------------
gcw_imperial_transit_system_convo_handler = Object:new {
   tstring = "conversation_gcw_transit"
 }
function gcw_imperial_transit_system_convo_handler:getNextConversationScreen(conversationTemplate, conversingPlayer, selectedOption)
     
   -- Assign the player to variable creature for use inside this function.
   local creature = LuaCreatureObject(conversingPlayer)
   -- Get the last conversation to determine whetehr or not we're  on the first screen
   local convosession = creature:getConversationSession()
   lastConversation = nil
   local conversation = LuaConversationTemplate(conversationTemplate)
   local nextConversationScreen 
   
   -- If there is a conversation open, do stuff with it
   if ( conversation ~= nil ) then
      -- check to see if we have a next screen
      if ( convosession ~= nil ) then
          local session = LuaConversationSession(convosession)
          if ( session ~= nil ) then
             lastConversationScreen = session:getLastConversationScreen()
          end
      end
      
      -- Last conversation was nil, so get the first screen
      if ( lastConversationScreen == nil ) then
         nextConversationScreen = conversation:getInitialScreen()
      else
         -- Start playing the rest of the conversation based on user input
         local luaLastConversationScreen = LuaConversationScreen(lastConversationScreen)
         
         -- Set variable to track what option the player picked and get the option picked
         local optionLink = luaLastConversationScreen:getOptionLink(selectedOption)
         nextConversationScreen = conversation:getScreen(optionLink)
       -- Get some information about the player.
      local isImperial = creature:isImperial()
      local isRebel = creature:isImperial()
      local playerObjPointer = creature:getPlayerObject()
      local playerObj = LuaPlayerObject(playerObjPointer)
      local player = LuaSceneObject(conversingPlayer)
      
      if (creature:getFaction() == 3679112276) then
          -- xxxxxxxxxx Tatooine xxxxxxxxxxxx 
          if (optionLink == "sBestinePVP" and playerObj:getFactionStanding("imperial") >= 70) then
                playerObj:decreaseFactionStanding("imperial",50)
                player:switchZone("tatooine",-550, 5, -2900,0)
          elseif (optionLink == "sBestinePVP" and playerObj:getFactionStanding("imperial") < 70) then
                nextConversationScreen = conversation:getScreen("notenough_faction")
                creature:sendSystemMessage("You are have not enough FP")
          end
       else
        --nextConversationScreen = conversation:getScreen("wrong_faction")
        creature:sendSystemMessage("You are no member of the imperial forces")
      end 
    end
  end

    -- end of the conversation logic.
   return nextConversationScreen
end


function gcw_imperial_transit_system_convo_handler:runScreenHandlers(conversationTemplate, conversingPlayer, conversingNPC, selectedOption, conversationScreen)
   -- Plays the screens of the conversation.
   return conversationScreen
end
