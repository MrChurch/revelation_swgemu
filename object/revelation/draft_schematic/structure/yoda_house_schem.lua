--Copyright (C) 2015 <www.revelationonline.net> Author genesis@revelationonline.net





object_revelation_draft_schematic_structure_yoda_house_schem = object_revelation_draft_schematic_structure_shared_yoda_house_schem:new {

   templateType = DRAFTSCHEMATIC,

 --  customObjectName = "Deed for: VIP Bunker",

   craftingToolTab = 1024, -- (See DraftSchemticImplementation.h)
   complexity = 45, 
   size = 14, 

   xpType = "crafting_structure_general", 
   xp = 1000, 

   assemblySkill = "structure_assembly", 
   experimentingSkill = "structure_experimentation", 
   customizationSkill = "structure_customization", 

   customizationOptions = {},
   customizationStringNames = {},
   customizationDefaults = {},

   ingredientTemplateNames = {"craft_structure_ingredients_n", "craft_structure_ingredients_n", "craft_structure_ingredients_n", "craft_structure_ingredients_n", "craft_structure_ingredients_n", "craft_structure_ingredients_n"},
   ingredientTitleNames = {"load_bearing_structure_and_shell", "insulation_and_covering", "foundation", "wall_sections", "power_supply_unit", "storage_space"},
   ingredientSlotType = {0, 0, 0, 2, 1, 1},
   resourceTypes = {"iron_doonium", "ore_siliclastic_tertian", "crystalline_sormahil_firegem", "object/tangible/component/structure/shared_structural_module.iff", "object/tangible/component/structure/shared_light_power_core_unit.iff", "object/tangible/component/structure/shared_structure_small_storage_section.iff"},
   resourceQuantities = {2500, 2500, 2500, 7, 2, 1},
   contribution = {100, 100, 100, 100, 100, 100},


   targetTemplate = "object/tangible/deed/player_house_deed/yoda_house_deed.iff",

   disableFactoryRun = true

}
ObjectTemplates:addTemplate(object_revelation_draft_schematic_structure_yoda_house_schem, "object/draft_schematic/structure/yoda_house_schem.iff")
