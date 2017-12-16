rebel_bestine_shuttle_template = ConvoTemplate:new {
	initialScreen = "first_screen",
	templateType = "Lua",
	luaClassHandler = "gcw_bestine_rebel_convo_handler",
	screens = {}
}
rebel_bestine_shuttle_first_screen = ConvoScreen:new {
	id = "first_screen",
	leftDialog = "",
	customDialogText = "You need reinforcements from the orbital Fleet ?",
	stopConversation = "false",
	options = {
	{"I need reinforcements:", "select_attack"},
	{"No Sir !", "deny_quest"},
	}
}
rebel_bestine_shuttle_template:addScreen(rebel_bestine_shuttle_first_screen);

rebel_bestine_shuttle_deny_quest = ConvoScreen:new {
	id = "deny_quest",
	leftDialog = "",
	customDialogText = "Don't waste my time then",
	stopConversation = "true",
	options = {
	}
}
rebel_bestine_shuttle_template:addScreen(rebel_bestine_shuttle_deny_quest);

rebel_bestine_shuttle_attacks = ConvoScreen:new {
	id = "select_attack",
	leftDialog = "The Troops will support you and will retreat after 10 minutes",
	customDialogText = "We can send a special unit to:",
	stopConversation = "false",
	options = {
                {"Powersupply - Tacticalteam - 300 Faction", "Powersupply_1"},
                {"Powersupply - Heavytrooper - 1000 Faction", "Powersupply_2"},
                {"Barracs - Tacticalteam - 300 Faction", "Barracs_1"},
                {"Barracs - Heavytrooper - 1000 Faction", "Barracs_2"},
                {"Bastion - Droidassault - 500 Faction", "Bastion_1"},
		{"No Thanks", "deny_quest"},
	}
}
rebel_bestine_shuttle_template:addScreen(rebel_bestine_shuttle_attacks);

rebel_bestine_shuttle_away = ConvoScreen:new {
  id = "away",
  leftDialog = "",
  customDialogText = "Sorry, but all shuttles are at the moment in use.",
  stopConversation = "true",
  options = {
  }
}
rebel_bestine_shuttle_template:addScreen(rebel_bestine_shuttle_away);

rebel_bestine_shuttle_insufficient_faction = ConvoScreen:new {
	id = "insufficient_faction",
	leftDialog = "",
	customDialogText = "Sorry, but you don't have enough Factionpoints to pay that.",
	stopConversation = "true",
	options = {
	}
}
rebel_bestine_shuttle_template:addScreen(rebel_bestine_shuttle_insufficient_faction);

rebel_bestine_shuttle_wrong_faction = ConvoScreen:new {
  id = "wrong_faction",
  leftDialog = "",
  customDialogText = "Dumbnut, you are not a Member of the rebel Forces.",
  stopConversation = "true",
  options = {
  }
}
rebel_bestine_shuttle_template:addScreen(rebel_bestine_shuttle_wrong_faction);

addConversationTemplate("rebel_bestine_shuttle_template",rebel_bestine_shuttle_template);
