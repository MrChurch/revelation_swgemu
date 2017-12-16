--Copyright (C) 2015 <www.revelationonline.net> Author genesis@revelationonline.net





object_revelation_building_player_tree_house = object_revelation_building_player_shared_tree_house:new {
	lotSize = 2,
	baseMaintenanceRate = 150,
	allowedZones = {"corellia", "dantooine", "lok", "naboo", "rori", "talus", "tatooine"},
	publicStructure = 0,
	skillMods = {
		{"private_medical_rating", 100},
		{"private_buff_mind", 100},
		{"private_med_battle_fatigue", 15},
		{"private_safe_logout", 1},
		{"private_crafting_be_exp", 15},
		{"private_crafting_be_ass", 15},
	},

	constructionMarker = "object/building/player/construction/construction_player_house_corellia_large_style_01.iff",
	length = 2,
	width = 2,
	childObjects = {
			{templateFile = "object/tangible/event_perk/endr_imprv_flagpole_s01.iff", x = 13.0, z = 0.6, y = 19.5, ox = 0, oy = 0, oz = 0, ow = 1, cellid = -1, containmentType = -1},
			{templateFile = "object/tangible/furniture/all/frn_all_tiki_torch_s1.iff", x = 13.350, z = 1.1, y = 21.4, ox = 0, oy = 0, oz = 0, ow = 1, cellid = -1, containmentType = -1},
			{templateFile = "object/tangible/furniture/all/frn_all_tiki_torch_s1.iff", x = 7.5, z = 1.1, y = 21.4, ox = 0, oy = 0, oz = 0, ow = 1, cellid = -1, containmentType = -1},
			{templateFile = "object/tangible/food/crafted/drink_veronian_berry_wine.iff", x = 10.3, z = 1.75, y = 7.7, ox = 0, oy = 0, oz = 0, ow = 1, cellid = -1, containmentType = -1},
			{templateFile = "object/tangible/food/crafted/drink_kylessian_fruit_distillate.iff", x = 9.8, z = 1.75, y = 7.3, ox = 0, oy = 0, oz = 0, ow = 1, cellid = -1, containmentType = -1},
			{templateFile = "object/tangible/food/crafted/dessert_kiwik_clusjo_swirl.iff", x = 10.1, z = 1.75, y = 7.9, ox = 0, oy = 0, oz = 0, ow = 1, cellid = -1, containmentType = -1},			
			{templateFile = "object/tangible/furniture/tatooine/frn_tato_tbl_cafe_table_style_01.iff", x = 10.0, z = 1, y = 7.5, ox = 0, oy = 0, oz = 0, ow = 1, cellid = -1, containmentType = -1},
			{templateFile = "object/tangible/furniture/tatooine/frn_tato_cafe_parasol.iff", x = 10.0, z = 1.3, y = 7.5, ox = 0, oy = 0, oz = 0, ow = 1, cellid = -1, containmentType = -1},
			{templateFile = "object/tangible/furniture/tatooine/frn_tato_chair_cafe_style_01.iff", x = 10.0, z = 1, y = 6.5, ox = 0, oy = 0, oz = 0, ow = 1, cellid = -1, containmentType = -1},
			{templateFile = "object/tangible/furniture/tatooine/frn_tato_chair_cafe_style_01.iff", x = 11.0, z = 1, y = 7.5, ox = 0, oy = 0, oz = 0, ow = 1, cellid = -1, containmentType = -1},
			{templateFile = "object/tangible/furniture/tatooine/frn_tato_chair_cafe_style_01.iff", x = 9.0, z = 1, y = 7.5, ox = 0, oy = 0, oz = 0, ow = 1, cellid = -1, containmentType = -1},			
			{templateFile = "object/tangible/furniture/tatooine/frn_tato_meat_rack.iff", x = 7.0, z = 0.2, y = 10.0, ox = 0, oy = 0, oz = 0, ow = 1, cellid = -1, containmentType = -1},
			{templateFile = "object/tangible/furniture/decorative/campfire.iff", x = 7.8, z = 0.9, y = 10.0, ox = 0, oy = 0, oz = 0, ow = 0, cellid = -1, containmentType = -1},
			{templateFile = "object/tangible/furniture/decorative/campfire.iff", x = 7.0, z = 0.9, y = 10.0, ox = 0, oy = 0, oz = 0, ow = 0, cellid = -1, containmentType = -1},
			{templateFile = "object/tangible/furniture/decorative/campfire.iff", x = 6.2, z = 0.9, y = 10.0, ox = 0, oy = 0, oz = 0, ow = 0, cellid = -1, containmentType = -1},			
			{templateFile = "object/tangible/furniture/tatooine/frn_tato_fruit_stand_large_style_01.iff", x = -6.0, z = 1, y = 16.5, ox = 0, oy = 0, oz = 0, ow = 1, cellid = -1, containmentType = -1},			
			{templateFile = "object/tangible/furniture/tatooine/frn_tato_chair_cafe_style_01.iff", x = 7.0, z = 1, y = 14.5, ox = 0, oy = 0, oz = 0, ow = 1, cellid = -1, containmentType = -1},
			{templateFile = "object/tangible/furniture/tatooine/frn_tato_chair_cafe_style_01.iff", x = 8.0, z = 1, y = 15.5, ox = 0, oy = 0, oz = 0, ow = 1, cellid = -1, containmentType = -1},
			{templateFile = "object/tangible/furniture/tatooine/frn_tato_chair_cafe_style_01.iff", x = 6.0, z = 1, y = 15.5, ox = 0, oy = 0, oz = 0, ow = 1, cellid = -1, containmentType = -1},			
			{templateFile = "object/tangible/furniture/tatooine/frn_tato_tbl_cafe_table_style_01.iff", x = 7.0, z = 1, y = 15.5, ox = 0, oy = 0, oz = 0, ow = 1, cellid = -1, containmentType = -1},
			{templateFile = "object/tangible/food/crafted/drink_double_dip_outer_rim_rumdrop.iff", x = 7.3, z = 1.75, y = 15.9, ox = 0, oy = 0, oz = 0, ow = 1, cellid = -1, containmentType = -1},
			{templateFile = "object/tangible/food/crafted/drink_elshandruu_pica_thundercloud.iff", x = 6.5, z = 1.75, y = 15.2, ox = 0, oy = 0, oz = 0, ow = 1, cellid = -1, containmentType = -1},
			{templateFile = "object/tangible/food/crafted/dessert_almond_kwevvu_crisp_munchies.iff", x = 7.1, z = 1.75, y = 16.0, ox = 0, oy = 0, oz = 0, ow = 1, cellid = -1, containmentType = -1},			
			{templateFile = "object/tangible/furniture/tatooine/frn_tato_cafe_parasol.iff", x = 7.0, z = 1.3, y = 15.5, ox = 0, oy = 0, oz = 0, ow = 1, cellid = -1, containmentType = -1},			
			{templateFile = "object/tangible/sign/all_sign_city_s03.iff", x = 7.0, z = 0.8, y = 6.5, ox = 0, oy = 0, oz = 0, ow = 1, cellid = -1, containmentType = -1},
			{templateFile = "object/tangible/terminal/terminal_player_structure.iff", x = -4.15, z = 0.267105, y = -0.7, ox = 0, oy = 0, oz = 0, ow = 1, cellid = 1, containmentType = -1}
	}
}

ObjectTemplates:addTemplate(object_revelation_building_player_tree_house, "object/building/player/tree_house.iff")
