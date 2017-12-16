object_tangible_rev_skill_buff_rev_skill_buff_rifle_speed = object_tangible_skill_buff_shared_rev_skill_buff_rifle_speed:new {
	templateType = SKILLBUFF,
	objectMenuComponent = {"cpp", "SkillBuffObjectMenuComponent"},
	attributeListComponent = "SkillBuffObjectAttributeListComponent",
	
	duration = 1800,
	useCount = 5,
	modifiers = { "rifle_speed", 20 },
	buffName = "rifle_speed",
	buffCRC = 0x1F7E043E
}

ObjectTemplates:addTemplate(object_tangible_rev_skill_buff_rev_skill_buff_rifle_speed, "object/tangible/skill_buff/rev_skill_buff_rifle_speed.iff")
