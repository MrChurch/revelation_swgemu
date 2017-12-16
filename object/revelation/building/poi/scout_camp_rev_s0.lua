
object_building_poi_scout_camp_rev_s0 = object_building_poi_shared_scout_camp_rev_s0:new {
	-- Basic Camp
	templateType = CAMPSTRUCTURE,
	lotSize = 0,
	baseMaintenanceRate = 0,
	basePowerRate = 0,

	skillMods = {{"private_safe_logout", 1},{"private_med_battle_fatigue", 5}, {"private_medical_rating", 70}, {"private_med_wound_health", 20}, {"private_med_wound_action", 20}, {"private_buff_mind", 100}},
	
	aggroMod = 0,
	
	duration = 3600,
	radius = 12,
	experience = 360,
	skillRequired = 5,

	childObjects = {
		{templateFile = "object/tangible/camp/camp_control_panel.iff", 
			x = 2.3, z = 0, y = 1.7, 
			ox = 0, oy = 1, oz = 0, ow = -0.707107, 
			cellid = -1, 
			containmentType = -1},

		{templateFile = "object/tangible/camp/campfire_logs_ash.iff", 
			x = 0.806110, z = 0, y = -0.1, 
			ox = 0, oy = 0, oz = 0, ow = 0, 
			cellid = -1, 
			containmentType = -1},

		{templateFile = "object/static/particle/particle_campfire_style_1.iff", 
			x = 0.806110, z = 0, y = -0.1, 
			ox = 0, oy = 0, oz = 0, ow = 0, 
			cellid = -1, 
			containmentType = -1},

		{templateFile = "object/tangible/camp/camp_chair_s1.iff", 
			x = .863, z = 0, y = -2.75, 
			ox = 0, oy = 0, oz = -.009319, ow = -.5, 
			cellid = -1, 
			containmentType = -1},
      
    {templateFile = "object/static/structure/dantooine/dant_fence_8m.iff", 
      x = 4, z = 0, y = 4.4, 
      ox = 0, oy = 0.866, oz = 0, ow = -.3338, 
      cellid = -1, 
      containmentType = -1},

    {templateFile = "object/static/structure/dantooine/dant_fence_8m.iff", 
      x = 4, z = 0, y = -3.4, 
      ox = 0, oy = -0.258, oz = 0, ow = 0.965, 
      cellid = -1, 
      containmentType = -1},      
      
    {templateFile = "object/resource_container/organic_leathery_hide.iff", 
      x = 0, z = 0, y = 6.2, 
      ox = 0, oy = 0.866, oz = 0, ow = -.3338, 
      cellid = -1, 
      containmentType = -1}, 
      
    {templateFile = "object/resource_container/organic_structure.iff", 
      x = 0, z = 0.0, y = 5.8, 
      ox = 0, oy = 0.866, oz = 0, ow = -.3338, 
      cellid = -1, 
      containmentType = -1},            
      
      			
	}
}
  
ObjectTemplates:addTemplate(object_building_poi_scout_camp_rev_s0, "object/building/poi/scout_camp_rev_s0.iff")
