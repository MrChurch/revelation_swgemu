-- Author: Matthias Muente (matthias.muente@gmx.de)

local shuttleanimationHelper = require("helper.shuttleanimationHelper")
local scriptName = "express_courier_shuttle_animations"

local express_courier_shuttle_animations_naboo = shuttleanimationHelper:new {
  planetName = "naboo",
  waitingtime = 240000,
  mobileName = "lambda_shuttle",
}

express_courier_shuttle_animations_naboo_0 = express_courier_shuttle_animations_naboo:new {
  scriptName = scriptName .. "_naboo_0", 
  x = -5525,
  z = 6,
  y = 4030,
  direction = 75,
}
registerScreenPlay(express_courier_shuttle_animations_naboo_0.scriptName, true)

local express_courier_shuttle_animations_tatooine = shuttleanimationHelper:new {
  planetName = "tatooine",
  waitingtime = 240000,
  mobileName = "lambda_shuttle",
}

express_courier_shuttle_animations_tatooine_0 = express_courier_shuttle_animations_tatooine:new {
  scriptName = scriptName .. "_tatooine_0", 
  x = 3588,
  z = 5,
  y = -4645,
  direction = 95,
}
registerScreenPlay(express_courier_shuttle_animations_tatooine_0.scriptName, true)