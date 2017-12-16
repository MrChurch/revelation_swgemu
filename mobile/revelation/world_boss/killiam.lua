killiam = Creature:new {
	objectName = "",
	customName = "Killiam <A Mutated Kimogila>",
	socialGroup = "kimogila",
	pvpFaction = "",
	faction = "",
	level = 800,
	chanceHit = 300,
	damageMin = 4745,
	damageMax = 5150,
	baseXp = 296845,
	baseHAM = 1000000,
	baseHAMmax = 1200000,
	armor = 3,
	resists = {65,55,75,75,75,20,20,100,20},
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

	templates = {"object/mobile/beast_master/bm_mutated_kimogila.iff"},
	scale = 1.4,
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"creatureareadisease","stateAccuracyBonus=125"},
		{"creatureareaknockdown","stateAccuracyBonus=100"}
	}
}

CreatureTemplates:addCreatureTemplate(killiam, "killiam")
