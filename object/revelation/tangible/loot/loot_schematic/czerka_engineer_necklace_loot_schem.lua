--Copyright (C) 2015 <www.revelationonline.net> Author genesis@revelationonline.net





object_revelation_tangible_loot_loot_schematic_czerka_engineer_necklace_loot_schem = object_revelation_tangible_loot_loot_schematic_shared_czerka_engineer_necklace_loot_schem:new {
	customName = "Czerkas Engineer's Necklace",	
	templateType = LOOTSCHEMATIC,
	objectMenuComponent = {"cpp", "LootSchematicMenuComponent"},
	attributeListComponent = "LootSchematicAttributeListComponent",
	requiredSkill = "crafting_tailor_master",
	targetDraftSchematic = "object/draft_schematic/clothing/czerka_engineer_necklace_schem.iff",
	targetUseCount = 1,
}

ObjectTemplates:addTemplate(object_revelation_tangible_loot_loot_schematic_czerka_engineer_necklace_loot_schem, "object/tangible/loot/loot_schematic/czerka_engineer_necklace_loot_schem.iff")
