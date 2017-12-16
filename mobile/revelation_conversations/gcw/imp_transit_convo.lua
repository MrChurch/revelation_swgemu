imp_transitconvo_template = ConvoTemplate:new {
   initialScreen = "first_screen",
   templateType = "Lua",
   luaClassHandler = "gcw_imperial_transit_system_convo_handler",
   screens = {}
}

transit_convo_first_screen = ConvoScreen:new {
   id = "first_screen",
   leftDialog = "",
   customDialogText = "You need a military Transport ?",
   stopConversation = "false",
   options = {
      {"Show me the Flightplan", "sFlightplan"},
      {"Are there more transports ?", "about_quest"},
      {"No thank you.", "deny_quest"}
   }
}
imp_transitconvo_template:addScreen(transit_convo_first_screen);

transit_convo_sFlightplan = ConvoScreen:new {
   id = "sFlightplan",
   leftDialog = "",
   customDialogText = "Shuttle transports to",
   stopConversation = "false",
      options = {
      {"Bestine Battlezone             50 FP", "sBestinePVP"},
      {"No thank you.", "deny_quest"}
  }
}
imp_transitconvo_template:addScreen(transit_convo_sFlightplan);

transit_convo_about_quest = ConvoScreen:new {
   id = "about_quest",
   leftDialog = "",
   customDialogText = "There are more shuttles routes, with offical Orders we will Transport you to more places. Or maybe you can help some of our workers here. Help the stormtroopers and the troopers help you.",
   stopConversation = "true",
   options = {   
   }
}
imp_transitconvo_template:addScreen(transit_convo_about_quest);

transit_convo_deny_quest = ConvoScreen:new {
   id = "deny_quest",
   leftDialog = "",
   customDialogText = "Well, have a nice day.",
   stopConversation = "true",
   options = {   
   }
}
imp_transitconvo_template:addScreen(transit_convo_deny_quest);

transit_convo_wrong_faction = ConvoScreen:new {
   id = "wrong_faction",
   leftDialog = "",
   customDialogText = "You are no member of the imperial forces",
   stopConversation = "true",
   options = {   
   }
}
imp_transitconvo_template:addScreen(transit_convo_wrong_faction);

transit_convo_notenough_faction = ConvoScreen:new {
   id = "notenough_faction",
   leftDialog = "",
   customDialogText = "You have not enough Faction Points",
   stopConversation = "true",
   options = {   
   }
}
imp_transitconvo_template:addScreen(transit_convo_notenough_faction);

addConversationTemplate("imp_transitconvo_template", imp_transitconvo_template);
