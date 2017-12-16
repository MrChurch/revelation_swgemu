rev_instructor_template = ConvoTemplate:new {
	initialScreen = "first_screen",
	templateType = "Lua",
	luaClassHandler = "rev_instructor_convo_handler",
	screens = {}
}
rev_instructor_first_screen = ConvoScreen:new {
	id = "first_screen",
	leftDialog = "",
	customDialogText = "Hello new Recruit you need some advise ?",
	stopConversation = "false",
	options = {
	{"Give me some Tips to Marksmen:", "select_attack"},
	{"No Sir !", "deny_quest"},
	}
}
rev_instructor_template:addScreen(rev_instructor_first_screen);

rev_instructor_deny_quest = ConvoScreen:new {
	id = "deny_quest",
	leftDialog = "",
	customDialogText = "Don't waste my time then",
	stopConversation = "true",
	options = {
	}
}
rev_instructor_template:addScreen(rev_instructor_deny_quest);

rev_instructor_attacks = ConvoScreen:new {
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
rev_instructor_template:addScreen(rev_instructor_attacks);

rev_instructor_away = ConvoScreen:new {
        id = "away",
        leftDialog = "",
        customDialogText = "Sorry, but all shuttles are at the moment in use.",
        stopConversation = "true",
        options = {
        }
}
rev_instructor_template:addScreen(rev_instructor_away);

rev_instructor_insufficient_faction = ConvoScreen:new {
	id = "insufficient_faction",
	leftDialog = "",
	customDialogText = "Sorry, but you don't have enough Factionpoints to pay that.",
	stopConversation = "true",
	options = {
	}
}
rev_instructor_template:addScreen(rev_instructor_insufficient_faction);

rev_instructor_wrong_faction = ConvoScreen:new {
        id = "wrong_faction",
        leftDialog = "",
        customDialogText = "Dumbnut, you are not a Member of the imperial Forces.",
        stopConversation = "true",
        options = {
        }
}
rev_instructor_template:addScreen(rev_instructor_wrong_faction);

addConversationTemplate("rev_instructor_template",rev_instructor_template);
