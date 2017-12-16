------------------------------------------- convohandler --------------------------------------------
czerka_outpost_elder_convo_handler = Object:new {
    tstring = "czerka_outpost_elder_convo_handler",
}

local ObjectManager = require("managers.object.object_manager")
local ConversationHelper = require("helper.conversationHelper")

function czerka_outpost_elder_convo_handler:getNextConversationScreen(pConversationTemplate, pPlayer, selectedOption, pConversingNpc)
    local retScreen = czerka_outpost_elder_convo_handler:logic(pConversationTemplate, pPlayer, selectedOption, "select_jedi")
    if (retScreen ~= nil) then
        return retScreen
    end

    return ConversationHelper:getNextScreenStandartConversation(pConversationTemplate, pPlayer, selectedOption, pConversingNpc)
end

function czerka_outpost_elder_convo_handler:runScreenHandlers(conversationTemplate, conversingPlayer, conversingNPC, selectedOption, conversationScreen)
    return conversationScreen
end

function czerka_outpost_elder_convo_handler:logic(pConversationTemplate, pPlayer, selectedOption, checkScreen)
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
            if creature:hasSkill("gcw_skill_common_01_aug_health_novice") or 
            creature:hasSkill("gcw_skill_common_02_aug_action_novice") or 
            creature:hasSkill("gcw_skill_common_03_aug_mind_novice") or 
            creature:hasSkill("gcw_skill_common_04_purge_novice") or 
            creature:hasSkill("gcw_skill_common_05_bionics_novice") or 
            creature:hasSkill("gcw_skill_common_06_heal_master") or 
            creature:hasSkill("gcw_skill_common_07_defense_novice") or 
            creature:hasSkill("gcw_skill_common_08_medic_novice") or 
            creature:hasSkill("gcw_skill_common_09_resurrection_novice") or 
            creature:hasSkill("gcw_skill_common_10_utility_novice") then
            
            	creature:sendSystemMessage("Sorry you are a GCW Veteran, its forbidden to speak with you")
            	return ConversationHelper:setScreen(pConversationTemplate, "no_permission")
            end
             if creature:hasScreenPlayState(1, "revelation_jedi_state") then
                  creature:sendSystemMessage("you have the good feeling about that")
                  if creature:hasScreenPlayState(1, "Czerka_Jedi_State") and
                       creature:hasScreenPlayState(2, "Czerka_Jedi_State") and
                       creature:hasScreenPlayState(4, "Czerka_Jedi_State") and
                       creature:hasScreenPlayState(8, "Czerka_Jedi_State") and
                       creature:hasScreenPlayState(16, "Czerka_Jedi_State") and
                       creature:hasScreenPlayState(32, "Czerka_Jedi_State") and
                       creature:hasScreenPlayState(1, "revelation_jedi_state") then
                       ObjectManager.withCreaturePlayerObject(pPlayer, function(playerObject)
                           awardSkill(pPlayer, "force_title_jedi_novice")
                           --playerObject:setJediState(1)
                           creature:setScreenPlayState(2, "revelation_jedi_state")
                       end)
                  else
                      return ConversationHelper:setScreen(pConversationTemplate, "no_permission")
                  end

                return ConversationHelper:setScreen(pConversationTemplate, "select_jedi")
            else
               return ConversationHelper:setScreen(pConversationTemplate, "no_permission")
            end
        end
    end
    return nil
end




