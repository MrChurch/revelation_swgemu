object_tangible_rev_skill_buff_rev_skill_buff_heavy_weapon_speed = object_tangible_skill_buff_shared_rev_skill_buff_heavy_weapon_speed:new {
	templateType = SKILLBUFF,
	objectMenuComponent = {"cpp", "SkillBuffObjectMenuComponent"},
	attributeListComponent = "SkillBuffObjectAttributeListComponent",
	
	duration = 1800,
	useCount = 5,
	modifiers = {"heavy_acid_beam_speed", 20 },
	buffName = "heavyweapon_speed",
	buffCRC = 0x311A7044
}
	
ObjectTemplates:addTemplate(object_tangible_rev_skill_buff_rev_skill_buff_heavy_weapon_speed, "object/tangible/skill_buff/rev_skill_buff_heavy_weapon_speed.iff")
