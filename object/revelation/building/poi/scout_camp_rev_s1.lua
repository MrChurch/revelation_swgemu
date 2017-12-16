object_building_poi_scout_camp_rev_s1 = object_building_poi_shared_scout_camp_rev_s1:new {
	-- Multiperson
	templateType = CAMPSTRUCTURE,
	lotSize = 0,
	baseMaintenanceRate = 0,
	basePowerRate = 0,
	
	skillMods = {{"private_safe_logout", 1},{"private_med_battle_fatigue", 5}, {"private_medical_rating", 80}, {"private_med_wound_health", 20}, {"private_med_wound_action", 20}, {"private_buff_mind", 100}},

	aggroMod = 0,
	duration = 3600,
	radius = 15,
	experience = 640,
	skillRequired = 10,

	childObjects = {
		{templateFile = "object/tangible/camp/camp_control_panel.iff", 
			x = 2.6, z = 0, y = -1.3, 
			ox = 0, oy = -.5, oz = 0, ow = .87, 
			cellid = -1, 
			containmentType = -1},

		{templateFile = "object/tangible/camp/campfire_logs_ash.iff", 
			x = -.5, z = 0, y = -.15, 
			ox = 0, oy = 0, oz = 0, ow = 0, 
			cellid = -1, 
			containmentType = -1},

		{templateFile = "object/static/particle/particle_campfire_style_1.iff", 
			x = -.5, z = 0, y = -.15,  
			ox = 0, oy = 0, oz = 0, ow = 0, 
			cellid = -1, 
			containmentType = -1},

		{templateFile = "object/tangible/camp/camp_chair_s1.iff", 
			x = -0.7, z = 0, y = 1.5, 
			ox = 0, oy = .997055, oz = .0, ow = .0766933, 
			cellid = -1, 
			containmentType = -1},

		{templateFile = "object/tangible/camp/camp_chair_s1.iff", 
			x = .6, z = 0, y = -1.3, 
			ox = 0, oy = -.44, oz = 0, ow = .89, 
			cellid = -1, 
			containmentType = -1},

		{templateFile = "object/tangible/camp/camp_chair_s1.iff", 
			x = -2, z = 0, y = -1, 
			ox = 0, oy = .5, oz = 0, ow = .87, 
			cellid = -1, 
			containmentType = -1},
			
    {templateFile = "object/static/structure/dantooine/dant_fence_8m.iff", 
      x = -2, z = 0, y = -4, 
      ox = 0, oy = 0.939, oz = 0, ow = -0.34, 
      cellid = -1, 
      containmentType = -1},    
      
    {templateFile = "object/static/structure/dantooine/dant_fence_8m.iff", 
      x = 7, z = 0, y = 2, 
      ox = 0, oy = 0.939, oz = 0, ow = -0.34, 
      cellid = -1, 
      containmentType = -1},

    {templateFile = "object/static/structure/dantooine/dant_fence_8m.iff", 
      x = 7, z = 0, y = -4, 
      ox = 0, oy = 0.422, oz = 0, ow = -0.906, 
      cellid = -1, 
      containmentType = -1},
      
    {templateFile = "object/tangible/furniture/city/streetlamp_med_01.iff", 
      x = 6, z = 0, y = -3.5, 
      ox = 0, oy = 0.422, oz = 0, ow = -0.906, 
      cellid = -1, 
      containmentType = -1},      
            
    --{templateFile = "object/static/installation/mockup_power_generator_wind_style_1.iff", 
    --  x = 3, z = 0, y = -8, 
    --  ox = 0, oy = 0.422, oz = 0, ow = -0.906, 
    -- cellid = -1, 
    --  containmentType = -1},               
	}
}

ObjectTemplates:addTemplate(object_building_poi_scout_camp_rev_s1, "object/building/poi/scout_camp_rev_s1.iff")
