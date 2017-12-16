object_tangible_wearables_hat_hat_twilek_s04 = object_tangible_wearables_hat_shared_hat_twilek_s05:new {
	playerRaces = { "object/creature/player/twilek_male.iff",
				"object/creature/player/twilek_female.iff",
				"object/mobile/vendor/twilek_female.iff",
				"object/mobile/vendor/twilek_male.iff" },

				maxCondition = 1000,
				objectMenuComponent = {"cpp", "RobeObjectMenuComponent"},
				certificationsRequired = {"force_title_jedi_rank_02"},
				customName = "Mystery Twilek Hat",
				skillMods = {
					{"jedi_force_power_max", 100},
				},	
}

ObjectTemplates:addTemplate(object_tangible_wearables_hat_hat_twilek_s04, "object/tangible/wearables/hat/jedi_hat_twilek_s04.iff")
