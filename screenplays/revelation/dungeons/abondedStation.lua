-- Author M.Muente matthias.muente@gmx.de

abondedStation = ScreenPlay:new {
}

registerScreenPlay("abondedStation", true)
local ObjectManager = require("managers.object.object_manager")
local ScreenplayHelper = require("helper.screenplayHelper")

function abondedStation:start()
    if (isZoneEnabled("dungeon1")) then
        self:spawnEffects()
        self:spawnNPC()
    end
end

function abondedStation:spawnEffects()
	spawnSceneObject("dungeon1","object/static/particle/particle_newbie_refrigerator_steam.iff", 25.0, -6.3, -118.5, 4336874, math.rad(280))
	spawnSceneObject("dungeon1","object/static/particle/particle_newbie_steam.iff", 25.0, -6.6, -107.5, 4336874, math.rad(280))
	spawnSceneObject("dungeon1","object/static/particle/particle_geyser_01_l1.iff", 60.2, -7.0, -127.1, 4336874, math.rad(280))
	spawnSceneObject("dungeon1","object/static/particle/pt_steam_rise_2x2.iff", 59.6, -7.0, -80.2, 4336873, math.rad(280))
	spawnSceneObject("dungeon1","object/static/particle/particle_geyser_01_l1.iff", 5.9, -4.2, -105.4, 4336875, math.rad(280))
	spawnSceneObject("dungeon1","object/static/particle/pt_steam_rise_2x2.iff", 2.3, -4.2, -112.7, 4336875, math.rad(280))
	spawnSceneObject("dungeon1","object/static/particle/particle_newbie_steam.iff", 59.8, -7.0, -69.4, 4336873, math.rad(280))
	spawnSceneObject("dungeon1","object/static/particle/pt_miasma_of_fog_gray.iff", 40.5, -0.1, 1.9, 4336869, math.rad(280))
	spawnSceneObject("dungeon1","object/static/particle/pt_miasma_of_fog_gray.iff", 38, -0.1, 6.3, 4336869, math.rad(280))
	spawnSceneObject("dungeon1","object/static/particle/pt_miasma_of_fog_gray.iff", 49.7, -0.1, 8, 4336869, math.rad(280))
end

function abondedStation:spawnNPC()
	spawnMobile("dungeon1", "cll8_binary_load_lifter", 0, 47.5, -7, -59, 290, 4336870)
	spawnMobile("dungeon1", "four_lom", 0, 2.4, -0.1, -11.3, 290, 4336867)
	spawnMobile("dungeon1", "rev_hd_fed_battle_droid", 300, 26.0, -0.1, -36, 270, 4336868)
	spawnMobile("dungeon1", "rev_hd_fed_battle_droid", 300, 26.0, -0.1, -35, 270, 4336868)
	spawnMobile("dungeon1", "rev_hd_fed_battle_droid", 300, 26.0, -0.1, -34, 270, 4336868)
	spawnMobile("dungeon1", "rev_hd_fed_battle_droid", 300, 26.0, -0.1, -33, 270, 4336868)
	spawnMobile("dungeon1", "rev_hd_fed_battle_droid", 300, 26.0, -0.1, -32, 270, 4336868)
	spawnMobile("dungeon1", "rev_hd_gamorrean_guard", 300, 23.6, 0.1, -11.5, 180, 4336868)
	spawnMobile("dungeon1", "rev_hd_gamorrean_guard", 300, 28.5, 0.1, -11.5, 180, 4336868)
	spawnMobile("dungeon1", "rev_hd_gamorrean_guard", 300, 35.8, 0.1, -7.5, 180, 4336869)
	spawnMobile("dungeon1", "rev_hd_gamorrean_guard", 300, 35.8, 0.1, -0.5, 180, 4336869)
	
end