------------------------------------------- convohandler --------------------------------------------
defect_e5_convo_handler = Object:new {

	tstring = "defect_e5_convo_handler"
}
local screenplayHelper = require("helper.screenplayHelper")
local merchantHelper = require("helper.merchantHelper")

function defect_e5_convo_handler:getNextConversationScreen(conversationTemplate, conversingPlayer, selectedOption)
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
			if (screenID == "select_investigate") then
			local ret = false 
				if (optionLink == "battery") then
					ret = merchantHelper:deleteItem(conversingPlayer, "droid_battery", 1) 
					if(ret== true) then
					   creature:sendSystemMessage("The Droid wake up, the ventilation system is now online for 15 minutes")
					   creature:sendSystemMessage("The Droid wake up, the ventilation system is now online for 15 minutes")
					   writeData("czerka_research_yavin_ventillation" , 1)
					   local pAnchor = getCreatureObject(readData("czerka_research_yavin_ventillation_anchor"))
					   if pAnchor ~= nil then
              	if readData("czerka_research_yavin_batteryinserted") ~= 1 then
							      createEvent(900000, "defect_e5_convo_handler", "deactivateVentillationsystem", pAnchor)
        						writeData("czerka_research_yavin_batteryinserted" , 1)
                end
        	   end
					end
				end
				if (ret == false) then
					nextConversationScreen = conversation:getScreen("insufficient_items")
				end
			end
		end
	end
	return nextConversationScreen
end

function defect_e5_convo_handler:runScreenHandlers(conversationTemplate, conversingPlayer, conversingNPC, selectedOption, conversationScreen)
	return conversationScreen
end

function defect_e5_convo_handler:deactivateVentillationsystem(pMobile, pPlayer)
  writeData("czerka_research_yavin_ventillation" , 0)
  writeData("czerka_research_yavin_batteryinserted" , 0)
end

