surgisquil = Creature:new {
	objectName = "",
	customName = "Surgisquil <A Mutated Squill>",
	socialGroup = "squill",
	pvpFaction = "",
	faction = "",
	level = 800,
	chanceHit = 300,
	damageMin = 3945,
	damageMax = 4850,
	baseXp = 296845,
	baseHAM = 706000,
	baseHAMmax = 892000,
	armor = 3,
	resists = {65,55,85,75,75,55,100,45,-1},
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
	creatureBitmask = STALKER,
	optionsBitmask = 128,
	diet = HERBIVORE,

	templates = {"object/mobile/beast_master/bm_mutated_varasquactyl.iff"},
	scale = 3.0,
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"creatureareapoison"},
		{"creatureareaknockdown","knockdownChance=90"}
	}
}

CreatureTemplates:addCreatureTemplate(surgisquil, "surgisquil")
