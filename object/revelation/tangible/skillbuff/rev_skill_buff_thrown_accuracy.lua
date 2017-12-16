object_tangible_rev_skill_buff_rev_skill_buff_thrown_accuracy = object_tangible_skill_buff_shared_rev_skill_buff_thrown_accuracy:new {
	templateType = SKILLBUFF,
	objectMenuComponent = {"cpp", "SkillBuffObjectMenuComponent"},
	attributeListComponent = "SkillBuffObjectAttributeListComponent",
	
	duration = 1800,
	useCount = 5,
	modifiers = { "thrown_accuracy", 25 },
	buffName = "thrown_accuracy",
	buffCRC = 0xBFEEDABF
}

ObjectTemplates:addTemplate(object_tangible_rev_skill_buff_rev_skill_buff_thrown_accuracy, "object/tangible/skill_buff/rev_skill_buff_thrown_accuracy.iff")
