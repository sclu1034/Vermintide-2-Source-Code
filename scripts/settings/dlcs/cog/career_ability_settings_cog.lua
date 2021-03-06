require("scripts/settings/dlcs/cog/passive_ability_engineer")

ActivatedAbilitySettings.dr_4 = {
	{
		description = "career_active_desc_dr_4",
		action_name = "action_career_dr_4",
		display_name = "career_active_name_dr_4",
		cooldown = 60,
		weapon_name = "bardin_engineer_career_skill_weapon",
		activatable_on_wield_chain_only = true,
		show_gamepad_ability_bar = true,
		icon = "bardin_engineer_activated_ability",
		weapon_names_by_index = {
			"bardin_engineer_career_skill_weapon",
			"bardin_engineer_career_skill_weapon_heavy"
		}
	}
}
PassiveAbilitySettings.dr_4 = {
	description = "career_passive_desc_dr_4a",
	display_name = "career_passive_name_dr_4a",
	icon = "bardin_engineer_passive",
	buffs = {
		"bardin_engineer_passive_no_ability_regen",
		"bardin_engineer_passive_ranged_power_aura",
		"bardin_engineer_passive_max_ammo",
		"bardin_engineer_remove_pump_stacks",
		"bardin_engineer_remove_pump_stacks_fire"
	},
	perks = {
		{
			display_name = "career_passive_name_dr_4b",
			description = "career_passive_desc_dr_4b"
		},
		{
			display_name = "career_passive_name_dr_4c",
			description = "career_passive_desc_dr_4c"
		},
		{
			display_name = "career_passive_name_dr_4d",
			description = "career_passive_desc_dr_4d"
		}
	},
	passive_ability_classes = {
		{
			ability_class = PassiveAbilityEngineer
		}
	}
}

return
