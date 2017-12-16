object_tangible_rev_skill_buff_rev_skill_buff_onehandmelee_accuracy = object_tangible_skill_buff_shared_rev_skill_buff_onehandmelee_accuracy:new {
	templateType = SKILLBUFF,
	objectMenuComponent = {"cpp", "SkillBuffObjectMenuComponent"},
	attributeListComponent = "SkillBuffObjectAttributeListComponent",
	
	duration = 1800,
	useCount = 5,
	modifiers = { "onehandmelee_accuracy", 20 },
	buffName = "onehandmelee_accuracy",
	buffCRC = 0x05C34219
}

ObjectTemplates:addTemplate(object_tangible_rev_skill_buff_rev_skill_buff_onehandmelee_accuracy, "object/tangible/skill_buff/rev_skill_buff_onehandmelee_accuracy.iff")
