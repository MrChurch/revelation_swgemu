panthera_low = Creature:new {
	objectName = "",
	customName = "Panthera <A Mutated Narglatch>",
	socialGroup = "dungeon_creature",
	pvpFaction = "",
	faction = "",
	level = 800,
	chanceHit = 300,
	damageMin = 3045,
	damageMax = 5050,
	baseXp = 750000,
	baseHAM = 906000,
	baseHAMmax = 1192000,
	armor = 3,
	resists = {65,55,85,25,75,35,45,35,-1},
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
	creatureBitmask = KILLER + STALKER,
	optionsBitmask = 128,
	diet = HERBIVORE,

	templates = {"object/mobile/beast_master/bm_mutated_narglatch.iff"},
	scale = 2.5,
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"creatureareapoison"},
		{"creatureareaknockdown","knockdownChance=95"}
	}
}

CreatureTemplates:addCreatureTemplate(panthera_low, "panthera_low")
