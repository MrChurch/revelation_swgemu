--Copyright (C) 2015 <www.revelationonline.net> Author genesis@revelationonline.net





object_revelation_tangible_loot_loot_schematic_musty_house_loot_schem = object_revelation_tangible_loot_loot_schematic_shared_musty_house_loot_schem:new {
	customName = "Mustafar Bunker",
	templateType = LOOTSCHEMATIC,
	objectMenuComponent = {"cpp", "LootSchematicMenuComponent"},
	attributeListComponent = "LootSchematicAttributeListComponent",
	requiredSkill = "crafting_architect_master",
	targetDraftSchematic = "object/draft_schematic/structure/musty_house_schem.iff",
	targetUseCount = 1
}

ObjectTemplates:addTemplate(object_revelation_tangible_loot_loot_schematic_musty_house_loot_schem, "object/tangible/loot/loot_schematic/musty_house_loot_schem.iff")
