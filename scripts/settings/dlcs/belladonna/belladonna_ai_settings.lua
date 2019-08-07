local settings = DLCSettings.belladonna
settings.breeds = {
	"scripts/settings/breeds/breed_beastmen_gor",
	"scripts/settings/breeds/breed_beastmen_ungor",
	"scripts/settings/breeds/breed_beastmen_ungor_archer",
	"scripts/settings/breeds/breed_beastmen_bestigor",
	"scripts/settings/breeds/breed_beastmen_standard_bearer"
}
settings.behaviour_trees_precompiled = {
	"scripts/entity_system/systems/behaviour/nodes/generated/bt_selector_gor",
	"scripts/entity_system/systems/behaviour/nodes/generated/bt_selector_ungor",
	"scripts/entity_system/systems/behaviour/nodes/generated/bt_selector_ungor_archer",
	"scripts/entity_system/systems/behaviour/nodes/generated/bt_selector_bestigor",
	"scripts/entity_system/systems/behaviour/nodes/generated/bt_selector_standard_bearer",
	"scripts/entity_system/systems/behaviour/nodes/generated/bt_selector_beastmen_dummy"
}
settings.behaviour_tree_nodes = {
	"scripts/entity_system/systems/behaviour/nodes/bt_charge_attack_action",
	"scripts/entity_system/systems/behaviour/nodes/bt_fire_projectile_action",
	"scripts/entity_system/systems/behaviour/nodes/bt_pick_up_standard_action",
	"scripts/entity_system/systems/behaviour/nodes/bt_place_standard_action",
	"scripts/entity_system/systems/behaviour/nodes/bt_defend_standard_action"
}
settings.behaviour_trees = {
	"scripts/entity_system/systems/behaviour/trees/beastmen/beastmen_gor_behavior",
	"scripts/entity_system/systems/behaviour/trees/beastmen/beastmen_ungor_behavior",
	"scripts/entity_system/systems/behaviour/trees/beastmen/beastmen_ungor_archer_behavior",
	"scripts/entity_system/systems/behaviour/trees/beastmen/beastmen_bestigor_behavior",
	"scripts/entity_system/systems/behaviour/trees/beastmen/beastmen_standard_bearer_behavior",
	"scripts/entity_system/systems/behaviour/trees/beastmen/beastmen_dummy_behavior"
}
settings.health_extension_files = {
	"scripts/unit_extensions/health/beastmen_standard_health_extension"
}
settings.health_extensions = {
	"BeastmenStandardHealthExtension"
}
settings.enemy_package_loader_breed_categories = {
	specials = {
		"beastmen_standard_bearer"
	},
	always_loaded = {
		"beastmen_gor",
		"beastmen_ungor",
		"beastmen_ungor_archer",
		"beastmen_bestigor"
	}
}
settings.alias_to_breed = {
	beastmen_ungor_dummy = "beastmen_ungor",
	beastmen_bestigor_dummy = "beastmen_bestigor",
	beastmen_gor_dummy = "beastmen_gor",
	beastmen_standard_bearer_crater = "beastmen_standard_bearer"
}
settings.opt_lookup_breed_names = {
	beastmen_ungor = "beastmen_ungor_opt",
	beastmen_gor = "beastmen_gor_opt",
	beastmen_ungor_archer = "beastmen_ungor_archer_opt"
}
settings.ai_breed_snippets_file_names = {
	"scripts/settings/dlcs/belladonna/belladonna_ai_breed_snippets"
}
settings.animation_movement_templates_file_names = {
	"scripts/settings/dlcs/belladonna/belladonna_animation_movement_templates"
}
settings.slot_templates_file_names = {
	"scripts/settings/dlcs/belladonna/belladonna_slot_templates"
}
settings.utility_considerations_file_names = {
	"scripts/settings/dlcs/belladonna/belladonna_utility_considerations"
}
settings.aim_templates_file_names = {
	"scripts/settings/dlcs/belladonna/belladonna_aim_templates"
}
settings.network_sound_events = {
	"Play_enemy_beastmen_standar_chanting_loop",
	"Stop_enemy_beastmen_standar_chanting_loop",
	"beastmen_patrol_forming",
	"beastmen_patrol_formated",
	"beastmen_patrol_player_spotted",
	"beastmen_patrol_foley",
	"beastmen_patrol_formate",
	"beastmen_patrol_charge",
	"beastmen_patrol_voice",
	"Play_enemy_minotaur_charge_attack_miss",
	"Play_enemy_bestigor_charge_attack_miss",
	"Play_boss_aggro_enter"
}
settings.anim_lookup = {
	"stagger_fwd_cheer_1",
	"stagger_fwd_cheer_2",
	"stagger_fwd_cheer_3",
	"stagger_fwd_cheer_4",
	"stagger_fwd_cheer_5",
	"start_charge",
	"charge_loop",
	"charge_impact",
	"charge_pre_lunge",
	"charge_lunge_short",
	"charge_lunge_medium",
	"charge_lunge_far",
	"charge_blocked",
	"charge_cancel",
	"stagger_left_charge",
	"stagger_right_charge",
	"stagger_bwd_charge",
	"attack_1h",
	"attack_1h_2",
	"attack_1h_3",
	"attack_headbutt",
	"attack_headbutt_2",
	"attack_move_hit",
	"to_standard_bearer",
	"place_standard",
	"pick_up_standard",
	"aim",
	"shoot",
	"attack_step",
	"attack_step_2",
	"attack_step_head",
	"attack_punch"
}
local beastmen_formation_settings = {
	sounds = {
		PLAYER_SPOTTED = "beastmen_patrol_player_spotted",
		FORMING = "beastmen_patrol_forming",
		FOLEY = "beastmen_patrol_foley",
		FORMATED = "beastmen_patrol_formated",
		FORMATE = "beastmen_patrol_formate",
		CHARGE = "beastmen_patrol_charge",
		VOICE = "beastmen_patrol_voice"
	},
	offsets = {
		ANCHOR_OFFSET = {
			x = 1.4,
			y = 0.6
		}
	},
	speeds = {
		FAST_WALK_SPEED = 2.6,
		MEDIUM_WALK_SPEED = 2.35,
		WALK_SPEED = 2.12,
		SPLINE_SPEED = 2.22,
		SLOW_SPLINE_SPEED = 0.1
	}
}
settings.patrol_formation_settings = {
	default_beastmen_settings = beastmen_formation_settings
}
settings.patrol_formations = {
	beastmen_standard = {
		settings = beastmen_formation_settings,
		normal = {
			{
				"beastmen_standard_bearer"
			},
			{
				"beastmen_bestigor"
			},
			{
				"beastmen_bestigor"
			},
			{
				"beastman_ungor",
				"beastman_ungor"
			},
			{
				"beastman_ungor",
				"beastman_ungor"
			},
			{
				"beastmen_bestigor"
			},
			{
				"beastmen_gor",
				"beastmen_gor"
			}
		},
		hard = {
			{
				"beastmen_standard_bearer"
			},
			{
				"beastmen_bestigor"
			},
			{
				"beastman_ungor",
				"beastman_ungor"
			},
			{
				"beastmen_bestigor",
				"beastmen_bestigor"
			},
			{
				"beastman_ungor",
				"beastman_ungor"
			},
			{
				"beastmen_bestigor"
			},
			{
				"beastmen_gor",
				"beastmen_gor"
			}
		},
		harder = {
			{
				"beastmen_standard_bearer"
			},
			{
				"beastmen_bestigor",
				"beastmen_bestigor"
			},
			{
				"beastmen_gor",
				"beastmen_gor"
			},
			{
				"beastmen_bestigor",
				"beastmen_bestigor"
			},
			{
				"beastmen_gor",
				"beastmen_gor"
			},
			{
				"beastmen_bestigor",
				"beastmen_bestigor"
			},
			{
				"beastmen_gor",
				"beastmen_gor"
			}
		},
		hardest = {
			{
				"beastmen_standard_bearer"
			},
			{
				"beastmen_gor",
				"beastmen_gor"
			},
			{
				"beastmen_bestigor",
				"beastmen_bestigor"
			},
			{
				"beastmen_gor",
				"beastmen_gor"
			},
			{
				"beastmen_bestigor",
				"beastmen_bestigor"
			},
			{
				"beastmen_bestigor",
				"beastmen_bestigor"
			},
			{
				"beastmen_gor",
				"beastmen_gor"
			},
			{
				"beastmen_gor",
				"beastmen_gor"
			},
			{
				"beastmen_gor",
				"beastmen_gor"
			}
		},
		cataclysm = {
			{
				"beastmen_standard_bearer"
			},
			{
				"beastmen_gor",
				"beastmen_gor"
			},
			{
				"beastmen_bestigor",
				"beastmen_bestigor"
			},
			{
				"beastmen_gor",
				"beastmen_gor"
			},
			{
				"beastmen_bestigor",
				"beastmen_bestigor"
			},
			{
				"beastmen_bestigor",
				"beastmen_bestigor"
			},
			{
				"beastmen_gor",
				"beastmen_gor"
			},
			{
				"beastmen_bestigor",
				"beastmen_bestigor"
			},
			{
				"beastmen_gor",
				"beastmen_gor"
			}
		}
	},
	beastmen_archers = {
		settings = beastmen_formation_settings,
		normal = {
			{
				"beastmen_standard_bearer"
			},
			{
				"beastmen_bestigor"
			},
			{
				"beastmen_bestigor"
			},
			{
				"beastman_ungor",
				"beastman_ungor"
			},
			{
				"beastman_ungor",
				"beastman_ungor"
			},
			{
				"beastmen_ungor_archer",
				"beastmen_ungor_archer"
			},
			{
				"beastmen_ungor_archer",
				"beastmen_ungor_archer"
			}
		},
		hard = {
			{
				"beastmen_standard_bearer"
			},
			{
				"beastmen_bestigor"
			},
			{
				"beastman_ungor",
				"beastman_ungor"
			},
			{
				"beastmen_bestigor",
				"beastmen_bestigor"
			},
			{
				"beastman_ungor",
				"beastman_ungor"
			},
			{
				"beastmen_ungor_archer",
				"beastmen_ungor_archer"
			},
			{
				"beastmen_ungor_archer",
				"beastmen_ungor_archer"
			},
			{
				"beastmen_ungor_archer",
				"beastmen_ungor_archer"
			}
		},
		harder = {
			{
				"beastmen_standard_bearer"
			},
			{
				"beastmen_bestigor",
				"beastmen_bestigor"
			},
			{
				"beastmen_gor",
				"beastmen_gor"
			},
			{
				"beastmen_bestigor",
				"beastmen_bestigor"
			},
			{
				"beastmen_ungor_archer",
				"beastmen_ungor_archer"
			},
			{
				"beastmen_ungor_archer",
				"beastmen_ungor_archer"
			},
			{
				"beastmen_ungor_archer",
				"beastmen_ungor_archer"
			},
			{
				"beastmen_ungor_archer",
				"beastmen_ungor_archer"
			}
		},
		hardest = {
			{
				"beastmen_standard_bearer"
			},
			{
				"beastmen_gor",
				"beastmen_gor"
			},
			{
				"beastmen_bestigor",
				"beastmen_bestigor"
			},
			{
				"beastmen_gor",
				"beastmen_gor"
			},
			{
				"beastmen_bestigor",
				"beastmen_bestigor"
			},
			{
				"beastmen_bestigor",
				"beastmen_bestigor"
			},
			{
				"beastmen_gor",
				"beastmen_gor"
			},
			{
				"beastmen_ungor_archer",
				"beastmen_ungor_archer",
				"beastmen_ungor_archer"
			},
			{
				"beastmen_ungor_archer",
				"beastmen_ungor_archer",
				"beastmen_ungor_archer"
			},
			{
				"beastmen_ungor_archer",
				"beastmen_ungor_archer",
				"beastmen_ungor_archer"
			}
		},
		cataclysm = {
			{
				"beastmen_standard_bearer"
			},
			{
				"beastmen_gor",
				"beastmen_gor"
			},
			{
				"beastmen_bestigor",
				"beastmen_bestigor"
			},
			{
				"beastmen_gor",
				"beastmen_gor"
			},
			{
				"beastmen_bestigor",
				"beastmen_bestigor"
			},
			{
				"beastmen_bestigor",
				"beastmen_bestigor"
			},
			{
				"beastmen_ungor_archer",
				"beastmen_ungor_archer",
				"beastmen_ungor_archer"
			},
			{
				"beastmen_ungor_archer",
				"beastmen_ungor_archer",
				"beastmen_ungor_archer"
			},
			{
				"beastmen_ungor_archer",
				"beastmen_ungor_archer",
				"beastmen_ungor_archer"
			},
			{
				"beastmen_ungor_archer",
				"beastmen_ungor_archer",
				"beastmen_ungor_archer"
			},
			{
				"beastmen_ungor_archer",
				"beastmen_ungor_archer",
				"beastmen_ungor_archer"
			}
		}
	}
}
local unit_alive = Unit.alive
settings.bt_conditions = {
	beastmen_standard_bearer_place_standard = function (blackboard)
		return unit_alive(blackboard.target_unit) and not blackboard.has_placed_standard
	end,
	beastmen_standard_bearer_pickup_standard = function (blackboard)
		if blackboard.ignore_standard_pickup then
			return false
		end

		local target_distance_to_standard = blackboard.target_distance_to_standard

		if blackboard.moving_to_pick_up_standard then
			return true
		else
			return blackboard.has_placed_standard and unit_alive(blackboard.target_unit) and AiUtils.unit_alive(blackboard.standard_unit) and target_distance_to_standard and blackboard.breed.pickup_standard_distance < target_distance_to_standard
		end
	end,
	beastmen_standard_bearer_move_and_place_standard = function (blackboard)
		local has_move_and_place_standard_position = blackboard.move_and_place_standard

		return has_move_and_place_standard_position
	end,
	ungor_archer_enter_melee_combat = function (blackboard)
		return blackboard.confirmed_player_sighting and unit_alive(blackboard.target_unit) and (blackboard.has_switched_weapons or (blackboard.target_dist and blackboard.target_dist < 10))
	end,
	bestigor_at_smartobject = function (blackboard)
		local in_charge_action = blackboard.charge_state ~= nil
		local at_smartobject = not in_charge_action and BTConditions.at_smartobject(blackboard)

		return at_smartobject
	end,
	confirmed_player_sighting_standard_bearer = function (blackboard)
		return unit_alive(blackboard.target_unit) and blackboard.confirmed_player_sighting and blackboard.has_placed_standard
	end,
	standard_bearer_should_be_defensive = function (blackboard)
		local pickup_standard_distance = blackboard.breed.pickup_standard_distance
		local defensive_threshold_distance = blackboard.breed.defensive_threshold_distance
		local in_combat = unit_alive(blackboard.target_unit) and blackboard.confirmed_player_sighting and blackboard.has_placed_standard
		local target_distance_to_standard = blackboard.target_distance_to_standard
		local target_is_within_range = target_distance_to_standard and defensive_threshold_distance <= target_distance_to_standard and target_distance_to_standard <= pickup_standard_distance
		local not_attacking = blackboard.move_state ~= "attacking"

		return in_combat and target_is_within_range and not_attacking
	end
}

return
