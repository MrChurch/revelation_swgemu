--Copyright (C) 2015 <www.revelationonline.net> Author genesis@revelationonline.net





object_revelation_building_player_bespin_house = object_revelation_building_player_shared_bespin_house:new {
	lotSize = 4,
	baseMaintenanceRate = 500,
	allowedZones = {"corellia", "dantooine", "lok", "naboo", "rori", "talus", "tatooine"},
	publicStructure = 0,
	skillMods = {
		{"private_medical_rating", 130},
		{"private_buff_mind", 130},
		{"private_med_battle_fatigue", 15},
		{"private_safe_logout", 1},
	},
	childObjects = {
			--{templateFile = "object/tangible/sign/player/house_address.iff", x = 4.34, z = 3.4, y = 18.40, ox = 0, oy = 0.707107, oz = 0, ow = 0.707107, cellid = -1, containmentType = -1},
			{templateFile = "object/tangible/terminal/terminal_player_structure.iff", x = 2.08274, z= 88.8888, y = -5.94208, ox = 0, oy = 0.991445, oz = 0, ow = 0.130526, cellid = 2, containmentType = -1},
			{templateFile = "object/tangible/terminal/terminal_elevator_up.iff", x = 0.680352, z = 0.631912, y = 1.11112, ow = -0.258819, ox = 0, oy = 0.965926, oz = 0, cellid = 1, containmentType = -1},
			{templateFile = "object/tangible/terminal/terminal_elevator_down.iff", x = 0.551327, z = 88.8368, y = 1.32484, ow = -0.130526, ox = 0, oy = 0.991445, oz = 0, cellid = 1, containmentType = -1}
	},
	constructionMarker = "object/building/player/construction/construction_player_house_corellia_large_style_01.iff",
	
	length = 1,
	width = 1
}

ObjectTemplates:addTemplate(object_revelation_building_player_bespin_house, "object/building/player/bespin_house.iff")
