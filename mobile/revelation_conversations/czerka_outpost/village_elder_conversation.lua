village_elder_template = ConvoTemplate:new {
	initialScreen = "first_screen",
	templateType = "Lua",
	luaClassHandler = "czerka_outpost_elder_convo_handler",
	screens = {}
}
village_elder_first_screen = ConvoScreen:new {
	id = "first_screen",
	leftDialog = "",
	customDialogText = "You are also searching the way of the force Yungster  ?",
	stopConversation = "false",
	options = {
            {"Yes Sir !", "select_jedi"},
            {"No..", "deny_quest"},
	}
}
village_elder_template:addScreen(village_elder_first_screen);

village_elder_deny_quest = ConvoScreen:new {
	id = "deny_quest",
	leftDialog = "",
	customDialogText = "",
	stopConversation = "true",
	options = {
	}
}
village_elder_template:addScreen(village_elder_deny_quest);

village_elder_select_jedi = ConvoScreen:new {
	id = "select_jedi",
	leftDialog = "",
	customDialogText = "The Elder laughing laud. Why you asking me dumb-nut ?  The force is since your birth in you, the force is in everything. The Question is how strong is the force in you ? But that is a answer you can find only by yourself.",
	stopConversation = "true",
	options = {
		{"I need to go ...", "deny_quest"},
	}
}
village_elder_template:addScreen(village_elder_select_jedi);

village_elder_no_permission = ConvoScreen:new {
	id = "no_permission",
	leftDialog = "",
	customDialogText = "You have no Permission to talk with us. You need to talk to the Czerka's first.",
	stopConversation = "true",
	options = {
	}
}
village_elder_template:addScreen(village_elder_no_permission);

addConversationTemplate("village_elder_template",village_elder_template);
