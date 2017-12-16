--Copyright (C) 2015 <www.revelationonline.net> Author genesis@revelationonline.net





object_revelation_building_player_sith_house = object_revelation_building_player_shared_sith_house:new {
	lotSize = 2,
	baseMaintenanceRate = 150,
	allowedZones = {"corellia", "dantooine", "lok", "naboo", "rori", "talus", "tatooine"},
	publicStructure = 0,
	skillMods = {
		{"private_medical_rating", 100},
		{"private_buff_mind", 100},
		{"private_med_battle_fatigue", 15},
		{"private_safe_logout", 1},
		{"private_crafting_jedi_exp", 5},
		{"private_crafting_jedi_ass", 10},		
	},
	childObjects = {

	},
	constructionMarker = "object/building/player/construction/construction_player_house_corellia_large_style_01.iff",
	length = 2,
	width = 3,
	childObjects = {
			--{templateFile = "object/tangible/sign/streetsign_wall_style_01.iff", x = 7.0, z = 3.3, y = 6.5, ox = 0, oy = 0, oz = 0, ow = 1, cellid = -1, containmentType = -1},
			{templateFile = "object/tangible/terminal/terminal_player_structure.iff", x = -4.15, z = 0.267105, y = -8.76, ox = 0, oy = 0, oz = 0, ow = 1, cellid = 1, containmentType = -1}
	}
}

ObjectTemplates:addTemplate(object_revelation_building_player_sith_house, "object/building/player/sith_house.iff")
