--Copyright (C) 2015 <www.revelationonline.net> Author genesis@revelationonline.net





object_revelation_tangible_loot_loot_schematic_diner_counter_corner_loot_schem = object_revelation_tangible_loot_loot_schematic_shared_diner_counter_corner_loot_schem:new {
	customName = "Diner Counter (Corner)",
	templateType = LOOTSCHEMATIC,
	objectMenuComponent = {"cpp", "LootSchematicMenuComponent"},
	attributeListComponent = "LootSchematicAttributeListComponent",
	requiredSkill = "crafting_architect_master",
	targetDraftSchematic = "object/draft_schematic/furniture/furniture_diner_counter_corner.iff",
	targetUseCount = 1,
}

ObjectTemplates:addTemplate(object_revelation_tangible_loot_loot_schematic_diner_counter_corner_loot_schem, "object/tangible/loot/loot_schematic/diner_counter_corner_schem.iff")
