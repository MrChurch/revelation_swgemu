-- Author: Matthias Muente (matthias.muente@gmx.de)
-- https://revelationonline.net

czerka_research_lok_mining = ScreenPlay:new {
}
registerScreenPlay("czerka_research_lok_mining", true)

local ObjectManager = require("managers.object.object_manager")
local ScreenplayHelper = require("helper.screenplayHelper")
local PatrolHelper = require("helper.patrolHelper")

function czerka_research_lok_mining:start()
    if (isZoneEnabled("lok")) then
        self:spawnBuilding()
        self:spawnMobiles()
    end
end

function czerka_research_lok_mining:spawnBuilding()
    spawnMobile("lok", "czerka_outpost_lift_worker", 60, -1724.2, 12.0, -6198.3, 290, 0)

    local pCreature = spawnMobile("lok", "cll8_binary_load_lifter", 60, -1638, 12.1, -6211, 290, 0)

    ObjectManager.withCreatureObject(pCreature, function(mobile)
        writeData("czerka_research_lok_mining:AnchorNPC", mobile:getObjectID())
    end)

    local pBuilding = spawnBuilding(pCreature,"object/building/general/bunker_allum_mine.iff", -1710, -6210, 0, 8)
    local sceneCellObject = LuaSceneObject(pBuilding)
    local building = LuaBuildingObject(pBuilding)
    spawnSceneObject("lok","object/static/structure/tatooine/wall_ruined_tatooine_large_style_01.iff", -1704.5, 11.8, -6206.0, 0, math.rad(270))
    spawnMobile("lok", "freelancer_transports", 60, -1647, 12.1, -6215, 290, 0)
    spawnSceneObject("lok","object/tangible/symbols/icon_transporter.iff", -1647, 14.1, -6215, 0, math.rad(290))

    sceneCellObject:_setObject(building:getCell(1))
    writeData("czerka_research_lok_mining:cell1", sceneCellObject:getObjectID())

    spawnBuilding(pCreature,"object/building/poi/scout_camp_s4.iff", -1623, -6250, 0)
    spawnBuilding(pCreature,"object/building/poi/scout_camp_s4.iff", -1600, -6226, 0)
    spawnBuilding(pCreature,"object/building/poi/scout_camp_s3.iff", -1625, -6224, 90)

    spawnSceneObject("lok","object/static/structure/general/allum_mine_car_s01.iff", -1703, 12.3, -6221.8, 0, math.rad(0))
    spawnSceneObject("lok","object/static/structure/general/allum_mine_car_s01.iff", -1703, 14.5, -6212.8, 0, math.rad(0))

    spawnSceneObject("lok","object/static/structure/general/allum_mine_car_s01.iff", -1724.7, 12.3, -6204, 0, math.rad(270))
    spawnSceneObject("lok","object/static/structure/general/allum_mine_car_s01.iff", -1717.7, 13.3, -6204, 0, math.rad(270))
    spawnSceneObject("lok","object/static/structure/general/allum_mine_device_s01.iff", -1702, 9999, -6230, 0, math.rad(0))
    spawnSceneObject("lok","object/static/structure/general/allum_mine_bucket_s01.iff", -1642, 9999, -6208, 0, math.rad(160))
    spawnSceneObject("lok","object/static/structure/general/allum_mine_bucket_s01.iff", -1652, 9999, -6218, 0, math.rad(0))
    spawnSceneObject("lok","object/static/structure/general/allum_mine_bucket_s01.iff", -1652, 9999, -6214, 0, math.rad(0))
    spawnSceneObject("lok","object/static/structure/general/allum_mine_bucket_s01.iff", -1652, 9999, -6210, 0, math.rad(0))
    spawnSceneObject("lok","object/static/structure/general/allum_mine_bucket_s01.iff", -1656, 9999, -6214, 0, math.rad(0))
    spawnSceneObject("lok","object/static/structure/general/allum_mine_bucket_s01.iff", -1690, 9999, -6232, 0, math.rad(0))
    spawnSceneObject("lok","object/static/structure/general/allum_mine_bucket_s01.iff", -1692, 9999, -6227, 0, math.rad(0))
    spawnSceneObject("lok","object/tangible/event_perk/sandcrawler.iff", -1738, 9999, -6120, 0, math.rad(180))

    spawnSceneObject("lok","object/tangible/camp/camp_tent_s5.iff", -1608, 9999 , -6250.0, 0, math.rad(270))
    spawnSceneObject("lok","object/tangible/camp/camp_tent_s5.iff", -1601, 9999 , -6242.0, 0, math.rad(90))
end


function czerka_research_lok_mining:spawnMobiles()
    spawnMobile("lok", "czerka_outpost_miner", 900, -1599, 12.1, -6231, 180, 0)
    spawnMobile("lok", "czerka_outpost_miner", 900, -1620, 11.9, -6250, 240, 0)
    spawnMobile("lok", "czerka_outpost_miner", 900, -1624, 11.9, -6250, 90, 0)
    ScreenplayHelper:spawnMobileAndIdle("lok", "czerka_outpost_miner", 600, -1656.6, 12.1, -6232, 290, 0)
    ScreenplayHelper:spawnMobileAndIdle("lok", "czerka_outpost_miner", 600, -1678, 12.1, -6165, 290, 0)
    spawnMobile("lok", "czerka_outpost_miner", 900, -1608.7, 12.0, -6229.5, 290, 0)
    spawnMobile("lok", "czerka_outpost_miner", 900, -1631.4, 12.1, -6253.4, 240, 0)
    spawnMobile("lok", "czerka_outpost_miner", 900, -1623.8, 12.1, -6226, 0, 0)
    PatrolHelper:spawnSquadwithRespawn("czerka_research_lok_mining_tf", 10, 2, -1737, 11.6, -6200, 180, 1.5, 1.5, "lok", "czerka_outpost_guard", 600)
    PatrolHelper:spawnSquadwithRespawn("czerka_research_lok_mining_tf1", 6, 2, -1725, 12, -6117, 180, 1.5, 1.5, "lok", "czerka_outpost_guard", 600)
    spawnMobile("lok", "czerka_outpost_captain", 1200, -1736.6, 12.1, -6204, 0, 0)
    ScreenplayHelper:spawnMobileAndIdle("lok", "czerka_outpost_guard", 900, -1559.5, 10, -6265.8, 290, 0)
    ScreenplayHelper:spawnMobileAndIdle("lok", "czerka_outpost_guard", 900, -1579, 10, -6138, 290, 0)
end




