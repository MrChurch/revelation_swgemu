xmas_vendor = ScreenPlay:new {
	numberOfActs = 1,
	questString = "xmas_vendor",
	states = {},
}

registerScreenPlay("xmas_vendor", true)
local ObjectManager = require("managers.object.object_manager")

function xmas_vendor:start()
	if isZoneEnabled("naboo") then
		self:spawnMobile()
	end
end

function xmas_vendor:spawnStructures()
end

function xmas_vendor:spawnMobile()
	--spawnMobile("naboo", "xmas_vendor", 600, -4927.8, 6, 4161.9, 90, 0)
end


------------------------------------------- convohandler --------------------------------------------
xmas_vendor_convo_handler = Object:new {

	tstring = "xmas_vendor_convo_handler"
}
local merchantHelper = require("helper.merchantHelper")
local ObjectManager = require("managers.object.object_manager")
local screenplayHelper = require("helper.screenplayHelper")
local lastConversationScreen

function xmas_vendor_convo_handler:getNextConversationScreen(conversationTemplate, conversingPlayer, selectedOption)

	local creature = LuaCreatureObject(conversingPlayer)
	local convosession = creature:getConversationSession()
	local nextConversationScreen
	local lastConversationScreen = nil

	if (conversationTemplate ~= nil ) then
		local conversation = LuaConversationTemplate(conversationTemplate)
		local session = LuaConversationSession(convosession)
		if ( session ~= nil ) then
			lastConversationScreen = session:getLastConversationScreen()
		end
		if (lastConversationScreen == nil ) then
			nextConversationScreen = conversation:getInitialScreen()
		else
			local luaLastConversationScreen = LuaConversationScreen(lastConversationScreen)
			local screen = LuaConversationScreen(nextConversationScreen)
			local screenID = luaLastConversationScreen:getScreenID()
			local optionLink = luaLastConversationScreen:getOptionLink(selectedOption)
			nextConversationScreen = conversation:getScreen(optionLink)
			local ret = false

			if (screenID == "secondday") then
				nextConversationScreen = lastConversationScreen
				if (optionLink == "gifts") then
					ret = merchantHelper:deleteItem(conversingPlayer, "st_pr_lifeday_presents", 30) 
				end
				if (ret == false) then
					nextConversationScreen = conversation:getScreen("insufficient_items")
				else
					creature:setScreenPlayState(1, "xmas_2016")
					creature:sendSystemMessage("Santa has registered your kill.")
					nextConversationScreen = lastConversationScreen
				end
			end
			 
		end
	end
	return nextConversationScreen
end

function xmas_vendor_convo_handler:runScreenHandlers(conversationTemplate, conversingPlayer, conversingNPC, selectedOption, conversationScreen)
	return conversationScreen
end
