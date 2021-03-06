rev_spawnguard_at_xt = Creature:new {
        objectName = "",
        customName = "AT XT (Spawnguard)",
	socialGroup = "rebel",
	faction = "rebel",
        level = 300,
        chanceHit = 50,
        damageMin = 6500,
        damageMax = 8500,
        baseXp = 25000,
        baseHAM = 75000,
        baseHAMmax = 100000,
        armor = 2,
        resists = {99,99,99,99,99,99,99,99,99},
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
        creatureBitmask = PACK + KILLER,
	optionsBitmask = 128,
	diet = NONE,

	templates = {"object/mobile/atxt.iff"},
	lootGroups = {},
	conversationTemplate = "",
	defaultAttack = "defaultdroidattack",
	defaultWeapon = "object/weapon/ranged/vehicle/vehicle_atst_ranged.iff",
}

CreatureTemplates:addCreatureTemplate(rev_spawnguard_at_xt, "rev_spawnguard_at_xt")

