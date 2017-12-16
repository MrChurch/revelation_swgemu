tatooine_the_lost_home = ScreenPlay:new {
	numberOfActs = 1,
	questString = "tatooine_the_lost_home",
	states = {}, 
}

registerScreenPlay("tatooine_the_lost_home", true)
local ObjectManager = require("managers.object.object_manager")

function tatooine_the_lost_home:start()
    if (isZoneEnabled("tatooine")) then
        self:spawnMobile()
    end
end

function tatooine_the_lost_home:spawnStructures()
end

function tatooine_the_lost_home:spawnMobile()
    spawnMobile("tatooine", "tatooine_the_lost_home", 600, -1355, 28.3, -3987, 180, 0)
end

------------------------------------------- convohandler --------------------------------------------
tatooine_the_lost_home_convo_handler = Object:new {
    tstring = "tatooine_the_lost_home_convo_handler"
}

local merchantHelper = require("helper.merchantHelper")
local ObjectManager = require("managers.object.object_manager")

function tatooine_the_lost_home_convo_handler:getInitialScreen(pPlayer, pNpc, pConversationTemplate)
    return ObjectManager.withCreatureObject(pPlayer, function(player)
        local convoTemplate = LuaConversationTemplate(pConversationTemplate)
        if (player:hasScreenPlayState(2, "tatooine_the_lost_home_quest")) then
            return convoTemplate:getScreen("quest_end")
        elseif (player:hasScreenPlayState(1, "tatooine_the_lost_home_quest")) then
            return convoTemplate:getScreen("give_house")
        else
            return convoTemplate:getScreen("first_screen")
        end
    end)
end

function tatooine_the_lost_home_convo_handler:getNextConversationScreen(pConversationTemplate, pPlayer, selectedOption, pConversingNpc)
    return ObjectManager.withCreatureObject(pPlayer, function(player)
        local pConversationSession = player:getConversationSession()
        local pLastConversationScreen = nil
        if (pConversationSession ~= nil) then
            local conversationSession = LuaConversationSession(pConversationSession)
            pLastConversationScreen = conversationSession:getLastConversationScreen()
        end
        local conversationTemplate = LuaConversationTemplate(pConversationTemplate)
        if (pLastConversationScreen ~= nil) then
            local lastConversationScreen = LuaConversationScreen(pLastConversationScreen)
            local optionLink = lastConversationScreen:getOptionLink(selectedOption)
            optionLink = self:logic(pConversationTemplate, pPlayer, optionLink, pLastConversationScreen)
             return conversationTemplate:getScreen(optionLink)
        end
        return self:getInitialScreen(pPlayer, pConversingNpc, pConversationTemplate)
    end)
end

function tatooine_the_lost_home_convo_handler:logic(conversationTemplate, conversingPlayer, optionLink, conversationScreen)
    local screen = LuaConversationScreen(conversationScreen)
    local screenID = screen:getScreenID()
    local conversation = LuaConversationTemplate(conversationTemplate)
    local retScreen = optionLink
            
    return ObjectManager.withCreatureObject(conversingPlayer, function(player)
        local ret = false
        if (screenID == "give_house") then
            if (optionLink == "tatooine_house_small_deed") then
                ret = merchantHelper:sellItem(conversingPlayer, "tatooine_house_small_deed", 1, 20000) 
                if (ret == false) then
                    retScreen = "insufficient_items"
                else
                    player:setScreenPlayState(2, "tatooine_the_lost_home_quest")
                    retScreen = "quest_end"
                end
            end
        elseif (screenID == "second_screen") then
            if (optionLink == "accept_quest") then
                player:setScreenPlayState(1, "tatooine_the_lost_home_quest")
            end
        end
        return retScreen
    end)
end

function tatooine_the_lost_home_convo_handler:runScreenHandlers(conversationTemplate, conversingPlayer, conversingNPC, selectedOption, conversationScreen)
    return conversationScreen
end
