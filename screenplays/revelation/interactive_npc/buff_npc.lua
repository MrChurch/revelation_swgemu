buff_npc = ScreenPlay:new {
	numberOfActs = 1,
	questString = "buff_npc",
	states = {}, 
}

registerScreenPlay("buff_npc", true)
local ObjectManager = require("managers.object.object_manager")

function buff_npc:start()
	if (isZoneEnabled("corellia")) and (isZoneEnabled("tatooine")) and (isZoneEnabled("naboo")) then
		--self:spawnStructures()
		self:spawnMobile()
	end
end

function buff_npc:spawnStructures()
end

function buff_npc:spawnMobile()
	spawnMobile("corellia", "buff_npc", 600, 19.8, 0.3, -4.9, 250, 1855531)
	spawnSceneObject("corellia","object/tangible/symbols/icon_heal.iff", 19.8, 2.3, -4.9, 1855531, math.rad(250))
	spawnMobile("naboo", "buff_npc", 600, 14, 0.3, -5.1, 90, 1697360)
	spawnSceneObject("naboo","object/tangible/symbols/icon_heal.iff", 14, 2.3, -5.1, 1697360, math.rad(90))
	spawnMobile("naboo", "buff_npc", 600, -9.0, 0.3, -3.2, 130, 1717506)
	spawnSceneObject("naboo","object/tangible/symbols/icon_heal.iff", -9.0, 2.3, -3.2, 1717506, math.rad(130))
	spawnMobile("tatooine", "buff_npc", 600, 4.9, 0.2, 3.9, 0, 4005383)
	spawnSceneObject("tatooine","object/tangible/symbols/icon_heal.iff", 4.9, 2.2, 3.9, 4005383, math.rad(0))
	spawnMobile("tatooine", "buff_npc", 600, -6.7, 1.0, 5.9, 0, 1213346)
	spawnSceneObject("tatooine","object/tangible/symbols/icon_heal.iff", -6.7, 3.0, 5.9, 1213346, math.rad(0))
end


------------------------------------------- convohandler --------------------------------------------
buff_npc_convo_handler = Object:new {

	tstring = "buff_npc_convo_handler"
}
local screenplayHelper = require("helper.screenplayHelper")

function buff_npc_convo_handler:getNextConversationScreen(conversationTemplate, conversingPlayer, selectedOption)
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
				if (optionLink == "buff300_1") then
					ret = screenplayHelper:buyPlayerHABuff(conversingPlayer, 500, 3600, 100) 
				elseif (optionLink == "buff300_2") then
					ret = screenplayHelper:buyPlayerHABuff(conversingPlayer, 500, 7200, 300) 
				elseif (optionLink == "buff600_1") then
					ret = screenplayHelper:buyPlayerHABuff(conversingPlayer, 800, 3600, 500) 
				elseif (optionLink == "buff600_2") then
					ret = screenplayHelper:buyPlayerHABuff(conversingPlayer, 800, 7200, 1000) 
				elseif (optionLink == "buff1000_1") then
					ret = screenplayHelper:buyPlayerHABuff(conversingPlayer, 1300, 3600, 1500) 
				elseif (optionLink == "buff1000_2") then
					ret = screenplayHelper:buyPlayerHABuff(conversingPlayer, 1300, 7200, 2500) 
				elseif (optionLink == "buff_remove") then
					ret = screenplayHelper:buyPlayerBuffRemove(conversingPlayer, 500)
				end
				if (ret == false) then
					nextConversationScreen = conversation:getScreen("insufficient_funds")
				end
			end
		end
	end
	return nextConversationScreen
end



function buff_npc_convo_handler:runScreenHandlers(conversationTemplate, conversingPlayer, conversingNPC, selectedOption, conversationScreen)
	return conversationScreen
end
