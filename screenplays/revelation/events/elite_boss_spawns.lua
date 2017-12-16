-- Author: Matthias Muente (matthias.muente@gmx.de)
-- https://revelationonline.net

elite_boss_spawns = ScreenPlay:new {
	states = {},
}
registerScreenPlay("elite_boss_spawns", true)

local ObjectManager = require("managers.object.object_manager")
local ScreenplayHelper = require("helper.screenplayHelper")
local CombatHelper = require("helper.combatHelper")

function elite_boss_spawns:start()
	self:spawnSwoopEngineer()
	writeData("elite_boss_spawns:EventIsRunning", 0)
end

function elite_boss_spawns:spawnSwoopEngineer()
	local pBoss = spawnMobile("tatooine", "rev_swooper_engineer", 0,  3800 + math.random(100), 9999,  3800 + math.random(100), 0, 0)
	if pBoss ~= nil then
		createObserver(OBJECTDESTRUCTION, self.scriptName, "spawnSwoopEngineer", pBoss)
	end
	return 0
end



