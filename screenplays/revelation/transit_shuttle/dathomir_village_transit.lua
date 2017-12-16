dathomir_village_transit = ScreenPlay:new {
	numberOfActs = 1,
	questString = "dathomir_village_transit",
	states = {}, 
}

registerScreenPlay("dathomir_village_transit", true)

local ObjectManager = require("managers.object.object_manager")
local screenplayHelper = require("helper.screenplayHelper")

function dathomir_village_transit:start()
	if (isZoneEnabled("dathomir")) and (isZoneEnabled("tatooine")) then
		self:spawnStructures()
		self:spawnMobile()
	end
end

function dathomir_village_transit:spawnStructures()
	spawnSceneObject("dathomir","object/tangible/camp/camp_pavilion_s1.iff", 5093.5, 9999 , -3821.5, 0, 0, 0, 0, 0)
	spawnSceneObject("dathomir","object/static/structure/general/streetlamp_medium_blue_style_01_on.iff", 5087.0, 9999 , -3812.0, 0, 0, 0, 0, 0)
	spawnSceneObject("dathomir","object/static/installation/mockup_power_generator_wind_style_1.iff", 5104.0, 9999 , -3809.0, 0, 0, 0, 0, 0)
	spawnSceneObject("dathomir","object/tangible/camp/camp_tent_s4.iff", 5087.5, 9999 , -3821.5, 0, math.rad(180))
	spawnSceneObject("dathomir","object/tangible/camp/camp_tent_s4.iff", 5093.5, 9999 , -3828.1, 0, math.rad(90))
	spawnSceneObject("dathomir","object/tangible/camp/campfire_logs_fresh.iff", 5093.5, 9999 , -3821.5, 0, 0, 0, 0, 0)		
	spawnSceneObject("dathomir","object/tangible/camp/camp_chair_s2.iff", 5095, 9999 , -3822.5, 0, math.rad(330))	
	spawnSceneObject("dathomir","object/tangible/camp/camp_chair_s2.iff", 5093.4, 9999 , -3819.5, 0, math.rad(190))
	spawnSceneObject("dathomir","object/resource_container/inorganic_minerals.iff", 5083.5, 9999 , -3813.5, 0, 0, 0, 0, 0)		
	spawnSceneObject("dathomir","object/resource_container/inorganic_minerals.iff", 5083.5, 9999 , -3812.0, 0, 0, 0, 0, 0)	
	spawnSceneObject("dathomir","object/resource_container/inorganic_minerals.iff", 5082, 9999 , -3813.5, 0, 0, 0, 0, 0)		
	spawnSceneObject("dathomir","object/resource_container/inorganic_minerals.iff", 5082, 9999 , -3812.0, 0, 0, 0, 0, 0)	

	screenplayHelper:spawnSceneObjectlineToDirection("dathomir", "object/static/structure/dantooine/dant_fence_8m.iff", 5104.0, -3811.0, "S", 3, 8)
	screenplayHelper:spawnSceneObjectlineToDirection("dathomir", "object/static/structure/dantooine/dant_fence_8m.iff", 5104.0, -3834.0, "W", 3, 8)
	screenplayHelper:spawnSceneObjectlineToDirection("dathomir", "object/static/structure/dantooine/dant_fence_8m.iff", 5080.0, -3834.0, "N", 3, 8)
end

function dathomir_village_transit:spawnMobile()
	spawnMobile("dathomir", "dathomir_village_smuggler", 300, 5082.5, 79.6, -3808, 90, 0)
	spawnMobile("dathomir", "cll8_binary_load_lifter", 600, 5082.5, 79.6, -3802, 250, 0)

	spawnMobile("tatooine", "dathomir_village_smuggler", 300, 1163.0, 7, 3150, 270, 0)		
	spawnMobile("tatooine", "cll8_binary_load_lifter", 600, 1162, 7, 3167, 250, 0)
end



------------------------------------------- convohandler --------------------------------------------
dathomir_village_transit_convo_handler = Object:new {

	tstring = "dathomir_village_transit_convo_handler"
}

function dathomir_village_transit_convo_handler:getNextConversationScreen(conversationTemplate, conversingPlayer, selectedOption)

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
			local player = LuaSceneObject(conversingPlayer)
			if ( player ~= nil ) then
				if (screenID == "travel_dathomir") then
					if (optionLink == "pay") then
						if (dathomir_village_transit_convo_handler:removeCash(conversingPlayer,20000)) then
							player:switchZone("dathomir", 5083.5, 79.6, -3807, 0)
						else
							nextConversationScreen = conversation:getScreen("insufficient_funds")
							creature:sendSystemMessage("You dont have enough credits to take the tour!")
						end
					end 
				elseif (screenID == "travel_tatooine") then
					if (optionLink == "pay") then
						if (dathomir_village_transit_convo_handler:removeCash(conversingPlayer,20000)) then
							player:switchZone("tatooine", 1162.0, 7, 3152, 0)
						else
							nextConversationScreen = conversation:getScreen("insufficient_funds")
							creature:sendSystemMessage("You dont have enough credits to take the tour!")
						end
					end 
				end
			end
		end
	end
	return nextConversationScreen
end

function dathomir_village_transit_convo_handler:removeCash(conversingPlayer, money)
	local creature = LuaCreatureObject(conversingPlayer)
	local ret = false 
	if ( creature ~= nil ) then
		local credits = creature:getCashCredits()
		if (credits >= money) then
			creature:subtractCashCredits(money)
			ret = true
		end
	end
	return ret
end

function dathomir_village_transit_convo_handler:runScreenHandlers(conversationTemplate, conversingPlayer, conversingNPC, selectedOption, conversationScreen)
	return conversationScreen
end

