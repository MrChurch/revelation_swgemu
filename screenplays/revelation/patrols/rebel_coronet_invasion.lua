-- License: AGPLv3
-- Author: Andreas Rammhold <andreas@rammhold.de>

local patrolAnimationTemplate = require("helper.patrolAnimationTemplate")

local scriptName = "patrol_rebel_coronet_"
local patrol_rebel_coronet_template = patrolAnimationTemplate:new {
  zone = "corellia",
  mobile = "rebel_trooper",
  aiTemplate = "patrol",
  squadID = "patrol_rebel_coronet_invasion_01",
  respawn = 0,
  x = -510,
  z = 2,
  y = -5102,
  rot = 0,
  yOffset = 2,
  xOffset = 2,
  squadCount = 2,
  squadLineCount = 2,
  squadID = scriptName .. "template",
  patrolPoints = {
    {-510, -5102},
    {-530, -5031},
    {-533, -4988},
    {-519, -4977},
    {-484, -4968},
    {-447, -4969},
    {-424, -4965},
    {-390, -4953},
    {-303, -4958},
    {-202, -4918},
    {-186, -4912},
    {-172, -4800},
    {-145, -4774},
    {-142, -4682},
    {-260, -4680},
    {-262, -4634},
    {-244, -4620},
    {-162, -4622},
    {-153, -4546},
    {-153, -4532}
  },
  despawnTimer = 3600
}

patrol_rebel_coronet_at_xt = patrol_rebel_coronet_template:new {
  mobile = "at_xt",
  squadID = scriptName .. "at_xt",
  squadCount = 2,
  yOffset = 15,
  xOffset = 5
}
registerScreenPlay(scriptName .. "at_xt", true)

patrol_rebel_coronet_tropper = patrol_rebel_coronet_template:new {
  mobile = "at_xt",
  squadID = scriptName .. "trooper",
  squadCount = 7
}

--registerScreenPlay(scriptName .. "trooper", true)

