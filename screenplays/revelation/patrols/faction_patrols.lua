
-- Author: Matthias Muente (matthias.muente@gmx.de)

local patrolAnimationTemplate = require("helper.patrolAnimationTemplate")
local scriptName = "patrol_animations"
--[[
local patrol_animations_tatooine = patrolAnimationTemplate:new {
	zone = "tatooine",
	squadID = "squad_tatooine_id",
	respawn = 0,
}

patrol_animations_tatooine_bestine_0 = patrol_animations_tatooine:new {
	scriptName = scriptName .. "_tatooine_bestine_0", 
	mobile = "stormtrooper",
	x = -1419,
	z = 12,
	y = -3724,
	rot = 90,
	yOffset = 2,
	xOffset = 2,
	squadCount = 6,
	squadLineCount = 2,
	squadID = scriptName .. "tatooine_bestine_0", 
	patrolPoints = {
		{-1419, -3724},
		{-1381, -3725},
		{-1363, -3714},
		{-1320, -3645},
		{-1284, -3618},
		{-1269, -3546},
		{-1282, -3528},
		{-1294, -3522},
		{-1287, -3487},
		{-1292, -3460},
		{-1320, -3440},
		{-1440, -3494},
		{-1470, -3558},
		{-1473, -3630},
		{-1469, -3674},
		{-1419, -3724},
	},
	despawnTimer = 3600,
	aiTemplate = "patrol"
}
registerScreenPlay(patrol_animations_tatooine_bestine_0.scriptName, true)
]]--
----------------

local patrol_animations_corellia = patrolAnimationTemplate:new {
	zone = "corellia",
	squadID = "squad_corellia_id",
	respawn = 0,
}

patrol_animations_corellia_coronet_0 = patrol_animations_corellia:new {
	scriptName = scriptName .. "_corellia_coronet_0", 
	mobile = "at_st",
	x = -537,
	z = 28,
	y = -4607,
	rot = 0,
	yOffset = 4,
	xOffset = 4,
	squadCount = 2,
	squadLineCount = 2,
	squadID = scriptName .. "corellia_coronet_0", 
	patrolPoints = {
		{-481, -4595},
		{-390, -4597},
		{-300, -4597},
		{-300, -4610},
		{-257, -4612},
		{-215, -4623},
		{-154, -4621},
		{-154, -4721},
		{-154, -4785},
		{-178, -4788},
		{-178, -4849},
		{-171, -4918},
		{-178, -4849},
		{-178, -4788},
		{-154, -4785},
		{-154, -4721},
		{-154, -4621},
		{-215, -4623},
		{-257, -4612},
		{-300, -4610},
		{-300, -4597},
		{-390, -4597},
		{-481, -4595},
	},
	despawnTimer = 3600,
	aiTemplate = "patrol"
}
registerScreenPlay(patrol_animations_corellia_coronet_0.scriptName, true)

local patrol_animations_naboo = patrolAnimationTemplate:new {
	zone = "naboo",
	squadID = "squad_naboo_id",
	respawn = 0,
}

patrol_animations_naboo_theed_0 = patrol_animations_naboo:new {
	scriptName = scriptName .. "_naboo_theed_0", 
	mobile = "rev_at_at",
	x = -4855,
	z = 6,
	y = 3895,
	rot = 0,
	yOffset = 4,
	xOffset = 4,
	squadCount = 1,
	squadLineCount = 1,
	squadID = scriptName .. "naboo_theed_0", 
	patrolPoints = {
		{-4864, 3880},
		{-4942, 3813},
		{-4952, 3693},
		{-5003, 3722},
		{-5041, 3803},
		{-5107, 3900},
		{-5124, 3982},
		{-5128, 4070},
		{-5182, 4123},
		{-5241, 4201},
		{-5260, 4222},
		{-5241, 4201},
		{-5182, 4123},
		{-5128, 4070},
		{-5124, 3982},
		{-5107, 3900},
		{-5041, 3803},
		{-5003, 3722},
		{-4952, 3693},
		{-4942, 3813},
		{-4864, 3880},
	},
	despawnTimer = 3600,
	aiTemplate = "patrol"
}
registerScreenPlay(patrol_animations_naboo_theed_0.scriptName, true)