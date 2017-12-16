-- Author: Matthias Muente (matthias.muente@gmx.de)
-- https://revelationonline.net 

czerka_outpost_rings = {
	description = "",
	minimumLevel = 0,
	maximumLevel = 0,
	lootItems = {
	  {itemTemplate = "czerka_officer_ring", weight = 3300000},
          {itemTemplate = "czerka_captain_ring", weight = 3300000},
          {itemTemplate = "czerka_mystery_ring", weight = 3400000},
	}
}

addLootGroupTemplate("czerka_outpost_rings", czerka_outpost_rings)
