object_revelation_tangible_loot_loot_schematic_jedi_house_loot_schem = object_revelation_tangible_loot_loot_schematic_shared_jedi_house_loot_schem:new {
	customName = "Jedi House",
	templateType = LOOTSCHEMATIC,
	objectMenuComponent = {"cpp", "LootSchematicMenuComponent"},
	attributeListComponent = "LootSchematicAttributeListComponent",
	requiredSkill = "crafting_architect_master",
	targetDraftSchematic = "object/draft_schematic/structure/jedi_house_schem.iff",
	targetUseCount = 1
}

ObjectTemplates:addTemplate(object_revelation_tangible_loot_loot_schematic_jedi_house_loot_schem, "object/tangible/loot/loot_schematic/jedi_house_loot_schem.iff")
