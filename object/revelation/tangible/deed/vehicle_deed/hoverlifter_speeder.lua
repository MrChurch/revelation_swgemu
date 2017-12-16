--Copyright (C) 2015 <www.revelationonline.net> Author genesis@revelationonline.net





object_revelation_tangible_deed_vehicle_deed_hoverlifter_speeder = object_revelation_tangible_deed_vehicle_deed_shared_hoverlifter_speeder:new {

	templateType = VEHICLEDEED,

	controlDeviceObjectTemplate = "object/intangible/vehicle/hoverlifter_speeder_pcd.iff",
	generatedObjectTemplate = "object/mobile/vehicle/hoverlifter_speeder.iff",

	numberExperimentalProperties = {1, 1, 1},
	experimentalProperties = {"XX", "XX", "SR"},
	experimentalWeights = {1, 1, 1},
	experimentalGroupTitles = {"null", "null", "exp_durability"},
	experimentalSubGroupTitles = {"null", "null", "hit_points"},
	experimentalMin = {0, 0, 28000},
	experimentalMax = {0, 0, 30000},
	experimentalPrecision = {0, 0, 0},
	experimentalCombineType = {0, 0, 1},
}

ObjectTemplates:addTemplate(object_revelation_tangible_deed_vehicle_deed_hoverlifter_speeder, "object/tangible/deed/vehicle_deed/hoverlifter_speeder.iff")
