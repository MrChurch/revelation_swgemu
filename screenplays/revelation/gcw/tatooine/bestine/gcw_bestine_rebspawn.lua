-- Author: Matthias Muente (matthias.muente@gmx.de)
-- https://revelationonline.net

gcw_bestine_rebspawn = ScreenPlay:new {
     scriptName = "gcw_bestine_rebspawn",
     x = -1070,
     y = -2826,  
}
registerScreenPlay("gcw_bestine_rebspawn", true)

local ObjectManager = require("managers.object.object_manager")
local ScreenplayHelper = require("helper.screenplayHelper")
local PatrolHelper = require("helper.patrolHelper")
local GCWSpawnHelper = require("helper.gcwSpawnHelper")

function gcw_bestine_rebspawn:start()
    if (isZoneEnabled("tatooine")) then
        self:spawnBuilding()
        self:spawnGuards()
    end
end

function gcw_bestine_rebspawn:spawnBuilding()
   
    local pCreature = spawnMobile("tatooine", "cll8_binary_load_lifter", 0, self.x, 9999, self.y, 250, 0)
    local pBuilding = spawnBuilding(pCreature,"object/building/military/outpost_cloning_facility.iff",self.x + 11, self.y -34, 90)
    spawnBuilding(pCreature,"object/building/military/military_outpost_guard_tower_1.iff", self.x + 37, self.y - 32, 180)
    spawnBuilding(pCreature,"object/building/military/outpost_shed_s02.iff", self.x + 16, self.y - 58, 90, 8.3)
end

function gcw_bestine_rebspawn:spawnGuards()
    ScreenplayHelper:spawnMobileAndIdle("tatooine", "rev_spawnguard_at_xt", 60, -1003, 9999, -2835, 0, 0)
    ScreenplayHelper:spawnMobileAndIdle("tatooine", "rev_spawnguard_at_xt", 60, -1056, 9999, -2824, 0, 0)
    ScreenplayHelper:spawnMobileAndIdle("tatooine", "rev_spawnguard_at_xt", 60, -1034, 9999, -2911, 0, 0)
    ScreenplayHelper:spawnMobileAndIdle("tatooine", "rev_spawnguard_at_xt", 60, -1033, 9999, -2865, 0, 0)
    spawnMobile("tatooine", "rebel_recruiter", 60, -1003, 9999, -2835, 0, 0)
    spawnMobile("tatooine", "buff_npc_gcw", 60, -1048, 9999, -2850, 0, 0)
end

