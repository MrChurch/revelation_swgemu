------------------------------------------- convohandler --------------------------------------------
czerka_outpost_lift_worker_convo_handler = Object:new {
    tstring = "czerka_outpost_lift_worker_convo_handler",
    timerTicks = 20,
}

local MerchantHelper = require("helper.merchantHelper")
local ObjectManager = require("managers.object.object_manager")
local ConversationHelper = require("helper.conversationHelper")

function czerka_outpost_lift_worker_convo_handler:getNextConversationScreen(pConversationTemplate, pPlayer, selectedOption, pConversingNpc)
    --local retScreen = ConversationHelper:CheckItemSellAndSetScreenplayState(pConversationTemplate, pPlayer, itemName, itemCount, itemValue, "merchant_express_basic:TaskBasic", taskID, "joblist")
    local retScreen = czerka_outpost_lift_worker_convo_handler:InitializeInstance(pConversationTemplate, pPlayer, selectedOption, "lift")
    if (retScreen ~= nil) then
        return retScreen
    end

    return ConversationHelper:getNextScreenStandartConversation(pConversationTemplate, pPlayer, selectedOption, pConversingNpc)
end

function czerka_outpost_lift_worker_convo_handler:runScreenHandlers(conversationTemplate, conversingPlayer, conversingNPC, selectedOption, conversationScreen)
    local detailText = "You can use the lift to:"
    local screen = LuaConversationScreen(conversationScreen)
    local screenID = screen:getScreenID()
    local actualScreen = ""
    local optionText = ""
    local optionLink = ""


    ObjectManager.withCreatureObject(conversingPlayer, function(player)
        if (screenID == "lift") then
            conversationScreen = ConversationHelper:SetCustomDialog(conversingPlayer, conversationScreen, "lift", detailText)
            conversationScreen = ConversationHelper:RemoveAllOptions(conversationScreen)
            optionText = self:setOptionText(1, "normal")
            optionLink = "1_normal"
            conversationScreen = ConversationHelper:SetCustomOptionWithScreenCheck(conversingPlayer, conversationScreen, "lift", detailText, optionLink, optionText)
            optionText = self:setOptionText(2, "normal")
            optionLink = "2_normal"
            conversationScreen = ConversationHelper:SetCustomOptionWithScreenCheck(conversingPlayer, conversationScreen, "lift", detailText, optionLink, optionText)
            optionText = self:setOptionText(3, "normal")
            optionLink = "3_normal"
            conversationScreen = ConversationHelper:SetCustomOptionWithScreenCheck(conversingPlayer, conversationScreen, "lift", detailText, optionLink, optionText)
            optionText = self:setOptionText(4, "hard")
            optionLink = "4_hard"
            conversationScreen = ConversationHelper:SetCustomOptionWithScreenCheck(conversingPlayer, conversationScreen, "lift", detailText, optionLink, optionText)
            optionText = self:setOptionText(5, "hard")
            optionLink = "5_hard"
            conversationScreen = ConversationHelper:SetCustomOptionWithScreenCheck(conversingPlayer, conversationScreen, "lift", detailText, optionLink, optionText)
            optionText = self:setOptionText(6, "easy")
            optionLink = "6_easy"
            conversationScreen = ConversationHelper:SetCustomOptionWithScreenCheck(conversingPlayer, conversationScreen, "lift", detailText, optionLink, optionText)
            optionText = self:setOptionText(7, "easy")
            optionLink = "7_easy"
            conversationScreen = ConversationHelper:SetCustomOptionWithScreenCheck(conversingPlayer, conversationScreen, "lift", detailText, optionLink, optionText)
        end
    end)
    return conversationScreen
end

function czerka_outpost_lift_worker_convo_handler:setOptionText(instanceID, mode)
    local optionText = ""
    local instanceTimestamp = readData("czerka_research_lok_mining_" .. instanceID .. ":InstanceStartTime")
    if instanceTimestamp == 0 then
        optionText = "Instance " .. instanceID .. " mode: " .. mode .. " : free"
    else
        optionText = "Instance " .. instanceID .. " mode: " .. mode .. " : left: " .. math.floor(120 - ((getTimestamp() - instanceTimestamp)/60)) .. " min"
    end
    return optionText
end

function czerka_outpost_lift_worker_convo_handler:InitializeInstance(pConversationTemplate, pPlayer, selectedOption, checkScreen)
    local creature = LuaCreatureObject(pPlayer)
    local convosession = creature:getConversationSession()
    local nextConversationScreen
    local lastConversationScreen = nil

    if (pConversationTemplate ~= nil ) then
        local conversation = LuaConversationTemplate(pConversationTemplate)
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
            if (screenID == checkScreen) then
                if (creature ~= nil) then
                    local player = LuaSceneObject(pPlayer)
                    if (optionLink == "1_normal") then
                        if (player ~= nil) then
                            player:switchZone("lok",0.5 , -8, -7.0, readData("czerka_research_lok_mining_" .. 1 .. ":cell1"))
                        end
                    elseif (optionLink == "2_normal") then
                        if (player ~= nil) then
                            player:switchZone("lok",0.5 , -8, -7.0, readData("czerka_research_lok_mining_" .. 2 .. ":cell1"))
                        end
                    elseif (optionLink == "3_normal") then
                        if (player ~= nil) then
                            player:switchZone("lok",0.5 , -8, -7.0, readData("czerka_research_lok_mining_" .. 3 .. ":cell1"))
                        end
                    elseif (optionLink == "4_hard") then
                        if (player ~= nil) then
                            player:switchZone("lok",0.5 , -8, -7.0, readData("czerka_research_lok_mining_" .. 4 .. ":cell1"))
                        end
                    elseif (optionLink == "5_hard") then
                        if (player ~= nil) then
                            player:switchZone("lok",0.5 , -8, -7.0, readData("czerka_research_lok_mining_" .. 5 .. ":cell1"))
                        end
                    elseif (optionLink == "6_easy") then
                        if (player ~= nil) then
                            player:switchZone("lok",0.5 , -8, -7.0, readData("czerka_research_lok_mining_" .. 6 .. ":cell1"))
                        end
                    elseif (optionLink == "7_easy") then
                        if (player ~= nil) then
                            player:switchZone("lok",0.5 , -8, -7.0, readData("czerka_research_lok_mining_" .. 7 .. ":cell1"))
                        end
                    end
                end
                return ConversationHelper:setScreen(pConversationTemplate, "deny_quest")
            end
        end
    end
    return nil
end

