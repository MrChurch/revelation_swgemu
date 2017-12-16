object_tangible_rev_skill_buff_rev_skill_buff_onehandmelee_speed = object_tangible_skill_buff_shared_rev_skill_buff_onehandmelee_speed:new {
	templateType = SKILLBUFF,
	objectMenuComponent = {"cpp", "SkillBuffObjectMenuComponent"},
	attributeListComponent = "SkillBuffObjectAttributeListComponent",
	
	duration = 1800,
	useCount = 5,
	modifiers = { "onehandmelee_speed", 20 },
	buffName = "onehandmelee_speed",
	buffCRC = 0x0696D76F
}

ObjectTemplates:addTemplate(object_tangible_rev_skill_buff_rev_skill_buff_onehandmelee_speed, "object/tangible/skill_buff/rev_skill_buff_onehandmelee_speed.iff")
