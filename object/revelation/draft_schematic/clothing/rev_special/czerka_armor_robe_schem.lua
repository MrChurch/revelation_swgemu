--Copyright (C) 2015 <www.revelationonline.net> Author genesis@revelationonline.net







object_revelation_draft_schematic_clothing_rev_special_czerka_armor_robe_schem = object_revelation_draft_schematic_clothing_rev_special_shared_czerka_armor_robe_schem:new {

   templateType = DRAFTSCHEMATIC,

   customObjectName = "Czerka Armorsmith Robe",

   craftingToolTab = 8, -- (See DraftSchemticImplementation.h)
   complexity = 21, 
   size = 2, 

   xpType = "crafting_clothing_general", 
   xp = 70, 

   assemblySkill = "clothing_assembly", 
   experimentingSkill = "clothing_experimentation", 
   customizationSkill = "clothing_customization", 

   customizationOptions = {2, 1},
   customizationStringNames = {"/private/index_color_1", "/private/index_color_2"},
   customizationDefaults = {0, 0},

   ingredientTemplateNames = {"craft_clothing_ingredients_n", "craft_clothing_ingredients_n", "craft_clothing_ingredients_n"},
   ingredientTitleNames = {"clasp", "band", "jewelry_setting"},
   ingredientSlotType = {0, 0, 0},
   resourceTypes = {"fiberplast_endor", "copper_diatium", "crystalline_seafah_jewel"},
   resourceQuantities = {250, 250, 2500},
   contribution = {100, 100, 100},


   targetTemplate = "object/tangible/wearables/robe/czerka_armor_robe.iff",

   disableFactoryRun = true


}
ObjectTemplates:addTemplate(object_revelation_draft_schematic_clothing_rev_special_czerka_armor_robe_schem, "object/draft_schematic/clothing/czerka_armor_robe_schem.iff")
