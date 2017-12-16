--Copyright (C) 2015 <www.revelationonline.net> Author genesis@revelationonline.net





object_revelation_building_player_musty_house = object_revelation_building_player_shared_musty_house:new {
	lotSize = 4,
	baseMaintenanceRate = 150,
	allowedZones = {"corellia", "dantooine", "lok", "naboo", "rori", "talus", "tatooine"},
	publicStructure = 0,
	constructionMarker = "object/building/player/construction/construction_player_house_corellia_large_style_01.iff",
	length = 3,
	width = 4,
	skillMods = {
		{"private_medical_rating", 100},
		{"private_buff_mind", 100},
		{"private_med_battle_fatigue", 15},
		{"private_safe_logout", 1},
		{"private_crafting_be_exp", 15},
		{"private_crafting_be_ass", 15},		
	},
	childObjects = {
			{templateFile = "object/tangible/sign/all_sign_street_s01.iff", x = 0.0, z = 7.0, y = 5.0, ox = 0, oy = 0, oz = 0, ow = 0, cellid = -1, containmentType = -1},	
			{templateFile = "object/tangible/terminal/terminal_elevator_up.iff", x = 0, z = -33, y = -1.29, ow = 0, ox = 0, oy = 0, oz = 0, cellid = 10, containmentType = -1},
			{templateFile = "object/tangible/terminal/terminal_elevator_down.iff", x = 0, z = -26.27, y = -1.29, ow = 0, ox = 0, oy = 0, oz = 0, cellid = 10, containmentType = -1}, --floor2 down
			{templateFile = "object/tangible/terminal/terminal_elevator_up.iff", x = 0, z = -25.92, y = -1.29, ow = 0, ox = 0, oy = 0, oz = 0, cellid = 10, containmentType = -1}, --Floor2 Up
			{templateFile = "object/tangible/terminal/terminal_elevator_down.iff", x = 0, z = .5, y = -1.29, ow = 0, ox = 0, oy = 0, oz = 0, cellid = 10, containmentType = -1}, --floor1 down
			{templateFile = "object/tangible/terminal/terminal_player_structure.iff", x = 2.9, z = 0.5, y = 8.8, ox = 0, oy = 1, oz = 0, ow = 0, cellid = 1, containmentType = -1},
	},

}

ObjectTemplates:addTemplate(object_revelation_building_player_musty_house, "object/building/player/musty_house.iff")
