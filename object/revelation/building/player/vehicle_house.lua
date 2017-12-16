--Copyright (C) 2015 <www.revelationonline.net> Author genesis@revelationonline.net





object_revelation_building_player_vehicle_house = object_revelation_building_player_shared_vehicle_house:new {
	lotSize = 2,
	baseMaintenanceRate = 150,
	allowedZones = {"corellia", "dantooine", "lok", "naboo", "rori", "talus", "tatooine"},
	constructionMarker = "object/building/player/construction/construction_player_house_corellia_large_style_01.iff",
	length = 4,
	width = 3,
	publicStructure = 0,
	skillMods = {
		{"private_medical_rating", 100},
		{"private_buff_mind", 100},
		{"private_med_battle_fatigue", 15},
		{"private_safe_logout", 1},
		{"private_crafting_artisan_exp", 5},
		{"private_crafting_artisan_ass", 10}
	},
	childObjects = {
		{templateFile = "object/tangible/sign/streetsign_upright_style_01.iff", x = -12.5, z = 0.5, y = 20.04, ox = 0, oy = 1, oz = 0, ow = 0, cellid = -1, containmentType = -1},
		{templateFile = "object/tangible/terminal/terminal_player_structure.iff", x = -16.2494, z = 0.529974, y = 8.46622, ow = 0.707107, ox = 0, oz = 0, oy = 0.707107, cellid = 1, containmentType = -1},
	}

}

ObjectTemplates:addTemplate(object_revelation_building_player_vehicle_house, "object/building/player/vehicle_house.iff")
