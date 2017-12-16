blodgeon_singing_mountain_clan_huntress = Creature:new {
	objectName = "@mob/creature_names:singing_mtn_clan_huntress",
	randomNameType = NAME_GENERIC_TAG,
	socialGroup = "dungeon_creature",
	faction = "",
	level = 135,
	chanceHit = 20,
	damageMin = 2520,
	damageMax = 3050,
	baseXp = 50000,
	baseHAM = 42000,
	baseHAMmax = 49000,
	armor = 1,
	resists = {35,35,75,-1,75,35,35,35,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER + STALKER,
	optionsBitmask = 128,
	diet = HERBIVORE,

	templates = {"object/mobile/dressed_dathomir_sing_mt_clan_huntress.iff"},
	lootGroups = {},
	weapons = {"dark_jedi_weapons_gen2"},
	conversationTemplate = "",
	attacks = merge(forcewielder,lightsabermaster,forcepowermaster)
}

CreatureTemplates:addCreatureTemplate(blodgeon_singing_mountain_clan_huntress, "blodgeon_singing_mountain_clan_huntress")
