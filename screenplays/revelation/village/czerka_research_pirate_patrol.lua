-- Author: Matthias Muente (matthias.muente@gmx.de)
-- https://revelationonline.net 

local patrolAnimationTemplate = require("helper.patrolAnimationTemplate")
local scriptName = "patrol_animations"

-- pirate outpost
local patrol_animations_czerka_research_pirate_patrol = patrolAnimationTemplate:new {
    zone = "endor",
    squadID = "squad_czerka_research_pirate_patrol_id",
    respawn = 0,
}

patrol_animations_czerka_research_pirate_patrol_0 = patrol_animations_czerka_research_pirate_patrol:new {
    scriptName = scriptName .. "_czerka_research_pirate_patrol_0", 
    mobile = "czerka_outpost_fed_battle_droid",
    x = -2686,
    z = 200,
    y = 5210,
    rot = 0,
    yOffset = 1,
    xOffset = 1,
    squadCount = 6,
    squadLineCount = 2,
    squadID = scriptName .. "czerka_research_pirate_patrol_0", 
    patrolPoints = {
		{-2681, 5211},
		{-2649, 5243},
		{-2600, 5240},
		{-2598, 5199},
		{-2600, 5240},
		{-2649, 5243},
		{-2681, 5211},
    },
    despawnTimer = 1800,
    aiTemplate = "patrol"
}
registerScreenPlay(patrol_animations_czerka_research_pirate_patrol_0.scriptName, true)

patrol_animations_czerka_research_pirate_patrol_1 = patrol_animations_czerka_research_pirate_patrol:new {
    scriptName = scriptName .. "_czerka_research_pirate_patrol_1", 
    mobile = "czerka_outpost_droideka",
    x = -2580,
    z = 200,
    y = 5183,
    rot = 0,
    yOffset = 1.5,
    xOffset = 1.5,
    squadCount = 2,
    squadLineCount = 1,
    squadID = scriptName .. "czerka_research_pirate_patrol_1", 
    patrolPoints = {
      {-2582, 5187},
      {-2582, 5159},
      {-2604, 5138},
      {-2621, 5139},
      {-2621, 5176},
      {-2620, 5227},
      {-2666, 5222},
      {-2665, 5198},
      {-2659, 5196},
      {-2659, 5182},
      {-2675, 5172},
      {-2671, 5138},
      {-2660, 5133},
      {-2622, 5133},
      {-2618, 5156},
      {-2582, 5187},
    },
    despawnTimer = 1800,
    aiTemplate = "patrol"
}
registerScreenPlay(patrol_animations_czerka_research_pirate_patrol_1.scriptName, true)

patrol_animations_czerka_research_pirate_patrol_2 = patrol_animations_czerka_research_pirate_patrol:new {
    scriptName = scriptName .. "_czerka_research_pirate_patrol_2", 
    mobile = "czerka_outpost_fed_battle_droid",
    x = -2548,
    z = 200,
    y = 5270,
    rot = 0,
    yOffset = 1,
    xOffset = 1,
    squadCount = 6,
    squadLineCount = 2,
    squadID = scriptName .. "czerka_research_pirate_patrol_2", 
    patrolPoints = {
      {-2552, 5269},
      {-2583, 5269},
      {-2606, 5269},
      {-2606, 5284},
      {-2606, 5269},
      {-2598, 5269},
      {-2599, 5227},
      {-2583, 5188},
      {-2599, 5227},
      {-2598, 5269},
      {-2606, 5284},
      {-2606, 5269},
      {-2583, 5269},
      {-2552, 5269},
    },
    despawnTimer = 900,
    aiTemplate = "patrol"
}
registerScreenPlay(patrol_animations_czerka_research_pirate_patrol_2.scriptName, true)
