-- Author: Matthias Muente (matthias.muente@gmx.de)
-- https://revelationonline.net 

revelation_staticspawn_naboo = ScreenPlay:new {
}
registerScreenPlay("revelation_staticspawn_naboo", true)

function revelation_staticspawn_naboo:start()
    if (isZoneEnabled("naboo")) then
        self:spawnMobiles()
    end
end

function revelation_staticspawn_naboo:spawnMobiles()
	spawnMobile("naboo", "rev_peko_peko_albatross", math.random(20000) + 14400, math.random(1500) - 5, 9999, math.random(1500) - 5, 280, 0)
	spawnMobile("naboo", "rev_peko_peko_albatross", math.random(20000) + 14400, math.random(1500) - 5500, 9999, math.random(1500) -2500, 280, 0)
	spawnMobile("naboo", "rev_peko_peko_albatross", math.random(20000) + 14400, math.random(1500) + 6000, 9999, math.random(1500) + 400, 280, 0)
end