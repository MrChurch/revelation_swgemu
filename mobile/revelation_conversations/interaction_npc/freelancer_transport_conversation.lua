freelancer_transport_template = ConvoTemplate:new {
	initialScreen = "first_screen",
	templateType = "Lua",
	luaClassHandler = "freelancer_transport_convo_handler",
	screens = {}
}
freelancer_transport_first_screen = ConvoScreen:new {
	id = "first_screen",
	leftDialog = "",
	customDialogText = "I have some space left. You need to shuttle to:",
	stopConversation = "false",
	options = {
		{"Theed?", "travel_theed"},
		{"Lok Alum Mine?", "travel_lok"},
		{"No Thanks", "deny_quest"},
	}
}
freelancer_transport_template:addScreen(freelancer_transport_first_screen);

freelancer_transport_deny_quest = ConvoScreen:new {
	id = "deny_quest",
	leftDialog = "",
	customDialogText = "Well, have a nice day.",
	stopConversation = "true",
	options = {
	}
}
freelancer_transport_template:addScreen(freelancer_transport_deny_quest);

freelancer_transport_travel_theed = ConvoScreen:new {
	id = "travel_theed",
	leftDialog = "",
	customDialogText = "I will take a transportation fee of 2500 Credits",
	stopConversation = "false",
	options = {
		{"Here is your money", "pay"},
		{"No Thanks", "deny_quest"},
	}
}
freelancer_transport_template:addScreen(freelancer_transport_travel_theed);

freelancer_transport_travel_lok = ConvoScreen:new {
	id = "travel_lok",
	leftDialog = "",
	customDialogText = "I will take a transportation fee of 2500 Credits",
	stopConversation = "false",
	options = {
		{"Here is your money", "pay"},
		{"No Thanks", "deny_quest"},
	}
}
freelancer_transport_template:addScreen(freelancer_transport_travel_lok);

freelancer_transport_insufficient_funds = ConvoScreen:new {
	id = "insufficient_funds",
	leftDialog = "",
	customDialogText = "Sorry, but you don't have enough credits with you to pay for that.",
	stopConversation = "true",
	options = {
	}
}
freelancer_transport_template:addScreen(freelancer_transport_insufficient_funds);

addConversationTemplate("freelancer_transport_template",freelancer_transport_template);

