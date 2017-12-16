object_tangible_rev_skill_buff_rev_skill_buff_carbine_accuracy = object_tangible_skill_buff_shared_rev_skill_buff_carbine_accuracy:new {
	templateType = SKILLBUFF,
	objectMenuComponent = {"cpp", "SkillBuffObjectMenuComponent"},
	attributeListComponent = "SkillBuffObjectAttributeListComponent",
	
	duration = 1800,
	useCount = 5,
	modifiers = { "carbine_accuracy", 20 },
	buffName = "carbine_accuracy",
	buffCRC = 0xA996D07E

}

ObjectTemplates:addTemplate(object_tangible_rev_skill_buff_rev_skill_buff_carbine_accuracy, "object/tangible/skill_buff/rev_skill_buff_carbine_accuracy.iff")
