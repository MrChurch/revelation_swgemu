czerka_outpost_officer_kenny = Creature:new {
  objectName = "",
  customName = "Czerka Officer Ken'nyrth",
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
    "object/mobile/dressed_imperial_trainer_space_01.iff"},
  conversationTemplate = "village_taskmaster_template",
  optionsBitmask = 264
}

CreatureTemplates:addCreatureTemplate(czerka_outpost_officer_kenny, "czerka_outpost_officer_kenny")
