czerka_outpost_lift_worker = Creature:new {

  objectName = "",
  customName = "Czerka Lift worker",
  socialGroup = "czerka_outpost",
  faction = "czerka_outpost",
  level = 100,
  chanceHit = 0.390000,
  damageMin = 290,
  damageMax = 300,
  baseXp = 2914,
  baseHAM = 8400,
  baseHAMmax = 10200,
  armor = 0,
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
  templates = {
		"object/mobile/dressed_kobola_miner_human_male_01.iff",
		"object/mobile/dressed_kobola_miner_human_female_01.iff"},
  conversationTemplate = "czerka_outpost_lift_worker_template",
  optionsBitmask = 264
}

CreatureTemplates:addCreatureTemplate(czerka_outpost_lift_worker, "czerka_outpost_lift_worker")
