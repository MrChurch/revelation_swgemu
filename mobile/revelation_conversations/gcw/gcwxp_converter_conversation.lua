gcwxp_converter_template = ConvoTemplate:new {
	initialScreen = "first_screen",
	templateType = "Lua",
	luaClassHandler = "gcwxp_converter_convo_handler",
	screens = {}
}
gcwxp_converter_first_screen = ConvoScreen:new {
	id = "first_screen",
	leftDialog = "",
	customDialogText = "Greetings. I can convert your Experiance from the GCW",
	stopConversation = "false",
	options = {
	{"I want to convert my GCW Points", "convert"},
	{"Sorry was looking for something else...", "deny_quest"},
	}
}
gcwxp_converter_template:addScreen(gcwxp_converter_first_screen);

gcwxp_converter_deny_quest = ConvoScreen:new {
	id = "deny_quest",
	leftDialog = "",
	customDialogText = "Don't waste my time then",
	stopConversation = "true",
	options = {
	}
}
gcwxp_converter_template:addScreen(gcwxp_converter_deny_quest);

gcwxp_converter_convert = ConvoScreen:new {
	id = "convert",
	leftDialog = "",
	customDialogText = "You can Convert: (do not convert more as your current cap or it is lost)",
	stopConversation = "false",
	options = {
		{"100  GCWSkillXP : 100 GCWXP, 300  FP, 1000 Credits", "convert100"},
		{"500  GCWSkillXP : 500 GCWXP, 1500 FP, 6000 Credits", "convert500"},
		{"1000 GCWSkillXP :1000 GCWXP, 3000 FP, 10000 Credits", "convert1000"},
		{"Show me my GCWSkillXP Max", "show_cap"},
		{"No Thanks", "deny_quest"},
	}
}
gcwxp_converter_template:addScreen(gcwxp_converter_convert);

gcwxp_converter_insufficient_funds = ConvoScreen:new {
	id = "insufficient_funds",
	leftDialog = "",
	customDialogText = "Sorry, but you don't have enough credits with you to pay that.",
	stopConversation = "true",
	options = {
	}
}
gcwxp_converter_template:addScreen(gcwxp_converter_insufficient_funds);

gcwxp_converter_insufficient_faction = ConvoScreen:new {
	id = "insufficient_faction",
	leftDialog = "",
	customDialogText = "Sorry, but you don't have enough Factionpoints.",
	stopConversation = "true",
	options = {
	}
}
gcwxp_converter_template:addScreen(gcwxp_converter_insufficient_faction);

gcwxp_converter_insufficient_xp = ConvoScreen:new {
	id = "insufficient_xp",
	leftDialog = "",
	customDialogText = "Sorry, but you don't have enough GCW Experiance.",
	stopConversation = "true",
	options = {
	}
}
gcwxp_converter_template:addScreen(gcwxp_converter_insufficient_xp);

gcwxp_converter_isjedi = ConvoScreen:new {
	id = "isjedi",
	leftDialog = "",
	customDialogText = "The Force is strong in you, i can not help you.",
	stopConversation = "true",
	options = {
	}
}
gcwxp_converter_template:addScreen(gcwxp_converter_isjedi);

addConversationTemplate("gcwxp_converter_template",gcwxp_converter_template);
