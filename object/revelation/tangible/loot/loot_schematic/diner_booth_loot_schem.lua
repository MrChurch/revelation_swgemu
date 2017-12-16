--Copyright (C) 2015 <www.revelationonline.net> Author genesis@revelationonline.net





object_revelation_tangible_loot_loot_schematic_diner_booth_loot_schem = object_revelation_tangible_loot_loot_schematic_shared_diner_booth_loot_schem:new {
	customName = "Diner Booth",
	templateType = LOOTSCHEMATIC,
	objectMenuComponent = {"cpp", "LootSchematicMenuComponent"},
	attributeListComponent = "LootSchematicAttributeListComponent",
	requiredSkill = "crafting_architect_master",
	targetDraftSchematic = "object/draft_schematic/furniture/furniture_diner_booth.iff",
	targetUseCount = 1,
}

ObjectTemplates:addTemplate(object_revelation_tangible_loot_loot_schematic_diner_booth_loot_schem, "object/tangible/loot/loot_schematic/diner_booth_schem.iff")
