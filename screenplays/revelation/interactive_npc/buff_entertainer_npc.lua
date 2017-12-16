buff_entertainer_npc = ScreenPlay:new {
	numberOfActs = 1,
	questString = "buff_entertainer_npc",
	states = {}, 
}

registerScreenPlay("buff_entertainer_npc", true)
local ObjectManager = require("managers.object.object_manager")

function buff_entertainer_npc:start()
	if (isZoneEnabled("corellia")) and (isZoneEnabled("tatooine")) and (isZoneEnabled("naboo")) then
		--self:spawnStructures()
		self:spawnMobile()
	end
end

function buff_entertainer_npc:spawnStructures()
end

function buff_entertainer_npc:spawnMobile()
	spawnMobile("corellia", "buff_entertainer_npc", 600, -6.6, -0.9, 20.1, 150, 8105502)
	spawnSceneObject("corellia","object/tangible/symbols/icon_heal.iff", -6.6, 1.1, 20.1, 8105502, math.rad(150))
	spawnMobile("naboo", "buff_entertainer_npc", 600, 20.4, -0.9, -16.5, 90, 92)
	spawnSceneObject("corellia","object/tangible/symbols/icon_heal.iff", 20.4, 1.1, -16.5, 92, math.rad(90))
	spawnMobile("naboo", "buff_entertainer_npc", 600, 18.1, -0.9, 20.8, 240, 113)
	spawnSceneObject("corellia","object/tangible/symbols/icon_heal.iff", 18.1, 1.1, 20.8, 113, math.rad(240))
	spawnMobile("tatooine", "buff_entertainer_npc", 600, -6.8, -0.9, 19, 180, 1028653)
	spawnSceneObject("corellia","object/tangible/symbols/icon_heal.iff", -6.8, 1.1, 19, 1028653, math.rad(180))
	spawnMobile("tatooine", "buff_entertainer_npc", 600, 5.8, 0.4, -8.6, 180, 1213345)
	spawnSceneObject("corellia","object/tangible/symbols/icon_heal.iff", 5.8, 2.4, -8.6, 1213345, math.rad(180))
end


------------------------------------------- convohandler --------------------------------------------
buff_entertainer_npc_convo_handler = Object:new {

	tstring = "buff_entertainer_npc_convo_handler"
}
local screenplayHelper = require("helper.screenplayHelper")

function buff_entertainer_npc_convo_handler:getNextConversationScreen(conversationTemplate, conversingPlayer, selectedOption)
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
				if (optionLink == "buff250") then
					ret = screenplayHelper:buyPlayerMBuff(conversingPlayer, 250, 7200, 250) 
				elseif (optionLink == "buff500") then
					ret = screenplayHelper:buyPlayerMBuff(conversingPlayer, 750, 7200, 1500) 
				elseif (optionLink == "buff750") then
					ret = screenplayHelper:buyPlayerMBuff(conversingPlayer, 1000, 7200, 3000) 
				elseif (optionLink == "buff1500") then
					ret = screenplayHelper:buyPlayerMBuff(conversingPlayer, 1500, 7200, 5000) 
				end
				if (ret == false) then
					nextConversationScreen = conversation:getScreen("insufficient_funds")
				end
			end
		end
	end
	return nextConversationScreen
end



function buff_entertainer_npc_convo_handler:runScreenHandlers(conversationTemplate, conversingPlayer, conversingNPC, selectedOption, conversationScreen)
	return conversationScreen
end
