tatooine_the_lost_home_template = ConvoTemplate:new {
	initialScreen = "first_screen",
	templateType = "Lua",
	luaClassHandler = "tatooine_the_lost_home_convo_handler",
	screens = {}
}
tatooine_the_lost_home_first_screen = ConvoScreen:new {
	id = "first_screen",
	leftDialog = "",
	customDialogText = "Hm..... Sneeze.... mimimi......",
	stopConversation = "false",
	options = {
	{"Hey man, is everything all right with you?", "second_screen"},
	{"...I need to go", "deny_quest"},
	}
}
tatooine_the_lost_home_template:addScreen(tatooine_the_lost_home_first_screen);

tatooine_the_lost_home_second_screen = ConvoScreen:new {
	id = "second_screen",
	leftDialog = "",
	customDialogText = "My wife is awaiting our first child and now I am standing here where our home once stood. Last night there was a fire and we lost our house. There is no Architect available in the city who can help us out. Maybe you can help me to get a new small Tatooine house (Style 1)? I have here 20000 Credits.",
	stopConversation = "false",
	options = {
	{"20000 Credits ? Hey Buddy heads up, I will hurry and help you to get a new small Tatooine house (Style 1). ", "accept_quest"},
	}
}
tatooine_the_lost_home_template:addScreen(tatooine_the_lost_home_second_screen);

tatooine_the_lost_home_deny_quest = ConvoScreen:new {
	id = "deny_quest",
	leftDialog = "",
	customDialogText = "Don't waste my time then",
	stopConversation = "true",
	options = {
	}
}
tatooine_the_lost_home_template:addScreen(tatooine_the_lost_home_deny_quest);

tatooine_the_lost_home_accept_quest = ConvoScreen:new {
	id = "accept_quest",
	leftDialog = "",
	customDialogText = "Thank you, I will be here!",
	stopConversation = "true",
	options = {
	}
}
tatooine_the_lost_home_template:addScreen(tatooine_the_lost_home_accept_quest);

tatooine_the_lost_home_give_house = ConvoScreen:new {
	id = "give_house",
	leftDialog = "",
	customDialogText = "Welcome back my friend, do you have a small Tatooine house for me (Style 1_?",
	stopConversation = "false",
	options = {
		{"Trade small Tatooine house (Reward: 20000 Credits)", "tatooine_house_small_deed"},
		{"No Thanks", "deny_quest"},
	}
}
tatooine_the_lost_home_template:addScreen(tatooine_the_lost_home_give_house);

tatooine_the_lost_home_insufficient_items = ConvoScreen:new {
	id = "insufficient_items",
	leftDialog = "",
	customDialogText = "Sorry, but you do not have a house deed with you.",
	stopConversation = "true",
	options = {
	}
}
tatooine_the_lost_home_template:addScreen(tatooine_the_lost_home_insufficient_items);

tatooine_the_lost_home_quest_end = ConvoScreen:new {
	id = "quest_end",
	leftDialog = "",
	customDialogText = "Thank you for your help, I will tell everyone about your kindness here today.",
	stopConversation = "true",
	options = {
 	}
}
tatooine_the_lost_home_template:addScreen(tatooine_the_lost_home_quest_end);
addConversationTemplate("tatooine_the_lost_home_template",tatooine_the_lost_home_template);

