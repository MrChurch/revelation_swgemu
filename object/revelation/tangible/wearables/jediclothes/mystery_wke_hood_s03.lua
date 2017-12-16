object_tangible_wearables_wookiee_wke_hood_s03 = object_tangible_wearables_wookiee_shared_wke_hood_s03:new {
	playerRaces = { "object/creature/player/wookiee_male.iff",
				"object/creature/player/wookiee_female.iff",
				"object/mobile/vendor/wookiee_female.iff",
				"object/mobile/vendor/wookiee_male.iff" },

				maxCondition = 1000,
				objectMenuComponent = {"cpp", "RobeObjectMenuComponent"},
				certificationsRequired = {"force_title_jedi_rank_02"},
				customName = "Mystery Wookie Clan Hood",
				skillMods = {
					{"jedi_force_power_max", 100},
				},	
}

ObjectTemplates:addTemplate(object_tangible_wearables_wookiee_wke_hood_s03, "object/tangible/wearables/wookiee/jedi_wke_hood_s03.iff")
