--Copyright (C) 2015 <www.revelationonline.net> Author matthias.muente@gmx.de
object_revelation_mobile_vehicle_landspeeder_lava_skiff = object_revelation_mobile_vehicle_shared_landspeeder_lava_skiff:new {
	templateType = VEHICLE,
	decayRate = 15, -- Damage tick per decay cycle
	decayCycle = 600 -- Time in seconds per cycle
}

ObjectTemplates:addTemplate(object_revelation_mobile_vehicle_landspeeder_lava_skiff, "object/mobile/vehicle/landspeeder_lava_skiff.iff")
