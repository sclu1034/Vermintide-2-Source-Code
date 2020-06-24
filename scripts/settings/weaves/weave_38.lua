return {
	wind_strength = 3,
	wind = "shadow",
	seed = 45654,
	objectives = {
		{
			display_name = "objective_capture_points_name",
			level_id = "dlc_scorpion_pit_shadow",
			objective_type = "capture_points",
			conflict_settings = "default_weave",
			end_zone_name = "end_zone_03",
			level_seed = 1896357,
			base_level_id = "dlc_scorpion_pit",
			objective_start_flow_event = "weave_objective_capture_points_start",
			show_bar = true,
			spawning_seed = 216384,
			terror_events = {
				"capture_point_1_chaos",
				"capture_point_1_event_large_skaven",
				"capture_point_1_event_large",
				"capture_point_2_event",
				"capture_point_6_boss_event_skaven"
			},
			objective_settings = {
				objective_lists = {
					{
						kill_enemies = {},
						capture_point_001 = {
							timer = 25,
							is_scored = true,
							on_start_func = function (unit)
								local spawner_id = Unit.get_data(unit, "terror_event_spawner_id")

								Managers.weave:start_terror_event("capture_point_1_chaos", spawner_id)
							end,
							on_complete_func = function (unit)
								local spawner_id = Unit.get_data(unit, "terror_event_spawner_id")

								Managers.weave:stop_terror_event("capture_point_1_chaos", spawner_id)
							end
						},
						capture_point_002 = {
							timer = 25,
							is_scored = true,
							on_start_func = function (unit)
								local spawner_id = Unit.get_data(unit, "terror_event_spawner_id")

								Managers.weave:start_terror_event("capture_point_2_event", spawner_id)
							end,
							on_complete_func = function (unit)
								local spawner_id = Unit.get_data(unit, "terror_event_spawner_id")

								Managers.weave:stop_terror_event("capture_point_2_event", spawner_id)
							end
						},
						capture_point_003_skaven = {
							timer = 25,
							is_scored = true,
							on_start_func = function (unit)
								local spawner_id = Unit.get_data(unit, "terror_event_spawner_id")

								Managers.weave:start_terror_event("capture_point_1_event_large_skaven", spawner_id)
							end,
							on_complete_func = function (unit)
								local spawner_id = Unit.get_data(unit, "terror_event_spawner_id")

								Managers.weave:stop_terror_event("capture_point_1_event_large_skaven", spawner_id)
							end
						},
						capture_point_006_skaven = {
							timer = 25,
							is_scored = true,
							on_start_func = function (unit)
								local spawner_id = Unit.get_data(unit, "terror_event_spawner_id")

								Managers.weave:start_terror_event("capture_point_6_boss_event_skaven", spawner_id)
							end,
							on_complete_func = function (unit)
								local spawner_id = Unit.get_data(unit, "terror_event_spawner_id")

								Managers.weave:stop_terror_event("capture_point_6_boss_event_skaven", spawner_id)
							end
						},
						capture_point_007 = {
							timer = 25,
							is_scored = true,
							on_start_func = function (unit)
								local spawner_id = Unit.get_data(unit, "terror_event_spawner_id")

								Managers.weave:start_terror_event("capture_point_1_event_large", spawner_id)
							end,
							on_complete_func = function (unit)
								local spawner_id = Unit.get_data(unit, "terror_event_spawner_id")

								Managers.weave:stop_terror_event("capture_point_1_event_large", spawner_id)
							end
						}
					}
				}
			},
			bonus_time_on_complete = WeaveSettings.bonus_time,
			system_seeds = {
				pickups = 118466
			},
			spawning_settings = {
				terror_event_trickle = "trickle_event_skaven_small",
				main_path_spawning = {
					{
						terror_event_name = "main_path_specials_aoe_skaven_short_cata",
						percentage = 20,
						percentage_spawn_offset = 10
					},
					{
						terror_event_name = "main_path_standard_chaos_medium_short",
						percentage = 50,
						percentage_spawn_offset = 0
					},
					{
						terror_event_name = "main_path_theme_armored_chaos_short",
						percentage = 50,
						percentage_spawn_offset = 0
					},
					{
						terror_event_name = "main_path_specials_disablers_chaos_short",
						percentage = 50,
						percentage_spawn_offset = 0
					},
					{
						terror_event_name = "main_path_standard_skaven_small_short",
						percentage = 75,
						percentage_spawn_offset = 0
					},
					{
						terror_event_name = "main_path_theme_shields_skaven_short",
						percentage = 75,
						percentage_spawn_offset = 0
					},
					{
						terror_event_name = "main_path_specials_aoe_skaven_short",
						percentage = 75,
						percentage_spawn_offset = 0
					},
					{
						terror_event_name = "main_path_specials_disablers_mixed_short_cata",
						percentage = 60,
						percentage_spawn_offset = 10
					},
					{
						terror_event_name = "main_path_standard_beastmen_small_short",
						percentage = 95,
						percentage_spawn_offset = -20
					},
					{
						terror_event_name = "main_path_theme_archers_beastmen_short",
						percentage = 95,
						percentage_spawn_offset = -20
					},
					{
						terror_event_name = "main_path_specials_buff_beastmen_short",
						percentage = 95,
						percentage_spawn_offset = -20
					}
				}
			}
		},
		{
			display_name = "objective_waves_name",
			level_id = "dlc_scorpion_arena_void_shadow",
			objective_start_flow_event = "weave_objective_waves_start",
			spawning_seed = 11854541,
			level_seed = 1268425,
			conflict_settings = "weave_disabled",
			system_seeds = {
				pickups = 9826648
			},
			spawning_settings = {
				main_path_spawning = {
					{
						terror_event_name = "chaos_bosses",
						percentage = 0,
						percentage_spawn_offset = 0
					}
				}
			}
		}
	}
}
