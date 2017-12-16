rev_mothra = Creature:new {
	objectName = "",
	customName = "<< Mothra >>",
	socialGroup = "dungeon_creature",
	faction = "",
	level = 200,
	chanceHit = 15,
	damageMin = 2350,
	damageMax = 3650,
	baseXp = 25000,
	baseHAM = 500000,
	baseHAMmax = 600000,
	armor = 1,
	resists = {45,95,45,45,45,25,25,25,25},
	meatType = "meat_insect",
	meatAmount = 1000,
	hideType = "hide_scaley",
	hideAmount = 1000,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = KILLER + PACK,
	optionsBitmask = 128,
	diet = CARNIVORE,

	templates = {"object/mobile/corellian_butterfly_monarch.iff"},
	controlDeviceTemplate = "object/intangible/pet/corellian_butterfly_hue.iff",
	scale = 8,
	lootGroups = {
	 	{
			groups = {
				{group = "rev_skill_buffs", chance = 10000000}
			},
			lootChance = 10000000,
		},
		{
			groups = {
				{group = "rev_skill_buffs", chance = 10000000}
			},
			lootChance = 10000000,
		},
		{
			groups = {
				{group = "rev_skill_buffs", chance = 10000000}
			},
			lootChance = 10000000,
		},		
	},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"stunattack","stateAccuracyBonus=75"},
		{"intimidationattack","stateAccuracyBonus=75"},
		{"strongdisease","stateAccuracyBonus=100"},
		{"creatureareableeding","stateAccuracyBonus=75"}		
	}
}

CreatureTemplates:addCreatureTemplate(rev_mothra, "rev_mothra")
