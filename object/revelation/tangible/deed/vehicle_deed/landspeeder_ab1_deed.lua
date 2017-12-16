--Copyright (C) 2015 <www.revelationonline.net> Author matthias.muente@gmx.de

object_revelation_tangible_deed_vehicle_deed_landspeeder_ab1_deed = object_revelation_tangible_deed_vehicle_deed_shared_landspeeder_ab1_deed:new {

  templateType = VEHICLEDEED,

  controlDeviceObjectTemplate = "object/intangible/vehicle/landspeeder_ab1_pcd.iff",
  generatedObjectTemplate = "object/mobile/vehicle/landspeeder_ab1.iff",

  numberExperimentalProperties = {1, 1, 1},
  experimentalProperties = {"XX", "XX", "SR"},
  experimentalWeights = {1, 1, 1},
  experimentalGroupTitles = {"null", "null", "exp_durability"},
  experimentalSubGroupTitles = {"null", "null", "hit_points"},
  experimentalMin = {0, 0, 1000},
  experimentalMax = {0, 0, 6000},
  experimentalPrecision = {0, 0, 0},
  experimentalCombineType = {0, 0, 1},
}

ObjectTemplates:addTemplate(object_revelation_tangible_deed_vehicle_deed_landspeeder_ab1_deed, "object/tangible/deed/vehicle_deed/landspeeder_ab1_deed.iff")
