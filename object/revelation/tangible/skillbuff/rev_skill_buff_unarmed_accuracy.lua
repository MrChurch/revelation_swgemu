object_tangible_rev_skill_buff_rev_skill_buff_unarmed_accuracy = object_tangible_skill_buff_shared_rev_skill_buff_unarmed_accuracy:new {
	templateType = SKILLBUFF,
	objectMenuComponent = {"cpp", "SkillBuffObjectMenuComponent"},
	attributeListComponent = "SkillBuffObjectAttributeListComponent",
	
	duration =1800,
	useCount = 5,
	modifiers = { "unarmed_accuracy", 20 },
	buffName = "unarmed_accuracy",
	buffCRC = 0x027D9E64
}

ObjectTemplates:addTemplate(object_tangible_rev_skill_buff_rev_skill_buff_unarmed_accuracy, "object/tangible/skill_buff/rev_skill_buff_unarmed_accuracy.iff")
