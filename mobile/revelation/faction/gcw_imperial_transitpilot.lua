imp_transitpilot = Creature:new {
   objectName = "",
   customName = "Transitpilot",
   socialGroup = "imperial",
   pvpFaction = "imperial",
   faction = "imperial",
   level = 80,
   chanceHit = 20,
   damageMin = 700,
   damageMax = 950,
   baseXp = 5000,
   baseHAM = 12000,
   baseHAMmax = 19000,
   armor = 2,
   resists = {40,40,60,35,55,70,35,40,-1},
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
   optionsBitmask = 264, --for conversation
   diet = HERBIVORE,

   templates = {"object/mobile/space_imperial_experimental_pilot.iff"},
   lootGroups = {},
   weapons = {},
   conversationTemplate = "imp_transitconvo_template",
   attacks = merge(riflemanmaster,carbineermaster)
}

CreatureTemplates:addCreatureTemplate(imp_transitpilot, "imp_transitpilot")
