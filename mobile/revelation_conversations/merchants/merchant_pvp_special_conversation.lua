merchant_pvp_special_template = ConvoTemplate:new {
	initialScreen = "first_screen",
	templateType = "Lua",
	luaClassHandler = "merchant_pvp_special_convo_handler",
	screens = {}
}
merchant_pvp_special_first_screen = ConvoScreen:new {
	id = "first_screen",
	leftDialog = "",
	customDialogText = "Hello, i trade SPECIAL GCW Tokens into Items ** make sure to have free inventory places **",
	stopConversation = "false",
	options = {
	{"Imperial Armor Sets", "select_imperial_armorset"},
	{"Rebel Armor Sets", "select_rebel_armorset"},
	{"Sorry i was looking for something else...", "deny_quest"},
	}
}
merchant_pvp_special_template:addScreen(merchant_pvp_special_first_screen);

merchant_pvp_special_deny_quest = ConvoScreen:new {
	id = "deny_quest",
	leftDialog = "",
	customDialogText = "Don't waste my time then",
	stopConversation = "true",
	options = {
	}
}
merchant_pvp_special_template:addScreen(merchant_pvp_special_deny_quest);

merchant_pvp_special_select_imperial_armorset = ConvoScreen:new {
	id = "select_imperial_armorset",
	leftDialog = "",
	customDialogText = "I am Trading GCW SPECIAL Tokens against:",
	stopConversation = "false",
	options = {
		{"Imperial Snowtrooper Belt       - 1 Token", "li_snowarmor_imperial_belt"},
		{"Imperial Snowtrooper Bicep L    - 1 Token", "li_snowarmor_imperial_bicep_l"},
		{"Imperial Snowtrooper Bicep R    - 1 Token", "li_snowarmor_imperial_bicep_r"},
		{"Imperial Snowtrooper Boots      - 2 Token", "li_snowarmor_imperial_boots"},
		{"Imperial Snowtrooper Bracer L   - 1 Token", "li_snowarmor_imperial_bracer_l"},
		{"Imperial Snowtrooper Bracer R   - 1 Token", "li_snowarmor_imperial_bracer_r"},
		{"Imperial Snowtrooper Chest Plate- 2 Token", "li_snowarmor_imperial_chest_plate"},
		{"Imperial Snowtrooper Gloves     - 2 Token", "li_snowarmor_imperial_gloves"},
		{"Imperial Snowtrooper Helmet     - 2 Token", "li_snowarmor_imperial_helmet"},
		{"Imperial Snowtrooper Leggings   - 2 Token", "li_snowarmor_imperial_leggings"},
		{"Imperial Robe of Hate           - 15 Token", "RobeofHate"},
		{"Imperial Robe of Hate (hood up) - 15 Token", "RobeofHate_hood"},
		{"No Thanks", "deny_quest"},
	}
}
merchant_pvp_special_template:addScreen(merchant_pvp_special_select_imperial_armorset);

merchant_pvp_special_select_rebel_armorset = ConvoScreen:new {
	id = "select_rebel_armorset",
	leftDialog = "",
	customDialogText = "I am Trading GCW SPECIAL Tokens against:",
	stopConversation = "false",
	options = {
		{"rebel Snowtrooper Belt       - 2 Token", "li_snowarmor_rebel_belt"},
		{"rebel Snowtrooper Bicep L    - 1 Token", "li_snowarmor_rebel_bicep_l"},
		{"rebel Snowtrooper Bicep R    - 1 Token", "li_snowarmor_rebel_bicep_r"},
		{"rebel Snowtrooper Boots      - 2 Token", "li_snowarmor_rebel_boots"},
		{"rebel Snowtrooper Bracer L   - 1 Token", "li_snowarmor_rebel_bracer_l"},
		{"rebel Snowtrooper Bracer R   - 1 Token", "li_snowarmor_rebel_bracer_r"},
		{"rebel Snowtrooper Chest Plate- 2 Token", "li_snowarmor_rebel_chest_plate"},
		{"rebel Snowtrooper Gloves     - 2 Token", "li_snowarmor_rebel_gloves"},
		{"rebel Snowtrooper Helmet     - 2 Token", "li_snowarmor_rebel_helmet"},
		{"rebel Snowtrooper Leggings   - 2 Token", "li_snowarmor_rebel_leggings"},
		{"rebel Shatterpoint Cloak     - 15 Token", "RobeShatterpoint"},
		{"rebel Shat. Cloak (hood up)  - 15 Token", "RobeShatterpoint_hood"},
		{"No Thanks", "deny_quest"},
	}
}
merchant_pvp_special_template:addScreen(merchant_pvp_special_select_rebel_armorset);

merchant_pvp_special_insufficient_tokens= ConvoScreen:new {
	id = "insufficient_tokens",
	leftDialog = "",
	customDialogText = "Sorry, but you do not have enough tokens.",
	stopConversation = "false",
	options = {
	}
}
merchant_pvp_special_template:addScreen(merchant_pvp_special_insufficient_tokens);

merchant_pvp_special_finished= ConvoScreen:new {
	id = "finished",
	leftDialog = "",
	customDialogText = "Here is your Reward !",
	stopConversation = "true",
	options = {
	}
}
merchant_pvp_special_template:addScreen(merchant_pvp_special_finished);

addConversationTemplate("merchant_pvp_special_template",merchant_pvp_special_template);

