--Copyright (C) 2015 <www.revelationonline.net> Author genesis@revelationonline.net





object_revelation_building_player_yt1300_house = object_revelation_building_player_shared_yt1300_house:new {
	lotSize = 2,
	baseMaintenanceRate = 250,
	allowedZones = {"corellia", "dantooine", "lok", "naboo", "rori", "talus", "tatooine"},
	publicStructure = 0,
	skillMods = {
		{"private_medical_rating", 100},
		{"private_buff_mind", 100},
		{"private_med_battle_fatigue", 15},
		{"private_safe_logout", 1}
	},
	childObjects = {
			{templateFile = "object/tangible/terminal/terminal_player_structure.iff", x = -6.08, z= 5.2, y = -11.2, ox = 0, oy = 0, oz = 0, ow = 0, cellid = 5, containmentType = -1},
			{templateFile = "object/tangible/terminal/terminal_elevator_up.iff", x = -4.1, z = -0.8, y = -1.6, ow = 0, ox = 0, oy = 0, oz = 0, cellid = 7, containmentType = -1},
			{templateFile = "object/tangible/terminal/terminal_elevator_down.iff", x = -4.1, z = 5.5, y = -1.6, ow = 0, ox = 0, oy = 0, oz = 0, cellid = 7, containmentType = -1}
	},
	constructionMarker = "object/building/player/construction/construction_player_house_corellia_large_style_01.iff",
	
	length = 3,
	width = 3,
}


ObjectTemplates:addTemplate(object_revelation_building_player_yt1300_house, "object/building/player/yt1300_house.iff")
