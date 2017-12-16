lw_undead_trooper_m = Creature:new {
	objectName = "",
	customName = "Creature of the Past",
	socialGroup = "dungeon_creature",
	faction = "",
	level = 150,
	chanceHit = 25,
	damageMin = 920,
	damageMax = 1350,
	baseXp = 4000,
	baseHAM = 12000,
	baseHAMmax = 18000,
	armor = 1,
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
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK,
	optionsBitmask = 128,
	diet = HERBIVORE,

	templates = {"object/mobile/outbreak_undead_deathtrooper_01_m.iff"},
  lootGroups = {
    {
      groups = {
              {group = "traveler_ring", chance = 500000},
              {group = "rev_skill_buffs", chance = 2000000},
              {group = "halloween_loot", chance = 1500000},
              {group = "clothing_attachments", chance = 1000000},
              {group = "krayt_dragon_pearl_flawless", chance = 500000},
              {group = "junk", chance = 4500000},
      },
      lootChance = 7500000,
    },
  },
  weapons = {},
  conversationTemplate = "",
  attacks = merge(tkamaster,brawlermaster)
}

CreatureTemplates:addCreatureTemplate(lw_undead_trooper_m, "lw_undead_trooper_m")
