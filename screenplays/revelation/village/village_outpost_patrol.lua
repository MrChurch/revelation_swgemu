
-- Author: Matthias Muente (matthias.muente@gmx.de)
-- https://revelationonline.net 

local patrolAnimationTemplate = require("helper.patrolAnimationTemplate")
local scriptName = "patrol_animations"

-- JediVillage
local patrol_animations_czerka_outpost = patrolAnimationTemplate:new {
    zone = "dathomir",
    squadID = "squad_czerka_outpost_id",
    respawn = 0,
}

patrol_animations_czerka_outpost_0 = patrol_animations_czerka_outpost:new {
    scriptName = scriptName .. "_czerka_outpost_0", 
    mobile = "czerka_outpost_at_st",
    x = 5359,
    z = 78.5,
    y = -4023.7,
    rot = 0,
    yOffset = 4,
    xOffset = 4,
    squadCount = 1,
    squadLineCount = 1,
    squadID = scriptName .. "czerka_outpost_0", 
    patrolPoints = {
		{5352, -4033},
		{5333, -4082},
		{5285, -4067},
		{5285, -4101},
		{5253, -4140},
		{5265, -4196},
		{5276, -4223},
		{5316, -4205},
		{5368, -4156},
		{5338, -4115},
		{5316, -4078},
		{5333, -4082},
    },
    despawnTimer = 3600,
    aiTemplate = "patrol"
}
registerScreenPlay(patrol_animations_czerka_outpost_0.scriptName, true)
