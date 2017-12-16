--Copyright (C) 2015 <www.revelationonline.net> Author genesis@revelationonline.net
object_revelation_mobile_vehicle_hoverlifter_speeder = object_revelation_mobile_vehicle_shared_hoverlifter_speeder:new {
  templateType = VEHICLE,
  decayRate = 15, -- Damage tick per decay cycle
  decayCycle = 600 -- Time in seconds per cycle
}

ObjectTemplates:addTemplate(object_revelation_mobile_vehicle_hoverlifter_speeder, "object/mobile/vehicle/hoverlifter_speeder.iff")
