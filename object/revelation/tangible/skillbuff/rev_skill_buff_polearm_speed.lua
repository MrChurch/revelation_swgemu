object_tangible_rev_skill_buff_rev_skill_buff_polearm_speed = object_tangible_skill_buff_shared_rev_skill_buff_polearm_speed:new {
	templateType = SKILLBUFF,
	objectMenuComponent = {"cpp", "SkillBuffObjectMenuComponent"},
	attributeListComponent = "SkillBuffObjectAttributeListComponent",
	
	duration = 1800,
	useCount = 5,
	modifiers = { "polearm_speed", 20 },
	buffName = "polearm_speed",
	buffCRC = 0x6F675FB6
}

ObjectTemplates:addTemplate(object_tangible_rev_skill_buff_rev_skill_buff_polearm_speed, "object/tangible/skill_buff/rev_skill_buff_polearm_speed.iff")
