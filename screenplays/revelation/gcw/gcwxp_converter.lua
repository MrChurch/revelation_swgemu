gcwxp_converter = ScreenPlay:new {
	numberOfActs = 1,
	questString = "gcwxp_converter",
	states = {}, 
}

registerScreenPlay("gcwxp_converter", true)
local ObjectManager = require("managers.object.object_manager")

function gcwxp_converter:start()
	if (isZoneEnabled("corellia")) and (isZoneEnabled("tatooine")) and (isZoneEnabled("naboo")) then
		--self:spawnStructures()
		self:spawnMobile()
	end
end

function gcwxp_converter:spawnStructures()
end

function gcwxp_converter:spawnMobile()
end


------------------------------------------- convohandler --------------------------------------------
gcwxp_converter_convo_handler = Object:new {

	tstring = "gcwxp_converter_convo_handler"
}
local screenplayHelper = require("helper.screenplayHelper")

function gcwxp_converter_convo_handler:getNextConversationScreen(conversationTemplate, conversingPlayer, selectedOption)
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
			local pPlayer = creature:getPlayerObject()
			local playerObj = PlayerObject(pPlayer)
			local faction = "rebel"

			if (screenID == "convert") then
			if creature:isImperial() then
				faction = "imperial"
			end
			
			local ret = true 

				if creature:hasScreenPlayState(2, "revelation_jedi_state") then
					nextConversationScreen = conversation:getScreen("isjedi")
				else
					if (optionLink == "convert100") then
    					if not playerObj:isJedi() then
        					if playerObj:getFactionStanding(faction) < 20 + 300 then
        						ret = false
        						nextConversationScreen = conversation:getScreen("insufficient_faction")
        					end
        					if creature:getCashCredits() < 1000 then
        						ret = false
        						nextConversationScreen = conversation:getScreen("insufficient_funds")
        					end
        					if playerObj:getExperience("gcw_xp") < 100 then
        						ret = false
        						nextConversationScreen = conversation:getScreen("insufficient_xp")
        					end
        					
        					if ret == true then
        						creature:subtractCashCredits(1000)
        						creature:sendSystemMessage("you lost 1000 Credits")
        						playerObj:decreaseFactionStanding(faction, 300)
        						playerObj:addExperience("gcw_skill_xp",100)
        						playerObj:decreaseExperience("gcw_xp",100)
        					end
        				else
        					nextConversationScreen = conversation:getScreen("isjedi")
        				end
    				elseif (optionLink == "convert500") then
    					if not playerObj:isJedi() then
            					if playerObj:getFactionStanding(faction) < 20 + 1500 then
            						ret = false
            						nextConversationScreen = conversation:getScreen("insufficient_faction")
            					end
            					if creature:getCashCredits() < 5000 then
            						ret = false
            						nextConversationScreen = conversation:getScreen("insufficient_funds")
            					end
            					if playerObj:getExperience("gcw_xp") < 500 then
            						ret = false
            						nextConversationScreen = conversation:getScreen("insufficient_xp")
            					end
            					
            					if ret == true then
            						creature:subtractCashCredits(5000)
            						creature:sendSystemMessage("you lost 5000 Credits")
            						playerObj:decreaseFactionStanding(faction, 1500)
            						playerObj:addExperience("gcw_skill_xp",500)
            						playerObj:decreaseExperience("gcw_xp",500)
            					end
        				else
        					nextConversationScreen = conversation:getScreen("isjedi")
        				end            					
    				elseif (optionLink == "convert1000") then
    					if not playerObj:isJedi() then
        					if playerObj:getFactionStanding(faction) < 20 + 3000 then
        						ret = false
        						nextConversationScreen = conversation:getScreen("insufficient_faction")
        					end
        					if creature:getCashCredits() < 10000 then
        						ret = false
        						nextConversationScreen = conversation:getScreen("insufficient_funds")
        					end
        					if playerObj:getExperience("gcw_xp") < 1000 then
        						ret = false
        						nextConversationScreen = conversation:getScreen("insufficient_xp")
        					end
        					
        					if ret == true then
        						creature:subtractCashCredits(10000)
        						creature:sendSystemMessage("you lost 1000 Credits")
        						playerObj:decreaseFactionStanding(faction, 3000)
        						playerObj:addExperience("gcw_skill_xp",1000)
        						playerObj:decreaseExperience("gcw_xp",1000)
        					end
        				else
        					nextConversationScreen = conversation:getScreen("isjedi")
        				end        					
    				elseif (optionLink == "show_cap") then
    						creature:sendSystemMessage("You can store: " .. playerObj:getExperienceCap("gcw_skill_xp") .. " GCW Skill XP")
    				end
				end
			end
		end
	end
	return nextConversationScreen
end

function gcwxp_converter_convo_handler:runScreenHandlers(conversationTemplate, conversingPlayer, conversingNPC, selectedOption, conversationScreen)
	return conversationScreen
end

