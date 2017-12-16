--Copyright (C) 2015 <www.revelationonline.net> Author genesis@revelationonline.net





object_revelation_tangible_loot_loot_schematic_nab_sm_win_01_loot_schem = object_revelation_tangible_loot_loot_schematic_shared_nab_sm_win_01_loot_schem:new {
	customName = "Small Naboo House Windowed",
	templateType = LOOTSCHEMATIC,
	objectMenuComponent = {"cpp", "LootSchematicMenuComponent"},
	attributeListComponent = "LootSchematicAttributeListComponent",
	requiredSkill = "crafting_architect_master",
	targetDraftSchematic = "object/draft_schematic/structure/nab_sm_win_01_schem.iff",
	targetUseCount = 1,
}

ObjectTemplates:addTemplate(object_revelation_tangible_loot_loot_schematic_nab_sm_win_01_loot_schem, "object/tangible/loot/loot_schematic/nab_sm_win_01_loot_schem.iff")
