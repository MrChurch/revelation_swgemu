
object_building_poi_transit_camp_s1 = object_building_poi_shared_transit_camp_s1:new {
	-- High Quality Camp	
	templateType = CAMPSTRUCTURE,
	lotSize = 0,
	baseMaintenanceRate = 0,
	basePowerRate = 0,
	
	skillMods = {{"private_medical_rating", 110}, {"private_med_wound_health", 60}, {"private_med_wound_action", 60}, {"private_aggro_mod", 50}, {"private_buff_mind", 110}},

	aggroMod = 50,
	
	duration = 3600,
	radius = 20,
	experience = 1000,
	skillRequired = 50,

	childObjects = {
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

    {templateFile = "object/tangible/furniture/city/streetlamp_med_01.iff",
      x = 3, z = 0, y = -9,
      ox = 0, oy = 0.422, oz = 0, ow = -0.906,
      cellid = -1,
      containmentType = -1},
      
    {templateFile = "object/static/vehicle/player_shuttle.iff",
      x = -16, z = 0, y = -12,
      ox = 0, oy = 0, oz = 0, ow = 0,
      cellid = -1,
      containmentType = -1},

	},

}

ObjectTemplates:addTemplate(object_building_poi_transit_camp_s1, "object/building/poi/transit_camp_s1.iff")
