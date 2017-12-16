xmas_vendor_template = ConvoTemplate:new {
	initialScreen = "first_screen",
	templateType = "Lua",
	luaClassHandler = "xmas_vendor_convo_handler",
	screens = {}
}
xmas_vendor_first_screen = ConvoScreen:new {
	id = "first_screen",
	leftDialog = "",
	customDialogText = "Hey Welcome again ...",
	stopConversation = "false",
	options = {
	{"Complete Quest (2 Day)", "secondday"},
	{"Maybe you can help me with a bigger Problem Quest (3 Day)", "thirdday"},
	{"Sorry i was looking for something else...", "deny_quest"},
	}
}
xmas_vendor_template:addScreen(xmas_vendor_first_screen);

xmas_vendor_deny_quest = ConvoScreen:new {
	id = "deny_quest",
	leftDialog = "",
	customDialogText = "Don't waste my time then",
	stopConversation = "true",
	options = {
	}
}
xmas_vendor_template:addScreen(xmas_vendor_deny_quest);

xmas_vendor_thirdday = ConvoScreen:new {
	id = "thirdday",
	leftDialog = "",
	customDialogText = "What a mess, one Wichtel was fallen into a river ... hope the planet guards can find him and  you can bring him down ?",
	stopConversation = "false",
	options = {
	}
}
xmas_vendor_template:addScreen(xmas_vendor_thirdday);

xmas_vendor_secondday = ConvoScreen:new {
	id = "secondday",
	leftDialog = "",
	customDialogText = "If you have 30 Presents for me you can trade them in now.",
	stopConversation = "false",
	options = {
		{"30 Presents", "gifts"},
		{"No Thanks", "deny_quest"},
	}
}
xmas_vendor_template:addScreen(xmas_vendor_secondday);

xmas_vendor_insufficient_items = ConvoScreen:new {
	id = "insufficient_items",
	leftDialog = "",
	customDialogText = "Sorry, but you do not have enough items.",
	stopConversation = "false",
	options = {
	}
}
xmas_vendor_template:addScreen(xmas_vendor_insufficient_items);

addConversationTemplate("xmas_vendor_template",xmas_vendor_template);

