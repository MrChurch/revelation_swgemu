------------------------------------------- convohandler --------------------------------------------
buff_npc_gcw_convo_handler = Object:new {
	tstring = "buff_npc_gcw_convo_handler"
}
local screenplayHelper = require("helper.screenplayHelper")

function buff_npc_gcw_convo_handler:getNextConversationScreen(conversationTemplate, conversingPlayer, selectedOption)
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
		local factionString = ""
		if creature:isImperial() then
			factionString = "imperial"
		elseif creature:isRebel() then
			factionString = "rebel"
		else 
			factionString = ""
		end 
		
			nextConversationScreen = conversation:getScreen("buff_npc_gcw_insufficient_faction")
			
			if ( lastConversationScreen == nil ) then
				nextConversationScreen = conversation:getInitialScreen()
			else
				local luaLastConversationScreen = LuaConversationScreen(lastConversationScreen)
				local screen = LuaConversationScreen(nextConversationScreen)
				local screenID = luaLastConversationScreen:getScreenID()
				local optionLink = luaLastConversationScreen:getOptionLink(selectedOption)
				nextConversationScreen = conversation:getScreen(optionLink)
				local playerObjPointer = creature:getPlayerObject()
				local playerObj = LuaPlayerObject(playerObjPointer)
				
				if (screenID == "select_buff") and (factionString ~= "") then
					local ret = false
					if (optionLink == "buff2000" and playerObj:getFactionStanding(factionString) >= 520) then
						playerObj:decreaseFactionStanding(factionString,500)
						ret = screenplayHelper:buyPlayerHABuff(conversingPlayer, 2000, 3600, 0)
						screenplayHelper:buyPlayerMBuff(conversingPlayer, 750, 3600, 0) 
					elseif (optionLink == "buff2000" and playerObj:getFactionStanding(factionString) < 520) then
						nextConversationScreen = conversation:getScreen("buff_npc_gcw_insufficient_faction")
						creature:sendSystemMessage("You have not enough FP")
					end

					if (optionLink == "buff3000" and playerObj:getFactionStanding(factionString) >= 1020) then
						playerObj:decreaseFactionStanding(factionString,1000)
						ret = screenplayHelper:buyPlayerHABuff(conversingPlayer, 3000, 3600, 0)
						screenplayHelper:buyPlayerMBuff(conversingPlayer, 1000, 3600, 0) 
					elseif (optionLink == "buff3000" and playerObj:getFactionStanding(factionString) < 1020) then
						nextConversationScreen = conversation:getScreen("buff_npc_gcw_insufficient_faction")
						creature:sendSystemMessage("You have not enough FP")
					end
					
					if (optionLink == "buff4000" and playerObj:getFactionStanding(factionString) >= 1520) then
						playerObj:decreaseFactionStanding(factionString,1500)
						ret = screenplayHelper:buyPlayerHABuff(conversingPlayer, 4000, 3600, 0)
						screenplayHelper:buyPlayerMBuff(conversingPlayer, 2000, 3600, 0) 
					elseif (optionLink == "buff4000" and playerObj:getFactionStanding(factionString) < 1520) then
						nextConversationScreen = conversation:getScreen("buff_npc_gcw_insufficient_faction")
						creature:sendSystemMessage("You have not enough FP")
					end
						
					if (ret == false) then
						nextConversationScreen = conversation:getScreen("buff_npc_gcw_insufficient_faction")
					end
				end
			end
		end
	return nextConversationScreen
end

function buff_npc_gcw_convo_handler:runScreenHandlers(conversationTemplate, conversingPlayer, conversingNPC, selectedOption, conversationScreen)
	return conversationScreen
end
