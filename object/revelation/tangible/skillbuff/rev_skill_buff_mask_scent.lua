object_tangible_rev_skill_buff_rev_skill_buff_mask_scent = object_tangible_skill_buff_shared_rev_skill_buff_mask_scent:new {
	templateType = SKILLBUFF,
	objectMenuComponent = {"cpp", "SkillBuffObjectMenuComponent"},
	attributeListComponent = "SkillBuffObjectAttributeListComponent",
	
	duration = 3600,
	useCount = 5,
	modifiers = { "mask_scent", 50 },
	buffName = "mask_scent",
	buffCRC = 0x30EB839E
}

ObjectTemplates:addTemplate(object_tangible_rev_skill_buff_rev_skill_buff_mask_scent, "object/tangible/skill_buff/rev_skill_buff_mask_scent.iff")
