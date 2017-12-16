-- Author: Matthias Muente (matthias.muente@gmx.de)

merchant_express_basic = ScreenPlay:new {
    numberOfActs = 1,
    questString = "merchant_express_basic",
    states = {}, 
    timerTicks = 18,
    questBasicCount = 30,
    questBasic = {
        {text="40 CDEF Rifles      (350 Cr./item)", item="rifle_cdef", count=40, credits=350},  
        {text="35 Plain Robe       (450 Cr./item)", item="dress_s10", count=35, credits=450},  
        {text="35 Shorts           (450 Cr./item)", item="pants_s17", count=35, credits=450},  
        {text="35 CAF		           (550 Cr./item)", item="caf", count=35, credits=550},  
        {text="35 Jawa Beer        (550 Cr./item)", item="jawa_beer", count=35, credits=550},  
        {text="38 K18 Ration       (500 Cr./item)", item="rations", count=38, credits=500},  
        {text="40 Config.Dice      (350 Cr./item)", item="eqp_configurable_group_dice_single", count=40, credits=350},  
        {text="18 Bone A. Helmet   (1700 Cr./item)", item="armor_bone_s01_helmet", count=18, credits=1700},  
        {text="18 Bone A. Chest    (1700 Cr./item)", item="armor_bone_s01_chest_plate", count=18, credits=1700}, 
        {text="18 Bone A. Leggins  (1700 Cr./item)", item="armor_bone_s01_leggings", count=18, credits=1700},
        {text="13 Micro Flora Farm (2000 Cr./item)", item="flora_harvester_deed_name", count=13, credits=2000},  
        {text="26 Leather Gloves   (500 Cr./item)", item="gloves_s12", count=26, credits=500},  
        {text="25 Ruby Bliel       (650 Cr./item)", item="ruby_bliel", count=25, credits=650},  
        {text="3 Tatooine Style 1 Houses (11000 Cr./item)", item="tatooine_house_small_deed", count=3, credits=11000},  
        {text="14 Starship Crafting Stat.(2700 Cr./item)", item="space_station_name", count=14, credits=2700},  
        {text="3 Swoopbike               (12000 Cr./item)", item="speederbike_swoop", count=3, credits=12000},  
        {text="4 X34 Landspeeder         (8000 Cr./item)", item="landspeeder_x34", count=4, credits=8000},  
        {text="14 Mabari Helmet          (2700 Cr./item)", item="armor_zam_wesell_helmet", count=14, credits=2700}, 
        {text="14 Chitin Boots           (2700 Cr./item)", item="armor_chitin_s01_boots", count=14, credits=2700}, 
        {text="8 Deed of Power Droid     (5000 Cr./item)", item="power_basic_deed", count=8, credits=5000}, 
        {text="15 Deed of Mouse Droid    (2300 Cr./item)", item="mse_basic_deed", count=15, credits=2300}, 
        {text="21 DLT20Rifle             (1700 Cr./item)", item="rifle_dlt20", count=21, credits=1700}, 
        {text="16 FWG5 Pistol            (1600 Cr./item)", item="pistol_fwg5", count=16, credits=2000}, 
        {text="25 Wooly Jacket           (1200 Cr./item)", item="jacket_s14", count=25, credits=1200}, 
        {text="23 Uniform Boots          (1200 Cr./item)", item="boots_s14", count=23, credits=1200}, 
        {text="22 Durindfire             (1550 Cr./item)", item="durindfire", count=22, credits=1550}, 
        {text="22 Air Cake               (1550 Cr./item)", item="air_cake", count=22, credits=1550}, 
        {text="36 Elect.Control Unit.    (500 Cr./item)", item="electronic_control_unit", count=36, credits=500},
        {text="28 Blinded State Medpack A(1150 Cr./item)", item="medic_blinded_a", count=28, credits=1150},
        {text="32 Action Woundpack B     (700 Cr./item)", item="medpack_wound_action_b", count=32, credits=700},
    },
}

registerScreenPlay("merchant_express_basic", true)
local ObjectManager = require("managers.object.object_manager")
local PatrolHelper = require("helper.patrolHelper")

function merchant_express_basic:start()
    if (isZoneEnabled("corellia") and isZoneEnabled("naboo")) then
        self:spawnMobile("corellia", -574, 28, -4656)
        self:spawnStructures("corellia", -574, 28, -4656)
        self:spawnMobile("naboo", -5524, 6, 4002)
        self:spawnStructures("naboo", -5524, 6, 4002)
        self:spawnMobile("tatooine", 3584, 5, -4677)
        self:spawnStructures("tatooine", 3584, 5, -4677)        
        writeData("merchant_express_basic:Timer",0)
        spawnMobile("naboo", "merchant_express_basic", 600, -5524, 6.0, 4002, 180, 0)
        spawnSceneObject("naboo","object/tangible/symbols/icon_trader.iff", -5524, 8, 4002, 0, math.rad(180))
        spawnMobile("tatooine", "merchant_express_basic", 600, 3584, 5.0, -4677, 180, 0)
        spawnSceneObject("tatooine","object/tangible/symbols/icon_trader.iff", 3584, 7, -4677, 0, math.rad(180))
        local anchor =  spawnMobile("corellia", "merchant_express_basic", 600, -574, 28.0, -4656, 180, 0)
        spawnSceneObject("corellia","object/tangible/symbols/icon_trader.iff", -574, 30, -4656, 0, math.rad(180))
        self:GetQuests()  
        self:createTik(anchor)
    end
