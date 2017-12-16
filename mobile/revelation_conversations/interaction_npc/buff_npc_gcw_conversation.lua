buff_npc_gcw_template = ConvoTemplate:new {
	initialScreen = "first_screen",
	templateType = "Lua",
	luaClassHandler = "buff_npc_gcw_convo_handler",
	screens = {}
}
buff_npc_gcw_first_screen = ConvoScreen:new {
	id = "first_screen",
	leftDialog = "",
	customDialogText = "Greetings. I am part of the Czerka Research and Weapons Division. We are currently testing some new pharmaceutical enhancements, would you like to participate?",
	stopConversation = "false",
	options = {
	{"I need Medical Enhancements", "select_buff"},
	{"Sorry was looking for something else...", "deny_quest"},
	}
}
buff_npc_gcw_template:addScreen(buff_npc_gcw_first_screen);

buff_npc_gcw_deny_quest = ConvoScreen:new {
	id = "deny_quest",
	leftDialog = "",
	customDialogText = "Don't waste my time then",
	stopConversation = "true",
	options = {
	}
}
buff_npc_gcw_template:addScreen(buff_npc_gcw_deny_quest);

buff_npc_gcw_buffs = ConvoScreen:new {
	id = "select_buff",
	leftDialog = "",
	customDialogText = "We offer the following enhancements. (all secondary attributes are included.)",
	stopConversation = "false",
	options = {
		{"Buff 1h 2000HA/750M  - 500 Faction", "buff2000"},
		{"Buff 1h 3000HA/1000M  - 1000 Faction", "buff3000"},
		{"Buff 1h 4000HA/2000M  - 1500 Faction", "buff4000"},
		{"Remove all Buffs      - 0 Credits", "buff_remove"},
		{"No Thanks", "deny_quest"},
	}
}
buff_npc_gcw_template:addScreen(buff_npc_gcw_buffs);

buff_npc_gcw_insufficient_faction = ConvoScreen:new {
	id = "insufficient_faction",
	leftDialog = "",
	customDialogText = "Sorry, but you don't have enough Faction to pay that.",
	stopConversation = "true",
	options = {
	}
}
buff_npc_gcw_template:addScreen(buff_npc_gcw_insufficient_faction);

buff_npc_gcw_overt = ConvoScreen:new {
  id = "overt",
  leftDialog = "",
  customDialogText = "I can only talk with you, if you are overt",
  stopConversation = "true",
  options = {
  }
}
buff_npc_gcw_template:addScreen(buff_npc_gcw_overt);

addConversationTemplate("buff_npc_gcw_template",buff_npc_gcw_template);
