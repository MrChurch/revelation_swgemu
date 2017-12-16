--Copyright (C) 2015 <www.revelationonline.net> Author genesis@revelationonline.net





object_revelation_tangible_loot_loot_schematic_vehicle_basilisk_war_droid_loot_schem = object_revelation_tangible_loot_loot_schematic_shared_vehicle_basilisk_war_droid_loot_schem:new {
  templateType = LOOTSCHEMATIC,
  objectMenuComponent = {"cpp", "LootSchematicMenuComponent"},
  attributeListComponent = "LootSchematicAttributeListComponent",
  requiredSkill = "crafting_droidengineer_novice",
  targetDraftSchematic = "object/draft_schematic/vehicle/civilian/speeder_basilisk_war_droid.iff",
  targetUseCount = 1
}

ObjectTemplates:addTemplate(object_revelation_tangible_loot_loot_schematic_vehicle_basilisk_war_droid_loot_schem, "object/tangible/loot/loot_schematic/vehicle_basilisk_war_droid_schem.iff")