end
function merchant_express_basic:spawnStructures(planet, x, z, y)
    spawnSceneObject(planet,"object/tangible/camp/camp_pavilion_s1.iff", x - 0.8, z , y + 6, 0, 0, 0, 0, 0)
    spawnSceneObject(planet,"object/static/vehicle/e3/landspeeder.iff", x + 6, z , y + 14, 0, math.rad(45))
    spawnSceneObject(planet,"object/tangible/furniture/cheap/chest_s01.iff", x - 1.4, 9999 , y + 7.5, 0, math.rad(150))
    spawnSceneObject(planet,"object/tangible/furniture/cheap/chest_s01.iff", x + 0.6, 9999 , y + 8.5, 0, math.rad(180))
    spawnSceneObject(planet,"object/tangible/furniture/cheap/chest_s01.iff", x - 2.4, 9999 , y + 5.5, 0, math.rad(90))
    spawnSceneObject(planet,"object/tangible/furniture/cheap/chest_s01.iff", x - 2.4, z + 0.8 , y + 5.5, 0, math.rad(95))
    spawnSceneObject(planet,"object/tangible/furniture/cheap/chest_s01.iff", x - 3.4, 9999 , y + 8.5, 0, math.rad(95))
    spawnSceneObject(planet,"object/tangible/furniture/cheap/chest_s01.iff", x - 3.4, z + 0.8 , y + 8.5, 0, math.rad(115))
    spawnSceneObject(planet,"object/tangible/furniture/cheap/chest_s01.iff", x + 3.3, 9999 , y + 6.5, 0, math.rad(85))
    spawnSceneObject(planet,"object/tangible/furniture/cheap/chest_s01.iff", x + 3.3, z + 0.8 , y + 6.5, 0, math.rad(15))
    spawnSceneObject(planet,"object/static/structure/general/streetlamp_medium_blue_style_01_on.iff", x + 2.6, 9999 , y + 8.5, 0, math.rad(35))
end

function merchant_express_basic:spawnMobile(planet, x, z, y)
    spawnMobile(planet, "protocol_droid_3po", 600, x + 0.2, z, y + 6, 15, 0)
    PatrolHelper:spawnSquad("Express_Droid", 8, 4, x - 3 , z, y - 6, 0, 1.8, 1.8, planet, "ig_88")
end

function merchant_express_basic:GetQuests()
    local randomValue = math.random(1,self.questBasicCount)
    local item = self.questBasic[randomValue]
    writeStringData("merchant_express_basic:OptionText",item['text'])
    writeStringData("merchant_express_basic:ItemName",item['item'])
    writeData("merchant_express_basic:ItemCount",item['count'])
    writeData("merchant_express_basic:ItemValue",item['credits'])
    writeData("merchant_express_basic:TaskID",math.random(10000))
    local msg = " \\#CCFF66[Express Courier:] \\#FFFFFF buying:" .. item['text']
    sendBroadCastMessage(msg, "all");
end


function merchant_express_basic:createTik(anchor)
    local timer = readData("merchant_express_basic:Timer")
    if (timer == self.timerTicks) then
        self:GetQuests()  
        writeData("merchant_express_basic:Timer",0)
    else
        writeData("merchant_express_basic:Timer",timer + 1)
    end
    createEvent(5 * 60 * 1000, "merchant_express_basic", "createTik", anchor)	
end

------------------------------------------- convohandler --------------------------------------------
merchant_express_basic_convo_handler = Object:new {
    tstring = "merchant_express_basic_convo_handler",
    timerTicks = 20,
}

local MerchantHelper = require("helper.merchantHelper")
local ObjectManager = require("managers.object.object_manager")
local ConversationHelper = require("helper.conversationHelper")

function merchant_express_basic_convo_handler:getNextConversationScreen(pConversationTemplate, pPlayer, selectedOption, pConversingNpc)
    local itemName = readStringData("merchant_express_basic:ItemName")	
    local itemCount = readData("merchant_express_basic:ItemCount")	
    local itemValue = readData("merchant_express_basic:ItemValue")
    local taskID = readData("merchant_express_basic:TaskID")
    local retScreen = ConversationHelper:CheckItemSellAndSetScreenplayState(pConversationTemplate, pPlayer, itemName, itemCount, itemValue, "merchant_express_basic:TaskBasic", taskID, "joblist")
    if (retScreen ~= nil) then
        return retScreen
    end
    return ConversationHelper:getNextScreenStandartConversation(pConversationTemplate, pPlayer, selectedOption, pConversingNpc)
end

function merchant_express_basic_convo_handler:runScreenHandlers(conversationTemplate, conversingPlayer, conversingNPC, selectedOption, conversationScreen)
    local timeValue = (self.timerTicks - readData("merchant_express_basic:Timer")) * 5
    local detailText = "Here are the actual Jobs. My orders are changing in under " .. timeValue .. " minutes"	
    local optionText = readStringData("merchant_express_basic:OptionText")	
    local itemName = readStringData("merchant_express_basic:ItemName")	
    local screen = LuaConversationScreen(conversationScreen)
    local screenID = screen:getScreenID()
    local actualScreen = ""

    ObjectManager.withCreatureObject(conversingPlayer, function(player)	
        if (screenID == "joblist") then	
            conversationScreen = ConversationHelper:SetCustomDialog(conversingPlayer, conversationScreen, "joblist", detailText)	
            if (player:getScreenPlayState("merchant_express_basic:TaskBasic") ~= readData("merchant_express_basic:TaskID"))	then
                conversationScreen = ConversationHelper:RemoveAllOptions(conversationScreen)	
                conversationScreen = ConversationHelper:SetCustomOptionWithScreenCheck(conversingPlayer, conversationScreen, "joblist", detailText, itemName, optionText)		
            end
        end
    end)
    return conversationScreen
end
