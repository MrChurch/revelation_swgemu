
-- Author: Matthias Muente (matthias.muente@gmx.de)
-- https://revelationonline.net 

village_outpost = ScreenPlay:new {
}
registerScreenPlay("village_outpost", true)

local ObjectManager = require("managers.object.object_manager")
local ScreenplayHelper = require("helper.screenplayHelper")

function village_outpost:start()
    if (isZoneEnabled("dathomir")) then
        self:spawnStructures()
        self:spawnMobile()
    end
end


function village_outpost:spawnStructures()
    
    local pCreature = spawnMobile("dathomir", "cll8_binary_load_lifter", 600, 5229.9, 78.5, -4151, 200, 0)
    ScreenplayHelper:spawnSceneObjectlineToDirection("dathomir", "object/static/structure/dantooine/dant_fence_8m.iff", 5342.7, -4143.0, "NW", 3, 8)
    ScreenplayHelper:spawnSceneObjectlineToDirection("dathomir", "object/static/structure/dantooine/dant_fence_8m.iff", 5327.0, -4129.7, "W", 3, 8)
    ScreenplayHelper:spawnSceneObjectlineToDirection("dathomir", "object/static/structure/dantooine/dant_fence_8m.iff", 5343.4, -4168.5, "N", 3, 8)

    spawnBuilding(pCreature,"object/building/player/city/bank_corellia.iff", 5270, -4056, 0)
    spawnBuilding(pCreature,"object/building/military/pirate_outpost.iff", 5245, -4088, 0)
    spawnBuilding(pCreature,"object/building/military/pirate_outpost.iff", 5265, -4088, 0)
    spawnBuilding(pCreature,"object/building/poi/scout_camp_s5.iff", 5316, -4040, 0)        
    spawnBuilding(pCreature,"object/building/poi/scout_camp_s5.iff", 5216, -4103, 0)
    spawnBuilding(pCreature,"object/building/poi/scout_camp_s4.iff", 5371, -4058, 0)
    spawnBuilding(pCreature,"object/building/poi/scout_camp_s4.iff", 5414, -4187, 0)
    spawnBuilding(pCreature,"object/building/general/landing_pad_s01.iff", 5365, -4084, 0, 72)
    spawnBuilding(pCreature,"object/building/poi/small_imperial_tie_bomber_base_v2.iff", 5217, -4165, 180)   
    spawnSceneObject("dathomir","object/static/structure/military/bunker_crate_style_01.iff", 5214.7, 78.5, -4165.0, 0, math.rad(90))   
    spawnSceneObject("dathomir","object/static/structure/military/bunker_crate_style_01.iff", 5214.7, 79.5, -4165.0, 0, math.rad(90))   

    spawnSceneObject("dathomir","object/static/vehicle/static_speeder_bike.iff", 5310, 9999, -4055, 0, math.rad(140))     
    spawnSceneObject("dathomir","object/static/vehicle/static_speeder_bike.iff", 5307, 9999, -4055, 0, math.rad(140))     
    spawnSceneObject("dathomir","object/static/vehicle/static_speeder_bike.iff", 5304, 9999, -4055, 0, math.rad(140))     
          
    spawnSceneObject("dathomir","object/static/vehicle/static_speeder_bike.iff", 5256, 9999, -4100, 0, math.rad(140))     
    spawnSceneObject("dathomir","object/static/vehicle/static_speeder_bike.iff", 5253, 9999, -4100, 0, math.rad(140))     
    spawnSceneObject("dathomir","object/static/vehicle/static_speeder_bike.iff", 5250, 9999, -4100, 0, math.rad(140))   


    spawnSceneObject("dathomir","object/static/structure/general/streetlamp_medium_blue_style_01_on.iff", 5220.0, 9999 , -4165.0, 0, math.rad(180))
    spawnSceneObject("dathomir","object/static/structure/general/streetlamp_medium_blue_style_01_on.iff", 5298.0, 9999 , -4114.0, 0, math.rad(180))
    spawnSceneObject("dathomir","object/static/structure/general/streetlamp_medium_blue_style_01_on.iff", 5254.0, 9999 , -4078.0, 0, math.rad(180))
    spawnSceneObject("dathomir","object/static/structure/general/streetlamp_medium_blue_style_01_on.iff", 5229.0, 9999 , -4078.0, 0, math.rad(180))
    spawnSceneObject("dathomir","object/static/structure/general/streetlamp_medium_blue_style_01_on.iff", 5282.0, 9999 , -4052.0, 0, math.rad(180))
    spawnSceneObject("dathomir","object/static/structure/general/streetlamp_medium_blue_style_01_on.iff", 5370.0, 9999 , -4114.0, 0, math.rad(180))
    spawnSceneObject("dathomir","object/static/structure/general/streetlamp_medium_blue_style_01_on.iff", 5360.0, 9999 , -4180.0, 0, math.rad(180))
    spawnSceneObject("dathomir","object/static/structure/general/streetlamp_medium_blue_style_01_on.iff", 5310.0, 9999 , -4220.0, 0, math.rad(180))
    spawnSceneObject("dathomir","object/static/structure/general/streetlamp_medium_blue_style_01_on.iff", 5256.7, 9999 , -4225.5, 0, math.rad(180))
    spawnSceneObject("dathomir","object/static/structure/general/streetlamp_medium_blue_style_01_on.iff", 5277.7, 9999 , -4150.5, 0, math.rad(180))
    spawnSceneObject("dathomir","object/static/structure/general/streetlamp_medium_blue_style_01_on.iff", 5290.0, 9999 , -4198.5, 0, math.rad(180))
    spawnSceneObject("dathomir","object/static/structure/general/streetlamp_medium_blue_style_01_on.iff", 5210.0, 9999 , -4128.5, 0, math.rad(180))

    spawnSceneObject("dathomir","object/static/structure/general/poi_all_impl_corral_32x32_s01.iff", 5210.0, 77.8, -4070.0, 0, math.rad(90))
    spawnSceneObject("dathomir","object/static/structure/general/streetlamp_medium_blue_style_01_on.iff", 5206.0, 9999 , -4070.0, 0, math.rad(180))
    spawnSceneObject("dathomir","object/tangible/camp/camp_tent_s6.iff", 5222.0, 9999 , -4047.0, 0, math.rad(180))

    spawnSceneObject("dathomir","object/tangible/camp/camp_tent_s4.iff", 5255.5, 9999 , -4024.0, 0, math.rad(180))
    spawnSceneObject("dathomir","object/tangible/camp/camp_tent_s4.iff", 5255.5, 9999 , -4032.0, 0, math.rad(180))
    spawnSceneObject("dathomir","object/tangible/camp/camp_tent_s4.iff", 5255.5, 9999 , -4040.0, 0, math.rad(180))
    spawnSceneObject("dathomir","object/tangible/camp/camp_tent_s4.iff", 5255.5, 9999 , -4048.0, 0, math.rad(180))
    spawnSceneObject("dathomir","object/tangible/camp/camp_tent_s4.iff", 5255.5, 9999 , -4056.0, 0, math.rad(180))

    spawnSceneObject("dathomir","object/tangible/camp/camp_tent_s4.iff", 5248.5, 9999 , -4032.0, 0, math.rad(0))
    spawnSceneObject("dathomir","object/tangible/camp/camp_tent_s4.iff", 5248.5, 9999 , -4040.0, 0, math.rad(0))
    spawnSceneObject("dathomir","object/tangible/camp/camp_tent_s4.iff", 5248.5, 9999 , -4048.0, 0, math.rad(0))
    spawnSceneObject("dathomir","object/tangible/camp/camp_tent_s4.iff", 5248.5, 9999 , -4056.0, 0, math.rad(0))

    spawnSceneObject("dathomir","object/static/structure/general/streetlamp_medium_blue_style_01_on.iff", 5240.0, 9999 , -4036.0, 0, math.rad(180))
    spawnSceneObject("dathomir","object/static/structure/general/streetlamp_medium_blue_style_01_on.iff", 5240.0, 9999 , -4051.0, 0, math.rad(180))

    spawnSceneObject("dathomir","object/tangible/camp/camp_tent_s4.iff", 5233.5, 9999 , -4032.0, 0, math.rad(180))
    spawnSceneObject("dathomir","object/tangible/camp/camp_tent_s4.iff", 5233.5, 9999 , -4040.0, 0, math.rad(180))
    spawnSceneObject("dathomir","object/tangible/camp/camp_tent_s4.iff", 5233.5, 9999 , -4048.0, 0, math.rad(180))
    spawnSceneObject("dathomir","object/tangible/camp/camp_tent_s4.iff", 5233.5, 9999 , -4056.0, 0, math.rad(180))

    spawnSceneObject("dathomir","object/static/structure/general/streetlamp_medium_blue_style_01_on.iff", 5263.0, 9999 , -4033.0, 0, math.rad(180))
    spawnSceneObject("dathomir","object/static/structure/general/streetlamp_medium_blue_style_01_on.iff", 5363.0, 9999 , -4047.0, 0, math.rad(180))

    spawnSceneObject("dathomir","object/tangible/camp/camp_tent_s4.iff", 5270.5, 9999 , -4030.0, 0, math.rad(0))
    spawnSceneObject("dathomir","object/tangible/camp/camp_tent_s4.iff", 5270.5, 9999 , -4022.0, 0, math.rad(0))

    spawnSceneObject("dathomir","object/tangible/camp/camp_tent_s4.iff", 5211.5, 9999 , -4077.0, 0, math.rad(90))
    spawnSceneObject("dathomir","object/tangible/camp/camp_tent_s4.iff", 5210.5, 9999 , -4063.0, 0, math.rad(180))

    spawnSceneObject("dathomir","object/building/military/military_outpost_guard_tower_1.iff", 5285.5, 9999, -4242.0, 0, math.rad(180))
    spawnSceneObject("dathomir","object/static/structure/corellia/corl_power_bubble_node.iff", 5290.0, 9999, -4232.0, 0, math.rad(180))
    spawnSceneObject("dathomir","object/static/structure/corellia/corl_power_bubble_node.iff", 5224.0, 9999, -4033.0, 0, math.rad(180))
    spawnSceneObject("dathomir","object/static/structure/corellia/corl_banner_govt_angled_s01.iff", 5285.0, 83.5, -4247.5, 0, math.rad(180))
    spawnSceneObject("dathomir","object/static/structure/general/streetlamp_medium_blue_style_01_on.iff", 5280.5, 9999 , -4243.0, 0, math.rad(180))

    spawnSceneObject("dathomir","object/static/structure/corellia/corl_banner_govt_tall_s01.iff", 5370.0, 9999, -4027.0, 0, math.rad(225))
    spawnSceneObject("dathomir","object/static/structure/corellia/corl_banner_govt_tall_s01.iff", 5353.5, 9999, -4013.0, 0, math.rad(225))

    spawnSceneObject("dathomir","object/static/structure/general/streetlamp_medium_blue_style_01_on.iff", 5373.2, 9999 , -4030.0, 0, math.rad(180))
    spawnSceneObject("dathomir","object/static/structure/general/streetlamp_medium_blue_style_01_on.iff", 5351.0, 9999 , -4011.0, 0, math.rad(180))

    spawnSceneObject("dathomir","object/building/military/military_outpost_guard_tower_1.iff", 5349.5, 9999, -4016.5, 0, math.rad(135))
    spawnSceneObject("dathomir","object/building/military/military_outpost_guard_tower_1.iff", 5367.0, 9999, -4031.6, 0, math.rad(225))

    spawnSceneObject("dathomir","object/static/installation/mockup_power_generator_wind_style_1.iff", 5421.0, 9999 , -4160.0, 0, 0, 0, 0, 0)
    spawnSceneObject("dathomir","object/static/structure/corellia/corl_power_bubble_node.iff", 5421.0, 9999 , -4165.0, 0, 0, 0, 0, 0)
    spawnSceneObject("dathomir","object/static/installation/mockup_power_generator_wind_style_1.iff", 5421.0, 9999 , -4170.0, 0, 0, 0, 0, 0)

    spawnSceneObject("dathomir","object/static/installation/mockup_power_generator_wind_style_1.iff", 5320.0, 9999 , -4127.0, 0, 0, 0, 0, 0)
    spawnSceneObject("dathomir","object/static/structure/corellia/corl_power_bubble_node.iff", 5325.0, 9999 , -4127.0, 0, 0, 0, 0, 0)
    spawnSceneObject("dathomir","object/static/installation/mockup_power_generator_wind_style_1.iff", 5330.0, 9999 , -4127.0, 0, 0, 0, 0, 0)

    ScreenplayHelper:spawnSceneObjectlineToDirection("dathomir", "object/static/structure/corellia/corl_imprv_wall_4x16_s03.iff", 5315.0, -4014.5, "E", 2, 16)

    spawnSceneObject("dathomir","object/static/structure/corellia/corl_imprv_wall_4x16_s03.iff", 5262.0, 9999 , -4241.3, 0, math.rad(180))
    spawnSceneObject("dathomir","object/static/structure/military/military_column_strong_imperial_style_01.iff", 5271.0, 9999 , -4241.3, 0, math.rad(180))
    
    -- pirate scouts
    spawnBuilding(pCreature,"object/building/poi/scout_camp_s1.iff", 5351.9, -3864.9, 0)
end

function village_outpost:spawnMobile()
end

   
