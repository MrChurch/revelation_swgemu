--Copyright (C) 2015 <www.revelationonline.net> Author genesis@revelationonline.net





object_revelation_building_player_relaxation_house = object_revelation_building_player_shared_relaxation_house:new {
	lotSize = 2,
	baseMaintenanceRate = 150,
	allowedZones = {"corellia", "dantooine", "lok", "naboo", "rori", "talus", "tatooine"},
	constructionMarker = "object/building/player/construction/construction_player_house_corellia_large_style_01.iff",
	length = 3,
	width = 4,
	publicStructure = 0,
	skillMods = {
		{"private_medical_rating", 140},
		{"private_buff_mind", 120},
		{"private_med_battle_fatigue", 15},
		{"private_safe_logout", 1},
		{"private_crafting_medic_exp", 5},
		{"private_crafting_medic_ass", 10},
	},
	childObjects = {			
			{templateFile = "object/tangible/terminal/terminal_player_structure.iff", x = 3.91035, z = 1.22656, y = 9.05219, ow = -5.96046e-08, ox = 0, oz = 0, oy = -1, cellid = 1, containmentType = -1},
	}
}

ObjectTemplates:addTemplate(object_revelation_building_player_relaxation_house, "object/building/player/relaxation_house.iff")
