-- Author: Matthias Muente (matthias.muente@gmx.de)
-- https://revelationonline.net

eventlocations = ScreenPlay:new {
 
}
registerScreenPlay("eventlocations", true)

local ObjectManager = require("managers.object.object_manager")
local ScreenplayHelper = require("helper.screenplayHelper")
local CombatHelper = require("helper.combatHelper")

function eventlocations:start()
    local pCreature = spawnMobile("dathomir", "cll8_binary_load_lifter", 60, 5811, 9999, -3949, 290, 0)
    spawnBuilding(pCreature,"object/building/dathomir/night_sister_stronghold.iff", 5930, -3790, 86, 86)
end

