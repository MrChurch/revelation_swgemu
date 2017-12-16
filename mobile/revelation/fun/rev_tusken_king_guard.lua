rev_tusken_king_guard = Creature:new {
	objectName = "",
	customName = "Guard of the Bloodhand",
	socialGroup = "tusken_raider",
	faction = "tusken_raider",
	level = 250,
	chanceHit = 95,
	damageMin = 2020,
	damageMax = 2350,
	baseXp = 20000,
	baseHAM = 365000,
	baseHAMmax = 432000,
	armor = 2,
	resists = {55,55,60,55,55,70,55,55,35},
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
	creatureBitmask = KILLER + PACK,
	optionsBitmask = 128,
	diet = HERBIVORE,
	scale = 1.2,
	templates = {"object/mobile/tusken_raider.iff"},
	lootGroups = {},
	weapons = {"czerka_melee_weapons_heavy"},
	conversationTemplate = "",
	attacks = merge(pikemanmaster,brawlermaster),
}
CreatureTemplates:addCreatureTemplate(rev_tusken_king_guard, "rev_tusken_king_guard")
