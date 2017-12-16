village_taskmaster_template = ConvoTemplate:new {
	initialScreen = "first_screen",
	templateType = "Lua",
	luaClassHandler = "czerka_outpost_taskmaster_convo_handler",
	screens = {}
}
village_taskmaster_first_screen = ConvoScreen:new {
	id = "first_screen",
	leftDialog = "",
	customDialogText = "You want to work with the Czerka Corp ? Then i have some Freelancer tasks for you, where you can prove your value first.",
	stopConversation = "false",
	options = {
            {"Yes Sir, what are the tasks ?", "select_task"},
            {"Can you tell me more about my standing  ?", "select_standing"},
	}
}
village_taskmaster_template:addScreen(village_taskmaster_first_screen);

village_taskmaster_deny_quest = ConvoScreen:new {
	id = "deny_quest",
	leftDialog = "",
	customDialogText = "",
	stopConversation = "true",
	options = {
	}
}
village_taskmaster_template:addScreen(village_taskmaster_deny_quest);

village_taskmaster_select_task = ConvoScreen:new {
	id = "select_task",
  leftDialog = "",
  customDialogText = "I have the following recovery missions available:",
  stopConversation = "false",
  options = {
    {"Research Lab", "special_research"},
    {"Pirate Base", "special_pirate"},
    {"Alumn Mine", "special_alumnmine"},
    {"Alumn Mine (HC)", "special_alumnminehc"},
  }
}
village_taskmaster_template:addScreen(village_taskmaster_select_task);

village_taskmaster_special_research = ConvoScreen:new {
  id = "special_research",
  leftDialog = "",
  customDialogText = "We lost the contact to our Research facility on Yavin4. You can find it at: -6755, 5253 . Find out what happened",
  stopConversation = "false",
  options = {
  }
}
village_taskmaster_template:addScreen(village_taskmaster_special_research);

village_taskmaster_special_pirate = ConvoScreen:new {
  id = "special_pirate",
  leftDialog = "",
  customDialogText = "Pirates have build a base on Endor, they hunting our freelancer transporters. Infiltrate the Base at -2575, 5288, kill the Leader and destroy the shield generator",
  stopConversation = "false",
  options = {
  }
}
village_taskmaster_template:addScreen(village_taskmaster_special_pirate);

village_taskmaster_special_alumnmine = ConvoScreen:new {
  id = "special_alumnmine",
  leftDialog = "",
  customDialogText = "Our Alumn Mine on Lok is under attack by ... hm brainbugs ? They control several guards and are everywhere inside the Mine. Go there and solve the problem.",
  stopConversation = "false",
  options = {
  }
}
village_taskmaster_template:addScreen(village_taskmaster_special_alumnmine);

village_taskmaster_special_alumnminehc = ConvoScreen:new {
  id = "special_alumnminehc",
  leftDialog = "",
  customDialogText = "(solve Task in Hardcore Mode): Our Alumn Mine on Lok is under attack by ... hm brainbugs ? They control several guards and are everywhere inside the Mine. Go there and solve the problem. gather a Team around you.",
  stopConversation = "false",
  options = {
  }
}
village_taskmaster_template:addScreen(village_taskmaster_special_alumnminehc);


village_taskmaster_no_permission = ConvoScreen:new {
	id = "no_permission",
	leftDialog = "",
	customDialogText = "You have no Permission to talk with us. You need to talk to the Czerka's first.",
	stopConversation = "true",
	options = {
	}
}
village_taskmaster_template:addScreen(village_taskmaster_no_permission);

addConversationTemplate("village_taskmaster_template",village_taskmaster_template);
