buff_npc_starter_template = ConvoTemplate:new {
	initialScreen = "first_screen",
	templateType = "Lua",
	luaClassHandler = "buff_npc_starter_convo_handler",
	screens = {}
}
buff_npc_starter_first_screen = ConvoScreen:new {
	id = "first_screen",
	leftDialog = "",
	customDialogText = "Greetings, I am here to provide you with some buffs to ease your start. You can find my fellow colleagues in the Medical Centers of Bestine, Coronet and Theed. Make sure to checkout the local cantinas for Entertainer buffs from the Bacta Dancer group.",
	stopConversation = "false",
	options = {
    	{"Please give me a Buff !", "select_buff"},
    	{"** Please Buff me and send me to the Startdungeon ! **", "select_dungeon"},
    	{"Sorry was looking for something else...", "deny_quest"},
	}
}
buff_npc_starter_template:addScreen(buff_npc_starter_first_screen);

buff_npc_starter_deny_quest = ConvoScreen:new {
  id = "deny_quest",
  leftDialog = "",
  customDialogText = "Hope to see you soon.",
  stopConversation = "true",
  options = {
  }
}
buff_npc_starter_template:addScreen(buff_npc_starter_deny_quest);

addConversationTemplate("buff_npc_starter_template",buff_npc_starter_template);
