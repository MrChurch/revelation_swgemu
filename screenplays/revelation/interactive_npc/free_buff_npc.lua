------------------------------------------- convohandler --------------------------------------------
free_buff_npc_convo_handler = Object:new {

	tstring = "free_buff_npc_convo_handler"
}
local screenplayHelper = require("helper.screenplayHelper")

function free_buff_npc_convo_handler:getNextConversationScreen(conversationTemplate, conversingPlayer, selectedOption)
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
				if (optionLink == "buff_free") then
					ret = screenplayHelper:buyPlayerHABuff(conversingPlayer, 4000, 7200, 1)
					screenplayHelper:buyPlayerMBuff(conversingPlayer, 2250, 7200, 0) 
				elseif (optionLink == "buff_remove") then
					ret = screenplayHelper:buyPlayerBuffRemove(conversingPlayer, 1)
				end
				if (ret == false) then
					nextConversationScreen = conversation:getScreen("insufficient_funds")
				end
			end
		end
	end
	return nextConversationScreen
end



function free_buff_npc_convo_handler:runScreenHandlers(conversationTemplate, conversingPlayer, conversingNPC, selectedOption, conversationScreen)
	return conversationScreen
end
