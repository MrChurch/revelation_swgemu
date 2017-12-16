
object_building_poi_scout_camp_rev_s2 = object_building_poi_shared_scout_camp_rev_s2:new {
	-- Improved Camp	
	templateType = CAMPSTRUCTURE,
	lotSize = 0,
	baseMaintenanceRate = 0,
	basePowerRate = 0,
	
	skillMods = {{"private_safe_logout", 1},{"private_med_battle_fatigue", 8}, {"private_medical_rating", 90}, {"private_med_wound_health", 40}, {"private_med_wound_action", 40}, {"private_aggro_mod", 20}, {"private_buff_mind", 100}},

	aggroMod = 20,
	duration = 3600,
	radius = 18,
	experience = 800,
	skillRequired = 30,

	childObjects = {
		{templateFile = "object/tangible/camp/camp_control_panel.iff", 
			x = -1, z = 0, y = 3.73, 
			ox = 0, oy = 1, oz = 0, ow = 0, 
			cellid = -1, 
			containmentType = -1},

		{templateFile = "object/tangible/camp/campfire_logs_ash.iff", 
			x = .50611, z = 0, y = -.596347, 
			ox = 0, oy = 0, oz = 0, ow = 0, 
			cellid = -1, 
			containmentType = -1},

		{templateFile = "object/static/particle/particle_campfire_style_1.iff", 
			x = .50611, z = 0, y = -.596347, 
			ox = 0, oy = 0, oz = 0, ow = 0, 
			cellid = -1, 
			containmentType = -1},


		{templateFile = "object/tangible/camp/camp_chair_s2.iff", 
			x = -2.2, z = 0, y = -.41, 
			ox = 0, oy = .66, oz = .0, ow = .75, 
			cellid = -1, 
			containmentType = -1},

		{templateFile = "object/tangible/camp/camp_chair_s2.iff", 
			x = 2.59, z = 0, y = -1.3, 
			ox = 0, oy = .575, oz = 0, ow = -.82, 
			cellid = -1, 
			containmentType = -1},

		{templateFile = "object/tangible/camp/camp_chair_s2.iff", 
			x = 1.91, z = 0, y = -2.43, 
			ox = 0, oy = -.38, oz = 0, ow = .92, 
			cellid = -1, 
			containmentType = -1},

		{templateFile = "object/tangible/camp/camp_chair_s2.iff", 
			x = .66, z = 0, y = -2.9, 
			ox = 0, oy = -.13, oz = 0, ow = .99, 
			cellid = -1, 
			containmentType = -1},
			
		{templateFile = "object/static/structure/dantooine/dant_fence_8m.iff", 
      x = 3, z = 0, y = 10, 
      ox = 0, oy = 0.939, oz = 0, ow = -0.34, 
      cellid = -1, 
      containmentType = -1},    
      
    {templateFile = "object/static/structure/dantooine/dant_fence_8m.iff", 
      x = -5, z = 0, y = 7, 
      ox = 0, oy = 0.422, oz = 0, ow = -0.906, 
      cellid = -1, 
      containmentType = -1},
      
    {templateFile = "object/static/structure/dantooine/dant_fence_8m.iff", 
      x = -5, z = 0, y = -4, 
      ox = 0, oy = 0.939, oz = 0, ow = -0.34, 
      cellid = -1, 
      containmentType = -1},

    {templateFile = "object/tangible/crafting/station/public_weapon_station.iff", 
      x = -8, z = 0, y = 1.5, 
      ox = 0, oy = 0.7, oz = 0, ow = 0.7, 
      cellid = -1, 
      containmentType = -1},      
      
      
    {templateFile = "object/tangible/furniture/city/streetlamp_med_01.iff", 
      x = -7, z = 0, y = 2.5, 
      ox = 0, oy = 0.422, oz = 0, ow = -0.906, 
      cellid = -1, 
      containmentType = -1},      
            
    {templateFile = "object/static/installation/mockup_power_generator_wind_style_1.iff", 
      x = -3, z = 0, y = 11, 
      ox = 0, oy = 0.422, oz = 0, ow = -0.906, 
      cellid = -1, 
      containmentType = -1},   
           
	}
}

ObjectTemplates:addTemplate(object_building_poi_scout_camp_rev_s2, "object/building/poi/scout_camp_rev_s2.iff")
