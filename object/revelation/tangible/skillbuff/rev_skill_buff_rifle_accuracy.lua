object_tangible_rev_skill_buff_rev_skill_buff_rifle_accuracy = object_tangible_skill_buff_shared_rev_skill_buff_rifle_accuracy:new {
	templateType = SKILLBUFF,
	objectMenuComponent = {"cpp", "SkillBuffObjectMenuComponent"},
	attributeListComponent = "SkillBuffObjectAttributeListComponent",
	
	duration = 1800,
	useCount = 5,
	modifiers = { "rifle_accuracy", 20 },
	buffName = "rifle_accuracy",
	buffCRC = 0x33ADEE46
}

ObjectTemplates:addTemplate(object_tangible_rev_skill_buff_rev_skill_buff_rifle_accuracy, "object/tangible/skill_buff/rev_skill_buff_rifle_accuracy.iff")
