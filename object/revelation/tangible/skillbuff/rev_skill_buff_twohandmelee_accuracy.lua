object_tangible_rev_skill_buff_rev_skill_buff_twohandmelee_accuracy = object_tangible_skill_buff_shared_rev_skill_buff_twohandmelee_accuracy:new {
	templateType = SKILLBUFF,
	objectMenuComponent = {"cpp", "SkillBuffObjectMenuComponent"},
	attributeListComponent = "SkillBuffObjectAttributeListComponent",
	
	duration = 1800,
	useCount = 5,
	modifiers = { "twohandmelee_accuracy", 20 },
	buffName = "twohandmelee_accuracy",
	buffCRC = 0x8F47051E
}

ObjectTemplates:addTemplate(object_tangible_rev_skill_buff_rev_skill_buff_twohandmelee_accuracy, "object/tangible/skill_buff/rev_skill_buff_twohandmelee_accuracy.iff")
