free_buff_npc_template = ConvoTemplate:new {
	initialScreen = "first_screen",
	templateType = "Lua",
	luaClassHandler = "free_buff_npc_convo_handler",
	screens = {}
}
free_buff_npc_first_screen = ConvoScreen:new {
	id = "first_screen",
	leftDialog = "",
	customDialogText = "Greetings. I am part of the Czerka Research and Weapons Division. We are currently testing some new pharmaceutical enhancements, would you like to participate?",
	stopConversation = "false",
	options = {
    	{"I need Medical Enhancements", "select_buff"},
    	{"Sorry was looking for something else...", "deny_quest"},
	}
}
free_buff_npc_template:addScreen(free_buff_npc_first_screen);

free_buff_npc_deny_quest = ConvoScreen:new {
	id = "deny_quest",
	leftDialog = "",
	customDialogText = "Don't waste my time then",
	stopConversation = "true",
	options = {
	}
}
free_buff_npc_template:addScreen(free_buff_npc_deny_quest);

free_buff_npc_buffs = ConvoScreen:new {
	id = "select_buff",
	leftDialog = "",
	customDialogText = "We offer the following enhancements. (all secondary attributes are included.)",
	stopConversation = "false",
	options = {
  		{"Health/Action 3500/2h - 1 Credit", "buff_free"},
  		{"Remove all Buffs      - 1 Credit", "buff_remove"},
  		{"No Thanks", "deny_quest"},
	}
}
free_buff_npc_template:addScreen(free_buff_npc_buffs);

free_buff_npc_insufficient_funds = ConvoScreen:new {
	id = "insufficient_funds",
	leftDialog = "",
	customDialogText = "Sorry, but you don't have enough credits with you to pay that.",
	stopConversation = "true",
	options = {
	}
}
free_buff_npc_template:addScreen(free_buff_npc_insufficient_funds);

addConversationTemplate("free_buff_npc_template",free_buff_npc_template);
