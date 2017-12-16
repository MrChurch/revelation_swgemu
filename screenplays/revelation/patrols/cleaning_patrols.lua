
-- Author: Matthias Muente (matthias.muente@gmx.de)

local patrolAnimationTemplate = require("helper.patrolAnimationTemplate")
local scriptName = "cleaningpatrol_animations"

local patrolcleaning_animations_naboo = patrolAnimationTemplate:new {
	zone = "naboo",
	squadID = "cleaningsquad_naboo_id",
	respawn = 0,
}

cleaningpatrol_animations_naboo_theed_0 = patrolcleaning_animations_naboo:new {
	scriptName = scriptName .. "_naboo_theed_0", 
	mobile = "rev_cleaningdroid",
	x = -4948,
	z = 6,
	y = 4189,
	rot = 0,
	zone = "naboo",
	yOffset = 4,
	xOffset = 4,
	squadCount = 2,
	squadLineCount = 2,
	squadID = scriptName .. "naboo_theed_0", 
	patrolPoints = {
		{-4945, 4190},
		{-4973, 4180},
		{-4994, 4193},
		{-5028, 4217},
		{-5049, 4227},
		{-5061, 4211},
		{-5083, 4188},
		{-5097, 4199},
		{-5121, 4215},
		{-5111, 4231},
		{-5096, 4256},
		{-5112, 4267},
		{-5136, 4285},
		{-5124, 4298},
		{-5107, 4289},
		{-5085, 4270},
		{-5066, 4255},
		{-5040, 4238},
		{-5022, 4226},
		{-5001, 4231},
		{-4972, 4234},
		{-4951, 4218},
		{-4930, 4206},
		
	},
	despawnTimer = 3600,
	aiTemplate = "patrol"
}
registerScreenPlay(cleaningpatrol_animations_naboo_theed_0.scriptName, true)

