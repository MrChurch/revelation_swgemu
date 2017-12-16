czerka_yavin_mite_soldier = Creature:new {
	objectName = "@mob/creature_names:giant_decay_mite_soldier",
	socialGroup = "mite",
	faction = "",
	level = 95,
	chanceHit = 35,
	damageMin = 1360,
	damageMax = 2170,
	baseXp = 5102,
	baseHAM = 40500,
	baseHAMmax = 54300,
	armor = 1,
	resists = {50,50,50,50,50,-1,50,-1,5},
	meatType = "meat_insect",
	meatAmount = 300,
	hideType = "hide_scaley",
	hideAmount = 24,
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
	scale = 2.5,
	lootGroups = {
		{
			groups = {
				{group = "kliknik_common", chance = 10000000},
			},
			lootChance = 1000000
		}
	},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"stunattack","stateAccuracyBonus=100"},
		{"creatureareableeding","stateAccuracyBonus=100"},
		{"creatureareadisease","stateAccuracyBonus=100"},
    
	}
}

CreatureTemplates:addCreatureTemplate(czerka_yavin_mite_soldier, "czerka_yavin_mite_soldier")
