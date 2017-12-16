--Copyright (C) 2015 <www.revelationonline.net> Author genesis@revelationonline.net





object_revelation_building_player_commando_house = object_revelation_building_player_shared_commando_house:new {
	lotSize = 1,
	baseMaintenanceRate = 10,
	allowedZones = {"corellia", "dantooine", "lok", "naboo", "rori", "talus", "tatooine"},
	constructionMarker = "object/building/player/construction/construction_player_house_corellia_large_style_01.iff",
	length = 1,
	width = 1,
	publicStructure = 0,
	skillMods = {
		{"private_medical_rating", 100},
		{"private_buff_mind", 100},
		{"private_med_battle_fatigue", 15},
		{"private_safe_logout", 1}
	},
	childObjects = {
			{templateFile = "object/tangible/sign/all_sign_street_s01.iff", x = 0.0, z = 9.0, y = 3.0, ox = 0, oy = 0, oz = 0, ow = 0, cellid = -1, containmentType = -1},
			{templateFile = "object/tangible/terminal/terminal_player_structure.iff", x = 9.3, z = 0.1, y = 0.1, ow = 1.35103e-07, ox = 0, oz = 0, oy = 1, cellid = 1, containmentType = -1}
--			{templateFile = "object/tangible/terminal/terminal_elevator_up.iff", x = -2.66109, z = -0.513074, y = 0.0544102, ow = -0.707107, ox = 0, oz = 0, oy = 0.707107, cellid = 7, containmentType = -1},
--			{templateFile = "object/tangible/terminal/terminal_elevator_down.iff", x = -2.65908, z = 5.39344, y = -0.0155522, ow = -0.707107, ox = 0, oz = 0, oy = 0.707107, cellid = 7, containmentType = -1}
	}
}

ObjectTemplates:addTemplate(object_revelation_building_player_commando_house, "object/building/player/commando_house.iff")
