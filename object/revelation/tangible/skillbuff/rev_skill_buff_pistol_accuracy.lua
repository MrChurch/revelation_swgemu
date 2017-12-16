object_tangible_rev_skill_buff_rev_skill_buff_pistol_accuracy = object_tangible_skill_buff_shared_rev_skill_buff_pistol_accuracy:new {
	templateType = SKILLBUFF,
	objectMenuComponent = {"cpp", "SkillBuffObjectMenuComponent"},
	attributeListComponent = "SkillBuffObjectAttributeListComponent",
	
	duration = 1800,
	useCount = 5,
	modifiers = { "pistol_accuracy", 20 },
	buffName = "pistol_accuracy",
	buffCRC = 0x55471D61
}

ObjectTemplates:addTemplate(object_tangible_rev_skill_buff_rev_skill_buff_pistol_accuracy, "object/tangible/skill_buff/rev_skill_buff_pistol_accuracy.iff")
