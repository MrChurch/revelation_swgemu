-- Author: Matthias Muente (matthias.muente@gmx.de)
-- https://revelationonline.net 

revelation_staticspawn_talus = ScreenPlay:new {
}
registerScreenPlay("revelation_staticspawn_talus", true)

function revelation_staticspawn_talus:start()
    if (isZoneEnabled("talus")) then
        self:spawnMobiles()
    end
end

function revelation_staticspawn_talus:spawnMobiles()
	spawnMobile("talus", "rev_mothra", math.random(20000) + 14400, math.random(1500) - 3000, 9999, math.random(1500) - 5, 280, 0)
	spawnMobile("talus", "rev_mothra", math.random(20000) + 14400, math.random(1500) - 6500, 9999, math.random(1500) -5500, 280, 0)
	spawnMobile("talus", "rev_mothra", math.random(20000) + 14400, math.random(1500) + 4000, 9999, math.random(1500) + 1400, 280, 0)
end