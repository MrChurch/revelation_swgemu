--Copyright (C) 2015 <www.revelationonline.net> Author genesis@revelationonline.net





object_revelation_tangible_loot_factional_schematic_imperial_stormtrooper_gloves_schematic = object_revelation_tangible_loot_factional_schematic_shared_imperial_stormtrooper_gloves_schematic:new {
	templateType = LOOTSCHEMATIC,
	objectMenuComponent = {"cpp", "LootSchematicMenuComponent"},
	attributeListComponent = "LootSchematicAttributeListComponent",
	requiredSkill = "crafting_armorsmith_master",
	targetDraftSchematic = "object/draft_schematic/armor/armor_appearance_stormtrooper_gloves.iff",
	targetUseCount = 1
}

ObjectTemplates:addTemplate(object_revelation_tangible_loot_factional_schematic_imperial_stormtrooper_gloves_schematic, "object/tangible/loot/factional_schematic/imperial_stormtrooper_gloves_schematic.iff")