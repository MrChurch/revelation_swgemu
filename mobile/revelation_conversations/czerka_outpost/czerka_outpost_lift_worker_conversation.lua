czerka_outpost_lift_worker_template = ConvoTemplate:new {
	initialScreen = "first_screen",
	templateType = "Lua",
	luaClassHandler = "czerka_outpost_lift_worker_convo_handler",
	screens = {}
}

czerka_outpost_lift_worker_first_screen = ConvoScreen:new {
	id = "first_screen",
	leftDialog = "",
	customDialogText = "We have a emergency here, be prepared if you move down.",
	stopConversation = "false",
	options = {
		{"start the lift !", "lift"},
		{"better stay away from here...", "deny_quest"},
	}
}
czerka_outpost_lift_worker_template:addScreen(czerka_outpost_lift_worker_first_screen);

czerka_outpost_lift_worker_lift = ConvoScreen:new {
	id = "lift",
	leftDialog = "",
	customDialogText = "the lift can you bring here:",
	stopConversation = "false",
	options = {
		{"Sorry the mine are too dangerous at the moment.", "deny_quest"},
	}
}
czerka_outpost_lift_worker_template:addScreen(czerka_outpost_lift_worker_lift);

czerka_outpost_lift_worker_deny_quest = ConvoScreen:new {
	id = "deny_quest",
	leftDialog = "",
	customDialogText = "Bye.",
	stopConversation = "true",
	options = {
	}
}
czerka_outpost_lift_worker_template:addScreen(czerka_outpost_lift_worker_deny_quest);

addConversationTemplate("czerka_outpost_lift_worker_template",czerka_outpost_lift_worker_template);

