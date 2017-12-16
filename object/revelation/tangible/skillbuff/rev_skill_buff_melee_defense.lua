object_tangible_rev_skill_buff_rev_skill_buff_melee_defense = object_tangible_skill_buff_shared_rev_skill_buff_melee_defense:new {
	templateType = SKILLBUFF,
	objectMenuComponent = {"cpp", "SkillBuffObjectMenuComponent"},
	attributeListComponent = "SkillBuffObjectAttributeListComponent",
	
	duration = 1800,
	useCount = 5,
	modifiers = { "melee_defense", 20 },
	buffName = "melee_defense",
	buffCRC = 0xC78FA3B7
}

ObjectTemplates:addTemplate(object_tangible_rev_skill_buff_rev_skill_buff_melee_defense, "object/tangible/skill_buff/rev_skill_buff_melee_defense.iff")
