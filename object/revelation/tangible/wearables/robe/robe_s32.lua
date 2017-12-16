--Copyright (C) 2015 <www.revelationonline.net> Author genesis@revelationonline.net





object_revelation_tangible_wearables_robe_robe_s32 = object_revelation_tangible_wearables_robe_shared_robe_s32:new {
  playerRaces = { "object/creature/player/bothan_male.iff",
				"object/creature/player/bothan_female.iff",
				"object/creature/player/human_male.iff",
				"object/creature/player/human_female.iff",
				"object/creature/player/ithorian_male.iff",
				"object/creature/player/ithorian_female.iff",
				"object/creature/player/moncal_male.iff",
				"object/creature/player/moncal_female.iff",
				"object/creature/player/rodian_male.iff",
				"object/creature/player/rodian_female.iff",
				"object/creature/player/sullustan_male.iff",
				"object/creature/player/sullustan_female.iff",
				"object/creature/player/trandoshan_male.iff",
				"object/creature/player/trandoshan_female.iff",
				"object/creature/player/twilek_male.iff",
				"object/creature/player/twilek_female.iff",
				"object/creature/player/wookiee_male.iff",
				"object/creature/player/wookiee_female.iff",
				"object/creature/player/zabrak_male.iff",
				"object/creature/player/zabrak_female.iff" },

				maxCondition = 1000,

				skillMods = {
					{"jedi_force_power_max", 450},
					{"jedi_force_power_regen", 25},
				},

				noTrade = 1,

				templateType = ROBEOBJECT,
				faction = "imperial",
				objectMenuComponent = {"cpp", "RobeObjectMenuComponent"},
				certificationsRequired = {"force_title_jedi_rank_02"},
        customName = "Robe of Hatred Hood down"
}

ObjectTemplates:addTemplate(object_revelation_tangible_wearables_robe_robe_s32, "object/tangible/wearables/robe/robe_s32.iff")
