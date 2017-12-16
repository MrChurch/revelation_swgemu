merchant_czerka_basic_template = ConvoTemplate:new {
	initialScreen = "first_screen",
	templateType = "Lua",
	luaClassHandler = "merchant_czerka_basic_convo_handler",
	screens = {}
}
merchant_czerka_basic_first_screen = ConvoScreen:new {
	id = "first_screen",
	leftDialog = "",
	customDialogText = "Do you want to offer me some things?",
	stopConversation = "false",
	options = {
	{"Offer Artisan stuff", "select_artisan"},
	{"Offer Medic stuff", "select_medic"},
	{"Offer Entertainer stuff", "select_entertainer"},
	{"Sorry i was looking for something else...", "deny_quest"},
	}
}
merchant_czerka_basic_template:addScreen(merchant_czerka_basic_first_screen);

merchant_czerka_basic_deny_quest = ConvoScreen:new {
	id = "deny_quest",
	leftDialog = "",
	customDialogText = "Don't waste my time then",
	stopConversation = "true",
	options = {
	}
}
merchant_czerka_basic_template:addScreen(merchant_czerka_basic_deny_quest);

merchant_czerka_basic_select_medic = ConvoScreen:new {
	id = "select_medic",
	leftDialog = "",
	customDialogText = "I am buying for our new recruits:",
	stopConversation = "false",
	options = {
		{"1 Stimpack B    - 153 Credits", "stimpack_sm_s1_b_1"},
		{"5 Stimpack B    - 153 Credits", "stimpack_sm_s1_b_5"},
		{"No Thanks", "deny_quest"},
	}
}
merchant_czerka_basic_template:addScreen(merchant_czerka_basic_select_medic);

merchant_czerka_basic_select_artisan = ConvoScreen:new {
	id = "select_artisan",
	leftDialog = "",
	customDialogText = "I am buying for our new recruits:",
	stopConversation = "false",
	options = {
		{"1 CDEF Rifle    - 67 Credits", "rifle_cdef_1"},
		{"5 CDEF Rifle    - 67 Credits", "rifle_cdef_5"},
		{"1 Casual Jacket - 135 Credits", "jacket_s12_1"},
		{"5 Casual Jacket - 135 Credits", "jacket_s12_5"},
		{"1 Large Glass   - 225 Credits", "large_glass_1"},
		{"5 Large Glass   - 225 Credits", "large_glass_5"},
		{"1 Wind Generator- 575 Credits", "wind_generator_deed_name_1"},
		{"5 Wind Generator- 575 Credits", "wind_generator_deed_name_5"},
		{"No Thanks", "deny_quest"},
	}
}
merchant_czerka_basic_template:addScreen(merchant_czerka_basic_select_artisan);

merchant_czerka_basic_select_entertainer = ConvoScreen:new {
	id = "select_entertainer",
	leftDialog = "",
	customDialogText = "I am buying for our new recruits:",
	stopConversation = "false",
	options = {
		{"1 Slitherhorn    - 115 Credits", "obj_slitherhorn_1"},
		{"5 Slitherhorn    - 115 Credits", "obj_slitherhorn_5"},
		{"No Thanks", "deny_quest"},
	}
}
merchant_czerka_basic_template:addScreen(merchant_czerka_basic_select_entertainer);

merchant_czerka_basic_insufficient_items = ConvoScreen:new {
	id = "insufficient_items",
	leftDialog = "",
	customDialogText = "Sorry, but you do not have enough items.",
	stopConversation = "false",
	options = {
	}
}
merchant_czerka_basic_template:addScreen(merchant_czerka_basic_insufficient_items);

addConversationTemplate("merchant_czerka_basic_template",merchant_czerka_basic_template);

