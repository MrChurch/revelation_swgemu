merchant_worldevent_template = ConvoTemplate:new {
	initialScreen = "first_screen",
	templateType = "Lua",
	luaClassHandler = "merchant_worldevent_convo_handler",
	screens = {}
}
merchant_worldevent_first_screen = ConvoScreen:new {
	id = "first_screen",
	leftDialog = "",
	customDialogText = "Do you want to get your Reward ?",
	stopConversation = "false",
	options = {
		{"I killed the Widowmaker !", "select_widowmaker"},
		{"I killed the Killiam the Kimogila !", "select_kimogila"},
		{"I killed the Bludgeon the Rancor !", "select_bludgeon"},
		{"I was on The Wild Hunt !", "select_panthera"},
		{"I survivied the Morag Madness !", "select_morag"},
		{"I looked in the Eyes of the Dragonbeast !", "select_dragon"},
		{"I killed the King !", "select_squil"},
		{"I protected Theed before the Droids !", "select_droidinvasion"},
		{"You have a free Buff for me ?", "select_buff"},
		{"Sorry i was looking for something else...", "deny_quest"},
  }
}
merchant_worldevent_template:addScreen(merchant_worldevent_first_screen);

merchant_worldevent_deny_quest = ConvoScreen:new {
	id = "deny_quest",
	leftDialog = "",
	customDialogText = "Don't waste my time then",
	stopConversation = "true",
	options = {
	}
}
merchant_worldevent_template:addScreen(merchant_worldevent_deny_quest);

merchant_worldevent_finished = ConvoScreen:new {
    id = "finished",
    leftDialog = "",
    customDialogText = "Here is your Reward !",
    stopConversation = "true",
    options = {
    }
}
merchant_worldevent_template:addScreen(merchant_worldevent_finished);

merchant_worldevent_nokill = ConvoScreen:new {
    id = "nokill",
    leftDialog = "",
    customDialogText = "Sorry we have no registered Kill for that.",
    stopConversation = "true",
    options = {
    }
}
merchant_worldevent_template:addScreen(merchant_worldevent_nokill);

merchant_worldevent_no_room = ConvoScreen:new {
	id = "no_room",
	leftDialog = "",
	customDialogText = "Sorry, but you do not have enough room in your inventoy left.",
	stopConversation = "false",
	options = {
	}
}
merchant_worldevent_template:addScreen(merchant_worldevent_no_room);

addConversationTemplate("merchant_worldevent_template",merchant_worldevent_template);


