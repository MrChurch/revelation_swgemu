object_tangible_rev_skill_buff_rev_skill_buff_pistol_speed = object_tangible_skill_buff_shared_rev_skill_buff_pistol_speed:new {
	templateType = SKILLBUFF,
	objectMenuComponent = {"cpp", "SkillBuffObjectMenuComponent"},
	attributeListComponent = "SkillBuffObjectAttributeListComponent",
	
	duration = 1800,
	useCount = 5,
	modifiers = { "pistol_speed", 20 },
	buffName = "pistol_speed",
	buffCRC = 0x26F41BAD
}

ObjectTemplates:addTemplate(object_tangible_rev_skill_buff_rev_skill_buff_pistol_speed, "object/tangible/skill_buff/rev_skill_buff_pistol_speed.iff")
