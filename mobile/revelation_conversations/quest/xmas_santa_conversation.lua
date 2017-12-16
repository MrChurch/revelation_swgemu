xmas_santa_template = ConvoTemplate:new {
	initialScreen = "first_screen",
	templateType = "Lua",
	luaClassHandler = "xmas_santa_convo_handler",
	screens = {}
}
xmas_santa_first_screen = ConvoScreen:new {
	id = "first_screen",
	leftDialog = "",
	customDialogText = "Not good, oh sh.... sh ..... Hey do not look at me i do not want to talk to anyone today.",
	stopConversation = "false",
	options = {
	{"...I need to go", "deny_quest"},
	}
}
xmas_santa_template:addScreen(xmas_santa_first_screen);

xmas_santa_deny_quest = ConvoScreen:new {
	id = "deny_quest",
	leftDialog = "",
	customDialogText = "Don't waste my time then",
	stopConversation = "true",
	options = {
	}
}
xmas_santa_template:addScreen(xmas_santa_deny_quest);

addConversationTemplate("xmas_santa_template",xmas_santa_template);

