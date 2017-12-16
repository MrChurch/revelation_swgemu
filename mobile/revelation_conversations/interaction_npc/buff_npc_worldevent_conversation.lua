buff_npc_worldevent_template = ConvoTemplate:new {
	initialScreen = "first_screen",
	templateType = "Lua",
	luaClassHandler = "buff_npc_worldevent_convo_handler",
	screens = {}
}
buff_npc_worldevent_first_screen = ConvoScreen:new {
	id = "first_screen",
	leftDialog = "",
	customDialogText = "Greetings. I am part of the Czerka Research and Weapons Division. We are currently testing some new pharmaceutical enhancements, would you like to participate?",
	stopConversation = "false",
	options = {
	{"I need Medical Enhancements", "select_buff"},
	{"Sorry was looking for something else...", "deny_quest"},
	}
}
buff_npc_worldevent_template:addScreen(buff_npc_worldevent_first_screen);

buff_npc_worldevent_deny_quest = ConvoScreen:new {
	id = "deny_quest",
	leftDialog = "",
	customDialogText = "Don't waste my time then",
	stopConversation = "true",
	options = {
	}
}
buff_npc_worldevent_template:addScreen(buff_npc_worldevent_deny_quest);

buff_npc_worldevent_buffs = ConvoScreen:new {
	id = "select_buff",
	leftDialog = "",
	customDialogText = "I have here experimental Medicine",
	stopConversation = "false",
	options = {
		{"Health/Action/Mind 10000 / 5 min - 1 Credits", "buff_worldevent"},
		{"No Thanks", "deny_quest"},
	}
}
buff_npc_worldevent_template:addScreen(buff_npc_worldevent_buffs);

buff_npc_worldevent_insufficient_funds = ConvoScreen:new {
	id = "insufficient_funds",
	leftDialog = "",
	customDialogText = "Sorry, but you don't have enough credits with you to pay that.",
	stopConversation = "true",
	options = {
	}
}
buff_npc_worldevent_template:addScreen(buff_npc_worldevent_insufficient_funds);

addConversationTemplate("buff_npc_worldevent_template",buff_npc_worldevent_template);
