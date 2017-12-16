lw_undead_trooper_m_boss = Creature:new {
	objectName = "",
	customName = "< Creature of the Past >",
	socialGroup = "dungeon_creature",
	faction = "",
	level =225,
	chanceHit = 25,
	damageMin = 1620,
	damageMax = 2650,
	baseXp = 10000,
	baseHAM = 52000,
	baseHAMmax = 68000,
	armor = 2,
	resists = {40,40,60,35,55,70,35,40,35},
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
              {group = "rev_skill_buffs", chance = 1500000},
              {group = "halloween_loot", chance = 2500000},
              {group = "clothing_attachments", chance = 2000000},
              {group = "krayt_dragon_pearl_flawless", chance = 1000000},
              {group = "junk", chance = 2500000},
      },
      lootChance = 10000000,
    },
  },
  weapons = {},
  conversationTemplate = "",
  attacks = merge(tkamaster,brawlermaster)
}

CreatureTemplates:addCreatureTemplate(lw_undead_trooper_m_boss, "lw_undead_trooper_m_boss")
