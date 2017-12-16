-- Author: Matthias Muente (matthias.muente@gmx.de)
-- https://revelationonline.net

gcw_bestine_impspawn = ScreenPlay:new {
     scriptName = "gcw_bestine_impspawn",
}
registerScreenPlay("gcw_bestine_impspawn", true)

local ObjectManager = require("managers.object.object_manager")
local ScreenplayHelper = require("helper.screenplayHelper")
local PatrolHelper = require("helper.patrolHelper")
local GCWSpawnHelper = require("helper.gcwSpawnHelper")

function gcw_bestine_impspawn:start()
    if (isZoneEnabled("tatooine")) then
        self:spawnBuilding()
        self:spawnGuards()
    end
end

function gcw_bestine_impspawn:spawnBuilding()
    local pCreature = spawnMobile("tatooine", "cll8_binary_load_lifter", 0, -580, 9999, -2872, 250, 0)
    local pBuilding = spawnBuilding(pCreature,"object/building/military/outpost_cloning_facility.iff", -569, -2908, 90)
    spawnBuilding(pCreature,"object/building/military/military_outpost_guard_tower_1.iff", -543, -2904, 180)
    spawnBuilding(pCreature,"object/building/military/outpost_shed_s02.iff", -554, -2930, 0)
end

function gcw_bestine_impspawn:spawnGuards()
    ScreenplayHelper:spawnMobileAndIdle("tatooine", "rev_spawnguard_at_st", 60, -542, 9999, -2870, 0, 0)
    ScreenplayHelper:spawnMobileAndIdle("tatooine", "rev_spawnguard_at_st", 60, -571, 9999, -2950, 0, 0)
    ScreenplayHelper:spawnMobileAndIdle("tatooine", "rev_spawnguard_at_st", 60, -508, 9999, -2926, 0, 0)
    ScreenplayHelper:spawnMobileAndIdle("tatooine", "rev_spawnguard_at_st", 60, -543, 9999, -2895, 0, 0)
    spawnMobile("tatooine", "imperial_recruiter", 60, -545, 9999, -2908, 0, 0)
    spawnMobile("tatooine", "buff_npc_gcw", 60, -558, 9999, -2914, 0, 0)
end

