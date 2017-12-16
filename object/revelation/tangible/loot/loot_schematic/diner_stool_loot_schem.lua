--Copyright (C) 2015 <www.revelationonline.net> Author genesis@revelationonline.net





object_revelation_tangible_loot_loot_schematic_diner_stool_loot_schem = object_revelation_tangible_loot_loot_schematic_shared_diner_stool_loot_schem:new {
	customName = "Diner Stool",
	templateType = LOOTSCHEMATIC,
	objectMenuComponent = {"cpp", "LootSchematicMenuComponent"},
	attributeListComponent = "LootSchematicAttributeListComponent",
	requiredSkill = "crafting_architect_master",
	targetDraftSchematic = "object/draft_schematic/furniture/furniture_diner_stool.iff",
	targetUseCount = 2,
}

ObjectTemplates:addTemplate(object_revelation_tangible_loot_loot_schematic_diner_stool_loot_schem, "object/tangible/loot/loot_schematic/diner_stool_schem.iff")
