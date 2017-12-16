--Copyright (C) 2015 <www.revelationonline.net> Author matthias.muente@gmx.de
object_revelation_mobile_vehicle_sith_speeder = object_revelation_mobile_vehicle_shared_sith_speeder:new {
	templateType = VEHICLE,
	decayRate = 15, -- Damage tick per decay cycle
	decayCycle = 600 -- Time in seconds per cycle
}

ObjectTemplates:addTemplate(object_revelation_mobile_vehicle_sith_speeder, "object/mobile/vehicle/sith_speeder.iff")
