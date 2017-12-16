--Copyright (C) 2015 <www.revelationonline.net> Author genesis@revelationonline.net





object_revelation_tangible_loot_loot_schematic_czerka_architect_ring_loot_schem = object_revelation_tangible_loot_loot_schematic_shared_czerka_architect_ring_loot_schem:new {
	--customName = "Czerkas Architect Ring",	
	templateType = LOOTSCHEMATIC,
	objectMenuComponent = {"cpp", "LootSchematicMenuComponent"},
	attributeListComponent = "LootSchematicAttributeListComponent",
	requiredSkill = "crafting_tailor_master",
	targetDraftSchematic = "object/draft_schematic/clothing/czerka_architect_ring_schem.iff",
	targetUseCount = 1,
}

ObjectTemplates:addTemplate(object_revelation_tangible_loot_loot_schematic_czerka_architect_ring_loot_schem, "object/tangible/loot/loot_schematic/czerka_architect_ring_loot_schem.iff")


object_revelation_tangible_loot_factional_schematic_imperial_assault_trooper_bicep_l_schematic = object_revelation_tangible_loot_factional_schematic_shared_imperial_assault_trooper_bicep_l_schematic:new {
  templateType = LOOTSCHEMATIC,
  objectMenuComponent = {"cpp", "LootSchematicMenuComponent"},
  attributeListComponent = "LootSchematicAttributeListComponent",
  requiredSkill = "crafting_armorsmith_master",
  targetDraftSchematic = "object/draft_schematic/armor/armor_appearance_assault_trooper_bicep_l.iff",
  targetUseCount = 1
}

ObjectTemplates:addTemplate(object_revelation_tangible_loot_factional_schematic_imperial_assault_trooper_bicep_l_schematic, "object/tangible/loot/factional_schematic/imperial_assault_trooper_bicep_l_schematic.iff")
