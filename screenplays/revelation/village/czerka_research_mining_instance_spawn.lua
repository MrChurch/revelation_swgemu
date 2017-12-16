local mining_template = require("screenplays.revelation.village.czerka_research_lok_mining_template")
local scriptName = "czerka_research_lok_mining"

local mining_instance = mining_template:new {
    numberOfActs = 1,  
    states = {},
}

czerka_research_lok_mining_instance_1 = mining_instance:new{ 
    scriptName = scriptName .. "_instance_1", 	                    
    x = -7200,
    z = 105,
    y = -7200,
    instance = 1,
    mode = "", 
}
registerScreenPlay(czerka_research_lok_mining_instance_1.scriptName, true)

czerka_research_lok_mining_instance_2 = mining_instance:new{ 
    scriptName = scriptName .. "_instance_2",                       
    x = -7000,
    z = 92,
    y = -7400,
    instance = 2,
    mode = "",
}
registerScreenPlay(czerka_research_lok_mining_instance_2.scriptName, true)

czerka_research_lok_mining_instance_3 = mining_instance:new{ 
    scriptName = scriptName .. "_instance_3",                       
    x = -6087,
    z = 92,
    y = -7390,
    instance = 3,
    mode = "",
}
registerScreenPlay(czerka_research_lok_mining_instance_3.scriptName, true)

czerka_research_lok_mining_instance_4 = mining_instance:new{ 
    scriptName = scriptName .. "_instance_4",                       
    x = -5240,
    z = 92,
    y = -7673,
    instance = 4,
    mode = "hard",
}
registerScreenPlay(czerka_research_lok_mining_instance_4.scriptName, true)

czerka_research_lok_mining_instance_5 = mining_instance:new{ 
    scriptName = scriptName .. "_instance_5",                       
    x = -3797,
    z = 92,
    y = -7478,
    instance = 5,
    mode = "hard",
}
registerScreenPlay(czerka_research_lok_mining_instance_5.scriptName, true)

czerka_research_lok_mining_instance_6 = mining_instance:new{ 
    scriptName = scriptName .. "_instance_6",                       
    x = 969,
    z = 92,
    y = -7520,
    instance = 6,
    mode = "easy",
}
registerScreenPlay(czerka_research_lok_mining_instance_6.scriptName, true)

czerka_research_lok_mining_instance_7 = mining_instance:new{ 
    scriptName = scriptName .. "_instance_7",                       
    x = 2535,
    z = 92,
    y = -7377,
    instance = 7,
    mode = "easy",
}
registerScreenPlay(czerka_research_lok_mining_instance_7.scriptName, true)