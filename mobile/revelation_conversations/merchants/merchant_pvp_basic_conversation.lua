merchant_pvp_basic_template = ConvoTemplate:new {
	initialScreen = "first_screen",
	templateType = "Lua",
	luaClassHandler = "merchant_pvp_basic_convo_handler",
	screens = {}
}
merchant_pvp_basic_first_screen = ConvoScreen:new {
	id = "first_screen",
	leftDialog = "",
	customDialogText = "Hello, i trade GCW Tokens into Items ** make sure to have free inventory places **",
	stopConversation = "false",
	options = {
	{"Armor Sets and Houses", "select_armorset"},
	{"Credits", "select_credits"},
	{"Sorry i was looking for something else...", "deny_quest"},
	}
}
merchant_pvp_basic_template:addScreen(merchant_pvp_basic_first_screen);

merchant_pvp_basic_deny_quest = ConvoScreen:new {
	id = "deny_quest",
	leftDialog = "",
	customDialogText = "Don't waste my time then",
	stopConversation = "true",
	options = {
	}
}
merchant_pvp_basic_template:addScreen(merchant_pvp_basic_deny_quest);

merchant_pvp_basic_select_armorset = ConvoScreen:new {
	id = "select_armorset",
	leftDialog = "",
	customDialogText = "I am Trading GCW Tokens against a Item roll on the Groups:",
	stopConversation = "false",
	options = {
		{"Marauderset 1    - 1 Token", "marauderset_1"},
		{"Marauderset 2    - 1 Token", "marauderset_2"},
		{"Large Windowed House Style 1 - 20 Token", "largehousestyle_1"},
		{"Large Windowed House Style 2 - 20 Token", "largehousestyle_2"},
		{"No Thanks", "deny_quest"},
	}
}
merchant_pvp_basic_template:addScreen(merchant_pvp_basic_select_armorset);

merchant_pvp_basic_select_credits = ConvoScreen:new {
	id = "select_credits",
	leftDialog = "",
	customDialogText = "I am trading GCW Tokens against Credits:",
	stopConversation = "false",
	options = {
		{"10000 Cred    - 1 Token", "cred_10000"},
		{"No Thanks", "deny_quest"},
	}
}
merchant_pvp_basic_template:addScreen(merchant_pvp_basic_select_credits);


merchant_pvp_basic_insufficient_tokens= ConvoScreen:new {
	id = "insufficient_tokens",
	leftDialog = "",
	customDialogText = "Sorry, but you do not have enough tokens.",
	stopConversation = "false",
	options = {
	}
}
merchant_pvp_basic_template:addScreen(merchant_pvp_basic_insufficient_tokens);

merchant_pvp_basic_finished= ConvoScreen:new {
	id = "finished",
	leftDialog = "",
	customDialogText = "Here is your Reward !",
	stopConversation = "true",
	options = {
	}
}
merchant_pvp_basic_template:addScreen(merchant_pvp_basic_finished);

addConversationTemplate("merchant_pvp_basic_template",merchant_pvp_basic_template);

