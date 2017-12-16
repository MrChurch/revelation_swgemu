-- Author: Matthias Muente (matthias.muente@gmx.de)
-- https://revelationonline.net 

revelation_staticspawn_corellia = ScreenPlay:new {
}
registerScreenPlay("revelation_staticspawn_corellia", true)

function revelation_staticspawn_corellia:start()
    if (isZoneEnabled("corellia")) then
        self:spawnMobiles()
    end
end

function revelation_staticspawn_corellia:spawnMobiles()
	local x = math.random(500) - 1675
	local y = math.random(500) + 6000
	spawnMobile("corellia", "rev_dragonbeast", math.random(20000) + 24400, x, 9999, y, 280, 0)
end