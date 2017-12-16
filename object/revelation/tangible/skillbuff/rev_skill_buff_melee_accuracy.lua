object_tangible_rev_skill_buff_rev_skill_buff_melee_accuracy = object_tangible_skill_buff_shared_rev_skill_buff_melee_accuracy:new {
	templateType = SKILLBUFF,
	objectMenuComponent = {"cpp", "SkillBuffObjectMenuComponent"},
	attributeListComponent = "SkillBuffObjectAttributeListComponent",
	
	duration = 1800,
	useCount = 5,
	modifiers = { "melee_accuracy", 20 },
	buffName = "melee_accuracy",
	buffCRC = 0x548DE45B
}

ObjectTemplates:addTemplate(object_tangible_rev_skill_buff_rev_skill_buff_melee_accuracy, "object/tangible/skill_buff/rev_skill_buff_melee_accuracy.iff")
