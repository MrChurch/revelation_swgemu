

object_draft_schematic_vehicle_civilian_swamp_speeder = object_draft_schematic_vehicle_civilian_shared_swamp_speeder:new {

   templateType = DRAFTSCHEMATIC,

   customObjectName = "Swamp Speeder",

   craftingToolTab = 16, 
   complexity = 20, 
   size = 1, 

   xpType = "crafting_general", 
   xp = 1600, 

   assemblySkill = "general_assembly", 
   experimentingSkill = "general_experimentation", 
   customizationSkill = "clothing_customization", 

   customizationOptions = {},
   customizationStringNames = {},
   customizationDefaults = {},

   ingredientTemplateNames = {"craft_vehicle_ingredients_n", "craft_vehicle_ingredients_n"},
   ingredientTitleNames = {"vehicle_body", "structural_frame"},
   ingredientSlotType = {0, 0},
   resourceTypes = {"copper_desh", "steel_rhodium"},
   resourceQuantities = {6800, 12400},
   contribution = {100, 100},


   targetTemplate = "object/tangible/deed/vehicle_deed/swamp_speeder.iff",
   disableFactoryRun = true,
   
   additionalTemplates = {
                }

}
ObjectTemplates:addTemplate(object_draft_schematic_vehicle_civilian_swamp_speeder, "object/draft_schematic/vehicle/civilian/swamp_speeder.iff")
