
-- Author M.Muente matthias.muente@gmx.de

podrace_lok = ScreenPlay:new {
}

registerScreenPlay("podrace_lok", true)
local ObjectManager = require("managers.object.object_manager")
local ScreenplayHelper = require("helper.screenplayHelper")

function podrace_lok:start()
    if (isZoneEnabled("lok")) then
        self:spawnStructures()
    end
end

function podrace_lok:spawnStructures()
	spawnSceneObject("lok", "object/static/structure/tatooine/wall_archway_tatooine_wide_style_01.iff", -2000, 9999, -6050 , 0, math.rad(0))
	spawnSceneObject("lok", "object/static/structure/tatooine/wall_archway_tatooine_wide_style_01.iff", -2000, 9999, -6050 - 16 , 0, math.rad(0))
	spawnSceneObject("lok", "object/static/structure/tatooine/guild_statue_free_style_01.iff", -2000, 9999, -6050 -25 , 0, math.rad(90))
	spawnSceneObject("lok", "object/static/structure/tatooine/guild_statue_free_style_01.iff", -2000, 9999, -6050 + 10 , 0, math.rad(90))
	spawnSceneObject("lok", "object/static/particle/pt_light_blink_blue.iff", -2000, 9999, -6050, 0, 0)
	spawnSceneObject("lok", "object/static/particle/pt_miasma_of_fog_greenish.iff", -2000, 9999 , -6050, 0, 0)
	
	spawnSceneObject("lok", "object/static/structure/tatooine/wall_archway_tatooine_wide_style_01.iff", -2100, 9999, -6060 , 0, math.rad(0))
	spawnSceneObject("lok", "object/static/structure/tatooine/wall_archway_tatooine_wide_style_01.iff", -2100, 9999, -6060 - 16, 0, math.rad(0))
	spawnSceneObject("lok", "object/static/structure/tatooine/guild_statue_free_style_01.iff", -2100, 9999, -6060 -25, 0, math.rad(90))
	spawnSceneObject("lok", "object/static/structure/tatooine/guild_statue_free_style_01.iff", -2100, 9999, -6060 + 10 , 0, math.rad(90))	
	spawnSceneObject("lok", "object/static/particle/pt_light_blink_blue.iff", -2100, 9999, -6060, 0, 0)
	spawnSceneObject("lok", "object/static/particle/pt_miasma_of_fog_greenish.iff", -2100, 9999 , -6060, 0, 0)

	spawnSceneObject("lok", "object/static/structure/tatooine/wall_archway_tatooine_wide_style_01.iff", -2190, 9999, -6050 , 0, math.rad(0))
	spawnSceneObject("lok", "object/static/structure/tatooine/wall_archway_tatooine_wide_style_01.iff", -2190, 9999, -6050 - 16, 0, math.rad(0))
	spawnSceneObject("lok", "object/static/structure/tatooine/guild_statue_free_style_01.iff", -2190, 9999, -6050 -25, 0, math.rad(90))
	spawnSceneObject("lok", "object/static/structure/tatooine/guild_statue_free_style_01.iff", -2190, 9999, -6050 + 10 , 0, math.rad(90))
	spawnSceneObject("lok", "object/static/particle/pt_light_blink_blue.iff", -2190, 9999, -6050, 0, 0)
	spawnSceneObject("lok", "object/static/particle/pt_miasma_of_fog_greenish.iff", -2190, 9999 , -6050, 0, 0)
	
	spawnSceneObject("lok", "object/static/structure/tatooine/wall_archway_tatooine_wide_style_01.iff", -2380, 9999, -6000 , 0, math.rad(0))
	spawnSceneObject("lok", "object/static/structure/tatooine/guild_statue_free_style_01.iff", -2380, 9999, -6000 -10, 0, math.rad(90))
	spawnSceneObject("lok", "object/static/structure/tatooine/guild_statue_free_style_01.iff", -2380, 9999, -6000 + 10 , 0, math.rad(90))
	spawnSceneObject("lok", "object/static/particle/pt_light_blink_blue.iff", -2380, 9999, -6000, 0, 0)
	spawnSceneObject("lok", "object/static/particle/pt_miasma_of_fog_greenish.iff", -2380, 9999 , -6000, 0, 0)
	
	spawnSceneObject("lok", "object/static/structure/tatooine/streetsign_upright_style_01.iff", -2305, 9999, -6024 , 0, 0)
	spawnSceneObject("lok", "object/static/structure/tatooine/streetsign_upright_style_01.iff", -2250, 9999, -6000 , 0, 0)
	spawnSceneObject("lok", "object/static/structure/tatooine/streetsign_upright_style_01.iff", -2235, 9999, -6060 , 0, 0)
	spawnSceneObject("lok", "object/static/structure/tatooine/streetsign_upright_style_01.iff", -2430, 9999, -6005 , 0, 0)
	spawnSceneObject("lok", "object/static/structure/tatooine/streetsign_upright_style_01.iff", -2341, 9999, -5991 , 0, 0)
	spawnSceneObject("lok", "object/static/structure/tatooine/streetsign_upright_style_01.iff", -2441, 9999, -5964 , 0, 0)
	
	spawnSceneObject("lok", "object/static/structure/tatooine/wall_archway_tatooine_wide_style_01.iff", -2562, 9999, -5950 , 0, math.rad(0))
	spawnSceneObject("lok", "object/static/structure/tatooine/wall_archway_tatooine_wide_style_01.iff", -2562, 9999, -5950 - 16, 0, math.rad(0))
	spawnSceneObject("lok", "object/static/structure/tatooine/guild_statue_free_style_01.iff", -2562, 9999, -5950 -25, 0, math.rad(90))
	spawnSceneObject("lok", "object/static/structure/tatooine/guild_statue_free_style_01.iff", -2562, 9999, -5950 + 10 , 0, math.rad(90))
	spawnSceneObject("lok", "object/static/particle/pt_light_blink_blue.iff", -2562, 9999, -5950, 0, 0)
	spawnSceneObject("lok", "object/static/particle/pt_miasma_of_fog_greenish.iff", -2562, 9999 , -5950, 0, 0)

	spawnSceneObject("lok", "object/static/structure/tatooine/wall_archway_tatooine_wide_style_01.iff", -2700, 9999, -5925 , 0, math.rad(0))
	spawnSceneObject("lok", "object/static/structure/tatooine/wall_archway_tatooine_wide_style_01.iff", -2700, 9999, -5925 - 16, 0, math.rad(0))
	spawnSceneObject("lok", "object/static/structure/tatooine/guild_statue_free_style_01.iff", -2700, 9999, -5925 -25, 0, math.rad(90))
	spawnSceneObject("lok", "object/static/structure/tatooine/guild_statue_free_style_01.iff", -2700, 9999, -5925 + 10 , 0, math.rad(90))
	spawnSceneObject("lok", "object/static/particle/pt_light_blink_blue.iff", -2700, 9999, -5925, 0, 0)
	spawnSceneObject("lok", "object/static/particle/pt_miasma_of_fog_greenish.iff", -2700, 9999 , -5925, 0, 0)
	
	spawnSceneObject("lok", "object/static/structure/tatooine/wall_archway_tatooine_wide_style_01.iff", -2800, 9999, -5880  , 0, math.rad(35))
	spawnSceneObject("lok", "object/static/structure/tatooine/guild_statue_free_style_01.iff", -2800 - 4, 9999, -5880 -8, 0, math.rad(125))
	spawnSceneObject("lok", "object/static/structure/tatooine/guild_statue_free_style_01.iff", -2800 + 6, 9999, -5880 + 9 , 0, math.rad(125))
	spawnSceneObject("lok", "object/static/particle/pt_light_blink_blue.iff", -2800, 9999, -5880, 0, 0)
	spawnSceneObject("lok", "object/static/particle/pt_miasma_of_fog_greenish.iff", -2800, 9999 , -5880, 0, 0)
	
	spawnSceneObject("lok", "object/static/structure/tatooine/wall_archway_tatooine_wide_style_01.iff", -2900, 9999, -5904 , 0, math.rad(0))
	spawnSceneObject("lok", "object/static/structure/tatooine/guild_statue_free_style_01.iff", -2900, 9999, -5904 -10, 0, math.rad(0))
	spawnSceneObject("lok", "object/static/structure/tatooine/guild_statue_free_style_01.iff", -2900, 9999, -5904 + 10 , 0, math.rad(0))
	spawnSceneObject("lok", "object/static/particle/pt_light_blink_blue.iff", -2900, 9999, -5904, 0, 0)
	spawnSceneObject("lok", "object/static/particle/pt_miasma_of_fog_greenish.iff", -2900, 9999 , -5904, 0, 0)
	
	spawnSceneObject("lok", "object/static/structure/tatooine/wall_archway_tatooine_wide_style_01.iff", -3150, 9999, -5915 , 0, math.rad(0))
	spawnSceneObject("lok", "object/static/structure/tatooine/guild_statue_free_style_01.iff", -3150, 9999, -5915 -10, 0, math.rad(0))
	spawnSceneObject("lok", "object/static/structure/tatooine/guild_statue_free_style_01.iff", -3150, 9999, -5915 + 10 , 0, math.rad(0))
	spawnSceneObject("lok", "object/static/particle/pt_light_blink_blue.iff", -3150, 9999, -5915, 0, 0)
	spawnSceneObject("lok", "object/static/particle/pt_miasma_of_fog_greenish.iff", -3150, 9999 , -5915, 0, 0)	
	
	spawnSceneObject("lok", "object/static/structure/tatooine/wall_archway_tatooine_wide_style_01.iff", -3285, 9999, -5870 , 0, math.rad(0))
	spawnSceneObject("lok", "object/static/structure/tatooine/guild_statue_free_style_01.iff", -3285, 9999, -5870 -10, 0, math.rad(0))
	spawnSceneObject("lok", "object/static/structure/tatooine/guild_statue_free_style_01.iff", -3285, 9999, -5870 + 10 , 0, math.rad(0))
	spawnSceneObject("lok", "object/static/particle/pt_light_blink_blue.iff", -3285, 9999, -5870, 0, 0)
	spawnSceneObject("lok", "object/static/particle/pt_miasma_of_fog_greenish.iff", -3285, 9999 , -5870, 0, 0)		
end