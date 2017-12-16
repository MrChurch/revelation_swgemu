--Copyright (C) 2015 <www.revelationonline.net> Author matthias.muente@gmx.de

object_revelation_draft_schematic_clothing_gha_gha_be_necklace_schem = object_revelation_draft_schematic_clothing_gha_shared_gha_be_necklace_schem:new {

   templateType = DRAFTSCHEMATIC,

   customObjectName = "G.H.A Genetics Necklace",

   craftingToolTab = 8, -- (See DraftSchemticImplementation.h)
   complexity = 21, 
   size = 2, 

   xpType = "crafting_clothing_general", 
   xp = 70, 

   assemblySkill = "clothing_assembly", 
   experimentingSkill = "clothing_experimentation", 
   customizationSkill = "clothing_customization", 

   customizationOptions = {2, 1},
   customizationStnecklaceNames = {"/private/index_color_1", "/private/index_color_2"},
   customizationDefaults = {0, 0},

   ingredientTemplateNames = {"craft_clothing_ingredients_n", "craft_clothing_ingredients_n", "craft_clothing_ingredients_n"},
   ingredientTitleNames = {"clasp", "band", "jewelry_setting"},
   ingredientSlotType = {0, 0, 0},
   resourceTypes = {"petrochem_fuel_solid_type7", "copper_thallium", "crystalline_laboi_mineral_crystal"},
   resourceQuantities = {500, 500, 500},
   contribution = {100, 100, 100},


   targetTemplate = "object/tangible/wearables/necklace/gha_be_necklace.iff",

   disableFactoryRun = true


}
ObjectTemplates:addTemplate(object_revelation_draft_schematic_clothing_gha_gha_be_necklace_schem, "object/draft_schematic/clothing/gha_be_necklace_schem.iff")
