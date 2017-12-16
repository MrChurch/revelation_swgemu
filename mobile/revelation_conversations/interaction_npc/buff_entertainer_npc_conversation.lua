buff_entertainer_npc_template = ConvoTemplate:new {
	initialScreen = "first_screen",
	templateType = "Lua",
	luaClassHandler = "buff_entertainer_npc_convo_handler",
	screens = {}
}
buff_entertainer_npc_first_screen = ConvoScreen:new {
	id = "first_screen",
	leftDialog = "",
	customDialogText = "Hi have you seen my group mates ? Hm seems i am stuck here...",
	stopConversation = "false",
	options = {
    	{"Can you dance for me ?", "select_buff"},
    	{"Sorry was looking for something else...", "deny_quest"},
	}
}
buff_entertainer_npc_template:addScreen(buff_entertainer_npc_first_screen);

buff_entertainer_npc_deny_quest = ConvoScreen:new {
	id = "deny_quest",
	leftDialog = "",
	customDialogText = "Don't waste my time then",
	stopConversation = "true",
	options = {
	}
}
buff_entertainer_npc_template:addScreen(buff_entertainer_npc_deny_quest);

buff_entertainer_npc_buffs = ConvoScreen:new {
	id = "select_buff",
	leftDialog = "",
	customDialogText = "we offer the following enhancements: (secondary Attributes are included)",
	stopConversation = "false",
	options = {
  		{"simple dance   250/2h  - 250 Credits", "buff250"},
  		{"personal dance 750/2h  - 1500 Credits", "buff500"},
  		{"Star performance  1000/2h  - 3000 Credits", "buff750"},
  		{"VIP Service  1500/2h  - 5000 Credits", "buff1500"},
  		{"No Thanks", "deny_quest"},
	}
}
buff_entertainer_npc_template:addScreen(buff_entertainer_npc_buffs);

buff_entertainer_npc_insufficient_funds = ConvoScreen:new {
	id = "insufficient_funds",
	leftDialog = "",
	customDialogText = "Sorry, but you don't have enough credits with you to pay that.",
	stopConversation = "true",
	options = {
	}
}
buff_entertainer_npc_template:addScreen(buff_entertainer_npc_insufficient_funds);

addConversationTemplate("buff_entertainer_npc_template",buff_entertainer_npc_template);
