return {
	wind_strength = 5,
	wind = "shadow",
	seed = 5923569,
	objectives = {
		{
			display_name = "objective_kill_enemies_name",
			level_id = "dlc_scorpion_pit_shadow",
			objective_type = "kill",
			conflict_settings = "weave_skaven_beastmen",
			level_seed = 295720,
			end_zone_name = "end_zone_03",
			show_bar = true,
			base_level_id = "dlc_scorpion_pit",
			objective_start_flow_event = "weave_objective_kill_enemies_start",
			spawning_seed = 209384,
			objective_settings = {
				objective_lists = {
					{
						kill_enemies = {}
					}
				}
			},
			bonus_time_on_complete = WeaveSettings.bonus_time,
			system_seeds = {
				pickups = 48294
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
			display_name = "objective_kill_bosses_name",
			level_id = "dlc_scorpion_arena_temple_shadow",
			objective_start_flow_event = "weave_objective_kill_enemies_start",
			spawning_seed = 549684,
			level_seed = 5684648,
			conflict_settings = "weave_disabled",
			system_seeds = {
				pickups = 8721685
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
