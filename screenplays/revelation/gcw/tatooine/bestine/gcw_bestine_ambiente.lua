-- Author: Matthias Muente (matthias.muente@gmx.de)
-- https://revelationonline.net

gcw_bestine_ambiente = ScreenPlay:new {
}
registerScreenPlay("gcw_bestine_ambiente", true)

function gcw_bestine_ambiente:start()
    if (isZoneEnabled("tatooine")) then
        self:spawnParticles()
    end
end

function gcw_bestine_ambiente:spawnParticles()
    spawnSceneObject("tatooine","object/static/particle/particle_distant_ships_dogfight_t_vs_x.iff", -1322, 45 , -3667, 0, math.rad(math.random(360)))
    spawnSceneObject("tatooine","object/static/particle/particle_distant_ships_dogfight_t_vs_x_2.iff", -1278, 45 , -3445, 0, math.rad(math.random(360)))
    spawnSceneObject("tatooine","object/static/particle/particle_distant_ships_dogfight_t_vs_x_2.iff", -1088, 40 , -3650, 0, math.rad(math.random(360)))
    spawnSceneObject("tatooine","object/static/particle/particle_distant_ships_dogfight_t_vs_x_2.iff", -1472, 25 , -3648, 0, math.rad(math.random(360)))
    spawnSceneObject("tatooine","object/static/particle/particle_distant_ships_dogfight_t_vs_x_2.iff", -1008, 35 , -3594, 0, math.rad(math.random(360)))
    spawnSceneObject("tatooine","object/static/particle/particle_distant_ships_dogfight_ti_vs_aw_2.iff", -1134, 35 , -3704, 0, math.rad(math.random(360)))
    spawnSceneObject("tatooine","object/static/particle/particle_distant_ships_dogfight_ti_vs_aw_2.iff", -1441, 55 , -3460, 0, math.rad(math.random(360)))
    spawnSceneObject("tatooine","object/static/particle/particle_distant_ships_dogfight_tb_vs_bw_2.iff", -1014, 45 , -3590, 0, math.rad(math.random(360)))
    spawnSceneObject("tatooine","object/static/particle/particle_distant_ships_dogfight_tb_vs_bw_2.iff", -1430, 35 , -3485, 0, math.rad(math.random(360)))
    spawnSceneObject("tatooine","object/static/particle/particle_distant_ships_dogfight_tb_vs_bw_3.iff", -967, 60 , -3790, 0, math.rad(math.random(360)))
    spawnSceneObject("tatooine","object/static/particle/particle_distant_ships_dogfight_tb_vs_bw_2.iff", -1321, 25 , -3677, 0, math.rad(math.random(360)))
    spawnSceneObject("tatooine","object/static/particle/particle_distant_ships_dogfight_tb_vs_bw_2.iff", -1212, 25 , -3552, 0, math.rad(math.random(360)))
    
    spawnSceneObject("tatooine","object/static/particle/particle_distant_ships_dogfight_tb_vs_bw_3.iff", -515, 35 , -2895, 0, math.rad(math.random(360)))
    
    spawnMobile("tatooine", "gcwxp_converter", 0, -1375, 9999, -3844, 0, 0)
end




