xmas = ScreenPlay:new {
    numberOfActs = 1,
    questString = "xmas",
    states = {},
    spawnMap = {
		{"random", 1864, 12, 2776, 10, "naboo"},
		{"random", 1987, 12, 2617, 10, "naboo"},
		{"random", 1954, 12, 2534, 10, "naboo"},
		{"random", 1945, 12, 2441, 10, "naboo"},
		{"random", 1912, 12, 2346, 10, "naboo"},
		{"random", 1727, 12, 2532, 10, "naboo"},
		{"random", 1615, 12, 2655, 10, "naboo"},
		{"random", 1689, 12, 2633, 10, "naboo"},
		{"random", 1722, 12, 2540, 10, "naboo"},
		{"random", 1882, 12, 2580, 10, "naboo"},
		{"random", 1906, 12, 2427, 10, "naboo"},
		{"random", 2045, 30, 2433, 10, "naboo"},
		{"random", 1740, 40, 2801, 10, "naboo"},
    }

}

registerScreenPlay("xmas", true)
local ObjectManager = require("managers.object.object_manager")
local ScreenplayHelper = require("helper.screenplayHelper")

function xmas:start()
    if (isZoneEnabled("naboo")) then
		  self:spawnMobile()
		 -- self:spawnTraps()
    end
end

function xmas:spawnMobile()
    spawnMobile("naboo", "free_buff_npc", 600, -4857, 6, 4172, 0, 0)
    spawnSceneObject("naboo","object/tangible/symbols/icon_heal.iff", -4857, 9, 4172, 0, 0)
    spawnMobile("naboo", "costume_npc", 600, -4859, 6, 4174, 0, 0)
    spawnMobile("naboo", "rev_lifeday_saun_dann", 600, -4844, 6 , 4134, 0, 0)
    spawnSceneObject("naboo","object/tangible/storyteller/prop/pr_lifeday_presents.iff", -4845, 6, 4134, 0, 0)
    spawnSceneObject("naboo","object/tangible/storyteller/prop/pr_lifeday_presents.iff", -4843, 6, 4132, 0, 0)
    spawnSceneObject("naboo","object/tangible/storyteller/prop/pr_lifeday_presents.iff", -4844, 6, 4130, 0, 0)
    
end

function xmas:spawnTraps()
	for i,v in ipairs(self.spawnMap) do
		spawnMobile(v[6], "rev_lifeday_monkey_lizard", 120 + math.random(200) , v[2] -3 + math.random(6), v[3], v[4]-3 + math.random(6), math.random(360), 0)
		spawnMobile(v[6], "rev_lifeday_monkey_lizard", 120 + math.random(200) , v[2] -3 + math.random(6), v[3], v[4]-3 + math.random(6), math.random(360), 0)
		spawnMobile(v[6], "rev_lifeday_monkey_lizard", 120 + math.random(200) , v[2] -2 + math.random(12), v[3], v[4]-2 + math.random(12), math.random(360), 0)
		spawnMobile(v[6], "rev_lifeday_monkey_lizard", 120 + math.random(200) , v[2] -2 + math.random(12), v[3], v[4]-2 + math.random(12), math.random(360), 0)
		spawnMobile(v[6], "rev_lifeday_monkey_lizard", 120 + math.random(200) , v[2] -2 + math.random(12), v[3], v[4]-2 + math.random(12), math.random(360), 0)
		spawnMobile(v[6], "rev_lifeday_monkey_lizard_elite", 120 + math.random(200) , v[2] -2 + math.random(12), v[3], v[4]-2 + math.random(12), math.random(360), 0)
		ScreenplayHelper:spawnMobileAndIdle(v[6], "rev_lifeday_monkey_lizard_elite", 120 + math.random(200) , v[2] -6 + math.random(12), v[3], v[4]-2 + math.random(12), math.random(360), 0)
		ScreenplayHelper:spawnMobileAndIdle(v[6], "rev_lifeday_monkey_lizard_elite", 120 + math.random(200) , v[2] -6 + math.random(12), v[3], v[4]-2 + math.random(12), math.random(360), 0)
	end
end
