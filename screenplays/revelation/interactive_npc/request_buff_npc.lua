request_buff_npc = ScreenPlay:new {
	numberOfActs = 1,
	questString = "request_buff_npc",
	states = {}, 
}

registerScreenPlay("request_buff_npc", true)
local ObjectManager = require("managers.object.object_manager")

function request_buff_npc:start()
	if (isZoneEnabled("corellia")) and (isZoneEnabled("tatooine")) and (isZoneEnabled("dathomir")) and (isZoneEnabled("naboo")) then
		self:SetStartValues()
		self:spawnMobile()
	end
end

function request_buff_npc:SetStartValues()
    writeData("request_buff_npc:corellia", 0)
    writeData("request_buff_npc:naboo", 0)
    writeData("request_buff_npc:tatooine", 0)
    writeData("request_buff_npc:lok", 0)
end

function request_buff_npc:spawnMobile()
	spawnMobile("dathomir", "request_buff_npc", 600, 5278, 9999, -4053, 110, 0)
end


------------------------------------------- convohandler --------------------------------------------
request_buff_npc_convo_handler = Object:new {

	tstring = "request_buff_npc_convo_handler"
}
local screenplayHelper = require("helper.screenplayHelper")

function request_buff_npc_convo_handler:getNextConversationScreen(conversationTemplate, conversingPlayer, selectedOption)
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

			if (screenID == "select_med") then
			    local ret = 0
  				if (optionLink == "med_coro_1") then
  				    ret = self:spawnPersonal(conversingPlayer, "corellia", 3600, 75000, -136, -4711, "buff_npc_advanced")
  				    if (ret == 0) then
  				        self:sendMessage(conversingPlayer, "Czerka Medic (buffs) at Corellia Starport")
  				    end
                                elseif (optionLink == "med_coro_2") then
                                    ret = self:spawnPersonal(conversingPlayer, "corellia", 7200, 150000, -136, -4711, "buff_npc_advanced")
                                    if ret == 0 then
                                      self:sendMessage(conversingPlayer, "Czerka Medic (buffs) at Corellia Starport")
                                    end
                                elseif (optionLink == "med_theed_1") then
                                    ret = self:spawnPersonal(conversingPlayer, "naboo", 3600, 75000, -4842, 4161, "buff_npc_advanced")
                                    if ret == 0 then
                                      self:sendMessage(conversingPlayer, "Czerka Medic (buffs) at Theed Starport")
                                    end
                                elseif (optionLink == "med_theed_2") then
                                    ret = self:spawnPersonal(conversingPlayer, "naboo", 7200, 150000, -4842, 4161, "buff_npc_advanced")
                                    if ret == 0 then
                                      self:sendMessage(conversingPlayer, "Czerka Medic (buffs) at Theed Starport")
                                    end
                                elseif (optionLink == "med_mos_1") then
                                    ret = self:spawnPersonal(conversingPlayer, "tatooine", 3600, 75000, 3533, -4811, "buff_npc_advanced")
                                    if ret == 0 then
                                      self:sendMessage(conversingPlayer, "Czerka Medic (buffs) at Mos Eisley Starport")
                                    end
                                elseif (optionLink == "med_mos_2") then
                                    ret = self:spawnPersonal(conversingPlayer, "tatooine", 7200, 150000, 3533, -4811, "buff_npc_advanced") 
                                    if ret == 0 then
                                      self:sendMessage(conversingPlayer, "Czerka Medic (buffs) at Mos Eisley Starport")
                                    end
                                elseif (optionLink == "med_alumn_1") then
                                    ret = self:spawnPersonal(conversingPlayer, "lok", 3600, 150000, -1622, -6240, "buff_npc_advanced")
                                    if ret == 0 then
                                      self:sendMessage(conversingPlayer, "Czerka Medic (buffs) at Lok Alumn Mine")
                                    end
                                elseif (optionLink == "med_alumn_2") then
                                    ret = self:spawnPersonal(conversingPlayer, "lok", 7200, 300000, -1622, -6240, "buff_npc_advanced")
                                    if ret == 0 then
                                      self:sendMessage(conversingPlayer, "Czerka Medic (buffs) at Lok Alumn Mine")
                                    end
                                elseif (optionLink == "med_coro_3") then
                                    ret = self:spawnPersonal(conversingPlayer, "corellia", 3600, 1000000, -136, -4711, "free_buff_npc")
                                    if ret == 0 then
                                      self:sendMessage(conversingPlayer, "Czerka Field Medic (** FREE ** buffs) at Corellia Starport")
                                    end
  				end
  				if (ret == 1) then
					nextConversationScreen = conversation:getScreen("insufficient_funds")
  				end
  				if (ret ==  2) then
  					nextConversationScreen = conversation:getScreen("npc_blocked")
  				end
			end
		end
	end
	return nextConversationScreen
