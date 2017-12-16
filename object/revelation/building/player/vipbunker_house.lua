--Copyright (C) 2015 <www.revelationonline.net> Author genesis@revelationonline.net





object_revelation_building_player_vipbunker_house = object_revelation_building_player_shared_vipbunker_house:new {
	lotSize = 2,
	baseMaintenanceRate = 25,
	allowedZones = {"corellia", "dantooine", "lok", "naboo", "rori", "talus", "tatooine"},
	constructionMarker = "object/building/player/construction/construction_player_house_corellia_large_style_01.iff",
	length = 3,
	width = 4,
	publicStructure = 0,
	skillMods = {
		{"private_medical_rating", 100},
		{"private_buff_mind", 100},
		{"private_med_battle_fatigue", 15},
		{"private_safe_logout", 1}
	},
	childObjects = {
		{templateFile = "object/tangible/sign/all_sign_street_s01.iff", x = 0.0, z = 5.0, y = 2.0, ox = 0, oy = 0, oz = 0, ow = 0, cellid = -1, containmentType = -1},	
		{templateFile = "object/tangible/terminal/terminal_player_structure.iff", x = -2.87107, z = 0.469495, y = 3.79867, ow = 1, ox = 0, oz = 0, oy = -4.37114, cellid = 1, containmentType = -1}
	},
}

ObjectTemplates:addTemplate(object_revelation_building_player_vipbunker_house, "object/building/player/vipbunker_house.iff")
