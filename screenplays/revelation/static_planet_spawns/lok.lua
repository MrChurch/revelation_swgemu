-- Author: Matthias Muente (matthias.muente@gmx.de)
-- https://revelationonline.net 

revelation_staticspawn_lok = ScreenPlay:new {
}
registerScreenPlay("revelation_staticspawn_lok", true)

local ScreenplayHelper = require("helper.screenplayHelper")

function revelation_staticspawn_lok:start()
    if (isZoneEnabled("lok")) then
        self:spawnMobiles()
    end
end

function revelation_staticspawn_lok:spawnMobiles()
  spawnMobile("lok", "rev_swooper_engineer", math.random(20000) + 14400, math.random(1500) -4200, 9999, math.random(1500) -4600, 280, 0)
  spawnMobile("lok", "rev_swooper_engineer", math.random(20000) + 14400, math.random(1500) -3000, 9999, math.random(1500) -3000, 280, 0)
  spawnMobile("lok", "rev_swooper_engineer", math.random(20000) + 14400, math.random(1500) -3000, 9999, math.random(1500) -2000, 280, 0)
  
  -- kimogila cave 4780 570
  	spawnMobile("lok", "rev_czerka_miner",math.random(3600)+14400, 11.2,-118.8,-378,66,7475374)
  	spawnMobile("lok", "rev_ig_assassin_droid",500, 16.4,-119.5,-352 ,66,7475374)
	spawnMobile("lok", "rev_probot",900, 92,-90.7,-334.1,0,7475369)
	spawnMobile("lok", "rev_ig_assassin_droid",500, 110,-90.6,-326.7,0,7475369)
	spawnMobile("lok", "rev_probot",1500,53.2,-61.4,-190.5,0,7475360)
	spawnMobile("lok", "rev_ig_assassin_droid",500, -27.1,-51.8,-113.2,0,7475358)
	spawnMobile("lok", "rev_ig_assassin_droid",900, 4776,9999,972,0,0)
end