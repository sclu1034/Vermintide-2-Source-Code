local breed_data = {
	detection_radius = 30,
	bot_melee_aim_node = "c_bone_0075",
	target_selection = "pick_closest_target_with_filter",
	movement_sound_max_intensity = 30,
	movement_sound_parameter = "tentacle_movement",
	debug_spawn_func_name = "aim_spawning_surface",
	override_bot_target_node = "c_bone_0075",
	ignore_death_watch_timer = true,
	has_inventory = false,
	exchange_order = 1,
	animation_sync_rpc = "rpc_sync_anim_state_1",
	bone_lod_level = 1,
	armor_category = 3,
	debug_spawn_category = "Misc",
	startup_time = 2,
	target_head_node = "c_bone_0070",
	movement_sound_scaling = 10,
	hit_reaction = "ai_default",
	time_before_consume_end = 2,
	disable_local_hit_reactions = true,
	poison_resistance = 100,
	special = true,
	fail_retract_speed = 7,
	portal_release_time = 3,
	hit_effect_template = "HitEffectsRatOgre",
	time_before_consume_kill_player = 2,
	sound_head_node = "c_bone_0045",
	time_before_consume = 5,
	unit_template = "ai_unit_tentacle",
	sound_body_node = "c_bone_0035",
	race = "chaos",
	proximity_system_check = true,
	death_reaction = "chaos_tentacle",
	perception = "perception_all_seeing",
	drag_speed = 1,
	inside_wall_spawn_distance = 2,
	far_off_despawn_immunity = true,
	is_of_interest_func = "is_of_interest_to_tentacle",
	is_bot_aid_threat = true,
	behavior = "chaos_tentacle",
	base_unit = "units/beings/enemies/chaos_tentacle/chr_chaos_tentacle",
	threat_value = 12,
	weakspots = {},
	hit_zones = {
		torso = {
			prio = 1,
			actors = {
				"c_bone_001",
				"c_bone_002",
				"c_bone_003",
				"c_bone_004",
				"c_bone_005",
				"c_bone_006",
				"c_bone_007",
				"c_bone_008",
				"c_bone_009",
				"c_bone_0010",
				"c_bone_0011",
				"c_bone_0012",
				"c_bone_0013",
				"c_bone_0014",
				"c_bone_0015",
				"c_bone_0016",
				"c_bone_0017",
				"c_bone_0018",
				"c_bone_0019",
				"c_bone_0020",
				"c_bone_0021",
				"c_bone_0022",
				"c_bone_0023",
				"c_bone_0024",
				"c_bone_0025",
				"c_bone_0026",
				"c_bone_0027",
				"c_bone_0028",
				"c_bone_0029",
				"c_bone_0030",
				"c_bone_0031",
				"c_bone_0032",
				"c_bone_0033",
				"c_bone_0034",
				"c_bone_0035",
				"c_bone_0036",
				"c_bone_0037",
				"c_bone_0038",
				"c_bone_0039",
				"c_bone_0040",
				"c_bone_0041",
				"c_bone_0042",
				"c_bone_0043",
				"c_bone_0044",
				"c_bone_0045",
				"c_bone_0046",
				"c_bone_0047",
				"c_bone_0048",
				"c_bone_0049",
				"c_bone_0050",
				"c_bone_0051",
				"c_bone_0052",
				"c_bone_0053",
				"c_bone_0054",
				"c_bone_0055",
				"c_bone_0056",
				"c_bone_0057",
				"c_bone_0058",
				"c_bone_0059",
				"c_bone_0060",
				"c_bone_0061",
				"c_bone_0062",
				"c_bone_0063",
				"c_bone_0064",
				"c_bone_0065",
				"c_bone_0066",
				"c_bone_0067",
				"c_bone_0068",
				"c_bone_0069",
				"c_bone_0070",
				"c_bone_0071",
				"c_bone_0072",
				"c_bone_0073",
				"c_bone_0074",
				"c_bone_0075"
			},
			push_actors = {}
		}
	},
	hitzone_multiplier_types = {},
	max_health = {
		50,
		70,
		120,
		140,
		205,
		205,
		205,
		205
	},
	stagger_duration = {
		1,
		1,
		1,
		1,
		1,
		1,
		1,
		1
	},
	allowed_layers = {
		planks = 1.5,
		bot_ratling_gun_fire = 5,
		doors = 1.5,
		big_boy_destructible = 1.5,
		bot_poison_wind = 5,
		fire_grenade = 5
	},
	run_on_despawn = AiBreedSnippets.on_chaos_tentacle_despawn,
	debug_color = {
		255,
		200,
		200,
		0
	},
	debug_spawn_optional_data = {
		prepare_func = function (breed, extension_init_data)
			extension_init_data.ai_supplementary_system = {
				tentacle_template_name = "blob"
			}
		end
	}
}
Breeds.chaos_tentacle = table.create_copy(Breeds.chaos_tentacle, breed_data)
local action_data = {
	attack = {
		cooldown = -1,
		distance_to_portal_hanging_sq = 9,
		dodge_mitigation_radius_squared = 2.25
	},
	idle = {}
}
BreedActions.chaos_tentacle = table.create_copy(BreedActions.chaos_tentacle, action_data)

return
