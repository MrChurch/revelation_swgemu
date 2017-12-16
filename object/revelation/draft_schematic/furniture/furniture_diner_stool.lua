--Copyright (C) 2015 <www.revelationonline.net> Author genesis@revelationonline.net





object_revelation_draft_schematic_furniture_furniture_diner_stool = object_revelation_draft_schematic_furniture_shared_furniture_diner_stool:new {

templateType = DRAFTSCHEMATIC,

   customObjectName = "Diner Stool",

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
   ingredientTitleNames = {"frame", "seat"},
   ingredientSlotType = {0, 0},
   resourceTypes = {"aluminum_perovskitic", "fiberplast_dantooine"},
   resourceQuantities = {200, 175},
   contribution = {100, 100},


   targetTemplate = "object/tangible/furniture/all/frn_diner_stool.iff",

   disableFactoryRun = true


}
ObjectTemplates:addTemplate(object_revelation_draft_schematic_furniture_furniture_diner_stool, "object/draft_schematic/furniture/furniture_diner_stool.iff")
