czerka_yavin_mite_harvester = Creature:new {
	objectName = "@mob/creature_names:giant_decay_mite_harvester",
	socialGroup = "mite",
	faction = "",
	level = 75,
	chanceHit = 25,
	damageMin = 520,
	damageMax = 1130,
	baseXp = 514,
	baseHAM = 18100,
	baseHAMmax = 22900,
	armor = 0,
	resists = {35,35,0,0,0,0,0,-1,-1},
	meatType = "meat_insect",
	meatAmount = 150,
	hideType = "hide_scaley",
	hideAmount = 10,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK,
	optionsBitmask = 128,
	diet = CARNIVORE,

	templates = {"object/mobile/decay_mite.iff"},
	scale = 1.3,
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"strongdisease","stateAccuracyBonus=85"},
		{"intimidationattack","stateAccuracyBonus=85"},
		{"creatureareadisease","stateAccuracyBonus=85"}
	}
}

CreatureTemplates:addCreatureTemplate(czerka_yavin_mite_harvester, "czerka_yavin_mite_harvester")
