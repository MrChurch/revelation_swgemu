--Copyright (C) 2015 <www.revelationonline.net> Author genesis@revelationonline.net





object_revelation_draft_schematic_furniture_furniture_diner_counter_corner_s02 = object_revelation_draft_schematic_furniture_shared_furniture_diner_counter_corner_s02:new {

templateType = DRAFTSCHEMATIC,

   customObjectName = "Diner Counter Corner Style 2",

   craftingToolTab = 512, -- (See DraftSchemticImplementation.h)
   complexity = 34, 
   size = 3, 

   xpType = "crafting_structure_general", 
   xp = 375, 

   assemblySkill = "structure_assembly", 
   experimentingSkill = "structure_experimentation", 
   customizationSkill = "structure_customization", 

   customizationOptions = {},
   customizationStringNames = {},
   customizationDefaults = {},

   ingredientTemplateNames = {"craft_furniture_ingredients_n", "craft_furniture_ingredients_n"},
   ingredientTitleNames = {"frame", "table_top"},
   ingredientSlotType = {0, 0},
   resourceTypes = {"aluminum_perovskitic", "softwood_evergreen_yavin4"},
   resourceQuantities = {200, 175},
   contribution = {100, 100},


   targetTemplate = "object/tangible/furniture/all/frn_diner_counter_corner_s02.iff",

   disableFactoryRun = true

}
ObjectTemplates:addTemplate(object_revelation_draft_schematic_furniture_furniture_diner_counter_corner_s02, "object/draft_schematic/furniture/furniture_diner_counter_corner_s02.iff")
