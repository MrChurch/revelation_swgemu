-- Author M.Muente matthias.muente@gmx.de

coronet_amb = ScreenPlay:new {
}

registerScreenPlay("coronet_amb", true)
local ObjectManager = require("managers.object.object_manager")
local ScreenplayHelper = require("helper.screenplayHelper")

function coronet_amb:start()
    if (isZoneEnabled("corellia")) then
        self:spawnStructures()
    end
end

function coronet_amb:spawnStructures()
    spawnSceneObject("corellia", "object/mobile/vehicle/pod_racer_one.iff", -142.4, 9999, -4757.9, 0)
    --spawnSceneObject("corellia", "object/mobile/vehicle/landspeeder_av21.iff", -164.6, 9999, -4682.3, 0)
    local pCreature = spawnMobile("corellia", "cll8_binary_load_lifter", 600, -1385, 26.6, 5273, 250, 0)   
    spawnBuilding(pCreature,"object/mobile/vehicle/landspeeder_av21.iff", -164, -4682, 270)
end
