--Copyright (C) 2015 <www.revelationonline.net> Author genesis@revelationonline.net





object_revelation_tangible_loot_loot_schematic_bespin_lamp_on_loot_schem = object_revelation_tangible_loot_loot_schematic_shared_bespin_lamp_on_loot_schem:new {
	customName = "Bespin Lamp (On)",	
	templateType = LOOTSCHEMATIC,
	objectMenuComponent = {"cpp", "LootSchematicMenuComponent"},
	attributeListComponent = "LootSchematicAttributeListComponent",
	requiredSkill = "crafting_architect_master",
	targetDraftSchematic = "object/draft_schematic/furniture/bespin_lamp_on.iff",
	targetUseCount = 1,
}

ObjectTemplates:addTemplate(object_revelation_tangible_loot_loot_schematic_bespin_lamp_on_loot_schem, "object/tangible/loot/loot_schematic/bespin_lamp_on_schem.iff")
