object_revelation_tangible_wearables_robe_robe_of_the_dragonbeast_light = object_revelation_tangible_wearables_robe_shared_robe_jedi_light_s04:new {
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
          {"jedi_force_power_max", 300},
          {"jedi_force_power_regen", 10}
        },

        noTrade = 0,
        maxCondition = 1000,
        
        faction = "rebel",
        objectMenuComponent = {"cpp", "RobeObjectMenuComponent"},
        certificationsRequired = {"force_title_jedi_rank_02"},
        --attributeListComponent = "JediRobeAttributeListComponent",
        customName = "old ancient light Robe"
}

ObjectTemplates:addTemplate(object_revelation_tangible_wearables_robe_robe_of_the_dragonbeast_light, "object/tangible/wearables/robe/robe_dragon_light.iff")
