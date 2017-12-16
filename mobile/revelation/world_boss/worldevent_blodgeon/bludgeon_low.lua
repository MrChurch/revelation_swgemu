bludgeon_low = Creature:new {
	objectName = "",
	customName = "Bludgeon <A Mutated Rancor>",
	socialGroup = "dungeon_creature",
	pvpFaction = "",
	faction = "",
	level = 100,
	chanceHit = 20,
	damageMin = 2645,
	damageMax = 4850,
	baseXp = 50000,
	baseHAM = 150000,
	baseHAMmax = 200000,
	armor = 1,
	resists = {25,25,-1,25,25,25,45,-1,-1},
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

	templates = {"object/mobile/beast_master/bm_mutated_rancor.iff"},
	scale = 0.3,	
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"creatureareapoison","stateAccuracyBonus=100"},
		{"creatureareaknockdown","knockdownChance=80"}
	}
}

CreatureTemplates:addCreatureTemplate(bludgeon_low, "bludgeon_low")
