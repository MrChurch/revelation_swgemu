--Copyright (C) 2015 <www.revelationonline.net> Author genesis@revelationonline.net





object_revelation_building_player_generic_large_window_s02 = object_revelation_building_player_shared_generic_large_window_s02:new {
	lotSize = 5,
	baseMaintenanceRate = 100,
	allowedZones = {"corellia", "dantooine", "lok", "naboo", "rori", "talus", "tatooine"},
	constructionMarker = "object/building/player/construction/construction_player_house_corellia_large_style_01.iff",
	length = 5,
	width = 7,
	publicStructure = 0,
	skillMods = {
		{"private_medical_rating", 100},
		{"private_buff_mind", 100},
		{"private_med_battle_fatigue", 15},
		{"private_safe_logout", 1}
	},
	childObjects = {
			{templateFile = "object/tangible/sign/player/house_address.iff", x = 5.0, z = 3.4, y = -11.0, ox = 0, oy = 0, oz = 0, ow = -1, cellid = -1, containmentType = -1},
			{templateFile = "object/tangible/terminal/terminal_player_structure.iff", x = 8.16041, z = 0.511061, y = -8.5, ow = 1, ox = 0, oz = -0, oy = -1.35103e-07, cellid = 1, containmentType = -1}
	}
}

ObjectTemplates:addTemplate(object_revelation_building_player_generic_large_window_s02, "object/building/player/generic_large_window_s02.iff")
