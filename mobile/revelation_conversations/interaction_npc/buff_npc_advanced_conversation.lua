buff_npc_advanced_template = ConvoTemplate:new {
	initialScreen = "first_screen",
	templateType = "Lua",
	luaClassHandler = "buff_npc_advanced_convo_handler",
	screens = {}
}
buff_npc_advanced_first_screen = ConvoScreen:new {
	id = "first_screen",
	leftDialog = "",
	customDialogText = "Greetings. I am part of the Czerka Research and Weapons Division. We are currently testing some new pharmaceutical enhancements, would you like to participate?",
	stopConversation = "false",
	options = {
	{"I need Medical Enhancements", "select_buff"},
	{"Sorry was looking for something else...", "deny_quest"},
	}
}
buff_npc_advanced_template:addScreen(buff_npc_advanced_first_screen);

buff_npc_advanced_deny_quest = ConvoScreen:new {
	id = "deny_quest",
	leftDialog = "",
	customDialogText = "Don't waste my time then",
	stopConversation = "true",
	options = {
	}
}
buff_npc_advanced_template:addScreen(buff_npc_advanced_deny_quest);

buff_npc_advanced_buffs = ConvoScreen:new {
	id = "select_buff",
	leftDialog = "",
	customDialogText = "We offer the following enhancements. (all secondary attributes are included.)",
	stopConversation = "false",
	options = {
		{"Health/Action 3500/2h - 25000 Credits", "buff3500_2"},
		{"Heal all              -  3000 Credits", "buff_heal"},
		{"No Thanks", "deny_quest"},
	}
}
buff_npc_advanced_template:addScreen(buff_npc_advanced_buffs);

buff_npc_advanced_insufficient_funds = ConvoScreen:new {
	id = "insufficient_funds",
	leftDialog = "",
	customDialogText = "Sorry, but you don't have enough credits with you to pay that.",
	stopConversation = "true",
	options = {
	}
}
buff_npc_advanced_template:addScreen(buff_npc_advanced_insufficient_funds);

addConversationTemplate("buff_npc_advanced_template",buff_npc_advanced_template);
