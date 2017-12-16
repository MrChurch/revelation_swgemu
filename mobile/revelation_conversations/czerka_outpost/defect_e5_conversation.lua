defect_e5_template = ConvoTemplate:new {
	initialScreen = "first_screen",
	templateType = "Lua",
	luaClassHandler = "defect_e5_convo_handler",
	screens = {}
}
defect_e5_first_screen = ConvoScreen:new {
	id = "first_screen",
	leftDialog = "",
	customDialogText = "Someone linked the Droid with the Power Node",
	stopConversation = "false",
	options = {
            {"Investigate", "select_investigate"},
            {"Go away..", "deny_quest"},
	}
}
defect_e5_template:addScreen(defect_e5_first_screen);

defect_e5_deny_quest = ConvoScreen:new {
	id = "deny_quest",
	leftDialog = "",
	customDialogText = "",
	stopConversation = "true",
	options = {
	}
}
defect_e5_template:addScreen(defect_e5_deny_quest);

defect_e5_investigate = ConvoScreen:new {
	id = "select_investigate",
	leftDialog = "",
	customDialogText = "It seems that the Power Node is inactive, but connected to the ventilation system. With some Power you are maybe able to turn it some minutes on.",
	stopConversation = "false",
	options = {
		{"insert Battery", "battery"},
		{"Go away", "deny_quest"},
	}
}
defect_e5_template:addScreen(defect_e5_investigate);

defect_e5_insufficient_items = ConvoScreen:new {
	id = "insufficient_items",
	leftDialog = "",
	customDialogText = "You have no Battery.",
	stopConversation = "true",
	options = {
	}
}
defect_e5_template:addScreen(defect_e5_insufficient_items);

addConversationTemplate("defect_e5_template",defect_e5_template);
