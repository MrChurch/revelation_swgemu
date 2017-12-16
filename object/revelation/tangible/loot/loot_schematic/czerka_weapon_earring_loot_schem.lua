--Copyright (C) 2015 <www.revelationonline.net> Author genesis@revelationonline.net





object_revelation_tangible_loot_loot_schematic_czerka_weapon_earring_loot_schem = object_revelation_tangible_loot_loot_schematic_shared_czerka_weapon_earring_loot_schem:new {
	customName = "Czerkas Weaponsmith Earring",	
	templateType = LOOTSCHEMATIC,
	objectMenuComponent = {"cpp", "LootSchematicMenuComponent"},
	attributeListComponent = "LootSchematicAttributeListComponent",
	requiredSkill = "crafting_tailor_master",
	targetDraftSchematic = "object/draft_schematic/clothing/czerka_weapon_earring_schem.iff",
	targetUseCount = 1,
}

ObjectTemplates:addTemplate(object_revelation_tangible_loot_loot_schematic_czerka_weapon_earring_loot_schem, "object/tangible/loot/loot_schematic/czerka_weapon_earring_loot_schem.iff")
