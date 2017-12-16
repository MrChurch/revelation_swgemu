--Copyright (C) 2015 <www.revelationonline.net> Author matthias.muente@gmx.de


object_revelation_tangible_wearables_hat_nightsister_hat_s01 = object_revelation_tangible_wearables_hat_shared_nightsister_hat_s01:new {
		playerRaces = { "object/creature/player/bothan_male.iff",
					"object/creature/player/bothan_female.iff",
					"object/creature/player/human_male.iff",
					"object/creature/player/human_female.iff",
					"object/creature/player/moncal_male.iff",
					"object/creature/player/moncal_female.iff",
					"object/creature/player/rodian_male.iff",
					"object/creature/player/rodian_female.iff",
					"object/creature/player/sullustan_male.iff",
					"object/creature/player/sullustan_female.iff",
					"object/creature/player/trandoshan_male.iff",
					"object/creature/player/trandoshan_female.iff",
					"object/creature/player/zabrak_male.iff",
					"object/creature/player/zabrak_female.iff" },
				maxCondition = 1000,
				objectMenuComponent = {"cpp", "RobeObjectMenuComponent"},
				certificationsRequired = {"force_title_jedi_rank_02"},
				customName = "Mystery Nightsister Hat 1",
				skillMods = {
					{"jedi_force_power_max", 100},
				},
}

ObjectTemplates:addTemplate(object_revelation_tangible_wearables_hat_nightsister_hat_s01, "object/tangible/wearables/hat/jedi_nightsister_hat_s01.iff")
