buff_npc_template = ConvoTemplate:new {
	initialScreen = "first_screen",
	templateType = "Lua",
	luaClassHandler = "buff_npc_convo_handler",
	screens = {}
}
buff_npc_first_screen = ConvoScreen:new {
	id = "first_screen",
	leftDialog = "",
	customDialogText = "Greetings. I am part of the Czerka Research and Weapons Division. We are currently testing some new pharmaceutical enhancements, would you like to participate?",
	stopConversation = "false",
	options = {
	{"I need Medical Enhancements", "select_buff"},
	{"Sorry was looking for something else...", "deny_quest"},
	}
}
buff_npc_template:addScreen(buff_npc_first_screen);

buff_npc_deny_quest = ConvoScreen:new {
	id = "deny_quest",
	leftDialog = "",
	customDialogText = "Don't waste my time then",
	stopConversation = "true",
	options = {
	}
}
buff_npc_template:addScreen(buff_npc_deny_quest);

buff_npc_buffs = ConvoScreen:new {
	id = "select_buff",
	leftDialog = "",
	customDialogText = "We offer the following enhancements. (all secondary attributes are included.)",
	stopConversation = "false",
	options = {
		{"Health/Action 500/1h  - 100 Credits", "buff300_1"},
		{"Health/Action 500/2h  - 300 Credits", "buff300_2"},
		{"Health/Action 800/1h  - 500 Credits", "buff600_1"},
		{"Health/Action 800/2h  - 1000 Credits", "buff600_2"},
		{"Health/Action 1300/1h - 1500 Credits", "buff1000_1"},
		{"Health/Action 1300/2h - 2500 Credits", "buff1000_2"},
		{"Remove all Buffs      - 500 Credits", "buff_remove"},
		{"No Thanks", "deny_quest"},
	}
}
buff_npc_template:addScreen(buff_npc_buffs);

buff_npc_insufficient_funds = ConvoScreen:new {
	id = "insufficient_funds",
	leftDialog = "",
	customDialogText = "Sorry, but you don't have enough credits with you to pay that.",
	stopConversation = "true",
	options = {
	}
}
buff_npc_template:addScreen(buff_npc_insufficient_funds);

addConversationTemplate("buff_npc_template",buff_npc_template);
