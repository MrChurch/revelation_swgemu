--Copyright (C) 2015 <www.revelationonline.net> Author genesis@revelationonline.net
object_revelation_mobile_vehicle_basilisk_war_droid = object_revelation_mobile_vehicle_shared_basilisk_war_droid:new {
  templateType = VEHICLE,
  decayRate = 15, -- Damage tick per decay cycle
  decayCycle = 600 -- Time in seconds per cycle
}

ObjectTemplates:addTemplate(object_revelation_mobile_vehicle_basilisk_war_droid, "object/mobile/vehicle/basilisk_war_droid.iff")
