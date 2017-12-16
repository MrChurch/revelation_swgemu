-- Author M.Muente matthias.muente@gmx.de

alumn_mine_lok = ScreenPlay:new {
}

registerScreenPlay("alumn_mine_lok", true)
local ObjectManager = require("managers.object.object_manager")
local ScreenplayHelper = require("helper.screenplayHelper")

function alumn_mine_lok:start()
    if (isZoneEnabled("lok")) then
        self:spawnStructures()
    end
end

function alumn_mine_lok:spawnStructures()
local y_off = 5
local walliff = "object/static/structure/military/military_wall_med_imperial_16_style_01.iff"
    ScreenplayHelper:spawnSceneObjectlineToDirection("lok", walliff, -1710.5, -5886.0 + y_off, "S",6, 16)
    ScreenplayHelper:spawnSceneObjectlineToDirection("lok", walliff, -1710.5, -5886.0 + y_off, "E",7, 16)
    ScreenplayHelper:spawnSceneObjectlineToDirection("lok", walliff, -1598.3, -5886.0 + y_off, "S",6, 16)
    ScreenplayHelper:spawnSceneObjectlineToDirection("lok", walliff, -1710.5, -5981.5 + y_off, "E",2, 16)
    ScreenplayHelper:spawnSceneObjectlineToDirection("lok", walliff, -1671, -5981.5 + y_off, "E",1, 16)
    ScreenplayHelper:spawnSceneObjectlineToDirection("lok", walliff, -1598.3, -5981.5 + y_off, "W",2, 16)
    spawnSceneObject("lok", "object/static/structure/corellia/corl_power_bubble_node.iff", -1698.0, 9999, -5972.5 + y_off, 0, math.rad(90))
    spawnSceneObject("lok", "object/static/structure/tatooine/wall_gate_tatooine_style_01.iff", -1675.0, 9999, -5981.5 + y_off, 0, math.rad(90))
    spawnSceneObject("lok", "object/static/structure/military/military_column_med_imperial_style_01.iff", -1631.5, 9999, -5981.5 + y_off, 0, math.rad(90))
    
    spawnSceneObject("lok", "object/tangible/furniture/city/streetlamp_large_green_02.iff", -1677.8, 9999, -5983.3 + y_off, 0, math.rad(180))
    spawnSceneObject("lok", "object/tangible/furniture/city/streetlamp_large_green_02.iff", -1686.8, 9999, -5964 + y_off, 0, math.rad(180))
    spawnSceneObject("lok", "object/tangible/furniture/city/streetlamp_large_green_02.iff", -1686.8, 9999, -5940 + y_off , 0, math.rad(180))
    spawnSceneObject("lok", "object/tangible/furniture/city/streetlamp_large_green_02.iff", -1667.7, 9999, -5922 + y_off, 0, math.rad(180))
    spawnSceneObject("lok", "object/tangible/furniture/city/streetlamp_large_green_02.iff", -1620.4, 9999, -5922 + y_off, 0, math.rad(180))  
    spawnSceneObject("lok", "object/tangible/furniture/city/streetlamp_large_green_02.iff", -1636, 9999, -5937.8 + y_off, 0, math.rad(180))
    
    spawnSceneObject("lok", "object/tangible/furniture/city/streetlamp_large_green_02.iff", -1677.8, 9999, -5983.3 + y_off, 0, math.rad(180))
    spawnSceneObject("lok", "object/tangible/furniture/city/streetlamp_large_green_02.iff", -1677.8, 9999, -6013.3 + y_off, 0, math.rad(180))
    spawnSceneObject("lok", "object/tangible/furniture/city/streetlamp_large_green_02.iff", -1677.8, 9999, -6043.3 + y_off, 0, math.rad(180))
    spawnSceneObject("lok", "object/tangible/furniture/city/streetlamp_large_green_02.iff", -1677.8, 9999, -6073.3 + y_off, 0, math.rad(180))
    spawnSceneObject("lok", "object/tangible/furniture/city/streetlamp_large_green_02.iff", -1677.8, 9999, -6103.3 + y_off, 0, math.rad(180))
    spawnSceneObject("lok", "object/tangible/furniture/city/streetlamp_large_green_02.iff", -1677.8, 9999, -6133.3 + y_off, 0, math.rad(180))
end
