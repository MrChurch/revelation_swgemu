object_tangible_rev_skill_buff_rev_skill_buff_twohandmelee_speed = object_tangible_skill_buff_shared_rev_skill_buff_twohandmelee_speed:new {
	templateType = SKILLBUFF,
	objectMenuComponent = {"cpp", "SkillBuffObjectMenuComponent"},
	attributeListComponent = "SkillBuffObjectAttributeListComponent",
	
	duration = 1800,
	useCount = 5,
	modifiers = { "twohandmelee_speed", 20 },
	buffName = "twohandmelee_speed",
	buffCRC = 0x5F1BD61A
}

ObjectTemplates:addTemplate(object_tangible_rev_skill_buff_rev_skill_buff_twohandmelee_speed, "object/tangible/skill_buff/rev_skill_buff_twohandmelee_speed.iff")
