
-- Author: Matthias Muente (matthias.muente@gmx.de)
-- https://revelationonline.net 

village_outpost_mobiles = ScreenPlay:new {
}
registerScreenPlay("village_outpost_mobiles", true)

local ObjectManager = require("managers.object.object_manager")
local ScreenplayHelper = require("helper.screenplayHelper")
local PatrolHelper = require("helper.patrolHelper")

function village_outpost_mobiles:start()
    if (isZoneEnabled("dathomir")) then
        self:spawnMobile()
    end
end

function village_outpost_mobiles:spawnMobile()
    
    -- TaskMaster in Shuttlecamp for the village
    spawnMobile("dathomir", "czerka_outpost_officer_kenny", 0, 5095, 80.1, -3820.9, 0, 0)
    
    -- pirates
    spawnMobile("dathomir", "czerka_outpost_pirate_privateer", 600, 5349, 80.1, -3862.8, 90, 0)
    spawnMobile("dathomir", "czerka_outpost_pirate_privateer", 600, 5355, 80.1, -3865, 280, 0)
    
    -- Northgate
    spawnMobile("dathomir", "czerka_outpost_guard", 300, 5363, 78.5, -4027, 0, 0)
    spawnMobile("dathomir", "czerka_outpost_guard", 300, 5353.8, 78.5, -4015, 35, 0)
    spawnMobile("dathomir", "czerka_outpost_guard", 300, 5350.2, 78.5, -4023, 55, 0)

    --southgate
    spawnMobile("dathomir", "czerka_outpost_guard", 300, 5286.8, 78.5, -4237, 270, 0)
    spawnMobile("dathomir", "czerka_outpost_guard", 300, 5273.8, 78.5, -4240, 0, 0)
    spawnMobile("dathomir", "czerka_outpost_guard", 300, 5258.9, 78.5, -4223, 110, 0)
    spawnMobile("dathomir", "czerka_outpost_guard", 500, 5290.9, 78.5, -4200, 260, 0)
    spawnMobile("dathomir", "czerka_outpost_guard", 500, 5287.7, 78.5, -4227, 190, 0)

    -- bunker
    spawnMobile("dathomir", "czerka_outpost_guard", 300, 5248.8, 78.5, -4079, 0, 0)
    spawnMobile("dathomir", "czerka_outpost_guard", 300, 5268.8, 78.5, -4079, 0, 0)

    --bank
    spawnMobile("dathomir", "czerka_outpost_guard", 600, 5270.8, 78.5, -4059, 0, 0)

    --starport
    spawnMobile("dathomir", "czerka_outpost_guard", 600, 5347.4, 78.5, -4100, 210, 0)
    spawnMobile("dathomir", "czerka_outpost_guard", 600, 5344.1, 78.5, -4105, 45, 0)

    --tents
    spawnMobile("dathomir", "czerka_outpost_guard", 600, 5259.8, 78.5, -4040, 180, 0)
    spawnMobile("dathomir", "czerka_outpost_guard", 600, 5317.1, 78.5, -4022, 45, 0)
    spawnMobile("dathomir", "czerka_outpost_guard", 600, 5363.1, 78.5, -4063, 270, 0)
    spawnMobile("dathomir", "czerka_outpost_guard", 600, 5366.1, 78.5, -4049, 290, 0)
    spawnMobile("dathomir", "czerka_outpost_guard", 600, 5315.1, 78.5, -4041, 40, 0)
    spawnMobile("dathomir", "czerka_outpost_guard", 200, 5206.1, 78.5, -4122, 40, 0)
    spawnMobile("dathomir", "czerka_outpost_guard", 200, 5180.1, 78.5, -4091, 220, 0)

    spawnMobile("dathomir", "czerka_outpost_guard", 600, 5409.1, 78.5, -4185, 180, 0)
    spawnMobile("dathomir", "czerka_outpost_guard", 600, 5410.1, 78.5, -4187, 10, 0)
    spawnMobile("dathomir", "czerka_outpost_guard", 600, 5413.1, 78.5, -4186, 270, 0)
    spawnMobile("dathomir", "czerka_outpost_lieutenant", 600, 5412.6, 78.5, -4183.9, 200, 0)

    spawnMobile("dathomir", "czerka_outpost_technician", 600, 5281.8, 78.5, -4088.3, 90, 0)
    spawnMobile("dathomir", "czerka_outpost_technician", 600, 5249.1, 78.5, -4164.3, 20, 0)
    spawnMobile("dathomir", "czerka_outpost_technician", 600, 5251.2, 78.5, -4160.3, 200, 0)
    spawnMobile("dathomir", "czerka_outpost_scientist", 600, 5321.7, 78.5, -4042, 90, 0)
    spawnMobile("dathomir", "czerka_outpost_scientist", 600, 5324.7, 78.5, -4036, 270, 0)

    spawnMobile("dathomir", "czerka_outpost_lieutenant", 1200, 5210.7, 78.5, -4091, 190, 0)
    spawnMobile("dathomir", "czerka_outpost_captain", 1200, 5210.1, 78.5, -4094, 15, 0)
    spawnMobile("dathomir", "czerka_outpost_guard", 600, 5219.7, 78.5, -4095, 170, 0)

    -- bomber
    spawnMobile("dathomir", "czerka_outpost_technician", 600, 5225.2, 78.5, -4156.3, 270, 0)
    spawnMobile("dathomir", "czerka_outpost_technician", 600, 5210.8, 78.5, -4177.3, 110, 0)
    spawnMobile("dathomir", "eg6_power_droid", 600, 5224.8, 78.5, -4163.3, 10, 0)
    
    --way
    spawnMobile("dathomir", "czerka_outpost_guard", 650, 5357.9, 78.5, -4179, 320, 0)
    spawnMobile("dathomir", "czerka_outpost_guard", 500, 5344.5, 78.5, -4147, 110, 0)
    spawnMobile("dathomir", "czerka_outpost_guard", 500, 5247.0, 78.5, -4161, 90, 0)
    spawnMobile("dathomir", "czerka_outpost_guard", 550, 5290.0, 78.5, -4203, 0, 0)
    spawnMobile("dathomir", "czerka_outpost_guard", 600, 5346.5, 78.5, -4145, 0, 0)

    --idle
    ScreenplayHelper:spawnMobileAndIdle("dathomir", "czerka_outpost_guard", 600, 5253.8, 78.5, -4131, 0, 0)
    ScreenplayHelper:spawnMobileAndIdle("dathomir", "czerka_outpost_guard", 600, 5272.5, 78.5, -4211, 0, 0)
    ScreenplayHelper:spawnMobileAndIdle("dathomir", "czerka_outpost_guard", 600, 5274.5, 78.5, -4284, 0, 0)
    ScreenplayHelper:spawnMobileAndIdle("dathomir", "czerka_outpost_guard", 600, 5377.5, 78.5, -4148, 0, 0)
    ScreenplayHelper:spawnMobileAndIdle("dathomir", "czerka_outpost_slave_cf", 600, 5379.5, 78.5, -4145, 0, 0)
    ScreenplayHelper:spawnMobileAndIdle("dathomir", "czerka_outpost_slave_cf", 600, 5310.5, 78.5, -4043, 0, 0)
    ScreenplayHelper:spawnMobileAndIdle("dathomir", "czerka_outpost_guard", 600, 5393.5, 78.5, -3982, 0, 0)
    ScreenplayHelper:spawnMobileAndIdle("dathomir", "czerka_outpost_guard", 600, 5213.5, 78.5, -3945, 0, 0)
    
    --bikes
    spawnMobile("dathomir", "czerka_outpost_guard", 400, 5305.8, 78.5, -4053, 270, 0)
    spawnMobile("dathomir", "czerka_outpost_technician", 600, 5249.3, 78.5, -4101, 70, 0)
    --prison
    PatrolHelper:spawnSquadwithRespawn("village_outpost_mobiles_prison", 10, 5, 5233, 78.5, -4062.5, 180, 1.5, 1.5, "dathomir", "czerka_outpost_guard", 360)
    spawnMobile("dathomir", "czerka_outpost_guard", 120, 5222.8, 78.5, -4073, 90, 0)
    spawnMobile("dathomir", "czerka_outpost_guard", 120, 5222.8, 78.5, -4067, 90, 0)
    spawnMobile("dathomir", "czerka_outpost_lieutenant", 120, 5235.7, 78.5, -4066, 0, 0)
    spawnMobile("dathomir", "czerka_outpost_scientist", 600, 5254.2, 78.5, -4079, 180, 0)
    spawnMobile("dathomir", "czerka_outpost_scientist", 600, 5206.3, 78.5, -4067, 250, 0)
    spawnMobile("dathomir", "czerka_outpost_scientist", 600, 5218.7, 78.5, -4088, 0, 0)
    spawnMobile("dathomir", "czerka_outpost_quharek", 600, 5204.4, 78.5, -4076.2, 90, 0)
    spawnMobile("dathomir", "czerka_outpost_whip", 600, 5204.2, 78.5, -4073, 180, 0)
    spawnMobile("dathomir", "czerka_outpost_captain_sarguillo", 600, 5207.8, 78.5, -4072, 210, 0)
    spawnMobile("dathomir", "czerka_outpost_sivarra_mechaux", 600, 5204.1, 78.5, -4065.5, 180, 0)
    spawnMobile("dathomir", "czerka_outpost_paemos", 600, 5215.4, 78.5, -4066, 190, 0)
    spawnMobile("dathomir", "czerka_outpost_noldan", 600, 5215.8, 78.5, -4071, 190, 0)
    spawnMobile("dathomir", "czerka_outpost_rohak_village_elder", 600, 5216.3, 78.5, -4074.6, 0, 0)
    
    --villager
    spawnMobile("dathomir", "czerka_outpost_slave_cf", 600, 5170.8, 78.5, -4135, 90, 0)
    spawnMobile("dathomir", "czerka_outpost_slave_cf", 600, 5213.8, 78.5, -4134, 0, 0)
    spawnMobile("dathomir", "czerka_outpost_slave_cf", 600, 5210.8, 78.5, -4137, 90, 0)
    spawnMobile("dathomir", "czerka_outpost_slave_cf", 600, 5195.8, 78.5, -4142, 0, 0)
    spawnMobile("dathomir", "czerka_outpost_slave_cf", 600, 5196.8, 78.5, -4137, 180, 0)
    spawnMobile("dathomir", "czerka_outpost_slave_cf", 600, 5218.8, 78.5, -4106, 180, 0)
    spawnMobile("dathomir", "czerka_outpost_slave_cf", 600, 5300.8, 78.5, -4126, 0, 0)
    spawnMobile("dathomir", "czerka_outpost_slave_cf", 600, 5294.8, 78.5, -4136, 180, 0)
    spawnMobile("dathomir", "czerka_outpost_slave_cf", 600, 5302.8, 78.5, -4173, 180, 0)
    spawnMobile("dathomir", "czerka_outpost_slave_cf", 600, 5320.8, 78.5, -4138, 50, 0)  
    spawnMobile("dathomir", "czerka_outpost_slave_cf", 600, 5392.8, 78.5, -4121, 50, 0)  
    spawnMobile("dathomir", "czerka_outpost_slave_cf", 600, 5398.8, 78.5, -4155, 150, 0)  
    spawnMobile("dathomir", "czerka_outpost_slave_cf", 600, 5377.4, 78.5, -4194, 210, 0)  
    spawnMobile("dathomir", "czerka_outpost_slave_cf", 600, 5370.8, 78.5, -4182, 50, 0)  
 end

   
