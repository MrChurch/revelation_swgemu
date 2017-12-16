event_diseased_bocatt = Creature:new {
  objectName = "@mob/creature_names:bocatt_diseased",
  socialGroup = "bocatt",
  faction = "",
  level = 80,
  chanceHit = 5,
  damageMin = 250,
  damageMax = 750,
  baseXp = 1,
  baseHAM = 5000,
  baseHAMmax = 6000,
  armor = 1,
  resists = {15,15,15,15,15,15,15,15, 15},
  meatType = "meat_wild",
  meatAmount = 500,
  hideType = "hide_leathery",
  hideAmount = 500,
  boneType = "bone_mammal",
  boneAmount = 500,
  milk = 0,
  tamingChance = 0,
  ferocity = 0,
  pvpBitmask = ATTACKABLE + ENEMY,
  creatureBitmask = NONE,
  optionsBitmask = 128,
  diet = CARNIVORE,

  templates = {"object/mobile/bocatt.iff"},
  scale = 0.7,
  lootGroups = {
    {
      groups = {
        {group = "voritor_lizard_common", chance = 3000000 },
        {group = "looted_container", chance = 3000000 },
		{group = "forage_medical_component", chance = 3100000 },
		{group = "traveler_ring", chance = 300000 },
		{group = "crystals_all", chance = 500000 },
		{group = "holocron_dark", chance = 100000 },
      },
      lootChance = 6000000
    }
  },
  weapons = {},
  conversationTemplate = "",
  attacks = {
    {"strongdisease",""},
  }
}

CreatureTemplates:addCreatureTemplate(event_diseased_bocatt, "event_diseased_bocatt")
