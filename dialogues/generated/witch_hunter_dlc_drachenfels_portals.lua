return function ()
	define_rule({
		name = "pwh_portals_intro_line_a",
		response = "pwh_portals_intro_line_a",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"portals_intro_line_a"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"witch_hunter"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			},
			{
				"faction_memory",
				"portals_intro_line_a",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"portals_intro_line_a",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwh_portals_intro_line_b",
		response = "pwh_portals_intro_line_b",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"dialogue_name_nopre",
				OP.EQ,
				"portals_intro_line_a"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"witch_hunter"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			},
			{
				"faction_memory",
				"portals_intro_line_b",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"portals_intro_line_b",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwh_portals_intro_line_c",
		response = "pwh_portals_intro_line_c",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"dialogue_name_nopre",
				OP.EQ,
				"portals_intro_line_b"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"witch_hunter"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			},
			{
				"faction_memory",
				"portals_intro_line_c",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"portals_intro_line_c",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwh_portals_enter_village",
		response = "pwh_portals_enter_village",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"portals_enter_village"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"witch_hunter"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			},
			{
				"faction_memory",
				"portals_enter_village",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"portals_enter_village",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwh_portals_village_raided",
		response = "pwh_portals_village_raided",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"portals_village_raided "
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"witch_hunter"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			},
			{
				"faction_memory",
				"portals_village_raided ",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"portals_village_raided ",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwh_portals_find_survivors",
		response = "pwh_portals_find_survivors",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"portals_find_survivors"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"witch_hunter"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			},
			{
				"faction_memory",
				"portals_find_survivors",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"portals_find_survivors",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwh_portals_everyone_gone",
		response = "pwh_portals_everyone_gone",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"portals_everyone_gone"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"witch_hunter"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			},
			{
				"faction_memory",
				"portals_everyone_gone",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"portals_everyone_gone",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwh_portals_raid_trace",
		response = "pwh_portals_raid_trace",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"portals_raid_trace"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"witch_hunter"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			},
			{
				"faction_memory",
				"portals_raid_trace",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"portals_raid_trace",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwh_portals_kidnapped_traces",
		response = "pwh_portals_kidnapped_traces",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"portals_kidnapped_traces"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"witch_hunter"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			},
			{
				"faction_memory",
				"portals_kidnapped_traces",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"portals_kidnapped_traces",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwh_portals_get_to_temple",
		response = "pwh_portals_get_to_temple",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"portals_get_to_temple"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"witch_hunter"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			},
			{
				"faction_memory",
				"portals_get_to_temple",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"portals_get_to_temple",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwh_portals_the_temple",
		response = "pwh_portals_the_temple",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"portals_the_temple"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"witch_hunter"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			},
			{
				"faction_memory",
				"portals_the_temple",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"portals_the_temple",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwh_portals_temple_locked",
		response = "pwh_portals_temple_locked",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"portals_temple_locked"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"witch_hunter"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			},
			{
				"faction_memory",
				"portals_temple_locked",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"portals_temple_locked",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwh_portals_temple_bell_tower",
		response = "pwh_portals_temple_bell_tower",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"portals_temple_bell_tower"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"witch_hunter"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			},
			{
				"faction_memory",
				"portals_temple_bell_tower",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"portals_temple_bell_tower",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwh_portals_find_map",
		response = "pwh_portals_find_map",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"portals_find_map"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"witch_hunter"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			},
			{
				"faction_memory",
				"portals_find_map",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"portals_find_map",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwh_portals_help_search",
		response = "pwh_portals_help_search",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"portals_help_search"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"witch_hunter"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			},
			{
				"faction_memory",
				"portals_help_search",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"portals_help_search",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwh_portals_the_map",
		response = "pwh_portals_the_map",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"portals_the_map"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"witch_hunter"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			},
			{
				"faction_memory",
				"portals_the_map",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"portals_the_map",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwh_portals_temple_event",
		response = "pwh_portals_temple_event",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"portals_temple_event"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"witch_hunter"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			},
			{
				"faction_memory",
				"portals_temple_event",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"portals_temple_event",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwh_portals_get_out",
		response = "pwh_portals_get_out",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"portals_get_out"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"witch_hunter"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			},
			{
				"faction_memory",
				"portals_get_out",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"portals_get_out",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwh_portals_follow_trail",
		response = "pwh_portals_follow_trail",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"portals_follow_trail"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"witch_hunter"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			},
			{
				"faction_memory",
				"portals_follow_trail",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"portals_follow_trail",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwh_portals_trail_found ",
		response = "pwh_portals_trail_found ",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"portals_trail_found "
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"witch_hunter"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			},
			{
				"faction_memory",
				"portals_trail_found ",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"portals_trail_found ",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwh_portals_objective_recap",
		response = "pwh_portals_objective_recap",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"portals_objective_recap"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"witch_hunter"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			},
			{
				"faction_memory",
				"portals_objective_recap",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"portals_objective_recap",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwh_portals_memory_path",
		response = "pwh_portals_memory_path",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"portals_memory_path"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"witch_hunter"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			},
			{
				"faction_memory",
				"portals_memory_path",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"portals_memory_path",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwh_portals_pwh_castle_vista",
		response = "pwh_portals_pwh_castle_vista",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"portals_castle_vista"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"witch_hunter"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			},
			{
				"faction_memory",
				"portals_castle_vista",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"portals_castle_vista",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwh_portals_memory_portals",
		response = "pwh_portals_memory_portals",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"portals_memory_portals"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"witch_hunter"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			},
			{
				"faction_memory",
				"portals_memory_path",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"portals_memory_path",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwh_portals_portal_interact_one",
		response = "pwh_portals_portal_interact_one",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"portals_portal_interact_one"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"witch_hunter"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			},
			{
				"faction_memory",
				"portals_portal_interact_one",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"portals_portal_interact_one",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwh_portals_portal_interact_two",
		response = "pwh_portals_portal_interact_two",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"portals_portal_interact_two"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"witch_hunter"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			},
			{
				"faction_memory",
				"portals_portal_interact_two",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"portals_portal_interact_two",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwh_portals_portal_interact_three",
		response = "pwh_portals_portal_interact_three",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"portals_portal_interact_three"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"witch_hunter"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			},
			{
				"faction_memory",
				"portals_portal_interact_three",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"portals_portal_interact_three",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwh_portals_portal_event",
		response = "pwh_portals_portal_event",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"portals_portal_event"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"witch_hunter"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			},
			{
				"faction_memory",
				"portals_portal_event",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"portals_portal_event",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwh_portals_castle_road",
		response = "pwh_portals_castle_road",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"portals_castle_road"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"witch_hunter"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			},
			{
				"faction_memory",
				"portals_castle_road",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"portals_castle_road",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwh_portals_castle_gate",
		response = "pwh_portals_castle_gate",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"portals_castle_gate"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"witch_hunter"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			},
			{
				"faction_memory",
				"portals_castle_gate",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"portals_castle_gate",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwh_portals_map_first_clue",
		response = "pwh_portals_map_first_clue",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"portals_map_first_clue"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"witch_hunter"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			},
			{
				"faction_memory",
				"portals_map_first_clue",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"portals_map_first_clue",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwh_portals_map_second_clue",
		response = "pwh_portals_map_second_clue",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"portals_map_second_clue"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"witch_hunter"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			},
			{
				"faction_memory",
				"portals_map_second_clue",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"portals_map_second_clue",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwh_portals_secret_entrance_gate_opens",
		response = "pwh_portals_secret_entrance_gate_opens",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"portals_secret_entrance_gate_opens"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"witch_hunter"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			},
			{
				"faction_memory",
				"portals_secret_entrance_gate_opens",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"portals_secret_entrance_gate_opens",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwh_portals_crypt_event_entering_crypt",
		response = "pwh_portals_crypt_event_entering_crypt",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"portals_crypt_event_entering_crypt"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"witch_hunter"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			},
			{
				"faction_memory",
				"portals_crypt_event_entering_crypt",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"portals_crypt_event_entering_crypt",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwh_portals_crypt_event_blood",
		response = "pwh_portals_crypt_event_blood",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"portals_crypt_event_blood"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"witch_hunter"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			},
			{
				"faction_memory",
				"portals_crypt_event_blood",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"portals_crypt_event_blood",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwh_portals_crypt_event_hole",
		response = "pwh_portals_crypt_event_hole",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"portals_crypt_event_hole"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"witch_hunter"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			},
			{
				"faction_memory",
				"portals_crypt_event_hole",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"portals_crypt_event_hole",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwh_portals_stairs",
		response = "pwh_portals_stairs",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"portals_stairs"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"witch_hunter"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			},
			{
				"faction_memory",
				"portals_stairs",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"portals_stairs",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwh_portals_crypt_exit",
		response = "pwh_portals_crypt_exit",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"portals_crypt_exit"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"witch_hunter"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			},
			{
				"faction_memory",
				"portals_crypt_exit",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"portals_crypt_exit",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwh_portals_waystone",
		response = "pwh_portals_waystone",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"portals_waystone"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"witch_hunter"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			},
			{
				"faction_memory",
				"portals_waystone",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"portals_waystone",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwh_portals_event_missing_gargoyle_heads",
		response = "pwh_portals_event_missing_gargoyle_heads",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"portals_event_missing_gargoyle_heads"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"witch_hunter"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			},
			{
				"faction_memory",
				"portals_event_missing_gargoyle_heads",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"portals_event_missing_gargoyle_heads",
				OP.ADD,
				1
			}
		}
	})
	add_dialogues({
		pwh_portals_help_search = {
			face_animations_n = 4,
			database = "witch_hunter_dlc_drachenfels_portals",
			sound_events_n = 4,
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 4,
			randomize_indexes = {},
			localization_strings = {
				"pwh_portals_help_search_01",
				"pwh_portals_help_search_02",
				"pwh_portals_help_search_03",
				"pwh_portals_help_search_04"
			},
			sound_events = {
				"pwh_portals_help_search_01",
				"pwh_portals_help_search_02",
				"pwh_portals_help_search_03",
				"pwh_portals_help_search_04"
			},
			face_animations = {
				"face_calm",
				"face_calm",
				"face_calm",
				"face_calm"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			sound_events_duration = {
				3.3627917766571,
				3.5397291183472,
				1.9893333911896,
				5.0587706565857
			}
		},
		pwh_portals_pwh_castle_vista = {
			face_animations_n = 4,
			database = "witch_hunter_dlc_drachenfels_portals",
			sound_events_n = 4,
			randomize_indexes_n = 0,
			category = "level_talk_must_play",
			dialogue_animations_n = 4,
			randomize_indexes = {},
			localization_strings = {
				"pwh_portals_pwh_castle_vista_01",
				"pwh_portals_pwh_castle_vista_02",
				"pwh_portals_pwh_castle_vista_03",
				"pwh_portals_pwh_castle_vista_04"
			},
			sound_events = {
				"pwh_portals_pwh_castle_vista_01",
				"pwh_portals_pwh_castle_vista_02",
				"pwh_portals_pwh_castle_vista_03",
				"pwh_portals_pwh_castle_vista_04"
			},
			face_animations = {
				"face_calm",
				"face_calm",
				"face_calm",
				"face_calm"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			sound_events_duration = {
				7.0090832710266,
				7.7844376564026,
				7.3464164733887,
				8.2267913818359
			}
		},
		pwh_portals_objective_recap = {
			face_animations_n = 4,
			database = "witch_hunter_dlc_drachenfels_portals",
			sound_events_n = 4,
			randomize_indexes_n = 0,
			category = "level_talk_must_play",
			dialogue_animations_n = 4,
			randomize_indexes = {},
			localization_strings = {
				"pwh_portals_objective_recap_01",
				"pwh_portals_objective_recap_02",
				"pwh_portals_objective_recap_03",
				"pwh_portals_objective_recap_04"
			},
			sound_events = {
				"pwh_portals_objective_recap_01",
				"pwh_portals_objective_recap_02",
				"pwh_portals_objective_recap_03",
				"pwh_portals_objective_recap_04"
			},
			face_animations = {
				"face_calm",
				"face_calm",
				"face_calm",
				"face_calm"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			sound_events_duration = {
				6.0029997825623,
				5.6416873931885,
				4.9523334503174,
				6.0191874504089
			}
		},
		pwh_portals_secret_entrance_gate_opens = {
			face_animations_n = 4,
			database = "witch_hunter_dlc_drachenfels_portals",
			sound_events_n = 4,
			randomize_indexes_n = 0,
			category = "level_talk_must_play",
			dialogue_animations_n = 4,
			randomize_indexes = {},
			localization_strings = {
				"pwh_portals_secret_entrance_gate_opens_01",
				"pwh_portals_secret_entrance_gate_opens_02",
				"pwh_portals_secret_entrance_gate_opens_03",
				"pwh_portals_secret_entrance_gate_opens_04"
			},
			sound_events = {
				"pwh_portals_secret_entrance_gate_opens_01",
				"pwh_portals_secret_entrance_gate_opens_02",
				"pwh_portals_secret_entrance_gate_opens_03",
				"pwh_portals_secret_entrance_gate_opens_04"
			},
			face_animations = {
				"face_calm",
				"face_calm",
				"face_calm",
				"face_calm"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			sound_events_duration = {
				4.8600416183472,
				5.8020210266113,
				3.2937500476837,
				5.1539583206177
			}
		},
		pwh_portals_intro_line_a = {
			face_animations_n = 2,
			database = "witch_hunter_dlc_drachenfels_portals",
			sound_events_n = 2,
			randomize_indexes_n = 0,
			category = "level_talk_must_play",
			dialogue_animations_n = 2,
			randomize_indexes = {},
			localization_strings = {
				[1.0] = "pwh_portals_intro_line_a_01",
				[2.0] = "pwh_portals_intro_line_a_02"
			},
			sound_events = {
				[1.0] = "pwh_portals_intro_line_a_01",
				[2.0] = "pwh_portals_intro_line_a_02"
			},
			face_animations = {
				[1.0] = "face_calm",
				[2.0] = "face_calm"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk",
				[2.0] = "dialogue_talk"
			},
			sound_events_duration = {
				[1.0] = 4.4092707633972,
				[2.0] = 4.6371459960938
			}
		},
		pwh_portals_crypt_event_hole = {
			face_animations_n = 4,
			database = "witch_hunter_dlc_drachenfels_portals",
			sound_events_n = 4,
			randomize_indexes_n = 0,
			category = "level_talk_must_play",
			dialogue_animations_n = 4,
			randomize_indexes = {},
			localization_strings = {
				"pwh_portals_crypt_event_hole_01",
				"pwh_portals_crypt_event_hole_02",
				"pwh_portals_crypt_event_hole_03",
				"pwh_portals_crypt_event_hole_04"
			},
			sound_events = {
				"pwh_portals_crypt_event_hole_01",
				"pwh_portals_crypt_event_hole_02",
				"pwh_portals_crypt_event_hole_03",
				"pwh_portals_crypt_event_hole_04"
			},
			face_animations = {
				"face_calm",
				"face_calm",
				"face_calm",
				"face_calm"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			sound_events_duration = {
				3.0520000457764,
				4.043541431427,
				1.7066874504089,
				5.5903749465942
			}
		},
		pwh_portals_the_map = {
			face_animations_n = 4,
			database = "witch_hunter_dlc_drachenfels_portals",
			sound_events_n = 4,
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 4,
			randomize_indexes = {},
			localization_strings = {
				"pwh_portals_the_map_01",
				"pwh_portals_the_map_02",
				"pwh_portals_the_map_03",
				"pwh_portals_the_map_04"
			},
			sound_events = {
				"pwh_portals_the_map_01",
				"pwh_portals_the_map_02",
				"pwh_portals_the_map_03",
				"pwh_portals_the_map_04"
			},
			face_animations = {
				"face_calm",
				"face_calm",
				"face_calm",
				"face_calm"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			sound_events_duration = {
				3.2386667728424,
				3.3366250991821,
				3.611145734787,
				4.8284792900085
			}
		},
		pwh_portals_intro_line_c = {
			face_animations_n = 2,
			database = "witch_hunter_dlc_drachenfels_portals",
			sound_events_n = 2,
			randomize_indexes_n = 0,
			category = "level_talk_must_play",
			dialogue_animations_n = 2,
			randomize_indexes = {},
			localization_strings = {
				[1.0] = "pwh_portals_intro_line_c_01",
				[2.0] = "pwh_portals_intro_line_c_02"
			},
			sound_events = {
				[1.0] = "pwh_portals_intro_line_c_01",
				[2.0] = "pwh_portals_intro_line_c_02"
			},
			face_animations = {
				[1.0] = "face_calm",
				[2.0] = "face_calm"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk",
				[2.0] = "dialogue_talk"
			},
			sound_events_duration = {
				[1.0] = 6.0827293395996,
				[2.0] = 5.9109373092651
			}
		},
		pwh_portals_raid_trace = {
			face_animations_n = 4,
			database = "witch_hunter_dlc_drachenfels_portals",
			sound_events_n = 4,
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 4,
			randomize_indexes = {},
			localization_strings = {
				"pwh_portals_raid_trace_01",
				"pwh_portals_raid_trace_02",
				"pwh_portals_raid_trace_03",
				"pwh_portals_raid_trace_04"
			},
			sound_events = {
				"pwh_portals_raid_trace_01",
				"pwh_portals_raid_trace_02",
				"pwh_portals_raid_trace_03",
				"pwh_portals_raid_trace_04"
			},
			face_animations = {
				"face_calm",
				"face_calm",
				"face_calm",
				"face_calm"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			sound_events_duration = {
				1.9985624551773,
				2.5164375305176,
				5.1844167709351,
				4.547333240509
			}
		},
		pwh_portals_event_missing_gargoyle_heads = {
			face_animations_n = 4,
			database = "witch_hunter_dlc_drachenfels_portals",
			sound_events_n = 4,
			randomize_indexes_n = 0,
			category = "level_talk_must_play",
			dialogue_animations_n = 4,
			randomize_indexes = {},
			localization_strings = {
				"pwh_portals_event_missing_gargoyle_heads_01",
				"pwh_portals_event_missing_gargoyle_heads_02",
				"pwh_portals_event_missing_gargoyle_heads_03",
				"pwh_portals_event_missing_gargoyle_heads_04"
			},
			sound_events = {
				"pwh_portals_event_missing_gargoyle_heads_01",
				"pwh_portals_event_missing_gargoyle_heads_02",
				"pwh_portals_event_missing_gargoyle_heads_03",
				"pwh_portals_event_missing_gargoyle_heads_04"
			},
			face_animations = {
				"face_calm",
				"face_calm",
				"face_calm",
				"face_calm"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			sound_events_duration = {
				4.3987293243408,
				3.4103124141693,
				3.1481666564941,
				5.0747499465942
			}
		},
		pwh_portals_temple_locked = {
			face_animations_n = 4,
			database = "witch_hunter_dlc_drachenfels_portals",
			sound_events_n = 4,
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 4,
			randomize_indexes = {},
			localization_strings = {
				"pwh_portals_temple_locked_01",
				"pwh_portals_temple_locked_02",
				"pwh_portals_temple_locked_03",
				"pwh_portals_temple_locked_04"
			},
			sound_events = {
				"pwh_portals_temple_locked_01",
				"pwh_portals_temple_locked_02",
				"pwh_portals_temple_locked_03",
				"pwh_portals_temple_locked_04"
			},
			face_animations = {
				"face_calm",
				"face_calm",
				"face_calm",
				"face_calm"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			sound_events_duration = {
				2.6926040649414,
				4.1475210189819,
				2.8832082748413,
				5.5915832519531
			}
		},
		pwh_portals_everyone_gone = {
			face_animations_n = 4,
			database = "witch_hunter_dlc_drachenfels_portals",
			sound_events_n = 4,
			randomize_indexes_n = 0,
			category = "level_talk_must_play",
			dialogue_animations_n = 4,
			randomize_indexes = {},
			localization_strings = {
				"pwh_portals_everyone_gone_01",
				"pwh_portals_everyone_gone_02",
				"pwh_portals_everyone_gone_03",
				"pwh_portals_everyone_gone_04"
			},
			sound_events = {
				"pwh_portals_everyone_gone_01",
				"pwh_portals_everyone_gone_02",
				"pwh_portals_everyone_gone_03",
				"pwh_portals_everyone_gone_04"
			},
			face_animations = {
				"face_calm",
				"face_calm",
				"face_calm",
				"face_calm"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			sound_events_duration = {
				4.3667497634888,
				4.5571875572205,
				6.9361248016357,
				4.9856247901917
			}
		},
		pwh_portals_portal_interact_two = {
			face_animations_n = 4,
			database = "witch_hunter_dlc_drachenfels_portals",
			sound_events_n = 4,
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 4,
			randomize_indexes = {},
			localization_strings = {
				"pwh_portals_portal_interact_two_01",
				"pwh_portals_portal_interact_two_02",
				"pwh_portals_portal_interact_two_03",
				"pwh_portals_portal_interact_two_04"
			},
			sound_events = {
				"pwh_portals_portal_interact_two_01",
				"pwh_portals_portal_interact_two_02",
				"pwh_portals_portal_interact_two_03",
				"pwh_portals_portal_interact_two_04"
			},
			face_animations = {
				"face_calm",
				"face_calm",
				"face_calm",
				"face_calm"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			sound_events_duration = {
				0.79752081632614,
				1.9959374666214,
				3.6131875514984,
				3.5204792022705
			}
		},
		pwh_portals_find_map = {
			face_animations_n = 4,
			database = "witch_hunter_dlc_drachenfels_portals",
			sound_events_n = 4,
			randomize_indexes_n = 0,
			category = "level_talk_must_play",
			dialogue_animations_n = 4,
			randomize_indexes = {},
			localization_strings = {
				"pwh_portals_find_map_01",
				"pwh_portals_find_map_02",
				"pwh_portals_find_map_03",
				"pwh_portals_find_map_04"
			},
			sound_events = {
				"pwh_portals_find_map_01",
				"pwh_portals_find_map_02",
				"pwh_portals_find_map_03",
				"pwh_portals_find_map_04"
			},
			face_animations = {
				"face_calm",
				"face_calm",
				"face_calm",
				"face_calm"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			sound_events_duration = {
				1.8208333253861,
				2.5602083206177,
				3.3359167575836,
				2.4372916221619
			}
		},
		pwh_portals_castle_road = {
			face_animations_n = 4,
			database = "witch_hunter_dlc_drachenfels_portals",
			sound_events_n = 4,
			randomize_indexes_n = 0,
			category = "level_talk_must_play",
			dialogue_animations_n = 4,
			randomize_indexes = {},
			localization_strings = {
				"pwh_portals_pwh_castle_road_01",
				"pwh_portals_pwh_castle_road_02",
				"pwh_portals_pwh_castle_road_03",
				"pwh_portals_pwh_castle_road_04"
			},
			sound_events = {
				"pwh_portals_pwh_castle_road_01",
				"pwh_portals_pwh_castle_road_02",
				"pwh_portals_pwh_castle_road_03",
				"pwh_portals_pwh_castle_road_04"
			},
			face_animations = {
				"face_calm",
				"face_calm",
				"face_calm",
				"face_calm"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			sound_events_duration = {
				4.5297918319702,
				2.3009791374206,
				3.0650417804718,
				5.041437625885
			}
		},
		pwh_portals_temple_bell_tower = {
			face_animations_n = 4,
			database = "witch_hunter_dlc_drachenfels_portals",
			sound_events_n = 4,
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 4,
			randomize_indexes = {},
			localization_strings = {
				"pwh_portals_temple_bell_tower_01",
				"pwh_portals_temple_bell_tower_02",
				"pwh_portals_temple_bell_tower_03",
				"pwh_portals_temple_bell_tower_04"
			},
			sound_events = {
				"pwh_portals_temple_bell_tower_01",
				"pwh_portals_temple_bell_tower_02",
				"pwh_portals_temple_bell_tower_03",
				"pwh_portals_temple_bell_tower_04"
			},
			face_animations = {
				"face_calm",
				"face_calm",
				"face_calm",
				"face_calm"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			sound_events_duration = {
				2.7105624675751,
				3.0614583492279,
				2.211416721344,
				3.0877499580383
			}
		},
		pwh_portals_memory_path = {
			face_animations_n = 4,
			database = "witch_hunter_dlc_drachenfels_portals",
			sound_events_n = 4,
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 4,
			randomize_indexes = {},
			localization_strings = {
				"pwh_portals_memory_path_01",
				"pwh_portals_memory_path_02",
				"pwh_portals_memory_path_03",
				"pwh_portals_memory_path_04"
			},
			sound_events = {
				"pwh_portals_memory_path_01",
				"pwh_portals_memory_path_02",
				"pwh_portals_memory_path_03",
				"pwh_portals_memory_path_04"
			},
			face_animations = {
				"face_calm",
				"face_calm",
				"face_calm",
				"face_calm"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			sound_events_duration = {
				1.6110833883286,
				3.6757707595825,
				3.8970625400543,
				5.2832498550415
			}
		},
		pwh_portals_stairs = {
			face_animations_n = 4,
			database = "witch_hunter_dlc_drachenfels_portals",
			sound_events_n = 4,
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 4,
			randomize_indexes = {},
			localization_strings = {
				"pwh_portals_stairs_01",
				"pwh_portals_stairs_02",
				"pwh_portals_stairs_03",
				"pwh_portals_stairs_04"
			},
			sound_events = {
				"pwh_portals_stairs_01",
				"pwh_portals_stairs_02",
				"pwh_portals_stairs_03",
				"pwh_portals_stairs_04"
			},
			face_animations = {
				"face_calm",
				"face_calm",
				"face_calm",
				"face_calm"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			sound_events_duration = {
				5.0337710380554,
				2.8540415763855,
				4.7331457138061,
				6.7638125419617
			}
		},
		pwh_portals_enter_village = {
			face_animations_n = 4,
			database = "witch_hunter_dlc_drachenfels_portals",
			sound_events_n = 4,
			randomize_indexes_n = 0,
			category = "level_talk_must_play",
			dialogue_animations_n = 4,
			randomize_indexes = {},
			localization_strings = {
				"pwh_portals_enter_village_01",
				"pwh_portals_enter_village_02",
				"pwh_portals_enter_village_03",
				"pwh_portals_enter_village_04"
			},
			sound_events = {
				"pwh_portals_enter_village_01",
				"pwh_portals_enter_village_02",
				"pwh_portals_enter_village_03",
				"pwh_portals_enter_village_04"
			},
			face_animations = {
				"face_calm",
				"face_calm",
				"face_calm",
				"face_calm"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			sound_events_duration = {
				4.8337917327881,
				5.4171042442322,
				4.6564168930054,
				3.4182291030884
			}
		},
		pwh_portals_intro_line_b = {
			face_animations_n = 2,
			database = "witch_hunter_dlc_drachenfels_portals",
			sound_events_n = 2,
			randomize_indexes_n = 0,
			category = "level_talk_must_play",
			dialogue_animations_n = 2,
			randomize_indexes = {},
			localization_strings = {
				[1.0] = "pwh_portals_intro_line_b_01",
				[2.0] = "pwh_portals_intro_line_b_02"
			},
			sound_events = {
				[1.0] = "pwh_portals_intro_line_b_01",
				[2.0] = "pwh_portals_intro_line_b_02"
			},
			face_animations = {
				[1.0] = "face_calm",
				[2.0] = "face_calm"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk",
				[2.0] = "dialogue_talk"
			},
			sound_events_duration = {
				[1.0] = 2.6117291450501,
				[2.0] = 2.3852083683014
			}
		},
		pwh_portals_the_temple = {
			face_animations_n = 4,
			database = "witch_hunter_dlc_drachenfels_portals",
			sound_events_n = 4,
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 4,
			randomize_indexes = {},
			localization_strings = {
				"pwh_portals_the_temple_01",
				"pwh_portals_the_temple_02",
				"pwh_portals_the_temple_03",
				"pwh_portals_the_temple_04"
			},
			sound_events = {
				"pwh_portals_the_temple_01",
				"pwh_portals_the_temple_02",
				"pwh_portals_the_temple_03",
				"pwh_portals_the_temple_04"
			},
			face_animations = {
				"face_calm",
				"face_calm",
				"face_calm",
				"face_calm"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			sound_events_duration = {
				2.2565834522247,
				2.3244376182556,
				5.6753959655762,
				4.7082915306091
			}
		},
		pwh_portals_find_survivors = {
			face_animations_n = 4,
			database = "witch_hunter_dlc_drachenfels_portals",
			sound_events_n = 4,
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 4,
			randomize_indexes = {},
			localization_strings = {
				"pwh_portals_find_survivors_01",
				"pwh_portals_find_survivors_02",
				"pwh_portals_find_survivors_03",
				"pwh_portals_find_survivors_04"
			},
			sound_events = {
				"pwh_portals_find_survivors_01",
				"pwh_portals_find_survivors_02",
				"pwh_portals_find_survivors_03",
				"pwh_portals_find_survivors_04"
			},
			face_animations = {
				"face_calm",
				"face_calm",
				"face_calm",
				"face_calm"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			sound_events_duration = {
				1.6490000486374,
				4.2047710418701,
				2.4162082672119,
				1.8638750314713
			}
		},
		pwh_portals_get_to_temple = {
			face_animations_n = 4,
			database = "witch_hunter_dlc_drachenfels_portals",
			sound_events_n = 4,
			randomize_indexes_n = 0,
			category = "level_talk_must_play",
			dialogue_animations_n = 4,
			randomize_indexes = {},
			localization_strings = {
				"pwh_portals_get_to_temple_01",
				"pwh_portals_get_to_temple_02",
				"pwh_portals_get_to_temple_03",
				"pwh_portals_get_to_temple_04"
			},
			sound_events = {
				"pwh_portals_get_to_temple_01",
				"pwh_portals_get_to_temple_02",
				"pwh_portals_get_to_temple_03",
				"pwh_portals_get_to_temple_04"
			},
			face_animations = {
				"face_calm",
				"face_calm",
				"face_calm",
				"face_calm"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			sound_events_duration = {
				7.9653539657593,
				5.9844789505005,
				6.409562587738,
				6.472291469574
			}
		},
		pwh_portals_waystone = {
			face_animations_n = 4,
			database = "witch_hunter_dlc_drachenfels_portals",
			sound_events_n = 4,
			randomize_indexes_n = 0,
			category = "level_talk_must_play",
			dialogue_animations_n = 4,
			randomize_indexes = {},
			localization_strings = {
				"pwh_portals_waystone_01",
				"pwh_portals_waystone_02",
				"pwh_portals_waystone_03",
				"pwh_portals_waystone_04"
			},
			sound_events = {
				"pwh_portals_waystone_01",
				"pwh_portals_waystone_02",
				"pwh_portals_waystone_03",
				"pwh_portals_waystone_04"
			},
			face_animations = {
				"face_calm",
				"face_calm",
				"face_calm",
				"face_calm"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			sound_events_duration = {
				4.0499792098999,
				5.1082081794739,
				5.7744374275208,
				6.8675622940064
			}
		},
		pwh_portals_get_out = {
			face_animations_n = 4,
			database = "witch_hunter_dlc_drachenfels_portals",
			sound_events_n = 4,
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 4,
			randomize_indexes = {},
			localization_strings = {
				"pwh_portals_get_out_01",
				"pwh_portals_get_out_02",
				"pwh_portals_get_out_03",
				"pwh_portals_get_out_04"
			},
			sound_events = {
				"pwh_portals_get_out_01",
				"pwh_portals_get_out_02",
				"pwh_portals_get_out_03",
				"pwh_portals_get_out_04"
			},
			face_animations = {
				"face_calm",
				"face_calm",
				"face_calm",
				"face_calm"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			sound_events_duration = {
				1.5442708730698,
				1.5499792098999,
				2.2204792499542,
				1.8751875162125
			}
		},
		pwh_portals_crypt_exit = {
			face_animations_n = 4,
			database = "witch_hunter_dlc_drachenfels_portals",
			sound_events_n = 4,
			randomize_indexes_n = 0,
			category = "level_talk_must_play",
			dialogue_animations_n = 4,
			randomize_indexes = {},
			localization_strings = {
				"pwh_portals_crypt_exit_01",
				"pwh_portals_crypt_exit_02",
				"pwh_portals_crypt_exit_03",
				"pwh_portals_crypt_exit_04"
			},
			sound_events = {
				"pwh_portals_crypt_exit_01",
				"pwh_portals_crypt_exit_02",
				"pwh_portals_crypt_exit_03",
				"pwh_portals_crypt_exit_04"
			},
			face_animations = {
				"face_calm",
				"face_calm",
				"face_calm",
				"face_calm"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			sound_events_duration = {
				4.2350416183472,
				3.8825209140778,
				3.0871458053589,
				5.2542085647583
			}
		},
		pwh_portals_portal_interact_three = {
			face_animations_n = 4,
			database = "witch_hunter_dlc_drachenfels_portals",
			sound_events_n = 4,
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 4,
			randomize_indexes = {},
			localization_strings = {
				"pwh_portals_portal_interact_three_01",
				"pwh_portals_portal_interact_three_02",
				"pwh_portals_portal_interact_three_03",
				"pwh_portals_portal_interact_three_04"
			},
			sound_events = {
				"pwh_portals_portal_interact_three_01",
				"pwh_portals_portal_interact_three_02",
				"pwh_portals_portal_interact_three_03",
				"pwh_portals_portal_interact_three_04"
			},
			face_animations = {
				"face_calm",
				"face_calm",
				"face_calm",
				"face_calm"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			sound_events_duration = {
				3.5370209217072,
				3.0953750610352,
				4.3771877288818,
				3.6302292346954
			}
		},
		pwh_portals_portal_interact_one = {
			face_animations_n = 4,
			database = "witch_hunter_dlc_drachenfels_portals",
			sound_events_n = 4,
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 4,
			randomize_indexes = {},
			localization_strings = {
				"pwh_portals_portal_interact_one_01",
				"pwh_portals_portal_interact_one_02",
				"pwh_portals_portal_interact_one_03",
				"pwh_portals_portal_interact_one_04"
			},
			sound_events = {
				"pwh_portals_portal_interact_one_01",
				"pwh_portals_portal_interact_one_02",
				"pwh_portals_portal_interact_one_03",
				"pwh_portals_portal_interact_one_04"
			},
			face_animations = {
				"face_calm",
				"face_calm",
				"face_calm",
				"face_calm"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			sound_events_duration = {
				0.96260416507721,
				3.3717501163483,
				1.6672500371933,
				3.4067499637604
			}
		},
		["pwh_portals_trail_found "] = {
			face_animations_n = 4,
			database = "witch_hunter_dlc_drachenfels_portals",
			sound_events_n = 4,
			randomize_indexes_n = 0,
			category = "level_talk_must_play",
			dialogue_animations_n = 4,
			randomize_indexes = {},
			localization_strings = {
				"pwh_portals_trail_found_01",
				"pwh_portals_trail_found_02",
				"pwh_portals_trail_found_03",
				"pwh_portals_trail_found_04"
			},
			sound_events = {
				"pwh_portals_trail_found_01",
				"pwh_portals_trail_found_02",
				"pwh_portals_trail_found_03",
				"pwh_portals_trail_found_04"
			},
			face_animations = {
				"face_calm",
				"face_calm",
				"face_calm",
				"face_calm"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			sound_events_duration = {
				2.340916633606,
				4.4475831985474,
				3.7569375038147,
				5.5126667022705
			}
		},
		pwh_portals_village_raided = {
			face_animations_n = 4,
			database = "witch_hunter_dlc_drachenfels_portals",
			sound_events_n = 4,
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 4,
			randomize_indexes = {},
			localization_strings = {
				"pwh_portals_village_raided_01",
				"pwh_portals_village_raided_02",
				"pwh_portals_village_raided_03",
				"pwh_portals_village_raided_04"
			},
			sound_events = {
				"pwh_portals_village_raided_01",
				"pwh_portals_village_raided_02",
				"pwh_portals_village_raided_03",
				"pwh_portals_village_raided_04"
			},
			face_animations = {
				"face_calm",
				"face_calm",
				"face_calm",
				"face_calm"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			sound_events_duration = {
				4.4394373893738,
				4.8667707443237,
				5.7151250839233,
				5.1602082252502
			}
		},
		pwh_portals_crypt_event_entering_crypt = {
			face_animations_n = 4,
			database = "witch_hunter_dlc_drachenfels_portals",
			sound_events_n = 4,
			randomize_indexes_n = 0,
			category = "level_talk_must_play",
			dialogue_animations_n = 4,
			randomize_indexes = {},
			localization_strings = {
				"pwh_portals_crypt_event_entering_crypt_01",
				"pwh_portals_crypt_event_entering_crypt_02",
				"pwh_portals_crypt_event_entering_crypt_03",
				"pwh_portals_crypt_event_entering_crypt_04"
			},
			sound_events = {
				"pwh_portals_crypt_event_entering_crypt_01",
				"pwh_portals_crypt_event_entering_crypt_02",
				"pwh_portals_crypt_event_entering_crypt_03",
				"pwh_portals_crypt_event_entering_crypt_04"
			},
			face_animations = {
				"face_calm",
				"face_calm",
				"face_calm",
				"face_calm"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			sound_events_duration = {
				3.0800416469574,
				2.7593541145325,
				4.7061042785644,
				3.6848332881927
			}
		},
		pwh_portals_portal_event = {
			face_animations_n = 4,
			database = "witch_hunter_dlc_drachenfels_portals",
			sound_events_n = 4,
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 4,
			randomize_indexes = {},
			localization_strings = {
				"pwh_portals_portal_event_01",
				"pwh_portals_portal_event_02",
				"pwh_portals_portal_event_03",
				"pwh_portals_portal_event_04"
			},
			sound_events = {
				"pwh_portals_portal_event_01",
				"pwh_portals_portal_event_02",
				"pwh_portals_portal_event_03",
				"pwh_portals_portal_event_04"
			},
			face_animations = {
				"face_calm",
				"face_calm",
				"face_calm",
				"face_calm"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			sound_events_duration = {
				1.8643125295639,
				3.8443124294281,
				1.8586666584015,
				3.2146248817444
			}
		},
		pwh_portals_map_second_clue = {
			face_animations_n = 4,
			database = "witch_hunter_dlc_drachenfels_portals",
			sound_events_n = 4,
			randomize_indexes_n = 0,
			category = "level_talk_must_play",
			dialogue_animations_n = 4,
			randomize_indexes = {},
			localization_strings = {
				"pwh_portals_map_second_clue_01",
				"pwh_portals_map_second_clue_02",
				"pwh_portals_map_second_clue_03",
				"pwh_portals_map_second_clue_04"
			},
			sound_events = {
				"pwh_portals_map_second_clue_01",
				"pwh_portals_map_second_clue_02",
				"pwh_portals_map_second_clue_03",
				"pwh_portals_map_second_clue_04"
			},
			face_animations = {
				"face_calm",
				"face_calm",
				"face_calm",
				"face_calm"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			sound_events_duration = {
				6.0358958244324,
				4.9507918357849,
				3.3068332672119,
				3.626895904541
			}
		},
		pwh_portals_map_first_clue = {
			face_animations_n = 4,
			database = "witch_hunter_dlc_drachenfels_portals",
			sound_events_n = 4,
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 4,
			randomize_indexes = {},
			localization_strings = {
				"pwh_portals_map_first_clue_01",
				"pwh_portals_map_first_clue_02",
				"pwh_portals_map_first_clue_03",
				"pwh_portals_map_first_clue_04"
			},
			sound_events = {
				"pwh_portals_map_first_clue_01",
				"pwh_portals_map_first_clue_02",
				"pwh_portals_map_first_clue_03",
				"pwh_portals_map_first_clue_04"
			},
			face_animations = {
				"face_calm",
				"face_calm",
				"face_calm",
				"face_calm"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			sound_events_duration = {
				4.3425002098083,
				2.2978959083557,
				4.4994168281555,
				5.1663541793823
			}
		},
		pwh_portals_castle_gate = {
			face_animations_n = 4,
			database = "witch_hunter_dlc_drachenfels_portals",
			sound_events_n = 4,
			randomize_indexes_n = 0,
			category = "level_talk_must_play",
			dialogue_animations_n = 4,
			randomize_indexes = {},
			localization_strings = {
				"pwh_portals_pwh_castle_gate_01",
				"pwh_portals_pwh_castle_gate_02",
				"pwh_portals_pwh_castle_gate_03",
				"pwh_portals_pwh_castle_gate_04"
			},
			sound_events = {
				"pwh_portals_pwh_castle_gate_01",
				"pwh_portals_pwh_castle_gate_02",
				"pwh_portals_pwh_castle_gate_03",
				"pwh_portals_pwh_castle_gate_04"
			},
			face_animations = {
				"face_calm",
				"face_calm",
				"face_calm",
				"face_calm"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			sound_events_duration = {
				5.3241872787476,
				7.4765000343323,
				7.2322502136231,
				6.2392292022705
			}
		},
		pwh_portals_temple_event = {
			face_animations_n = 4,
			database = "witch_hunter_dlc_drachenfels_portals",
			sound_events_n = 4,
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 4,
			randomize_indexes = {},
			localization_strings = {
				"pwh_portals_temple_event_01",
				"pwh_portals_temple_event_02",
				"pwh_portals_temple_event_03",
				"pwh_portals_temple_event_04"
			},
			sound_events = {
				"pwh_portals_temple_event_01",
				"pwh_portals_temple_event_02",
				"pwh_portals_temple_event_03",
				"pwh_portals_temple_event_04"
			},
			face_animations = {
				"face_calm",
				"face_calm",
				"face_calm",
				"face_calm"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			sound_events_duration = {
				3.0549166202545,
				4.1531248092651,
				3.5516874790192,
				3.0922083854675
			}
		},
		pwh_portals_follow_trail = {
			face_animations_n = 4,
			database = "witch_hunter_dlc_drachenfels_portals",
			sound_events_n = 4,
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 4,
			randomize_indexes = {},
			localization_strings = {
				"pwh_portals_follow_trail_01",
				"pwh_portals_follow_trail_02",
				"pwh_portals_follow_trail_03",
				"pwh_portals_follow_trail_04"
			},
			sound_events = {
				"pwh_portals_follow_trail_01",
				"pwh_portals_follow_trail_02",
				"pwh_portals_follow_trail_03",
				"pwh_portals_follow_trail_04"
			},
			face_animations = {
				"face_calm",
				"face_calm",
				"face_calm",
				"face_calm"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			sound_events_duration = {
				3.9364376068115,
				3.986145734787,
				3.9284584522247,
				5.1135416030884
			}
		},
		pwh_portals_memory_portals = {
			face_animations_n = 4,
			database = "witch_hunter_dlc_drachenfels_portals",
			sound_events_n = 4,
			randomize_indexes_n = 0,
			category = "level_talk_must_play",
			dialogue_animations_n = 4,
			randomize_indexes = {},
			localization_strings = {
				"pwh_portals_memory_portals_01",
				"pwh_portals_memory_portals_02",
				"pwh_portals_memory_portals_03",
				"pwh_portals_memory_portals_04"
			},
			sound_events = {
				"pwh_portals_memory_portals_01",
				"pwh_portals_memory_portals_02",
				"pwh_portals_memory_portals_03",
				"pwh_portals_memory_portals_04"
			},
			face_animations = {
				"face_calm",
				"face_calm",
				"face_calm",
				"face_calm"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			sound_events_duration = {
				2.7711458206177,
				5.1845002174377,
				4.3913750648499,
				6.698145866394
			}
		},
		pwh_portals_crypt_event_blood = {
			face_animations_n = 4,
			database = "witch_hunter_dlc_drachenfels_portals",
			sound_events_n = 4,
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 4,
			randomize_indexes = {},
			localization_strings = {
				"pwh_portals_crypt_event_blood_01",
				"pwh_portals_crypt_event_blood_02",
				"pwh_portals_crypt_event_blood_03",
				"pwh_portals_crypt_event_blood_04"
			},
			sound_events = {
				"pwh_portals_crypt_event_blood_01",
				"pwh_portals_crypt_event_blood_02",
				"pwh_portals_crypt_event_blood_03",
				"pwh_portals_crypt_event_blood_04"
			},
			face_animations = {
				"face_calm",
				"face_calm",
				"face_calm",
				"face_calm"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			sound_events_duration = {
				1.7882499694824,
				5.806104183197,
				4.6284584999084,
				5.0682706832886
			}
		},
		pwh_portals_kidnapped_traces = {
			face_animations_n = 4,
			database = "witch_hunter_dlc_drachenfels_portals",
			sound_events_n = 4,
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 4,
			randomize_indexes = {},
			localization_strings = {
				"pwh_portals_kidnapped_traces_01",
				"pwh_portals_kidnapped_traces_02",
				"pwh_portals_kidnapped_traces_03",
				"pwh_portals_kidnapped_traces_04"
			},
			sound_events = {
				"pwh_portals_kidnapped_traces_01",
				"pwh_portals_kidnapped_traces_02",
				"pwh_portals_kidnapped_traces_03",
				"pwh_portals_kidnapped_traces_04"
			},
			face_animations = {
				"face_calm",
				"face_calm",
				"face_calm",
				"face_calm"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			sound_events_duration = {
				4.4850206375122,
				6.8569169044495,
				5.7261877059936,
				7.4929585456848
			}
		}
	})
end
