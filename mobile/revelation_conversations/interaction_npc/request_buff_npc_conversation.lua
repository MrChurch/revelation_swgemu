request_buff_npc_template = ConvoTemplate:new {
	initialScreen = "first_screen",
	templateType = "Lua",
	luaClassHandler = "request_buff_npc_convo_handler",
	screens = {}
}
request_buff_npc_first_screen = ConvoScreen:new {
	id = "first_screen",
	leftDialog = "",
	customDialogText = "Greetings. I am part of the Czerka Personal Division. Do you need personal supply ?",
	stopConversation = "false",
	options = {
  	{"I need medical personal", "select_med"},
  	{"Sorry was looking for something else...", "deny_quest"},
	}
}
request_buff_npc_template:addScreen(request_buff_npc_first_screen);

request_buff_npc_deny_quest = ConvoScreen:new {
	id = "deny_quest",
	leftDialog = "",
	customDialogText = "Don't waste my time then",
	stopConversation = "true",
	options = {
	}
}
request_buff_npc_template:addScreen(request_buff_npc_deny_quest);

request_buff_npc_buffs = ConvoScreen:new {
	id = "select_med",
	leftDialog = "",
	customDialogText = "We have the following personal available",
	stopConversation = "false",
	options = {
		{"Czerka Medic Loc: Coronet Starport /1h  - 75.000 Credits", "med_coro_1"},
		{"Czerka Medic Loc: Coronet Starport /2h  - 150.000 Credits", "med_coro_2"},
                {"Czerka Medic Loc: Theed Starport /1h  - 75.000 Credits", "med_theed_1"},
                {"Czerka Medic Loc: Theed Starport /2h  - 150.000 Credits", "med_theed_2"},
                {"Czerka Medic Loc: Mos Eisley Starport /1h  - 75.000 Credits", "med_mos_1"},
                {"Czerka Medic Loc: Mos Eisley Starport /2h  - 150.000 Credits", "med_mos_2"},
                {"Czerka Medic Loc: Alum Mine /1h  - 150.000 Credits", "med_alumn_1"},
                {"Czerka Medic Loc: Alum Mine /2h  - 300.000 Credits", "med_alumn_2"},
                {"Czerka Field Medic (Free Buffs) Loc: Coronet Starport /1h  - 1.000.000 Credits", "med_coro_3"},
		{"No Thanks", "deny_quest"},
	}
}
request_buff_npc_template:addScreen(request_buff_npc_buffs);

request_buff_npc_insufficient_funds = ConvoScreen:new {
	id = "insufficient_funds",
	leftDialog = "",
	customDialogText = "Sorry, but you don't have enough credits with you to pay that.",
	stopConversation = "true",
	options = {
	}
}
request_buff_npc_template:addScreen(request_buff_npc_insufficient_funds);

request_buff_npc_blocked = ConvoScreen:new {
  id = "npc_blocked",
  leftDialog = "",
  customDialogText = "Sorry, there is already personal from us there.",
  options = {
  }
}
request_buff_npc_template:addScreen(request_buff_npc_blocked);

addConversationTemplate("request_buff_npc_template",request_buff_npc_template);

