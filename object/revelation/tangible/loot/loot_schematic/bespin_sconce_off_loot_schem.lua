--Copyright (C) 2015 <www.revelationonline.net> Author genesis@revelationonline.net





object_revelation_tangible_loot_loot_schematic_bespin_sconce_off_loot_schem = object_revelation_tangible_loot_loot_schematic_shared_bespin_sconce_off_loot_schem:new {
	customName = "Bespin Sconce (Off)",	
	templateType = LOOTSCHEMATIC,
	objectMenuComponent = {"cpp", "LootSchematicMenuComponent"},
	attributeListComponent = "LootSchematicAttributeListComponent",
	requiredSkill = "crafting_architect_master",
	targetDraftSchematic = "object/draft_schematic/furniture/bespin_sconce_off.iff",
	targetUseCount = 1,
}

ObjectTemplates:addTemplate(object_revelation_tangible_loot_loot_schematic_bespin_sconce_off_loot_schem, "object/tangible/loot/loot_schematic/bespin_sconce_off_schem.iff")
