krayt_dragon_aged_ancient = Creature:new {
	objectName = "",
	customName = "Krayt old ancient Dragonbeast",
	socialGroup = "krayt",
	faction = "",
	level = 380,
	chanceHit = 100.0,
	damageMin = 4570,
	damageMax = 6150,
	baseXp = 28549,
	baseHAM = 480000,
	baseHAMmax = 581000,
	armor = 3,
	resists = {195,195,195,195,165,195,195,195,45},
	meatType = "meat_carnivore",
	meatAmount = 7500,
	hideType = "hide_bristley",
	hideAmount = 7500,
	boneType = "bone_mammal",
	boneAmount = 7500,
	milk = 0,
	tamingChance = 0,
	ferocity = 30,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER + STALKER,
	optionsBitmask = 128,
	diet = CARNIVORE,
	scale = 1.8,

	templates = {"object/mobile/krayt_dragon.iff"},
        lootGroups = {
          {
            groups = {
              {group = "krayt_tissue_rare", chance = 2500000},
              {group = "pearls_flawless", chance = 2500000},
              {group = "pearls_premium", chance = 2500000},
              {group = "clothing_attachments", chance = 2500000},
            },
            lootChance = 10000000,
          },
          {
            groups = {
              {group = "krayt_tissue_rare", chance = 2500000},
              {group = "pearls_flawless", chance = 2500000},
              {group = "pearls_premium", chance = 2500000},
              {group = "clothing_attachments", chance = 2500000},
            },
            lootChance = 10000000,
          },
          {
            groups = {
              {group = "krayt_tissue_rare", chance = 2500000},
              {group = "pearls_flawless", chance = 2500000},
              {group = "pearls_premium", chance = 2500000},
              {group = "clothing_attachments", chance = 2500000},
            },
            lootChance = 10000000,
          },
          {
            groups = {
              {group = "krayt_tissue_rare", chance = 2500000},
              {group = "pearls_flawless", chance = 2500000},
              {group = "pearls_premium", chance = 2500000},
              {group = "clothing_attachments", chance = 2500000},
            },
            lootChance = 10000000,
          },
        },
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"creatureareacombo","stateAccuracyBonus=125"},
		{"creatureareaknockdown","stateAccuracyBonus=180"},
		{"creatureareableeding","stateAccuracyBonus=180"},
		{"creatureareapoison","stateAccuracyBonus=180"},
	}
}

CreatureTemplates:addCreatureTemplate(krayt_dragon_aged_ancient, "krayt_dragon_aged_ancient")
