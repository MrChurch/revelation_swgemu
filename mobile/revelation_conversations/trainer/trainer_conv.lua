function createTrainerConversationTemplate(trainer, masterskill, templatename)
	trainer_convotemplate = ConvoTemplate:new {
		initialScreen = "convoscreentrainerinfo",
		templateType = "Trainer",
		screens = {}
	}

	trainer_convoscreentrainerinfo = ConvoScreen:new {
		id = "convoscreentrainerinfo",
		leftDialog = "@skill_teacher:" .. trainer, -- Storage for the trainer master skill.
		stopConversation = "false",
		options = { 
			{"masterskill", masterskill }
		}
	}
	trainer_convotemplate:addScreen(trainer_convoscreentrainerinfo);

	trainer_convoscreenstart = ConvoScreen:new {
		id = "convoscreenstart",
		leftDialog = "@skill_teacher:" .. trainer, -- Building, crafting, creating.  It's all in your hands.  How can I help move you along in this profession?
		stopConversation = "false",
		options = { 
			{"@skill_teacher:opt1_1", "convoscreentrainableskills"}, -- I'm interested in learning a skill.
			{"@skill_teacher:opt1_2", "convoscreennextskills"} -- What skills will I be able to learn next?
		}
	}
	trainer_convotemplate:addScreen(trainer_convoscreenstart);

	-- Screen coming with the optionlist of all currently learnable skills
	trainer_convoscreentrainableskills = ConvoScreen:new {
		id = "convoscreentrainableskills",
		leftDialog = "@skill_teacher:msg2_1", -- You may learn the following skills right now...
		stopConversation = "false",
		options = {
			{ "--skillholder--", "convoscreencanlearnskill" }, -- Place holder for a skill.
			{ "--skillholder--", "convoscreencanlearnskill" }, -- Place holder for a skill.
			{ "--skillholder--", "convoscreencanlearnskill" }, -- Place holder for a skill.
			{ "--skillholder--", "convoscreencanlearnskill" }, -- Place holder for a skill.
			{ "@skill_teacher:back", "convoscreenstart" } -- Place holder for go back.
		}
	}
	trainer_convotemplate:addScreen(trainer_convoscreentrainableskills);

	-- coming with the optionlist for all the skills you are able to learn next?
	trainer_convoscreennextskills = ConvoScreen:new {
		id = "convoscreennextskills",
		leftDialog = "@skill_teacher:msg2_2", -- Here are the skills I can teach you next, if you have gained enough experience...
		stopConversation = "false",
		options = {
			{ "--skillholder--", "convoscreenskillinfo" }, -- Place holder for a skill.
			{ "--skillholder--", "convoscreenskillinfo" }, -- Place holder for a skill.
			{ "--skillholder--", "convoscreenskillinfo" }, -- Place holder for a skill.
			{ "--skillholder--", "convoscreenskillinfo" }, -- Place holder for a skill.
			{ "@skill_teacher:back", "convoscreenstart" } -- Place holder for go back.
		}
	}
	trainer_convotemplate:addScreen(trainer_convoscreennextskills);

	-- after clicking on a learable skill
	trainer_convoscreencanlearnskill = ConvoScreen:new {
		id = "convoscreencanlearnskill",
		leftDialog = "@skill_teacher:prose_cost", --It will cost %DI credits to train in %TO. Would you like to continue?
		stopConversation = "false",
		options = {
			{"@skill_teacher:yes", "convoscreentrainskill"},
			{"@skill_teacher:no", "convoscreendonttrain"}
		}
	}
	trainer_convotemplate:addScreen(trainer_convoscreencanlearnskill);

	-- after clicking no when asked "Are you sure..."
	trainer_convoscreendonttrain = ConvoScreen:new {
		id = "convoscreendonttrain",
		leftDialog = "@skill_teacher:msg_no", --Too rich for ya? Well, maybe I can help you with something else?
		stopConversation = "false",
		options = {
			{"@skill_teacher:back", "convoscreenstart" }
		}
	}
	trainer_convotemplate:addScreen(trainer_convoscreendonttrain);

	-- after successfully training a skill and still having skills left to train (enogh xp already or not)
	trainer_convoscreentrainskill = ConvoScreen:new {
		id = "convoscreentrainskill",
		leftDialog = "@skill_teacher:msg3_2", -- You're an exceptionally bright student! Perhaps we shall work together again soon.
		stopConversation = "false",
		options = {
			{"@skill_teacher:back", "convoscreenstart" }
		}
	}
	trainer_convotemplate:addScreen(trainer_convoscreentrainskill);

	-- after successfully learning the last available skill from a trainer
	trainer_convoscreentrainedmaster = ConvoScreen:new {
		id = "convoscreentrainedmaster",
		leftDialog = "@skill_teacher:surpass_trainer", --WOW! You have learned everything I have to teach... I suppose that now it's time for you to find your own path. Farewell %TT.
		stopConversation = "true",
		options = { }
	}
	trainer_convotemplate:addScreen(trainer_convoscreentrainedmaster);

	-- after clicking a skill from the "What skills will I be able to learn next?" optionlist
	trainer_convoscreenskillinfo = ConvoScreen:new {
		id = "convoscreenskillinfo",
		leftDialog = "@skill_teacher:msg3_3", -- Let me give you some information about this skill...
		stopConversation = "false",
		options = { 
			{"@skill_teacher:back", "convoscreenstart" }
		}
	}
	trainer_convotemplate:addScreen(trainer_convoscreenskillinfo);

	-- after clicking "I'm interested in learning a skill." and not having enogh xp for any skill
	trainer_convoscreennotenoughxp = ConvoScreen:new {
		id = "convoscreennotenoughxp",
		leftDialog = "@skill_teacher:error_empty_category", -- Sorry, you aren't quite up to the point where I can teach you anything else.
		stopConversation = "false",
		options = { 
			{"@skill_teacher:back", "convoscreenstart" }
		}
	}
	trainer_convotemplate:addScreen(trainer_convoscreennotenoughxp);

	trainer_convoscreennotenoughskillpoints = ConvoScreen:new {
		id = "convoscreennotenoughskillpoints",
		leftDialog = "@skill_teacher:nsf_skill_pts", -- You must first make %DI skill points available before I can teach you %TO.
		stopConversation = "false",
		options = { 
			{"@skill_teacher:back", "convoscreenstart" }
		}
	}
	trainer_convotemplate:addScreen(trainer_convoscreennotenoughskillpoints);

	trainer_convoscreennotenoughcredits = ConvoScreen:new {
		id = "convoscreennotenoughcredits",
		leftDialog = "@skill_teacher:prose_nsf", -- You lack the %DI credits required for training in %TO.
		stopConversation = "false",
		options = { 
			{"@skill_teacher:back", "convoscreenstart" }
		}
	}
	trainer_convotemplate:addScreen(trainer_convoscreennotenoughcredits);

	trainer_convoscreennotenoughskillpoints = ConvoScreen:new {
		id = "convoscreennotenoughskillpoints",
		leftDialog = "@skill_teacher:no_skill_pts", -- How can I teach you when you do not have any available skill points.
		stopConversation = "false",
		options = { 
			{"@skill_teacher:back", "convoscreenstart" }
		}
	}
	trainer_convotemplate:addScreen(trainer_convoscreennotenoughskillpoints);

	trainer_convoscreenerror = ConvoScreen:new {
		id = "convoscreenerror",
		leftDialog = "@skill_teacher:error_grant_skill", -- Hrmm... seems that I cant teach you that skill due to an internal error. TestTrac?
		stopConversation = "true",
		options = { 
			{"@skill_teacher:back", "convoscreenstart" }
		}
	}
	trainer_convotemplate:addScreen(trainer_convoscreenerror);

	-- conversing with a trainer after reaching master in that profession
	trainer_convoscreenismaster = ConvoScreen:new {
		id = "convoscreenismaster",
		leftDialog = "@skill_teacher:topped_out", -- I'm sorry, but I cannot teach you anymore. You have already learned everything I have to teach.
		stopConversation = "true",
		options = { }
	}
	trainer_convotemplate:addScreen(trainer_convoscreenismaster);

	addConversationTemplate(templatename, trainer_convotemplate);
