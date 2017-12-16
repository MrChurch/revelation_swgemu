rev_ig_assassin_droid = Creature:new {
	objectName = "@mob/creature_names:ig_assassin_droid",
	socialGroup = "dungeon_creature",
	faction = "",
	level = 80,
	chanceHit = 10.00,
	damageMin = 1220,
	damageMax = 1630,
	baseXp = 1803,
	baseHAM = 9400,
	baseHAMmax = 11000,
	armor = 1,
	resists = {80,80,45,45,45,-1,25,-1,-1},
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
	optionsBitmask = 0,
	diet = NONE,

	templates = {"object/mobile/ig_assassin_droid.iff"},
	lootGroups = {
	     {
			groups = {
				{group = "junk", chance = 6500000},
				{group = "nyms_common", chance = 1000000},
				{group = "pistols", chance = 1000000},
				{group = "carbines", chance = 1000000},
				{group = "tailor_components", chance = 500000}
			}
		}
	},
	conversationTemplate = "",
	defaultWeapon = "object/weapon/ranged/droid/droid_droideka_ranged.iff",
	defaultAttack = "creaturerangedattack"
}

CreatureTemplates:addCreatureTemplate(rev_ig_assassin_droid, "rev_ig_assassin_droid")
