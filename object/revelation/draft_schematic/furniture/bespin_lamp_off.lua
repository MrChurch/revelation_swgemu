--Copyright (C) 2015 <www.revelationonline.net> Author genesis@revelationonline.net





object_revelation_draft_schematic_furniture_bespin_lamp_off = object_revelation_draft_schematic_furniture_shared_bespin_lamp_off:new {

templateType = DRAFTSCHEMATIC,

   customObjectName = "Bespin Lamp Off",

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
   resourceTypes = {"aluminum_agrinium", "armophous_bospridium"},
   resourceQuantities = {150, 150},
   contribution = {100, 100},


   targetTemplate = "object/tangible/tcg/series8/decorative_bespin_lamp_off.iff",

   disableFactoryRun = true

}
ObjectTemplates:addTemplate(object_revelation_draft_schematic_furniture_bespin_lamp_off, "object/draft_schematic/furniture/bespin_lamp_off.iff")