end

createTrainerConversationTemplate("trainer_defender", "force_discipline_defender_master", "trainer_defender_convotemplate")
createTrainerConversationTemplate("trainer_lightsaber", "force_discipline_light_saber_master", "trainer_lightsaber_convotemplate")
createTrainerConversationTemplate("trainer_powers", "force_discipline_powers_master", "trainer_powers_convotemplate")
createTrainerConversationTemplate("trainer_enhancer", "force_discipline_enhancements_master", "trainer_enhancer_convotemplate")
createTrainerConversationTemplate("trainer_healer", "force_discipline_healing_master", "trainer_healer_convotemplate")
createTrainerConversationTemplate("trainer_gcw_base", "gcw_skill_common", "trainer_gcw_skill_common_convotemplate")
createTrainerConversationTemplate("trainer_gcw_aug_health", "gcw_skill_common_01_aug_health_master", "trainer_gcw_skill_common_01_aug_health_convotemplate")
createTrainerConversationTemplate("trainer_gcw_aug_action", "gcw_skill_common_02_aug_action_master", "trainer_gcw_skill_common_02_aug_action_convotemplate")
createTrainerConversationTemplate("trainer_gcw_aug_mind", "gcw_skill_common_03_aug_mind_master", "trainer_gcw_skill_common_03_aug_mind_convotemplate")
createTrainerConversationTemplate("trainer_gcw_purge", "gcw_skill_common_04_purge_master", "trainer_gcw_skill_common_04_purge_convotemplate")
createTrainerConversationTemplate("trainer_gcw_bionics", "gcw_skill_common_05_bionics_master", "trainer_gcw_skill_common_05_bionics_convotemplate")
createTrainerConversationTemplate("trainer_gcw_defense", "gcw_skill_common_07_defense_master", "trainer_gcw_skill_common_07_defense_convotemplate")
createTrainerConversationTemplate("trainer_gcw_heal", "gcw_skill_common_06_heal_master", "trainer_gcw_skill_common_06_heal_convotemplate")
createTrainerConversationTemplate("trainer_gcw_medic", "gcw_skill_common_08_medic_master", "trainer_gcw_skill_common_08_medic_convotemplate")
createTrainerConversationTemplate("trainer_gcw_resurrection", "gcw_skill_common_09_resurrection_master", "trainer_gcw_skill_common_09_resurrection_convotemplate")
createTrainerConversationTemplate("trainer_gcw_utility", "gcw_skill_common_10_utility_master", "trainer_gcw_skill_common_10_utility_convotemplate")



