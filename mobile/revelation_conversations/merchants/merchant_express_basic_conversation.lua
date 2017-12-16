merchant_express_basic_template = ConvoTemplate:new {
	initialScreen = "first_screen",
	templateType = "Lua",
	luaClassHandler = "merchant_express_basic_convo_handler",
	screens = {}
}

merchant_express_basic_first_screen = ConvoScreen:new {
	id = "first_screen",
	leftDialog = "",
	customDialogText = "You need a job? I am in a hurry, so be fast. You want a job, I pay very well?",
	stopConversation = "false",
	options = {
	{"Let me see the job list", "joblist"},
	{"Sorry I was looking for something else...", "deny_quest"},
	}
}
merchant_express_basic_template:addScreen(merchant_express_basic_first_screen);

merchant_express_basic_joblist = ConvoScreen:new {
	id = "joblist",
	leftDialog = "",
	customDialogText = "Here are the list of Jobs:",
	stopConversation = "false",
	options = {
	{"You need to wait for the next Job", "already_done"},
	}
}
merchant_express_basic_template:addScreen(merchant_express_basic_joblist);

merchant_express_basic_deny_quest = ConvoScreen:new {
	id = "deny_quest",
	leftDialog = "",
	customDialogText = "Don't waste my time then",
	stopConversation = "true",
	options = {
	}
}
merchant_express_basic_template:addScreen(merchant_express_basic_deny_quest);

merchant_express_basic_insufficient_items = ConvoScreen:new {
	id = "insufficient_items",
	leftDialog = "",
	customDialogText = "Sorry, but you do not have enough items.",
	stopConversation = "false",
	options = {
	}
}
merchant_express_basic_template:addScreen(merchant_express_basic_insufficient_items);

merchant_express_basic_already_done = ConvoScreen:new {
	id = "already_done",
	leftDialog = "",
	customDialogText = "You need to wait for the next Job",
	stopConversation = "false",
	options = {
	}
}
merchant_express_basic_template:addScreen(merchant_express_basic_already_done);

merchant_express_basic_quest_end = ConvoScreen:new {
	id = "quest_end",
	leftDialog = "",
	customDialogText = "Thank you.",
	stopConversation = "true",
	options = {
	}
}
merchant_express_basic_template:addScreen(merchant_express_basic_quest_end);

addConversationTemplate("merchant_express_basic_template",merchant_express_basic_template);

