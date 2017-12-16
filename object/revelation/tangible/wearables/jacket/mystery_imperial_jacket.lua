object_revelation_tangible_wearables_jacket_jacket_ace_imperial = object_revelation_tangible_wearables_jacket_shared_jacket_ace_imperial:new {
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
				
		skillMods = {
			{"jedi_force_power_regen", 5},
		},

		noTrade = 0,
		faction = "Imperial",
		maxCondition = 1000,
		--templateType = ROBEOBJECT,
		objectMenuComponent = {"cpp", "RobeObjectMenuComponent"},
		certificationsRequired = {"force_title_jedi_rank_02"},
		--attributeListComponent = "JediRobeAttributeListComponent",
		customName = "mystery Imperial Ace Jacket"
}

ObjectTemplates:addTemplate(object_revelation_tangible_wearables_jacket_jacket_ace_imperial, "object/tangible/wearables/jacket/jacket_jedi_imperial_ace.iff")