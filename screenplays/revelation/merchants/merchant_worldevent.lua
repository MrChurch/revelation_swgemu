merchant_worldevent = ScreenPlay:new {
	numberOfActs = 1,
	questString = "merchant_worldevent",
	states = {},
}

registerScreenPlay("merchant_worldevent", true)
local ObjectManager = require("managers.object.object_manager")

function merchant_worldevent:start()
	if isZoneEnabled("naboo") then
		self:spawnMobile()
	end
end

function merchant_worldevent:spawnStructures()
end

function merchant_worldevent:spawnMobile()
	spawnMobile("naboo", "merchant_worldevent", 600, -4927.8, 6, 4161.9, 90, 0)
end


------------------------------------------- convohandler --------------------------------------------
merchant_worldevent_convo_handler = Object:new {

	tstring = "merchant_worldevent_convo_handler"
}
local merchantHelper = require("helper.merchantHelper")
local ObjectManager = require("managers.object.object_manager")
local screenplayHelper = require("helper.screenplayHelper")
local lastConversationScreen

function merchant_worldevent_convo_handler:getNextConversationScreen(conversationTemplate, conversingPlayer, selectedOption)

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

			if (screenID == "first_screen") then
				nextConversationScreen = lastConversationScreen
				if (optionLink == "select_widowmaker") then
					ret = merchantHelper:checkInventoryRoom(conversingPlayer,5)
					if (ret == false) then
						nextConversationScreen = conversation:getScreen("no_room")
					else
						if creature:hasScreenPlayState(1, "worldevent_bosskill") then
							merchantHelper:giveItem(conversingPlayer, "worldboss_widowmaker")
							merchantHelper:giveItem(conversingPlayer, "rev_skill_buffs")
							merchantHelper:giveItem(conversingPlayer, "crystals_premium")
							merchantHelper:giveItem(conversingPlayer, "old_dungeon_bonus_tusken")
							merchantHelper:giveCredits(conversingPlayer, 15000)
							nextConversationScreen = conversation:getScreen("finished")
							creature:removeScreenPlayState(1, "worldevent_bosskill")
						else
							nextConversationScreen = conversation:getScreen("nokill")
						end
					end
				elseif (optionLink == "select_kimogila") then
					ret = merchantHelper:checkInventoryRoom(conversingPlayer,4)
					if (ret == false) then
					    nextConversationScreen = conversation:getScreen("no_room")
					else
						if creature:hasScreenPlayState(2, "worldevent_bosskill") then
							merchantHelper:giveItem(conversingPlayer, "worldboss_killiam")
							merchantHelper:giveItem(conversingPlayer, "worldevent_killiam_common")
							merchantHelper:giveItem(conversingPlayer, "worldevent_killiam_common")
							merchantHelper:giveCredits(conversingPlayer, 10000)
							nextConversationScreen = conversation:getScreen("finished")
							creature:removeScreenPlayState(2, "worldevent_bosskill")
						else
							nextConversationScreen = conversation:getScreen("nokill")
						end
					end
				elseif (optionLink == "select_bludgeon") then
					ret = merchantHelper:checkInventoryRoom(conversingPlayer,4)
					if (ret == false) then
						nextConversationScreen = conversation:getScreen("no_room")
					else
						if creature:hasScreenPlayState(4, "worldevent_bosskill") then
							merchantHelper:giveItem(conversingPlayer, "worldboss_bludgeon")
							merchantHelper:giveItem(conversingPlayer, "worldboss_bludgeon_clothes")
							merchantHelper:giveItem(conversingPlayer, "old_dungeon_bonus_geo")
							merchantHelper:giveCredits(conversingPlayer, 15000)
							nextConversationScreen = conversation:getScreen("finished")
							creature:removeScreenPlayState(4, "worldevent_bosskill")
						else
							nextConversationScreen = conversation:getScreen("nokill")
						end
					end
				elseif (optionLink == "select_panthera") then
					ret = merchantHelper:checkInventoryRoom(conversingPlayer,4)
					if (ret == false) then
						nextConversationScreen = conversation:getScreen("no_room")
					else
						if creature:hasScreenPlayState(16, "worldevent_bosskill") then
							merchantHelper:giveItem(conversingPlayer, "worldboss_panthera")
							merchantHelper:giveItem(conversingPlayer, "bh_armor_rare")
							merchantHelper:giveItem(conversingPlayer, "old_dungeon_bonus_dwb")
							merchantHelper:giveCredits(conversingPlayer, 10000)
							nextConversationScreen = conversation:getScreen("finished")
							creature:removeScreenPlayState(16, "worldevent_bosskill")
						else
							nextConversationScreen = conversation:getScreen("nokill")
						end
					end
				elseif (optionLink == "select_buff") then
					if creature:hasScreenPlayState(8, "worldevent_bosskill") then
						ret = screenplayHelper:buyPlayerHABuff(conversingPlayer, 4000, 7200, 0)
						ret = screenplayHelper:buyPlayerMBuff(conversingPlayer, 1500, 7200, 0)
						nextConversationScreen = conversation:getScreen("finished")
						creature:removeScreenPlayState(8, "worldevent_bosskill")
					else
						nextConversationScreen = conversation:getScreen("nokill")
					end
				elseif (optionLink == "select_morag") then
					ret = merchantHelper:checkInventoryRoom(conversingPlayer,4)
					if (ret == false) then
						nextConversationScreen = conversation:getScreen("no_room")
					else
						if creature:hasScreenPlayState(32, "worldevent_bosskill") then
							merchantHelper:giveItem(conversingPlayer, "worldboss_morag")
							merchantHelper:giveCredits(conversingPlayer, 15000)
							nextConversationScreen = conversation:getScreen("finished")
							creature:removeScreenPlayState(32, "worldevent_bosskill")
						else
							nextConversationScreen = conversation:getScreen("nokill")
						end						
					end	
				elseif (optionLink == "select_dragon") then
					ret = merchantHelper:checkInventoryRoom(conversingPlayer,2)
					if (ret == false) then
						nextConversationScreen = conversation:getScreen("no_room")
					else
						if creature:hasScreenPlayState(64, "worldevent_bosskill") then
							merchantHelper:giveItem(conversingPlayer, "worldboss_dragon")
							nextConversationScreen = conversation:getScreen("finished")
							creature:removeScreenPlayState(64, "worldevent_bosskill")
						else
							nextConversationScreen = conversation:getScreen("nokill")
						end						
					end
				elseif (optionLink == "select_squil") then
					ret = merchantHelper:checkInventoryRoom(conversingPlayer,3)
					if (ret == false) then
						nextConversationScreen = conversation:getScreen("no_room")
					else
						if creature:hasScreenPlayState(128, "worldevent_bosskill") then
							merchantHelper:giveItem(conversingPlayer, "worldboss_squil")
							merchantHelper:giveItem(conversingPlayer, "jedihats_wearable")
							merchantHelper:giveItem(conversingPlayer, "old_dungeon_bonus_geo")
							merchantHelper:giveCredits(conversingPlayer, 15000)
							nextConversationScreen = conversation:getScreen("finished")
							creature:removeScreenPlayState(128, "worldevent_bosskill")
						else
							nextConversationScreen = conversation:getScreen("nokill")
						end						
					end	
				elseif (optionLink == "select_droidinvasion") then
					ret = merchantHelper:checkInventoryRoom(conversingPlayer,4)
					if (ret == false) then
						nextConversationScreen = conversation:getScreen("no_room")
					else
						if creature:hasScreenPlayState(256, "worldevent_bosskill") then
							merchantHelper:giveItem(conversingPlayer, "invasion_reward")
							merchantHelper:giveItem(conversingPlayer, "traveler_ring")
							merchantHelper:giveItem(conversingPlayer, "rev_skill_buffs")
							merchantHelper:giveItem(conversingPlayer, "czerka_outpost_kimo")
							merchantHelper:giveCredits(conversingPlayer, 25000)
							nextConversationScreen = conversation:getScreen("finished")
							creature:removeScreenPlayState(256, "worldevent_bosskill")
						else
							nextConversationScreen = conversation:getScreen("nokill")
						end						
					end	
				end						
			end 
		end
	end
	return nextConversationScreen
end

function merchant_worldevent_convo_handler:runScreenHandlers(conversationTemplate, conversingPlayer, conversingNPC, selectedOption, conversationScreen)
	return conversationScreen
end
