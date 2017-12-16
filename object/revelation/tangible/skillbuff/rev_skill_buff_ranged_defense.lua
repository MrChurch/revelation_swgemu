object_tangible_rev_skill_buff_rev_skill_buff_ranged_defense = object_tangible_skill_buff_shared_rev_skill_buff_ranged_defense:new {
	templateType = SKILLBUFF,
	objectMenuComponent = {"cpp", "SkillBuffObjectMenuComponent"},
	attributeListComponent = "SkillBuffObjectAttributeListComponent",
	
	duration = 1800,
	useCount = 5,
	modifiers = { "ranged_defense", 20 },
	buffName = "ranged_defense",
	buffCRC = 0xA6407812
}

ObjectTemplates:addTemplate(object_tangible_rev_skill_buff_rev_skill_buff_ranged_defense, "object/tangible/skill_buff/rev_skill_buff_ranged_defense.iff")
