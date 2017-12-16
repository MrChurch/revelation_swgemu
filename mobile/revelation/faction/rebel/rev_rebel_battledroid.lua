rev_rebel_battledroid = Creature:new {
    objectName = "",
    customName = "Shielded ancient Battledroid",	
    socialGroup = "rebel",
    pvpFaction = "rebel",
    faction = "rebel",
    level = 90,
    chanceHit = 5.47,
    damageMin = 860,
    damageMax = 1260,
    baseXp = 4461,
    baseHAM = 16500,
    baseHAMmax = 28500,
    armor = 2,
    resists = {55,55,55,55,55,55,55,55,100},
    meatType = "",
    meatAmount = 0,
    hideType = "",
    hideAmount = 0,
    boneType = "",
    boneAmount = 0,
    milk = 0,
    tamingChance = 0,
    ferocity = 0,
    pvpBitmask = AGGRESSIVE + ATTACKABLE,
    creatureBitmask = PACK + KILLER,
    optionsBitmask = 128,
    diet = NONE,
    scale = 1.40,

    templates = {
      "object/mobile/death_watch_s_battle_droid.iff",
      "object/mobile/death_watch_s_battle_droid_02.iff",
      "object/mobile/death_watch_s_battle_droid_03.iff"},
    lootGroups = {
          {
              groups = {
                  {group = "junk", chance = 4000000},
                  {group = "nyms_common", chance = 2000000},
                  {group = "recycler_components", chance = 2000000},
                  {group = "color_crystals",  chance = 2000000},
              },
              lootChance = 7500000
          }
      },
  
  conversationTemplate = "",
  defaultWeapon = "object/weapon/ranged/droid/droid_droideka_ranged.iff",
  defaultAttack = "creaturerangedattack"
}

CreatureTemplates:addCreatureTemplate(rev_rebel_battledroid, "rev_rebel_battledroid")