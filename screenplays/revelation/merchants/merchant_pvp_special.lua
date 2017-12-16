merchant_pvp_special = ScreenPlay:new {
	numberOfActs = 1,
	questString = "merchant_pvp_special",
	states = {}, 
}

registerScreenPlay("merchant_pvp_special", true)
local ObjectManager = require("managers.object.object_manager")

function merchant_pvp_special:start()
	if (isZoneEnabled("corellia")) and (isZoneEnabled("tatooine")) and (isZoneEnabled("naboo")) then
		--self:spawnStructures()
		self:spawnMobile()
	end
end

function merchant_pvp_special:spawnStructures()
end

function merchant_pvp_special:spawnMobile()
	spawnMobile("naboo", "merchant_pvp_special", 1800, -4928, 6, 4167, 45, 0)
end


------------------------------------------- convohandler --------------------------------------------
merchant_pvp_special_convo_handler = Object:new {

	tstring = "merchant_pvp_special_convo_handler"
}
local merchantHelper = require("helper.merchantHelper")
local ObjectManager = require("managers.object.object_manager")
local lastConversationScreen

function merchant_pvp_special_convo_handler:getNextConversationScreen(conversationTemplate, conversingPlayer, selectedOption)

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

            if (screenID == "select_imperial_armorset") then
				if (optionLink == "li_snowarmor_imperial_belt") then
					nextConversationScreen = self:addItem(conversingPlayer, optionLink,nextConversationScreen, conversation, 1)
				elseif (optionLink == "li_snowarmor_imperial_bicep_l") then
					nextConversationScreen = self:addItem(conversingPlayer, optionLink,nextConversationScreen, conversation, 1)
				elseif (optionLink == "li_snowarmor_imperial_bicep_r") then
					nextConversationScreen = self:addItem(conversingPlayer, optionLink,nextConversationScreen, conversation, 1)
				elseif (optionLink == "li_snowarmor_imperial_boots") then
					nextConversationScreen = self:addItem(conversingPlayer, optionLink,nextConversationScreen, conversation, 2)
				elseif (optionLink == "li_snowarmor_imperial_bracer_l") then
					nextConversationScreen = self:addItem(conversingPlayer, optionLink,nextConversationScreen, conversation, 1)
				elseif (optionLink == "li_snowarmor_imperial_bracer_r") then
					nextConversationScreen = self:addItem(conversingPlayer, optionLink,nextConversationScreen, conversation, 1)
				elseif (optionLink == "li_snowarmor_imperial_chest_plate") then
					nextConversationScreen = self:addItem(conversingPlayer, optionLink,nextConversationScreen, conversation, 2)
				elseif (optionLink == "li_snowarmor_imperial_gloves") then
					nextConversationScreen = self:addItem(conversingPlayer, optionLink,nextConversationScreen, conversation, 2)
				elseif (optionLink == "li_snowarmor_imperial_helmet") then
					nextConversationScreen = self:addItem(conversingPlayer, optionLink,nextConversationScreen, conversation, 2)
				elseif (optionLink == "li_snowarmor_imperial_leggings") then
					nextConversationScreen = self:addItem(conversingPlayer, optionLink,nextConversationScreen, conversation, 2)
				elseif (optionLink == "RobeofHate") then
					nextConversationScreen = self:addItem(conversingPlayer, optionLink,nextConversationScreen, conversation, 15)
				elseif (optionLink == "RobeofHate_hood") then
					nextConversationScreen = self:addItem(conversingPlayer, optionLink,nextConversationScreen, conversation, 15)
				end
			elseif (screenID == "select_rebel_armorset") then
				if (optionLink == "li_snowarmor_rebel_belt") then
					nextConversationScreen = self:addItem(conversingPlayer, optionLink,nextConversationScreen, conversation, 1)
				elseif (optionLink == "li_snowarmor_rebel_bicep_l") then
					nextConversationScreen = self:addItem(conversingPlayer, optionLink,nextConversationScreen, conversation, 1)
				elseif (optionLink == "li_snowarmor_rebel_bicep_r") then
					nextConversationScreen = self:addItem(conversingPlayer, optionLink,nextConversationScreen, conversation, 1)
				elseif (optionLink == "li_snowarmor_rebel_boots") then
					nextConversationScreen = self:addItem(conversingPlayer, optionLink,nextConversationScreen, conversation, 2)
				elseif (optionLink == "li_snowarmor_rebel_bracer_l") then
					nextConversationScreen = self:addItem(conversingPlayer, optionLink,nextConversationScreen, conversation, 1)
				elseif (optionLink == "li_snowarmor_rebel_bracer_r") then
					nextConversationScreen = self:addItem(conversingPlayer, optionLink,nextConversationScreen, conversation, 1)
				elseif (optionLink == "li_snowarmor_rebel_chest_plate") then
					nextConversationScreen = self:addItem(conversingPlayer, optionLink,nextConversationScreen, conversation, 2)
				elseif (optionLink == "li_snowarmor_rebel_gloves") then
					nextConversationScreen = self:addItem(conversingPlayer, optionLink,nextConversationScreen, conversation, 2)
				elseif (optionLink == "li_snowarmor_rebel_helmet") then
					nextConversationScreen = self:addItem(conversingPlayer, optionLink,nextConversationScreen, conversation, 2)
				elseif (optionLink == "li_snowarmor_rebel_leggings") then
					nextConversationScreen = self:addItem(conversingPlayer, optionLink,nextConversationScreen, conversation, 2)
				elseif (optionLink == "RobeShatterpoint") then
					nextConversationScreen = self:addItem(conversingPlayer, optionLink,nextConversationScreen, conversation, 15)
				elseif (optionLink == "RobeShatterpoint_hood") then
					nextConversationScreen = self:addItem(conversingPlayer, optionLink,nextConversationScreen, conversation, 15)
				end
            end
        end
    end
    return nextConversationScreen
end



function merchant_pvp_special_convo_handler:runScreenHandlers(conversationTemplate, conversingPlayer, conversingNPC, selectedOption, conversationScreen)
    return conversationScreen
end

function merchant_pvp_special_convo_handler:addItem(conversingPlayer, optionLink,nextConversationScreen, conversation, count)
	local creature = LuaCreatureObject(conversingPlayer)
	local stateValue = creature:getScreenPlayState("GCW_Bestine_Specialreward")
		if stateValue > (count -1)then
			merchantHelper:giveItem(conversingPlayer, optionLink)
			creature:setScreenPlayStateValue(stateValue - count, "GCW_Bestine_Specialreward")
			nextConversationScreen = conversation:getScreen("finished")
		else
			nextConversationScreen = conversation:getScreen("insufficient_tokens")
		end	
	return nextConversationScreen
end
