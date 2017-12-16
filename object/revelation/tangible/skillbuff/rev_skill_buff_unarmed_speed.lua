object_tangible_rev_skill_buff_rev_skill_buff_unarmed_speed = object_tangible_skill_buff_shared_rev_skill_buff_unarmed_speed:new {
	templateType = SKILLBUFF,
	objectMenuComponent = {"cpp", "SkillBuffObjectMenuComponent"},
	attributeListComponent = "SkillBuffObjectAttributeListComponent",
	
	duration = 1800,
	useCount = 5,
	modifiers = { "unarmed_accuracy", 20 },
	buffName = "unarmed_accuracy",
	buffCRC = 0x133ADA2F
}

ObjectTemplates:addTemplate(object_tangible_rev_skill_buff_rev_skill_buff_unarmed_speed, "object/tangible/skill_buff/rev_skill_buff_unarmed_speed.iff")
