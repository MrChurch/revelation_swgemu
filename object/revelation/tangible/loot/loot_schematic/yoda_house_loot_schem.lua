--Copyright (C) 2015 <www.revelationonline.net> Author genesis@revelationonline.net





object_revelation_tangible_loot_loot_schematic_yoda_house_loot_schem = object_revelation_tangible_loot_loot_schematic_shared_yoda_house_loot_schem:new {
	customName = "Yodas Hut",
	templateType = LOOTSCHEMATIC,
	objectMenuComponent = {"cpp", "LootSchematicMenuComponent"},
	attributeListComponent = "LootSchematicAttributeListComponent",
	requiredSkill = "crafting_architect_master",
	targetDraftSchematic = "object/draft_schematic/structure/yoda_house_schem.iff",
	targetUseCount = 1
}

ObjectTemplates:addTemplate(object_revelation_tangible_loot_loot_schematic_yoda_house_loot_schem, "object/tangible/loot/loot_schematic/yoda_house_loot_schem.iff")
