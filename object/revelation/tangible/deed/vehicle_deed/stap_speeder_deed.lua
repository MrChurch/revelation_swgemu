--Copyright (C) 2015 <www.revelationonline.net> Author matthias.muente@gmx.de

object_revelation_tangible_deed_vehicle_deed_stap_speeder_deed = object_revelation_tangible_deed_vehicle_deed_shared_speeder_stap_deed:new {

  templateType = VEHICLEDEED,

  controlDeviceObjectTemplate = "object/intangible/vehicle/stap_speeder_pcd.iff",
  generatedObjectTemplate = "object/mobile/vehicle/stap_speeder.iff",

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

ObjectTemplates:addTemplate(object_revelation_tangible_deed_vehicle_deed_stap_speeder_deed, "object/tangible/deed/vehicle_deed/stap_speeder_deed.iff")
