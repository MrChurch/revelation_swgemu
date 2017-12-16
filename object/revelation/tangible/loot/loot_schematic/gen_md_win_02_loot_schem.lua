--Copyright (C) 2015 <www.revelationonline.net> Author genesis@revelationonline.net





object_revelation_tangible_loot_loot_schematic_gen_md_win_02_loot_schem = object_revelation_tangible_loot_loot_schematic_shared_gen_md_win_02_loot_schem:new {
	customName = "Generic Window Medium S02",
	templateType = LOOTSCHEMATIC,
	objectMenuComponent = {"cpp", "LootSchematicMenuComponent"},
	attributeListComponent = "LootSchematicAttributeListComponent",
	requiredSkill = "crafting_architect_master",
	targetDraftSchematic = "object/draft_schematic/structure/gen_md_win_02_schem.iff",
	targetUseCount = 1,
}

ObjectTemplates:addTemplate(object_revelation_tangible_loot_loot_schematic_gen_md_win_02_loot_schem, "object/tangible/loot/loot_schematic/gen_md_win_02_loot_schem.iff")
