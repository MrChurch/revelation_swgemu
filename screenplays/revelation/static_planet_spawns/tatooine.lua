-- Author: Matthias Muente (matthias.muente@gmx.de)
-- https://revelationonline.net 

revelation_staticspawn_tatooine = ScreenPlay:new {
}
registerScreenPlay("revelation_staticspawn_tatooine", true)

local ScreenplayHelper = require("helper.screenplayHelper")

function revelation_staticspawn_tatooine:start()
    if (isZoneEnabled("tatooine")) then
        self:spawnMobiles()
    end
end

function revelation_staticspawn_tatooine:spawnMobiles()
  --skeletton
  spawnMobile("tatooine", "krayt_dragon_grand", 1800, -4805, 54, -4332, 80, 0)
  spawnMobile("tatooine", "krayt_dragon_adolescent", 1800, -4852, 43.6, -4211, 45, 0)
  spawnMobile("tatooine", "krayt_dragon_ancient", 1800, -5027.3, 29.3, -4274.9, 210, 0)
  spawnMobile("tatooine", "juvenile_canyon_krayt_dragon", 1800, -5056.0, 30, -4217, 280, 0)
  --graveyard
  spawnMobile("tatooine", "krayt_dragon_adolescent", 1800, 7460, 6.5, 4478, 80, 0)
  spawnMobile("tatooine", "krayt_dragon_grand", 1800, 6957, 14.3, 4361, 45, 0)
  spawnMobile("tatooine", "juvenile_canyon_krayt_dragon", 1800, 6618, 30, 4350, 210, 0)
  spawnMobile("tatooine", "juvenile_canyon_krayt_dragon", 1800, 6497, 81.1, 4528, 280, 0)
  spawnMobile("tatooine", "juvenile_canyon_krayt_dragon", 1800, 7440, 28, 4406, 280, 0)
  spawnMobile("tatooine", "juvenile_canyon_krayt_dragon", 1800, 7426, 7.3, 4625, 280, 0)
 
  spawnMobile("tatooine", "krayt_dragon_aged_ancient", math.random(20000) + 14400, math.random(2500) -6600, 9999, math.random(2500) -1800, 280, 0)
  spawnMobile("tatooine", "rev_swooper_engineer", math.random(20000) + 14400, math.random(1500) -5200, 9999, math.random(1500) -5600, 280, 0)
  spawnMobile("tatooine", "rev_swooper_engineer", math.random(20000) + 14400, math.random(1500) -5000, 9999, math.random(1500) -100, 280, 0)
end