rev_dragonbeast = Creature:new {
	objectName = "",
	customName = "<<< The Dragonbeast >>>",
	socialGroup = "dungeon_creature",
	faction = "",
	level = 300,
	chanceHit = 100,
	damageMin = 3500,
	damageMax = 4500,
	baseXp = 300000,
	baseHAM = 490000,
	baseHAMmax = 530000,
	armor = 2,
	resists = {85,135,85,85,85,85,85,75,75},
	meatType = "meat_herbivore",
	meatAmount = 5000,
	hideType = "hide_wooly",
	hideAmount = 5000,
	boneType = "bone_mammal",
	boneAmount = 5000,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = 128,
	diet = HERBIVORE,

	templates = {"object/mobile/durni.iff"},
	lootGroups = {
		{
			groups = {
				{group = "dragonbeast_loot", chance = 10000000},
			},
			lootChance = 10000000,
		}, 
		{
			groups = {
				{group = "dragonbeast_loot", chance = 10000000},
			},
			lootChance = 10000000,
		}, 		
	},
	weapons = {"creature_spit_spray_toxicgreen"},
	conversationTemplate = "",
	attacks = {
		{"creatureareaattack","stateAccuracyBonus=150"},
		{"creatureareapoison","stateAccuracyBonus=180"},
		{"creatureareacombo","stateAccuracyBonus=150"},
		{"creatureareaknockdown","stateAccuracyBonus=150"},
	}
}

CreatureTemplates:addCreatureTemplate(rev_dragonbeast, "rev_dragonbeast")
