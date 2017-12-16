object_tangible_rev_skill_buff_rev_skill_buff_ranged_accuracy = object_tangible_skill_buff_shared_rev_skill_buff_ranged_accuracy:new {
	templateType = SKILLBUFF,
	objectMenuComponent = {"cpp", "SkillBuffObjectMenuComponent"},
	attributeListComponent = "SkillBuffObjectAttributeListComponent",
	
	duration = 1800,
	useCount = 5,
	modifiers = { "ranged_accuracy", 20 },
	buffName = "ranged_accuracy",
	buffCRC = 0x33329A7B
}

ObjectTemplates:addTemplate(object_tangible_rev_skill_buff_rev_skill_buff_ranged_accuracy, "object/tangible/skill_buff/rev_skill_buff_ranged_accuracy.iff")
