npe_droid_k3i_buzzer = Creature:new {
	objectName = "",
	customName = "Cleaning HK00",
	socialGroup = "dungeon_creature",
	faction = "",
	level = 80,
	chanceHit = 25,
	damageMin = 220,
	damageMax = 450,
	baseXp = 2057,
	baseHAM = 10000,
	baseHAMmax = 12000,
	armor = 2,
	resists = {40,40,60,35,55,70,35,40,15},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = NONE,
	creatureBitmask = NONE,
	optionsBitmask = 128,
	diet = HERBIVORE,

	templates = {"object/mobile/npe/npe_droid_k3i_buzzer.iff"},
	lootGroups = {},
	defaultWeapon = "object/weapon/ranged/droid/droid_droideka_ranged.iff",
	defaultAttack = "creaturerangedattack",
	conversationTemplate = "",
}

CreatureTemplates:addCreatureTemplate(npe_droid_k3i_buzzer, "npe_droid_k3i_buzzer")
