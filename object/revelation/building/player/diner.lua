--Copyright (C) 2015 <www.revelationonline.net> Author genesis@revelationonline.net





object_revelation_building_player_diner = object_revelation_building_player_shared_diner:new {
	lotSize = 3,
	baseMaintenanceRate = 125,
	allowedZones = {"corellia", "dantooine", "lok", "naboo", "rori", "talus", "tatooine"},
	skillMods = {
		{"private_medical_rating", 100},
		{"private_buff_mind", 100},
		{"private_med_battle_fatigue", 15},
		{"private_safe_logout", 1},
		{"private_crafting_chef_exp", 5},
		{"private_crafting_chef_ass", 10},
	},

	publicStructure = 0,
	
	constructionMarker = "object/building/player/construction/construction_player_house_corellia_large_style_01.iff",
	length = 1,
	width = 2,
	childObjects = {
			{templateFile = "object/tangible/tcg/series3/house_sign_tcg_s01.iff", x = 4.4, z = 4.0, y = 5.6, ox = 0, oy = -1, oz = 0, ow = 0, cellid = -1, containmentType = -1},
			{templateFile = "object/tangible/terminal/terminal_player_structure.iff", x = -9.3, z = 0.2, y = -0.01, ox = 0, oy = 0.707107, oz = 0, ow =0.707107, cellid = 1, containmentType = -1}
	}
}

ObjectTemplates:addTemplate(object_revelation_building_player_diner, "object/building/player/diner.iff")
