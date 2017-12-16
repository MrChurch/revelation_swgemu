merchant_pvp_basic = ScreenPlay:new {
	numberOfActs = 1,
	questString = "merchant_pvp_basic",
	states = {}, 
}

registerScreenPlay("merchant_pvp_basic", true)
local ObjectManager = require("managers.object.object_manager")

function merchant_pvp_basic:start()
	if (isZoneEnabled("corellia")) and (isZoneEnabled("tatooine")) and (isZoneEnabled("naboo")) then
		--self:spawnStructures()
		self:spawnMobile()
	end
end

function merchant_pvp_basic:spawnStructures()
end

function merchant_pvp_basic:spawnMobile()
	spawnMobile("naboo", "merchant_pvp_basic", 1800, -4928, 6, 4164, 80, 0)
end


------------------------------------------- convohandler --------------------------------------------
merchant_pvp_basic_convo_handler = Object:new {

	tstring = "merchant_pvp_basic_convo_handler"
}
local merchantHelper = require("helper.merchantHelper")
local ObjectManager = require("managers.object.object_manager")
local lastConversationScreen

function merchant_pvp_basic_convo_handler:getNextConversationScreen(conversationTemplate, conversingPlayer, selectedOption)

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
            if (screenID == "select_armorset") then
                if (optionLink == "marauderset_1") then
					local stateValue = creature:getScreenPlayState("GCW_Bestine_Bossreward")
					if stateValue > 0 then
						merchantHelper:giveItem(conversingPlayer, "marauderset_1")
						creature:setScreenPlayStateValue(stateValue - 1, "GCW_Bestine_Bossreward")
						nextConversationScreen = conversation:getScreen("finished")
					else
						nextConversationScreen = conversation:getScreen("insufficient_tokens")
					end	
                elseif (optionLink == "marauderset_2") then
					local stateValue = creature:getScreenPlayState("GCW_Bestine_Bossreward")
					if stateValue > 0 then
						merchantHelper:giveItem(conversingPlayer, "marauderset_2")
						creature:setScreenPlayStateValue(stateValue - 1, "GCW_Bestine_Bossreward")
						nextConversationScreen = conversation:getScreen("finished")
					else
						nextConversationScreen = conversation:getScreen("insufficient_tokens")
					end	
                elseif (optionLink == "largehousestyle_1") then
					local stateValue = creature:getScreenPlayState("GCW_Bestine_Bossreward")
					if stateValue > 19 then
						merchantHelper:giveItem(conversingPlayer, "largeWindowHouse_01")
						creature:setScreenPlayStateValue(stateValue - 20, "GCW_Bestine_Bossreward")
						nextConversationScreen = conversation:getScreen("finished")
					else
						nextConversationScreen = conversation:getScreen("insufficient_tokens")
					end	
                elseif (optionLink == "largehousestyle_2") then
					local stateValue = creature:getScreenPlayState("GCW_Bestine_Bossreward")
					if stateValue > 19 then
						merchantHelper:giveItem(conversingPlayer, "largeWindowHouse_02")
						creature:setScreenPlayStateValue(stateValue - 20, "GCW_Bestine_Bossreward")
						nextConversationScreen = conversation:getScreen("finished")
					else
						nextConversationScreen = conversation:getScreen("insufficient_tokens")
					end	
                end
            elseif (screenID == "select_credits") then
            
                if (optionLink == "cred_10000") then
                	local stateValue = creature:getScreenPlayState("GCW_Bestine_Bossreward")
					if stateValue > 0 then
						merchantHelper:giveCredits(conversingPlayer,10000) 
						creature:setScreenPlayStateValue(stateValue - 1, "GCW_Bestine_Bossreward")
						nextConversationScreen = conversation:getScreen("finished")
					else
						nextConversationScreen = conversation:getScreen("insufficient_tokens")
					end	
				end	
            end
        end
    end
    return nextConversationScreen
end



function merchant_pvp_basic_convo_handler:runScreenHandlers(conversationTemplate, conversingPlayer, conversingNPC, selectedOption, conversationScreen)
    return conversationScreen
end
