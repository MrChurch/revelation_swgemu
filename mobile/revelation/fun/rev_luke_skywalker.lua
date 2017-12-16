rev_luke_skywalker = Creature:new {
	objectName = "@mob/creature_names:luke_skywalker",
	socialGroup = "rebel",
	faction = "rebel",
	level = 150,
	chanceHit = 30,
	damageMin = 2120,
	damageMax = 2950,
	baseXp = 100000,
	baseHAM = 200000,
	baseHAMmax = 250000,
	armor = 0,
	resists = {90,90,90,90,90,90,90,90,35},
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

	templates = {"object/mobile/dressed_luke_skywalker.iff"},
	lootGroups = {},
	weapons = {"dark_jedi_weapons_gen4"},
	conversationTemplate = "",
	attacks = merge(lightsabermaster,forcepowermaster)
}

CreatureTemplates:addCreatureTemplate(rev_luke_skywalker, "rev_luke_skywalker")
