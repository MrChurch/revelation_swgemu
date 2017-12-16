object_tangible_rev_skill_buff_rev_skill_buff_heavy_weapon_accuracy = object_tangible_skill_buff_shared_rev_skill_buff_heavy_weapon_accuracy:new {
	templateType = SKILLBUFF,
	objectMenuComponent = {"cpp", "SkillBuffObjectMenuComponent"},
	attributeListComponent = "SkillBuffObjectAttributeListComponent",
	
	duration = 1800,
	useCount = 5,
	modifiers = {"heavy_acid_beam_accuracy", 20 },
	buffName = "heavyweapon_accuracy",
	buffCRC = 0xAFDFE174
}

ObjectTemplates:addTemplate(object_tangible_rev_skill_buff_rev_skill_buff_heavy_weapon_accuracy, "object/tangible/skill_buff/rev_skill_buff_heavy_weapon_accuracy.iff")
