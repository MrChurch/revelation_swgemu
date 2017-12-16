-- Author: Matthias Muente (matthias.muente@gmx.de)
-- https://revelationonline.net 

freelancer_shuttle = ScreenPlay:new {
}
registerScreenPlay("freelancer_shuttle", true)


function freelancer_shuttle:start()
    if (isZoneEnabled("tatooine")) then
        self:spawnBuilding()
        self:spawnMobiles()
    end
end

function freelancer_shuttle:spawnBuilding()
    local pCreature = spawnMobile("tatooine", "cll8_binary_load_lifter", 600, -1385, 26.6, 5273, 250, 0)   
    spawnBuilding(pCreature,"object/building/general/landing_pad_s01.iff", -1378, -3485, 270)
end
    