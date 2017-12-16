dathomir_village_transit_template = ConvoTemplate:new {
	initialScreen = "first_screen",
	templateType = "Lua",
	luaClassHandler = "dathomir_village_transit_convo_handler",
	screens = {}
}
dathomir_village_transit_first_screen = ConvoScreen:new {
	id = "first_screen",
	leftDialog = "",
	customDialogText = "You need a shuttle to:",
	stopConversation = "false",
	options = {
		{"Tatooine", "travel_tatooine"},
		{"Dathomir", "travel_dathomir"},
		{"No Thanks", "deny_quest"},
	}
}
dathomir_village_transit_template:addScreen(dathomir_village_transit_first_screen);

dathomir_village_transit_deny_quest = ConvoScreen:new {
	id = "deny_quest",
	leftDialog = "",
	customDialogText = "Well, have a nice day.",
	stopConversation = "true",
	options = {
	}
}
dathomir_village_transit_template:addScreen(dathomir_village_transit_deny_quest);

dathomir_village_transit_travel_tatooine = ConvoScreen:new {
	id = "travel_tatooine",
	leftDialog = "",
	customDialogText = "Hm the Hutten are in conflict there, i will take a fee of 20.000 credits",
	stopConversation = "false",
	options = {
		{"Here is your money", "pay"},
		{"No Thanks", "deny_quest"},
	}
}
dathomir_village_transit_template:addScreen(dathomir_village_transit_travel_tatooine);

dathomir_village_transit_travel_dathomir = ConvoScreen:new {
	id = "travel_dathomir",
	leftDialog = "",
	customDialogText = "Hm far away, i will take a fee of 20.000 credits",
	stopConversation = "false",
	options = {
		{"Here is your money", "pay"},
		{"No Thanks", "deny_quest"},
	}
}
dathomir_village_transit_template:addScreen(dathomir_village_transit_travel_dathomir);

dathomir_village_transit_insufficient_funds = ConvoScreen:new {
	id = "insufficient_funds",
	leftDialog = "",
	customDialogText = "Sorry, but you don't have enough credits with you to pay that.",
	stopConversation = "true",
	options = {
	}
}
dathomir_village_transit_template:addScreen(dathomir_village_transit_insufficient_funds);

addConversationTemplate("dathomir_village_transit_template",dathomir_village_transit_template);

