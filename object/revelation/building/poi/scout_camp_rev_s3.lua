
object_building_poi_scout_camp_rev_s3 = object_building_poi_shared_scout_camp_rev_s3:new {
	-- High Quality Camp	
	templateType = CAMPSTRUCTURE,
	lotSize = 0,
	baseMaintenanceRate = 0,
	basePowerRate = 0,
	
	skillMods = {{"private_safe_logout", 1},{"private_med_battle_fatigue", 10}, {"private_medical_rating", 110}, {"private_med_wound_health", 60}, {"private_med_wound_action", 60}, {"private_aggro_mod", 50}, {"private_buff_mind", 110}},

	aggroMod = 50,
	
	duration = 3600,
	radius = 20,
	experience = 1000,
	skillRequired = 50,

	childObjects = {
		{templateFile = "object/tangible/camp/camp_control_panel.iff", 
			x = -2.5, z = 0, y = -2, 
			ox = 0, oy = .59, oz = 0, ow = 0.81, 
			cellid = -1, 
			containmentType = -1},

		{templateFile = "object/tangible/camp/campfire_logs_ash.iff", 
			x = .8, z = 0, y = -.1, 
			ox = 0, oy = 0, oz = 0, ow = 0, 
			cellid = -1, 
			containmentType = -1},

		{templateFile = "object/static/particle/particle_campfire_style_1.iff", 
			x = .8, z = 0, y = -.1, 
			ox = 0, oy = 0, oz = 0, ow = 0, 
			cellid = -1, 
			containmentType = -1},

		{templateFile = "object/tangible/camp/camp_chair_s2.iff", 
			x = .66, z = 0, y = -2.9, 
			ox = 0, oy = 0, oz = 0, ow = 0, 
			cellid = -1, 
			containmentType = -1},

    {templateFile = "object/tangible/camp/camp_chair_s2.iff", 
			x = 2.2829, z = 0, y = -2.4205, 
			ox = 0, oy = -0.2722, oz = 0, ow = 0.9627, 
			cellid = -1, 
			containmentType = -1},

		{templateFile = "object/tangible/camp/camp_chair_s2.iff", 
			x = -.5, z = 0, y = 2.6, 
			ox = 0, oy = .95, oz = 0, ow = .314, 
			cellid = -1, 
			containmentType = -1},

		{templateFile = "object/tangible/camp/camp_chair_s2.iff", 
			x = 1.5, z = 0, y = 2.8, 
			ox = 0, oy = 1, oz = 0, ow = -.1, 
			cellid = -1, 
			containmentType = -1},

		{templateFile = "object/tangible/camp/camp_chair_s2.iff", 
			x = 3.5, z = 0, y = 2, 
			ox = 0, oy = .96, oz = 0, ow = -.3, 
			cellid = -1, 
			containmentType = -1},

		{templateFile = "object/tangible/camp/camp_chair_s1.iff", 
			x = 7.5, z = 0, y = -3, 
			ox = 0, oy = .57, oz = 0, ow = .81, 
			cellid = -1, 
			containmentType = -1},

		{templateFile = "object/tangible/camp/camp_chair_s1.iff", 
			x = 7.5, z = 0, y = -5, 
			ox = 0, oy = .78, oz = 0, ow = .61, 
			cellid = -1, 
			containmentType = -1},

    {templateFile = "object/tangible/crafting/station/public_food_station.iff", 
      x = 1, z = 0, y = -8, 
      ox = 0, oy = 0, oz = 0, ow = -1, 
      cellid = -1, 
      containmentType = -1},

    {templateFile = "object/tangible/crafting/station/public_weapon_station.iff", 
      x = 4, z = 0, y = -8, 
      ox = 0, oy = 0, oz = 0, ow = -1, 
      cellid = -1, 
      containmentType = -1},
            		
    {templateFile = "object/tangible/furniture/city/streetlamp_med_01.iff", 
      x = 3, z = 0, y = -9, 
      ox = 0, oy = 0.422, oz = 0, ow = -0.906, 
      cellid = -1, 
      containmentType = -1},      
            
    {templateFile = "object/static/installation/mockup_power_generator_wind_style_1.iff", 
      x = -9, z = 0, y = -9, 
      ox = 0, oy = 0.422, oz = 0, ow = -0.906, 
      cellid = -1, 
      containmentType = -1},
      
    {templateFile = "object/static/structure/dantooine/dant_fence_8m.iff", 
      x = -9, z = 0, y = -5, 
      ox = 0, oy = 0, oz = 0, ow = 0, 
      cellid = -1, 
      containmentType = -1},

    {templateFile = "object/static/structure/dantooine/dant_fence_8m.iff", 
      x = -9, z = 0, y = 3, 
      ox = 0, oy = 0, oz = 0, ow = 0, 
      cellid = -1, 
      containmentType = -1},
            
    {templateFile = "object/static/structure/dantooine/dant_fence_8m.iff", 
      x = 9, z = 0, y = 9, 
      ox = 0, oy = 0.939, oz = 0, ow = -0.34, 
      cellid = -1, 
      containmentType = -1},
 
	},

}

ObjectTemplates:addTemplate(object_building_poi_scout_camp_rev_s3, "object/building/poi/scout_camp_rev_s3.iff")
