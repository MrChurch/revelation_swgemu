--Copyright (C) 2015 <www.revelationonline.net> Author genesis@revelationonline.net





object_revelation_tangible_deed_vehicle_deed_basilisk_war_droid = object_revelation_tangible_deed_vehicle_deed_shared_basilisk_war_droid:new {

	templateType = VEHICLEDEED,

	controlDeviceObjectTemplate = "object/intangible/vehicle/basilisk_war_droid.iff",
	generatedObjectTemplate = "object/mobile/vehicle/basilisk_war_droid.iff",

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

ObjectTemplates:addTemplate(object_revelation_tangible_deed_vehicle_deed_basilisk_war_droid, "object/tangible/deed/vehicle_deed/basilisk_war_droid.iff")
