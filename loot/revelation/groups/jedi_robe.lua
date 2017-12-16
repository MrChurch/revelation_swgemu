-- Author: Matthias Muente (matthias.muente@gmx.de)
-- https://revelationonline.net 

jedi_robe = {
	description = "",
	minimumLevel = 0,
	maximumLevel = 0,
	lootItems = {
	  {itemTemplate = "robe_of_killiam_dark", weight = 2500000},
    {itemTemplate = "robe_of_killiam_light", weight = 2500000},
    {itemTemplate = "widowmaker_dark", weight = 2500000},
		{itemTemplate = "widowmaker_light", weight = 2500000},
	}
}

addLootGroupTemplate("jedi_robe", jedi_robe)
