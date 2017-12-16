object_tangible_rev_skill_buff_rev_skill_buff_carbine_speed = object_tangible_skill_buff_shared_rev_skill_buff_carbine_speed:new {
	templateType = SKILLBUFF,
	objectMenuComponent = {"cpp", "SkillBuffObjectMenuComponent"},
	attributeListComponent = "SkillBuffObjectAttributeListComponent",
	
	duration = 1800,
	useCount = 5,
	modifiers = { "carbine_speed", 20 },
	buffName = "carbine_speed",
	buffCRC = 0xC6148607
}

ObjectTemplates:addTemplate(object_tangible_rev_skill_buff_rev_skill_buff_carbine_speed, "object/tangible/skill_buff/rev_skill_buff_carbine_speed.iff")
