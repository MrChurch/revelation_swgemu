object_tangible_rev_skill_buff_rev_skill_buff_thrown_speed = object_tangible_skill_buff_shared_rev_skill_buff_thrown_speed:new {
	templateType = SKILLBUFF,
	objectMenuComponent = {"cpp", "SkillBuffObjectMenuComponent"},
	attributeListComponent = "SkillBuffObjectAttributeListComponent",
	
	duration = 1800,
	useCount = 5,
	modifiers = { "thrown_speed", 20 },
	buffName = "thrown_speed",
	buffCRC = 0x232EE11E
}

ObjectTemplates:addTemplate(object_tangible_rev_skill_buff_rev_skill_buff_thrown_speed, "object/tangible/skill_buff/rev_skill_buff_thrown_speed.iff")
