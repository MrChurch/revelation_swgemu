recycler_schematics = {
    description = "",
    minimumLevel = 0,
    maximumLevel = -1,
    lootItems = {
        {itemTemplate = "creature_recycler_schematic", weight = 2000000},
        {itemTemplate = "chemical_recycler_schematic", weight = 2000000},
        {itemTemplate = "ore_recycler_schematic", weight = 2000000},
        {itemTemplate = "metal_recycler_schematic", weight = 2000000},
        {itemTemplate = "flora_recycler_schematic", weight = 2000000},
    }
}

addLootGroupTemplate("recycler_schematics", recycler_schematics)