end

function request_buff_npc_convo_handler:runScreenHandlers(conversationTemplate, conversingPlayer, conversingNPC, selectedOption, conversationScreen)
	return conversationScreen
end

function request_buff_npc_convo_handler:setDespawnEvent(time, pCreature, planet)
    createEvent(time * 1000, "request_buff_npc_convo_handler", "despawn_" .. planet, pCreature)
    return 0
end

function request_buff_npc_convo_handler:despawnIcon(time, pIcon, planet)
    screenplayHelper:destroy(LuaSceneObject(pIcon):getObjectID(),true)
    return 0
end

function request_buff_npc_convo_handler:despawn_corellia(pSceneObject)
    if pSceneObject ~= nil then
        screenplayHelper:destroy(LuaSceneObject(pSceneObject):getObjectID(),true)
    end
    writeData("request_buff_npc:corellia", 0)
    return 0
end
function request_buff_npc_convo_handler:despawn_naboo(pSceneObject)
    if pSceneObject ~= nil then
        screenplayHelper:destroy(LuaSceneObject(pSceneObject):getObjectID(),true)
    end
    writeData("request_buff_npc:naboo", 0)
    return 0
end
function request_buff_npc_convo_handler:despawn_tatooine(pSceneObject)
    if pSceneObject ~= nil then
        screenplayHelper:destroy(LuaSceneObject(pSceneObject):getObjectID(),true)
    end
    writeData("request_buff_npc:tatooine", 0)
    return 0
end
function request_buff_npc_convo_handler:despawn_lok(pSceneObject)
    if pSceneObject ~= nil then
        screenplayHelper:destroy(LuaSceneObject(pSceneObject):getObjectID(),true)
    end
    writeData("request_buff_npc:lok", 0)
    return 0
end

function request_buff_npc_convo_handler:sendMessage(conversingPlayer, text)
  ObjectManager.withCreatureObject(conversingPlayer, function(player)
      local name = player:getFirstName()
      local type = " \\#FFBF00[Czerka News:]\\#FFFFFF "
      sendBroadCastMessage(type .. name .. " has hired medical personal : " .. text, "all");
  end)
  return 0
end

function request_buff_npc_convo_handler:spawnPersonal(conversingPlayer, planet, time, cash, x, y, npcTemplate)
    local ret = 0
    if readData("request_buff_npc:" .. planet) == 0 then
        local retVal = screenplayHelper:removeCash(conversingPlayer, cash)
        if retVal then
          local pMobile =  spawnMobile(planet, npcTemplate, 0, x, 9999, y, 0, 0)
          ObjectManager.withCreatureObject(pMobile, function(mobile)
              local z = mobile:getPositionZ()
              local pIcon = spawnSceneObject(planet,"object/tangible/symbols/icon_heal.iff", x, z + 2, y, 0, 0)
              self:setDespawnEvent(time, pIcon, planet)
		   end)
           writeData("request_buff_npc:" .. planet, 1)
           self:setDespawnEvent(time, pMobile, planet)
           
        else
           ret = 1 -- isufficant money
        end
    else
        ret = 2 -- blocked npc is on place
    end
    return ret
end