freelancer_transport_czerka_village_template = ConvoTemplate:new {
	initialScreen = "first_screen",
	templateType = "Lua",
	luaClassHandler = "freelancer_transport_czerka_village_convo_handler",
	screens = {}
}
freelancer_transport_czerka_village_first_screen = ConvoScreen:new {
	id = "first_screen",
	leftDialog = "",
	customDialogText = "I have some space left. You need to shuttle to:",
	stopConversation = "false",
	options = {
		{"Czerka Outpost Dathomir", "travel_village"},
		{"No Thanks", "deny_quest"},
	}
}
freelancer_transport_czerka_village_template:addScreen(freelancer_transport_czerka_village_first_screen);

freelancer_transport_czerka_village_deny_quest = ConvoScreen:new {
	id = "deny_quest",
	leftDialog = "",
	customDialogText = "Well, have a nice day.",
	stopConversation = "true",
	options = {
	}
}
freelancer_transport_czerka_village_template:addScreen(freelancer_transport_czerka_village_deny_quest);

freelancer_transport_czerka_village_travel_village = ConvoScreen:new {
	id = "travel_village",
	leftDialog = "",
	customDialogText = "I will take a transportation fee of 20000 Credits",
	stopConversation = "false",
	options = {
		{"Here is your money", "pay"},
		{"No Thanks", "deny_quest"},
	}
}
freelancer_transport_czerka_village_template:addScreen(freelancer_transport_czerka_village_travel_village);

freelancer_transport_czerka_village_insufficient_funds = ConvoScreen:new {
	id = "insufficient_funds",
	leftDialog = "",
	customDialogText = "Sorry, but you don't have enough credits with you to pay for that.",
	stopConversation = "true",
	options = {
	}
}
freelancer_transport_czerka_village_template:addScreen(freelancer_transport_czerka_village_insufficient_funds);

addConversationTemplate("freelancer_transport_czerka_village_template",freelancer_transport_czerka_village_template);

