local shuttleanimationHelper = require("helper.shuttleanimationHelper")
local scriptName = "shuttle_animations"

local shuttle_animations_dathomir = shuttleanimationHelper:new {
	planetName = "dathomir",
	waitingtime = 120000,
	mobileName = "lambda_shuttle",
}

shuttle_animations_dathomir_0 = shuttle_animations_dathomir:new {
	scriptName = scriptName .. "_dathomir_0", 
	x = 5070,
	z = 79.2,
	y = -3795,
	direction = 25,
}
registerScreenPlay(shuttle_animations_dathomir_0.scriptName, true)

local shuttle_animations_tatooine = shuttleanimationHelper:new {
	planetName = "tatooine",
	waitingtime = 110000,
	mobileName = "lambda_shuttle",
}

shuttle_animations_tatooine_0 = shuttle_animations_tatooine:new {
	scriptName = scriptName .. "_tatooine_0", 
	x = 1140,
	z = 7,
	y = 3175.5,
	direction = 35,
}
registerScreenPlay(shuttle_animations_tatooine_0.scriptName, true)

--------------------- corellia --------------------------------

local shuttle_animations_corellia = shuttleanimationHelper:new {
	planetName = "corellia",
	waitingtime = 145000,
	mobileName = "lambda_shuttle",
}

shuttle_animations_corellia_0 = shuttle_animations_corellia:new {
	scriptName = scriptName .. "_corellia_0", 
	x = -588,
	z = 28,
	y = -4674,
	direction = 140,
}
registerScreenPlay(shuttle_animations_corellia_0.scriptName, true)

--------------------- naboo --------------------------------

local shuttle_animations_naboo = shuttleanimationHelper:new {
  planetName = "naboo",
  waitingtime = 145000,
  mobileName = "lambda_shuttle",
}

-- freelancer
shuttle_animations_naboo_0 = shuttle_animations_naboo:new {
  scriptName = scriptName .. "_naboo_0", 
  x = -5766,
  z = 13.6,
  y = 4023,
  direction = 90,
}
registerScreenPlay(shuttle_animations_naboo_0.scriptName, true)

--------------------- Dathomir_village --------------------------------

local shuttle_animations_dathomir_village = shuttleanimationHelper:new {
  planetName = "dathomir",
  waitingtime = 120000,
  mobileName = "transport_shuttle",
}

shuttle_animations_dathomir_village_0 = shuttle_animations_dathomir_village:new {
  scriptName = scriptName .. "_dathomir_village_0", 
  x = 5365,
  z = 79.5,
  y = -4085,
  direction = 270,
}
registerScreenPlay(shuttle_animations_dathomir_village_0.scriptName, true)

--------------------- lok --------------------------------

local shuttle_animations_lok = shuttleanimationHelper:new {
  planetName = "lok",
  waitingtime = 145000,
  mobileName = "lambda_shuttle",
}

shuttle_animations_lok_0 = shuttle_animations_lok:new {
  scriptName = scriptName .. "_lok_0", 
  x = -1648,
  z = 12.6,
  y = -6195,
  direction = 105,
}
registerScreenPlay(shuttle_animations_lok_0.scriptName, true)