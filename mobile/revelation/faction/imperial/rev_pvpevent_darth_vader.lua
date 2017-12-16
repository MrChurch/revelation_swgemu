rev_pvpevent_darth_vader = Creature:new {
	objectName = "@mob/creature_names:darth_vader",
	socialGroup = "imperial",
	faction = "imperial",
	level = 300,
	chanceHit = 30,
	damageMin = 2045,
	damageMax = 2500,
	baseXp = 125000,
	baseHAM = 950000,
	baseHAMmax = 1200000,
	armor = 1,
	resists = {40,40,40,40,40,40,40,40,40},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = ATTACKABLE + AGGRESSIVE,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = 128,
	diet = HERBIVORE,
  	scale = 1.25,

	templates = {"object/mobile/darth_vader.iff"},
	lootGroups = {
	},
	weapons = {"dark_jedi_weapons_gen3"},
	conversationTemplate = "",
	attacks = merge(lightsabermaster,forcepowermaster)
}

CreatureTemplates:addCreatureTemplate(rev_pvpevent_darth_vader, "rev_pvpevent_darth_vader")
