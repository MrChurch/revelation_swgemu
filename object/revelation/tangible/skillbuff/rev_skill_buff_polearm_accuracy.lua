object_tangible_rev_skill_buff_rev_skill_buff_polearm_accuracy = object_tangible_skill_buff_shared_rev_skill_buff_polearm_accuracy:new {
	templateType = SKILLBUFF,
	objectMenuComponent = {"cpp", "SkillBuffObjectMenuComponent"},
	attributeListComponent = "SkillBuffObjectAttributeListComponent",
	
	duration = 1800,
	useCount = 5,
	modifiers = { "polearm_accuracy", 20 },
	buffName = "polearm_accuracy",
	buffCRC = 0xF0C5EEED
}

ObjectTemplates:addTemplate(object_tangible_rev_skill_buff_rev_skill_buff_polearm_accuracy, "object/tangible/skill_buff/rev_skill_buff_polearm_accuracy.iff")
