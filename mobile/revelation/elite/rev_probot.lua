rev_probot = Creature:new {
	objectName = "",
	customName = "< Node of the AI >",
	socialGroup = "dungeon_creature",
	faction = "",
	level = 100,
	chanceHit = 15,
	damageMin = 1050,
	damageMax = 1750,
	baseXp = 3005,
	baseHAM = 116300,
	baseHAMmax = 219100,
	armor = 1,
	resists = {55,55,55,35,35,35,35,35,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = ATTACKABLE + OVERT + AGGRESSIVE,
	creatureBitmask = PACK,
	optionsBitmask = 128,
	diet = HERBIVORE,
	scale = 1.5,

	lootGroups = {
		{
			groups = {
				{group = "traveler_ring", chance = 10000000},
			},
			lootChance = 10000000,
		},
		{
			groups = {
				{group = "traveler_ring", chance = 10000000},
			},
			lootChance = 5000000,
		}
	},

	
	templates = {"object/mobile/probot.iff"},
	conversationTemplate = "",
	defaultWeapon = "object/weapon/ranged/droid/droid_droideka_ranged.iff",
	defaultAttack = "creaturerangedattack"
}

CreatureTemplates:addCreatureTemplate(rev_probot, "rev_probot")
