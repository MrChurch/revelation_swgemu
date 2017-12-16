--Copyright (C) 2015 <www.revelationonline.net> Author matthias.muente@gmx.de

object_revelation_tangible_loot_loot_schematic_gha_be_necklace_loot_schem = object_revelation_tangible_loot_loot_schematic_shared_gha_be_necklace_loot_schem:new {
	customName = "G.H.A Genetics Necklace",	
	templateType = LOOTSCHEMATIC,
	objectMenuComponent = {"cpp", "LootSchematicMenuComponent"},
	attributeListComponent = "LootSchematicAttributeListComponent",
	requiredSkill = "crafting_tailor_master",
	targetDraftSchematic = "object/draft_schematic/clothing/gha_be_necklace_schem.iff",
	targetUseCount = 1,
}

ObjectTemplates:addTemplate(object_revelation_tangible_loot_loot_schematic_gha_be_necklace_loot_schem, "object/tangible/loot/loot_schematic/gha_be_necklace_loot_schem.iff")