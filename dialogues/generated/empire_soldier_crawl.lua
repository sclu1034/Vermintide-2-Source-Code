return function ()
	define_rule({
		name = "pes_level_crawl_intro_a",
		response = "pes_level_crawl_intro_a",
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
				"level_crawl_intro_a"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"empire_soldier"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"empire_soldier"
			},
			{
				"faction_memory",
				"level_crawl_intro_a",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"level_crawl_intro_a",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pes_level_crawl_intro_b",
		response = "pes_level_crawl_intro_b",
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
				"level_crawl_intro_a"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"empire_soldier"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"empire_soldier"
			},
			{
				"faction_memory",
				"level_crawl_intro_b",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"level_crawl_intro_b",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pes_level_crawl_intro_c",
		response = "pes_level_crawl_intro_c",
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
				"level_crawl_intro_b"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"empire_soldier"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"empire_soldier"
			},
			{
				"faction_memory",
				"level_crawl_intro_c",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"level_crawl_intro_c",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pes_crawl_head_for_first_pub",
		response = "pes_crawl_head_for_first_pub",
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
				"crawl_head_for_first_pub"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"empire_soldier"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"empire_soldier"
			},
			{
				"faction_memory",
				"crawl_head_for_first_pub",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"crawl_head_for_first_pub",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pes_crawl_spot_first_pub",
		response = "pes_crawl_spot_first_pub",
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
				"crawl_spot_first_pub"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"empire_soldier"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"empire_soldier"
			},
			{
				"faction_memory",
				"crawl_spot_first_pub",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"crawl_spot_first_pub",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pes_crawl_spot_first_pub_closer",
		response = "pes_crawl_spot_first_pub_closer",
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
				"crawl_spot_first_pub_closer"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"empire_soldier"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"empire_soldier"
			},
			{
				"faction_memory",
				"crawl_spot_first_pub_closer",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"crawl_spot_first_pub_closer",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pes_crawl_old_path_blocked",
		response = "pes_crawl_old_path_blocked",
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
				"crawl_old_path_blocked"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"empire_soldier"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"empire_soldier"
			},
			{
				"faction_memory",
				"crawl_old_path_blocked",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"crawl_old_path_blocked",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pes_crawl_shortcut",
		response = "pes_crawl_shortcut",
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
				"crawl_shortcut"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"empire_soldier"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"empire_soldier"
			},
			{
				"faction_memory",
				"crawl_shortcut",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"crawl_shortcut",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pes_crawl_pub_brazers",
		response = "pes_crawl_pub_brazers",
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
				"crawl_pub_brazers"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"empire_soldier"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"empire_soldier"
			},
			{
				"faction_memory",
				"crawl_pub_brazers",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"crawl_pub_brazers",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pes_crawl_pub_door",
		response = "pes_crawl_pub_door",
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
				"crawl_pub_door"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"empire_soldier"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"empire_soldier"
			},
			{
				"faction_memory",
				"crawl_pub_door",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"crawl_pub_door",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pes_crawl_pub_destroyed",
		response = "pes_crawl_pub_destroyed",
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
				"crawl_pub_destroyed"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"empire_soldier"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"empire_soldier"
			},
			{
				"faction_memory",
				"crawl_pub_destroyed",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"crawl_pub_destroyed",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pes_crawl_pub_horde_end",
		response = "pes_crawl_pub_horde_end",
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
				"crawl_pub_horde_end"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"empire_soldier"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"empire_soldier"
			},
			{
				"faction_memory",
				"crawl_pub_horde_end",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"crawl_pub_horde_end",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pes_crawl_head_for_second_pub",
		response = "pes_crawl_head_for_second_pub",
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
				"crawl_pub_horde_end"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"empire_soldier"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"empire_soldier"
			},
			{
				"faction_memory",
				"crawl_head_for_second_pub",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"crawl_head_for_second_pub",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pes_crawl_tunnel_passage",
		response = "pes_crawl_tunnel_passage",
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
				"crawl_tunnel_passage"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"empire_soldier"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"empire_soldier"
			},
			{
				"faction_memory",
				"crawl_tunnel_passage",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"crawl_tunnel_passage",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pes_crawl_mid_level_banter",
		response = "pes_crawl_mid_level_banter",
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
				"crawl_mid_level_banter"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"empire_soldier"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"empire_soldier"
			},
			{
				"faction_memory",
				"crawl_mid_level_banter",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"crawl_mid_level_banter",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pes_crawl_pub_district_sign",
		response = "pes_crawl_pub_district_sign",
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
				"crawl_pub_district_sign"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"empire_soldier"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"empire_soldier"
			},
			{
				"faction_memory",
				"crawl_pub_district_sign",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"crawl_pub_district_sign",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pes_crawl_spot_second_pub",
		response = "pes_crawl_spot_second_pub",
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
				"crawl_spot_second_pub"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"empire_soldier"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"empire_soldier"
			},
			{
				"faction_memory",
				"crawl_spot_second_pub",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"crawl_spot_second_pub",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pes_crawl_have_a_drink",
		response = "pes_crawl_have_a_drink",
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
				"crawl_spot_second_pub"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"empire_soldier"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"empire_soldier"
			},
			{
				"faction_memory",
				"crawl_have_a_drink",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"crawl_have_a_drink",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pes_crawl_cheers",
		response = "pes_crawl_cheers",
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
				"crawl_cheers"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"empire_soldier"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"empire_soldier"
			},
			{
				"faction_memory",
				"crawl_cheers",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"crawl_cheers",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pes_crawl_heard_us",
		response = "pes_crawl_heard_us",
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
				"crawl_heard_us"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"empire_soldier"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"empire_soldier"
			},
			{
				"faction_memory",
				"crawl_heard_us",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"crawl_heard_us",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pes_crawl_head_for_third_pub",
		response = "pes_crawl_head_for_third_pub",
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
				"crawl_head_for_third_pub"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"empire_soldier"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"empire_soldier"
			},
			{
				"faction_memory",
				"crawl_head_for_third_pub",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"crawl_head_for_third_pub",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pes_crawl_slaughter",
		response = "pes_crawl_slaughter",
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
				"crawl_slaughter"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"empire_soldier"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"empire_soldier"
			},
			{
				"faction_memory",
				"crawl_slaughter",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"crawl_slaughter",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pes_crawl_spot_third_pub",
		response = "pes_crawl_spot_third_pub",
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
				"crawl_spot_third_pub"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"empire_soldier"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"empire_soldier"
			},
			{
				"faction_memory",
				"crawl_spot_third_pub",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"crawl_spot_third_pub",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pes_crawl_get_into_third_pub",
		response = "pes_crawl_get_into_third_pub",
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
				"crawl_get_into_third_pub"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"empire_soldier"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"empire_soldier"
			},
			{
				"faction_memory",
				"crawl_get_into_third_pub",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"crawl_get_into_third_pub",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pes_crawl_end_event_keep_quiet",
		response = "pes_crawl_end_event_keep_quiet",
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
				"crawl_end_event_keep_quiet"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"empire_soldier"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"empire_soldier"
			},
			{
				"faction_memory",
				"crawl_end_event_keep_quiet",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"crawl_end_event_keep_quiet",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pes_crawl_end_event_find_good_beer",
		response = "pes_crawl_end_event_find_good_beer",
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
				"crawl_end_event_find_good_beer"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"empire_soldier"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"empire_soldier"
			},
			{
				"faction_memory",
				"crawl_end_event_find_good_beer",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"crawl_end_event_find_good_beer",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pes_crawl_loud_crash_interact",
		response = "pes_crawl_loud_crash_interact",
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
				"crawl_loud_crash_interact"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"empire_soldier"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"empire_soldier"
			},
			{
				"faction_memory",
				"crawl_loud_crash_interact",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"crawl_loud_crash_interact",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pes_crawl_loud_crash_reply",
		response = "pes_crawl_loud_crash_reply",
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
				"crawl_loud_crash_interact"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"empire_soldier"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"empire_soldier"
			},
			{
				"faction_memory",
				"crawl_loud_crash_reply",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"crawl_loud_crash_reply",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pes_crawl_loud_crash_end_reply",
		response = "pes_crawl_loud_crash_end_reply",
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
				"crawl_loud_crash_end_reply"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"empire_soldier"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"empire_soldier"
			},
			{
				"faction_memory",
				"crawl_loud_crash_end_reply",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"crawl_loud_crash_end_reply",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pes_crawl_upstairs",
		response = "pes_crawl_upstairs",
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
				"crawl_upstairs"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"empire_soldier"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"empire_soldier"
			},
			{
				"faction_memory",
				"crawl_upstairs",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"crawl_upstairs",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pes_crawl_get_out_soon",
		response = "pes_crawl_get_out_soon",
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
				"crawl_get_out_soon"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"empire_soldier"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"empire_soldier"
			},
			{
				"faction_memory",
				"crawl_get_out_soon",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"crawl_get_out_soon",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pes_crawl_end_event_way_open",
		response = "pes_crawl_end_event_way_open",
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
				"crawl_end_event_way_open"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"empire_soldier"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"empire_soldier"
			},
			{
				"faction_memory",
				"crawl_end_event_way_open",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"crawl_end_event_way_open",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pes_crawl_end_event_keep_running",
		response = "pes_crawl_end_event_keep_running",
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
				"crawl_end_event_keep_running"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"empire_soldier"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"empire_soldier"
			},
			{
				"faction_memory",
				"crawl_end_event_keep_running",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"crawl_end_event_keep_running",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pes_crawl_end_event_tunnel",
		response = "pes_crawl_end_event_tunnel",
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
				"crawl_end_event_tunnel"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"empire_soldier"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"empire_soldier"
			},
			{
				"faction_memory",
				"crawl_end_event_tunnel",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"crawl_end_event_tunnel",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pes_crawl_end_event_waystone",
		response = "pes_crawl_end_event_waystone",
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
				"crawl_end_event_waystone"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"empire_soldier"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"empire_soldier"
			},
			{
				"faction_memory",
				"crawl_end_event_waystone",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"crawl_end_event_waystone",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pes_crawl_pub_destroyed_reaction",
		response = "pes_crawl_pub_destroyed_reaction",
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
				"crawl_pub_destroyed_reaction"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"empire_soldier"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"empire_soldier"
			},
			{
				"faction_memory",
				"crawl_pub_destroyed_reaction",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"crawl_pub_destroyed_reaction",
				OP.ADD,
				1
			}
		}
	})
	add_dialogues({
		pes_level_crawl_intro_a = {
			face_animations_n = 2,
			database = "empire_soldier_crawl",
			sound_events_n = 2,
			randomize_indexes_n = 0,
			category = "cut_scene",
			dialogue_animations_n = 2,
			randomize_indexes = {},
			localization_strings = {
				[1.0] = "pes_level_crawl_intro_a_01",
				[2.0] = "pes_level_crawl_intro_a_02"
			},
			sound_events = {
				[1.0] = "pes_level_crawl_intro_a_01",
				[2.0] = "pes_level_crawl_intro_a_02"
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
				[1.0] = 4.7459373474121,
				[2.0] = 4.6240835189819
			}
		},
		pes_level_crawl_intro_b = {
			face_animations_n = 2,
			database = "empire_soldier_crawl",
			sound_events_n = 2,
			randomize_indexes_n = 0,
			category = "cut_scene",
			dialogue_animations_n = 2,
			randomize_indexes = {},
			localization_strings = {
				[1.0] = "pes_level_crawl_intro_b_01",
				[2.0] = "pes_level_crawl_intro_b_02"
			},
			sound_events = {
				[1.0] = "pes_level_crawl_intro_b_01",
				[2.0] = "pes_level_crawl_intro_b_02"
			},
			face_animations = {
				[1.0] = "face_calm",
				[2.0] = "face_calm"
			},
			dialogue_animations = {
				[1.0] = "dialogue_shout",
				[2.0] = "dialogue_shout"
			},
			sound_events_duration = {
				[1.0] = 4.1999998092651,
				[2.0] = 1.9932291507721
			}
		},
		pes_crawl_get_into_third_pub = {
			face_animations_n = 2,
			database = "empire_soldier_crawl",
			sound_events_n = 2,
			randomize_indexes_n = 0,
			category = "cut_scene",
			dialogue_animations_n = 2,
			randomize_indexes = {},
			localization_strings = {
				[1.0] = "pes_crawl_get_into_third_pub_02",
				[2.0] = "pes_crawl_get_into_third_pub_03"
			},
			sound_events = {
				[1.0] = "pes_crawl_get_into_third_pub_02",
				[2.0] = "pes_crawl_get_into_third_pub_03"
			},
			face_animations = {
				[1.0] = "face_neutral",
				[2.0] = "face_neutral"
			},
			dialogue_animations = {
				[1.0] = "dialogue_shout",
				[2.0] = "dialogue_shout"
			},
			sound_events_duration = {
				[1.0] = 7.4240832328796,
				[2.0] = 4.2167291641235
			}
		},
		pes_crawl_head_for_first_pub = {
			face_animations_n = 2,
			database = "empire_soldier_crawl",
			sound_events_n = 2,
			randomize_indexes_n = 0,
			category = "cut_scene",
			dialogue_animations_n = 2,
			randomize_indexes = {},
			localization_strings = {
				[1.0] = "pes_crawl_head_for_first_pub_02",
				[2.0] = "pes_crawl_head_for_first_pub_03"
			},
			sound_events = {
				[1.0] = "pes_crawl_head_for_first_pub_02",
				[2.0] = "pes_crawl_head_for_first_pub_03"
			},
			face_animations = {
				[1.0] = "face_fear",
				[2.0] = "face_fear"
			},
			dialogue_animations = {
				[1.0] = "dialogue_shout",
				[2.0] = "dialogue_shout"
			},
			sound_events_duration = {
				[1.0] = 4.9991874694824,
				[2.0] = 6.7519583702087
			}
		},
		pes_crawl_spot_first_pub = {
			face_animations_n = 2,
			database = "empire_soldier_crawl",
			sound_events_n = 2,
			randomize_indexes_n = 0,
			category = "cut_scene",
			dialogue_animations_n = 2,
			randomize_indexes = {},
			localization_strings = {
				[1.0] = "pes_crawl_spot_first_pub_01",
				[2.0] = "pes_crawl_spot_first_pub_03"
			},
			sound_events = {
				[1.0] = "pes_crawl_spot_first_pub_01",
				[2.0] = "pes_crawl_spot_first_pub_03"
			},
			face_animations = {
				[1.0] = "face_fear",
				[2.0] = "face_fear"
			},
			dialogue_animations = {
				[1.0] = "dialogue_shout",
				[2.0] = "dialogue_shout"
			},
			sound_events_duration = {
				[1.0] = 4.5192918777466,
				[2.0] = 3.9707500934601
			}
		},
		pes_crawl_mid_level_banter = {
			face_animations_n = 2,
			database = "empire_soldier_crawl",
			sound_events_n = 2,
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 2,
			randomize_indexes = {},
			localization_strings = {
				[1.0] = "pes_crawl_mid_level_banter_01",
				[2.0] = "pes_crawl_mid_level_banter_03"
			},
			sound_events = {
				[1.0] = "pes_crawl_mid_level_banter_01",
				[2.0] = "pes_crawl_mid_level_banter_03"
			},
			face_animations = {
				[1.0] = "face_neutral",
				[2.0] = "face_neutral"
			},
			dialogue_animations = {
				[1.0] = "dialogue_shout",
				[2.0] = "dialogue_shout"
			},
			sound_events_duration = {
				[1.0] = 6.4152498245239,
				[2.0] = 6.034791469574
			}
		},
		pes_crawl_end_event_tunnel = {
			face_animations_n = 2,
			database = "empire_soldier_crawl",
			sound_events_n = 2,
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 2,
			randomize_indexes = {},
			localization_strings = {
				[1.0] = "pes_crawl_end_event_tunnel_03",
				[2.0] = "pes_crawl_end_event_tunnel_04"
			},
			sound_events = {
				[1.0] = "pes_crawl_end_event_tunnel_03",
				[2.0] = "pes_crawl_end_event_tunnel_04"
			},
			face_animations = {
				[1.0] = "face_neutral",
				[2.0] = "face_neutral"
			},
			dialogue_animations = {
				[1.0] = "dialogue_shout",
				[2.0] = "dialogue_shout"
			},
			sound_events_duration = {
				[1.0] = 1.9028750061989,
				[2.0] = 2.8640208244324
			}
		},
		pes_crawl_pub_horde_end = {
			face_animations_n = 2,
			database = "empire_soldier_crawl",
			sound_events_n = 2,
			randomize_indexes_n = 0,
			category = "cut_scene",
			dialogue_animations_n = 2,
			randomize_indexes = {},
			localization_strings = {
				[1.0] = "pes_crawl_pub_horde_end_01",
				[2.0] = "pes_crawl_pub_horde_end_04"
			},
			sound_events = {
				[1.0] = "pes_crawl_pub_horde_end_01",
				[2.0] = "pes_crawl_pub_horde_end_04"
			},
			face_animations = {
				[1.0] = "face_fear",
				[2.0] = "face_fear"
			},
			dialogue_animations = {
				[1.0] = "dialogue_shout",
				[2.0] = "dialogue_shout"
			},
			sound_events_duration = {
				[1.0] = 4.9799790382385,
				[2.0] = 4.376437664032
			}
		},
		pes_crawl_pub_door = {
			face_animations_n = 2,
			database = "empire_soldier_crawl",
			sound_events_n = 2,
			randomize_indexes_n = 0,
			category = "cut_scene",
			dialogue_animations_n = 2,
			randomize_indexes = {},
			localization_strings = {
				[1.0] = "pes_crawl_pub_door_01",
				[2.0] = "pes_crawl_pub_door_02"
			},
			sound_events = {
				[1.0] = "pes_crawl_pub_door_01",
				[2.0] = "pes_crawl_pub_door_02"
			},
			face_animations = {
				[1.0] = "face_fear",
				[2.0] = "face_fear"
			},
			dialogue_animations = {
				[1.0] = "dialogue_shout",
				[2.0] = "dialogue_shout"
			},
			sound_events_duration = {
				[1.0] = 4.2937707901001,
				[2.0] = 4.4610624313355
			}
		},
		pes_crawl_spot_first_pub_closer = {
			face_animations_n = 2,
			database = "empire_soldier_crawl",
			sound_events_n = 2,
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 2,
			randomize_indexes = {},
			localization_strings = {
				[1.0] = "pes_crawl_spot_first_pub_closer_02",
				[2.0] = "pes_crawl_spot_first_pub_closer_03"
			},
			sound_events = {
				[1.0] = "pes_crawl_spot_first_pub_closer_02",
				[2.0] = "pes_crawl_spot_first_pub_closer_03"
			},
			face_animations = {
				[1.0] = "face_fear",
				[2.0] = "face_fear"
			},
			dialogue_animations = {
				[1.0] = "dialogue_shout",
				[2.0] = "dialogue_shout"
			},
			sound_events_duration = {
				[1.0] = 3.0250000953674,
				[2.0] = 5.2533960342407
			}
		},
		pes_level_crawl_intro_c = {
			face_animations_n = 2,
			database = "empire_soldier_crawl",
			sound_events_n = 2,
			randomize_indexes_n = 0,
			category = "cut_scene",
			dialogue_animations_n = 2,
			randomize_indexes = {},
			localization_strings = {
				[1.0] = "pes_level_crawl_intro_c_01",
				[2.0] = "pes_level_crawl_intro_c_02"
			},
			sound_events = {
				[1.0] = "pes_level_crawl_intro_c_01",
				[2.0] = "pes_level_crawl_intro_c_02"
			},
			face_animations = {
				[1.0] = "face_angry",
				[2.0] = "face_angry"
			},
			dialogue_animations = {
				[1.0] = "dialogue_shout",
				[2.0] = "dialogue_shout"
			},
			sound_events_duration = {
				[1.0] = 3.7551875114441,
				[2.0] = 4.5842499732971
			}
		},
		pes_crawl_end_event_find_good_beer = {
			face_animations_n = 2,
			database = "empire_soldier_crawl",
			sound_events_n = 2,
			randomize_indexes_n = 0,
			category = "cut_scene",
			dialogue_animations_n = 2,
			randomize_indexes = {},
			localization_strings = {
				[1.0] = "pes_crawl_end_event_find_good_beer_01",
				[2.0] = "pes_crawl_end_event_find_good_beer_04"
			},
			sound_events = {
				[1.0] = "pes_crawl_end_event_find_good_beer_01",
				[2.0] = "pes_crawl_end_event_find_good_beer_04"
			},
			face_animations = {
				[1.0] = "face_neutral",
				[2.0] = "face_neutral"
			},
			dialogue_animations = {
				[1.0] = "dialogue_shout",
				[2.0] = "dialogue_shout"
			},
			sound_events_duration = {
				[1.0] = 2.9093332290649,
				[2.0] = 4.1677498817444
			}
		},
		pes_crawl_tunnel_passage = {
			face_animations_n = 2,
			database = "empire_soldier_crawl",
			sound_events_n = 2,
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 2,
			randomize_indexes = {},
			localization_strings = {
				[1.0] = "pes_crawl_tunnel_passage_02",
				[2.0] = "pes_crawl_tunnel_passage_04"
			},
			sound_events = {
				[1.0] = "pes_crawl_tunnel_passage_02",
				[2.0] = "pes_crawl_tunnel_passage_04"
			},
			face_animations = {
				[1.0] = "face_neutral",
				[2.0] = "face_neutral"
			},
			dialogue_animations = {
				[1.0] = "dialogue_shout",
				[2.0] = "dialogue_shout"
			},
			sound_events_duration = {
				[1.0] = 2.7903957366943,
				[2.0] = 5.4598956108093
			}
		},
		pes_crawl_end_event_keep_running = {
			face_animations_n = 2,
			database = "empire_soldier_crawl",
			sound_events_n = 2,
			randomize_indexes_n = 0,
			category = "cut_scene",
			dialogue_animations_n = 2,
			randomize_indexes = {},
			localization_strings = {
				[1.0] = "pes_crawl_end_event_keep_running_03",
				[2.0] = "pes_crawl_end_event_keep_running_04"
			},
			sound_events = {
				[1.0] = "pes_crawl_end_event_keep_running_03",
				[2.0] = "pes_crawl_end_event_keep_running_04"
			},
			face_animations = {
				[1.0] = "face_neutral",
				[2.0] = "face_neutral"
			},
			dialogue_animations = {
				[1.0] = "dialogue_shout",
				[2.0] = "dialogue_shout"
			},
			sound_events_duration = {
				[1.0] = 2.671041727066,
				[2.0] = 2.8433332443237
			}
		},
		pes_crawl_pub_destroyed = {
			face_animations_n = 2,
			database = "empire_soldier_crawl",
			sound_events_n = 2,
			randomize_indexes_n = 0,
			category = "cut_scene",
			dialogue_animations_n = 2,
			randomize_indexes = {},
			localization_strings = {
				[1.0] = "pes_crawl_pub_destroyed_01",
				[2.0] = "pes_crawl_pub_destroyed_04"
			},
			sound_events = {
				[1.0] = "pes_crawl_pub_destroyed_01",
				[2.0] = "pes_crawl_pub_destroyed_04"
			},
			face_animations = {
				[1.0] = "face_fear",
				[2.0] = "face_fear"
			},
			dialogue_animations = {
				[1.0] = "dialogue_shout",
				[2.0] = "dialogue_shout"
			},
			sound_events_duration = {
				[1.0] = 2.2061250209808,
				[2.0] = 4.9464998245239
			}
		},
		pes_crawl_heard_us = {
			face_animations_n = 2,
			database = "empire_soldier_crawl",
			sound_events_n = 2,
			randomize_indexes_n = 0,
			category = "cut_scene",
			dialogue_animations_n = 2,
			randomize_indexes = {},
			localization_strings = {
				[1.0] = "pes_crawl_heard_us_02",
				[2.0] = "pes_crawl_heard_us_03"
			},
			sound_events = {
				[1.0] = "pes_crawl_heard_us_02",
				[2.0] = "pes_crawl_heard_us_03"
			},
			face_animations = {
				[1.0] = "face_neutral",
				[2.0] = "face_neutral"
			},
			dialogue_animations = {
				[1.0] = "dialogue_shout",
				[2.0] = "dialogue_shout"
			},
			sound_events_duration = {
				[1.0] = 3.27308344841,
				[2.0] = 6.1093125343323
			}
		},
		pes_crawl_upstairs = {
			face_animations_n = 2,
			database = "empire_soldier_crawl",
			sound_events_n = 2,
			randomize_indexes_n = 0,
			category = "cut_scene",
			dialogue_animations_n = 2,
			randomize_indexes = {},
			localization_strings = {
				[1.0] = "pes_crawl_upstairs_01",
				[2.0] = "pes_crawl_upstairs_04"
			},
			sound_events = {
				[1.0] = "pes_crawl_upstairs_01",
				[2.0] = "pes_crawl_upstairs_04"
			},
			face_animations = {
				[1.0] = "face_neutral",
				[2.0] = "face_neutral"
			},
			dialogue_animations = {
				[1.0] = "dialogue_shout",
				[2.0] = "dialogue_shout"
			},
			sound_events_duration = {
				[1.0] = 1.5808124542236,
				[2.0] = 2.6798958778381
			}
		},
		pes_crawl_loud_crash_end_reply = {
			face_animations_n = 2,
			database = "empire_soldier_crawl",
			sound_events_n = 2,
			randomize_indexes_n = 0,
			category = "cut_scene",
			dialogue_animations_n = 2,
			randomize_indexes = {},
			localization_strings = {
				[1.0] = "pes_crawl_loud_crash_end_reply_01",
				[2.0] = "pes_crawl_loud_crash_end_reply_02"
			},
			sound_events = {
				[1.0] = "pes_crawl_loud_crash_end_reply_01",
				[2.0] = "pes_crawl_loud_crash_end_reply_02"
			},
			face_animations = {
				[1.0] = "face_neutral",
				[2.0] = "face_neutral"
			},
			dialogue_animations = {
				[1.0] = "dialogue_shout",
				[2.0] = "dialogue_shout"
			},
			sound_events_duration = {
				[1.0] = 2.3961458206177,
				[2.0] = 3.0854375362396
			}
		},
		pes_crawl_spot_third_pub = {
			face_animations_n = 2,
			database = "empire_soldier_crawl",
			sound_events_n = 2,
			randomize_indexes_n = 0,
			category = "cut_scene",
			dialogue_animations_n = 2,
			randomize_indexes = {},
			localization_strings = {
				[1.0] = "pes_crawl_spot_third_pub_03",
				[2.0] = "pes_crawl_spot_third_pub_04"
			},
			sound_events = {
				[1.0] = "pes_crawl_spot_third_pub_03",
				[2.0] = "pes_crawl_spot_third_pub_04"
			},
			face_animations = {
				[1.0] = "face_neutral",
				[2.0] = "face_neutral"
			},
			dialogue_animations = {
				[1.0] = "dialogue_shout",
				[2.0] = "dialogue_shout"
			},
			sound_events_duration = {
				[1.0] = 4.6181039810181,
				[2.0] = 6.9617085456848
			}
		},
		pes_crawl_get_out_soon = {
			face_animations_n = 2,
			database = "empire_soldier_crawl",
			sound_events_n = 2,
			randomize_indexes_n = 0,
			category = "cut_scene",
			dialogue_animations_n = 2,
			randomize_indexes = {},
			localization_strings = {
				[1.0] = "pes_crawl_get_out_soon_01",
				[2.0] = "pes_crawl_get_out_soon_02"
			},
			sound_events = {
				[1.0] = "pes_crawl_get_out_soon_01",
				[2.0] = "pes_crawl_get_out_soon_02"
			},
			face_animations = {
				[1.0] = "face_neutral",
				[2.0] = "face_neutral"
			},
			dialogue_animations = {
				[1.0] = "dialogue_shout",
				[2.0] = "dialogue_shout"
			},
			sound_events_duration = {
				[1.0] = 2.6336040496826,
				[2.0] = 2.511479139328
			}
		},
		pes_crawl_head_for_third_pub = {
			face_animations_n = 2,
			database = "empire_soldier_crawl",
			sound_events_n = 2,
			randomize_indexes_n = 0,
			category = "cut_scene",
			dialogue_animations_n = 2,
			randomize_indexes = {},
			localization_strings = {
				[1.0] = "pes_crawl_head_for_third_pub_02",
				[2.0] = "pes_crawl_head_for_third_pub_03"
			},
			sound_events = {
				[1.0] = "pes_crawl_head_for_third_pub_02",
				[2.0] = "pes_crawl_head_for_third_pub_03"
			},
			face_animations = {
				[1.0] = "face_neutral",
				[2.0] = "face_neutral"
			},
			dialogue_animations = {
				[1.0] = "dialogue_shout",
				[2.0] = "dialogue_shout"
			},
			sound_events_duration = {
				[1.0] = 3.5973334312439,
				[2.0] = 7.4273543357849
			}
		},
		pes_crawl_pub_destroyed_reaction = {
			face_animations_n = 8,
			database = "empire_soldier_crawl",
			sound_events_n = 8,
			randomize_indexes_n = 0,
			category = "level_talk_must_play",
			dialogue_animations_n = 8,
			randomize_indexes = {},
			localization_strings = {
				"pes_curse_25",
				"pes_curse_26",
				"pes_curse_15",
				"pes_curse_16",
				"pes_curse_17",
				"pes_curse_18",
				"pes_curse_19",
				"pes_curse_20"
			},
			sound_events = {
				"pes_curse_25",
				"pes_curse_26",
				"pes_curse_15",
				"pes_curse_16",
				"pes_curse_17",
				"pes_curse_18",
				"pes_curse_19",
				"pes_curse_20"
			},
			face_animations = {
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry"
			},
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			sound_events_duration = {
				2.2906041145325,
				1.0472291707993,
				1.5232291221619,
				1.5354478955269,
				1.3860312104225,
				1.2351458072662,
				1.0828750133514,
				1.4270208477974
			}
		},
		pes_crawl_spot_second_pub = {
			face_animations_n = 2,
			database = "empire_soldier_crawl",
			sound_events_n = 2,
			randomize_indexes_n = 0,
			category = "cut_scene",
			dialogue_animations_n = 2,
			randomize_indexes = {},
			localization_strings = {
				[1.0] = "pes_crawl_spot_second_pub_01",
				[2.0] = "pes_crawl_spot_second_pub_02"
			},
			sound_events = {
				[1.0] = "pes_crawl_spot_second_pub_01",
				[2.0] = "pes_crawl_spot_second_pub_02"
			},
			face_animations = {
				[1.0] = "face_neutral",
				[2.0] = "face_neutral"
			},
			dialogue_animations = {
				[1.0] = "dialogue_shout",
				[2.0] = "dialogue_shout"
			},
			sound_events_duration = {
				[1.0] = 6.8308749198914,
				[2.0] = 5.1720209121704
			}
		},
		pes_crawl_end_event_waystone = {
			face_animations_n = 2,
			database = "empire_soldier_crawl",
			sound_events_n = 2,
			randomize_indexes_n = 0,
			category = "cut_scene",
			dialogue_animations_n = 2,
			randomize_indexes = {},
			localization_strings = {
				[1.0] = "pes_crawl_end_event_waystone_01",
				[2.0] = "pes_crawl_end_event_waystone_02"
			},
			sound_events = {
				[1.0] = "pes_crawl_end_event_waystone_01",
				[2.0] = "pes_crawl_end_event_waystone_02"
			},
			face_animations = {
				[1.0] = "face_neutral",
				[2.0] = "face_neutral"
			},
			dialogue_animations = {
				[1.0] = "dialogue_shout",
				[2.0] = "dialogue_shout"
			},
			sound_events_duration = {
				[1.0] = 2.5781874656677,
				[2.0] = 5.1405210494995
			}
		},
		pes_crawl_old_path_blocked = {
			face_animations_n = 2,
			database = "empire_soldier_crawl",
			sound_events_n = 2,
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 2,
			randomize_indexes = {},
			localization_strings = {
				[1.0] = "pes_crawl_old_path_blocked_01",
				[2.0] = "pes_crawl_old_path_blocked_02"
			},
			sound_events = {
				[1.0] = "pes_crawl_old_path_blocked_01",
				[2.0] = "pes_crawl_old_path_blocked_02"
			},
			face_animations = {
				[1.0] = "face_fear",
				[2.0] = "face_fear"
			},
			dialogue_animations = {
				[1.0] = "dialogue_shout",
				[2.0] = "dialogue_shout"
			},
			sound_events_duration = {
				[1.0] = 4.6227083206177,
				[2.0] = 5.3544373512268
			}
		},
		pes_crawl_head_for_second_pub = {
			face_animations_n = 2,
			database = "empire_soldier_crawl",
			sound_events_n = 2,
			randomize_indexes_n = 0,
			category = "cut_scene",
			dialogue_animations_n = 2,
			randomize_indexes = {},
			localization_strings = {
				[1.0] = "pes_crawl_head_for_second_pub_01",
				[2.0] = "pes_crawl_head_for_second_pub_03"
			},
			sound_events = {
				[1.0] = "pes_crawl_head_for_second_pub_01",
				[2.0] = "pes_crawl_head_for_second_pub_03"
			},
			face_animations = {
				[1.0] = "face_fear",
				[2.0] = "face_fear"
			},
			dialogue_animations = {
				[1.0] = "dialogue_shout",
				[2.0] = "dialogue_shout"
			},
			sound_events_duration = {
				[1.0] = 7.0247707366943,
				[2.0] = 4.7900834083557
			}
		},
		pes_crawl_pub_district_sign = {
			face_animations_n = 2,
			database = "empire_soldier_crawl",
			sound_events_n = 2,
			randomize_indexes_n = 0,
			category = "cut_scene",
			dialogue_animations_n = 2,
			randomize_indexes = {},
			localization_strings = {
				[1.0] = "pes_crawl_pub_district_sign_03",
				[2.0] = "pes_crawl_pub_district_sign_04"
			},
			sound_events = {
				[1.0] = "pes_crawl_pub_district_sign_03",
				[2.0] = "pes_crawl_pub_district_sign_04"
			},
			face_animations = {
				[1.0] = "face_neutral",
				[2.0] = "face_neutral"
			},
			dialogue_animations = {
				[1.0] = "dialogue_shout",
				[2.0] = "dialogue_shout"
			},
			sound_events_duration = {
				[1.0] = 4.6612915992737,
				[2.0] = 7.3268332481384
			}
		},
		pes_crawl_loud_crash_interact = {
			face_animations_n = 1,
			database = "empire_soldier_crawl",
			sound_events_n = 1,
			category = "cut_scene",
			dialogue_animations_n = 1,
			localization_strings = {
				[1.0] = "pes_crawl_loud_crash_interact_01"
			},
			sound_events = {
				[1.0] = "pes_crawl_loud_crash_interact_01"
			},
			face_animations = {
				[1.0] = "face_neutral"
			},
			dialogue_animations = {
				[1.0] = "dialogue_shout"
			},
			sound_events_duration = {
				[1.0] = 3.034437417984
			}
		},
		pes_crawl_pub_brazers = {
			face_animations_n = 2,
			database = "empire_soldier_crawl",
			sound_events_n = 2,
			randomize_indexes_n = 0,
			category = "cut_scene",
			dialogue_animations_n = 2,
			randomize_indexes = {},
			localization_strings = {
				[1.0] = "pes_crawl_pub_brazers_01",
				[2.0] = "pes_crawl_pub_brazers_03"
			},
			sound_events = {
				[1.0] = "pes_crawl_pub_brazers_01",
				[2.0] = "pes_crawl_pub_brazers_03"
			},
			face_animations = {
				[1.0] = "face_fear",
				[2.0] = "face_fear"
			},
			dialogue_animations = {
				[1.0] = "dialogue_shout",
				[2.0] = "dialogue_shout"
			},
			sound_events_duration = {
				[1.0] = 5.2848958969116,
				[2.0] = 7.1754374504089
			}
		},
		pes_crawl_cheers = {
			face_animations_n = 4,
			database = "empire_soldier_crawl",
			sound_events_n = 4,
			randomize_indexes_n = 0,
			category = "level_talk_must_play",
			dialogue_animations_n = 4,
			randomize_indexes = {},
			localization_strings = {
				"pes_crawl_cheers_01",
				"pes_crawl_cheers_02",
				"pes_crawl_cheers_03",
				"pes_crawl_cheers_04"
			},
			sound_events = {
				"pes_crawl_cheers_01",
				"pes_crawl_cheers_02",
				"pes_crawl_cheers_03",
				"pes_crawl_cheers_04"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			sound_events_duration = {
				5.8998970985413,
				5.0097708702087,
				3.5391249656677,
				6.3536875247955
			}
		},
		pes_crawl_loud_crash_reply = {
			face_animations_n = 1,
			database = "empire_soldier_crawl",
			sound_events_n = 1,
			category = "cut_scene",
			dialogue_animations_n = 1,
			localization_strings = {
				[1.0] = "pes_crawl_loud_crash_reply_01"
			},
			sound_events = {
				[1.0] = "pes_crawl_loud_crash_reply_01"
			},
			face_animations = {
				[1.0] = "face_neutral"
			},
			dialogue_animations = {
				[1.0] = "dialogue_shout"
			},
			sound_events_duration = {
				[1.0] = 3.2838957309723
			}
		},
		pes_crawl_slaughter = {
			face_animations_n = 2,
			database = "empire_soldier_crawl",
			sound_events_n = 2,
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 2,
			randomize_indexes = {},
			localization_strings = {
				[1.0] = "pes_crawl_slaughter_02",
				[2.0] = "pes_crawl_slaughter_04"
			},
			sound_events = {
				[1.0] = "pes_crawl_slaughter_02",
				[2.0] = "pes_crawl_slaughter_04"
			},
			face_animations = {
				[1.0] = "face_neutral",
				[2.0] = "face_neutral"
			},
			dialogue_animations = {
				[1.0] = "dialogue_shout",
				[2.0] = "dialogue_shout"
			},
			sound_events_duration = {
				[1.0] = 7.0691251754761,
				[2.0] = 4.0572290420532
			}
		},
		pes_crawl_end_event_way_open = {
			face_animations_n = 2,
			database = "empire_soldier_crawl",
			sound_events_n = 2,
			randomize_indexes_n = 0,
			category = "cut_scene",
			dialogue_animations_n = 2,
			randomize_indexes = {},
			localization_strings = {
				[1.0] = "pes_crawl_end_event_way_open_01",
				[2.0] = "pes_crawl_end_event_way_open_02"
			},
			sound_events = {
				[1.0] = "pes_crawl_end_event_way_open_01",
				[2.0] = "pes_crawl_end_event_way_open_02"
			},
			face_animations = {
				[1.0] = "face_neutral",
				[2.0] = "face_neutral"
			},
			dialogue_animations = {
				[1.0] = "dialogue_shout",
				[2.0] = "dialogue_shout"
			},
			sound_events_duration = {
				[1.0] = 3.2476665973663,
				[2.0] = 2.8533229827881
			}
		},
		pes_crawl_end_event_keep_quiet = {
			face_animations_n = 2,
			database = "empire_soldier_crawl",
			sound_events_n = 2,
			randomize_indexes_n = 0,
			category = "level_talk_must_play",
			dialogue_animations_n = 2,
			randomize_indexes = {},
			localization_strings = {
				[1.0] = "pes_crawl_end_event_keep_quiet_01",
				[2.0] = "pes_crawl_end_event_keep_quiet_02"
			},
			sound_events = {
				[1.0] = "pes_crawl_end_event_keep_quiet_01",
				[2.0] = "pes_crawl_end_event_keep_quiet_02"
			},
			face_animations = {
				[1.0] = "face_neutral",
				[2.0] = "face_neutral"
			},
			dialogue_animations = {
				[1.0] = "dialogue_shout",
				[2.0] = "dialogue_shout"
			},
			sound_events_duration = {
				[1.0] = 5.4045414924622,
				[2.0] = 4.3557710647583
			}
		},
		pes_crawl_shortcut = {
			face_animations_n = 2,
			database = "empire_soldier_crawl",
			sound_events_n = 2,
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 2,
			randomize_indexes = {},
			localization_strings = {
				[1.0] = "pes_crawl_shortcut_02",
				[2.0] = "pes_crawl_shortcut_03"
			},
			sound_events = {
				[1.0] = "pes_crawl_shortcut_02",
				[2.0] = "pes_crawl_shortcut_03"
			},
			face_animations = {
				[1.0] = "face_fear",
				[2.0] = "face_fear"
			},
			dialogue_animations = {
				[1.0] = "dialogue_shout",
				[2.0] = "dialogue_shout"
			},
			sound_events_duration = {
				[1.0] = 4.2820625305176,
				[2.0] = 4.2898960113525
			}
		},
		pes_crawl_have_a_drink = {
			face_animations_n = 2,
			database = "empire_soldier_crawl",
			sound_events_n = 2,
			randomize_indexes_n = 0,
			category = "cut_scene",
			dialogue_animations_n = 2,
			randomize_indexes = {},
			localization_strings = {
				[1.0] = "pes_crawl_have_a_drink_01",
				[2.0] = "pes_crawl_have_a_drink_03"
			},
			sound_events = {
				[1.0] = "pes_crawl_have_a_drink_01",
				[2.0] = "pes_crawl_have_a_drink_03"
			},
			face_animations = {
				[1.0] = "face_neutral",
				[2.0] = "face_neutral"
			},
			dialogue_animations = {
				[1.0] = "dialogue_shout",
				[2.0] = "dialogue_shout"
			},
			sound_events_duration = {
				[1.0] = 3.279833316803,
				[2.0] = 4.9051251411438
			}
		}
	})
end
