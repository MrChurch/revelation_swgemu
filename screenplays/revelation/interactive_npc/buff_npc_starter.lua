------------------------------------------ convohandler --------------------------------------------
buff_npc_starter_convo_handler = Object:new {

	tstring = "buff_npc_starter_convo_handler"
}
local screenplayHelper = require("helper.screenplayHelper")
local ObjectManager = require("managers.object.object_manager")

function buff_npc_starter_convo_handler:getNextConversationScreen(conversationTemplate, conversingPlayer, selectedOption)
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
				if (optionLink == "select_buff") then
					screenplayHelper:buyPlayerHABuff(conversingPlayer, 1500, 12000, 0) 
					screenplayHelper:buyPlayerMBuff(conversingPlayer, 700, 12000, 0)
					ObjectManager.withCreatureObject(conversingPlayer, function(player)
						local name = player:getFirstName()
						local pretext = " \\#33CCCC[New Player]:\\#FFFFFF "
						sendBroadCastMessage(pretext .. name .. " \\#33CCCCWelcome to Revelation !\\#FFFFFF", "all");
 					end)
				elseif (optionLink == "select_dungeon") then
					screenplayHelper:buyPlayerHABuff(conversingPlayer, 1500, 12000, 0) 
					screenplayHelper:buyPlayerMBuff(conversingPlayer, 700, 12000, 0)
					ObjectManager.withCreatureObject(conversingPlayer, function(player)
						local name = player:getFirstName()
						local pretext = " \\#33CCCC[New Player]:\\#FFFFFF "
						sendBroadCastMessage(pretext .. name .. " \\#33CCCCWelcome to Revelation !\\#FFFFFF", "all");
						local scenePlayer = LuaSceneObject(conversingPlayer)
						scenePlayer:switchZone("naboo",-5322, 6, 4577,0)
 					end)
				end 
			end
		end
	end
	return nextConversationScreen
end

function buff_npc_starter_convo_handler:runScreenHandlers(conversationTemplate, conversingPlayer, conversingNPC, selectedOption, conversationScreen)
	return conversationScreen
end
