imperial_bestine_shuttle = Creature:new {
	objectName = "",
	customName = "Fleet reinforcement Officer",
        socialGroup = "imperial",
        faction = "imperial",
	level = 75,
	chanceHit = 2,
	damageMin = 290,
	damageMax = 300,
	baseXp = 2914,
	baseHAM = 8400,
	baseHAMmax = 10200,
	armor = 1,
	resists = {-1,-1,-1,-1,-1,-1,-1,-1,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0.000000,
	ferocity = 0,
	pvpBitmask = NONE,
	creatureBitmask = NONE,
	diet = HERBIVORE,
	templates = {"object/mobile/dressed_imperial_lieutenant_m.iff",},
	conversationTemplate = "imperial_bestine_shuttle_template",
	optionsBitmask = 264
}
CreatureTemplates:addCreatureTemplate(imperial_bestine_shuttle,"imperial_bestine_shuttle")
