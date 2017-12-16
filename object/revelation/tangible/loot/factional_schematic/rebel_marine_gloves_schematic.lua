--Copyright (C) 2015 <www.revelationonline.net> Author genesis@revelationonline.net





object_revelation_tangible_loot_factional_schematic_rebel_marine_gloves_schematic = object_revelation_tangible_loot_factional_schematic_shared_rebel_marine_gloves_schematic:new {
	templateType = LOOTSCHEMATIC,
	objectMenuComponent = {"cpp", "LootSchematicMenuComponent"},
	attributeListComponent = "LootSchematicAttributeListComponent",
	requiredSkill = "crafting_artisan_master",
	targetDraftSchematic = "object/draft_schematic/vehicle/civilian/landspeeder_ab1.iff",
	targetUseCount = 1
}

ObjectTemplates:addTemplate(object_revelation_tangible_loot_factional_schematic_rebel_marine_gloves_schematic, "object/tangible/loot/factional_schematic/rebel_marine_gloves_schematic.iff")
