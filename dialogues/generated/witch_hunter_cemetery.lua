return function ()
	define_rule({
		name = "pwh_objective_cemetery_through_crypt_a",
		response = "pwh_objective_cemetery_through_crypt_a",
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
				"objective_cemetery_through_crypt_a"
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
				"time_since_objective_cemetery_through_crypt_a",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_objective_cemetery_through_crypt_a",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwh_objective_cemetery_spotting_mausoleum",
		response = "pwh_objective_cemetery_spotting_mausoleum",
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
				"objective_cemetery_spotting_mausoleum"
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
				"time_since_objective_cemetery_spotting_mausoleum",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_objective_cemetery_spotting_mausoleum",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwh_objective_cemetery_spotting_plague_brew_stains",
		response = "pwh_objective_cemetery_spotting_plague_brew_stains",
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
				"objective_cemetery_spotting_plague_brew_stains"
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
				"time_since_cemetery_spotting_plague_brew_stains",
				OP.TIMEDIFF,
				OP.GT,
				60
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_cemetery_spotting_plague_brew_stains",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pwh_objective_cemetery_spotting_crypt_maze",
		response = "pwh_objective_cemetery_spotting_crypt_maze",
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
				"objective_cemetery_spotting_crypt_maze"
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
				"time_since_objective_cemetery_spotting_crypt_maze",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_objective_cemetery_spotting_crypt_maze",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwh_objective_cemetery_through_crypt_b",
		response = "pwh_objective_cemetery_through_crypt_b",
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
				"objective_cemetery_through_crypt_b"
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
				"time_since_objective_cemetery_through_crypt_b",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_objective_cemetery_through_crypt_b",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwh_objective_cemetery_spotting_graveyard",
		response = "pwh_objective_cemetery_spotting_graveyard",
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
				"objective_cemetery_spotting_graveyard"
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
				"time_since_objective_cemetery_spotting_graveyard",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_objective_cemetery_spotting_graveyard",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwh_objective_cemetery_spotting_hedge_maze",
		response = "pwh_objective_cemetery_spotting_hedge_maze",
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
				"objective_cemetery_spotting_hedge_maze"
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
				"time_since_objective_cemetery_spotting_hedge_maze",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_objective_cemetery_spotting_hedge_maze",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwh_objective_cemetery_spotting_plague_pyre",
		response = "pwh_objective_cemetery_spotting_plague_pyre",
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
				"objective_cemetery_spotting_plague_pyre"
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
				"time_since_objective_cemetery_spotting_plague_pyre",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_objective_cemetery_spotting_plague_pyre",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwh_objective_cemetery_through_crypt_c",
		response = "pwh_objective_cemetery_through_crypt_c",
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
				"objective_cemetery_through_crypt_c"
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
				"time_since_objective_cemetery_through_crypt_c",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_objective_cemetery_through_crypt_c",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwh_objective_cemetery_spotting_skaven_tunnels",
		response = "pwh_objective_cemetery_spotting_skaven_tunnels",
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
				"objective_cemetery_spotting_skaven_tunnel"
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
				"time_since_objective_cemetery_spotting_skaven_tunnel",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_objective_cemetery_spotting_skaven_tunnel",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwh_objective_cemetery_spotting_plague_cauldron",
		response = "pwh_objective_cemetery_spotting_plague_cauldron",
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
				"objective_cemetery_spotting_plague_cauldron"
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
				"time_since_objective_cemetery_spotting_plague_cauldron",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_objective_cemetery_spotting_plague_cauldron",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwh_objective_cemetery_destroyed_plague_cauldron",
		response = "pwh_objective_cemetery_destroyed_plague_cauldron",
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
				"objective_cemetery_destroyed_plague_cauldron"
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
				"time_since_objective_cemetery_destroyed_plague_cauldron",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_objective_cemetery_destroyed_plague_cauldron",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwh_objective_cemetery_spotting_victim",
		response = "pwh_objective_cemetery_spotting_victim",
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
				"objective_cemetery_spotting_victim"
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
				"time_since_objective_cemetery_spotting_victim",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_objective_cemetery_spotting_victim",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwh_objective_cemetery_bringing_down_first_attachment",
		response = "pwh_objective_cemetery_bringing_down_first_attachment",
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
				"objective_cemetery_bringing_down_first_attachment"
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
				"time_since_objective_cemetery_bringing_down_first_attachment",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_objective_cemetery_bringing_down_first_attachment",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwh_objective_cemetery_bringing_down_second_attachment",
		response = "pwh_objective_cemetery_bringing_down_second_attachment",
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
				"objective_cemetery_bringing_down_second_attachment"
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
				"time_since_objective_cemetery_bringing_down_second_attachment",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_objective_cemetery_bringing_down_second_attachment",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwh_objective_cemetery_bringing_down_third_attachment",
		response = "pwh_objective_cemetery_bringing_down_third_attachment",
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
				"objective_cemetery_bringing_down_third_attachment"
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
				"time_since_objective_cemetery_bringing_down_third_attachment",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_objective_cemetery_bringing_down_third_attachment",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwh_objective_cemetery_bringing_down_fourth_attachment",
		response = "pwh_objective_cemetery_bringing_down_fourth_attachment",
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
				"objective_cemetery_bringing_down_fourth_attachment"
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
				"time_since_objective_cemetery_bringing_down_fourth_attachment",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_objective_cemetery_bringing_down_fourth_attachment",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwh_objective_cemetery_spotting_the_attachements",
		response = "pwh_objective_cemetery_spotting_the_attachements",
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
				"objective_cemetery_spotting_the_attachements"
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
				"time_since_objective_cemetery_spotting_the_attachements",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_objective_cemetery_spotting_the_attachements",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwh_objective_cemetery_done",
		response = "pwh_objective_cemetery_done",
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
				"objective_cemetery_done"
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
				"time_since_objective_cemetery_done",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_objective_cemetery_done",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwh_cemetary_intro",
		response = "pwh_cemetary_intro",
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
				"objective_cemetery_intro"
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
				"time_since_cemetary_intro",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_cemetary_intro",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwh_cemetary_intro_b",
		response = "pwh_cemetary_intro_b",
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
				"cemetary_intro"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			},
			{
				"faction_memory",
				"time_since_cemetary_intro_b",
				OP.TIMEDIFF,
				OP.GT,
				1
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_cemetary_intro_b",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pwh_cemetary_intro_c",
		response = "pwh_cemetary_intro_c",
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
				"cemetary_intro_b"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			},
			{
				"faction_memory",
				"time_since_cemetary_intro_c",
				OP.TIMEDIFF,
				OP.GT,
				1
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_cemetary_intro_c",
				OP.TIMESET
			}
		}
	})
	add_dialogues({
		pwh_objective_cemetery_spotting_plague_pyre = {
			face_animations_n = 4,
			database = "witch_hunter_cemetery",
			sound_events_n = 4,
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 4,
			randomize_indexes = {},
			localization_strings = {
				"pwh_objective_cemetery_spotting_plague_pyre_01",
				"pwh_objective_cemetery_spotting_plague_pyre_02",
				"pwh_objective_cemetery_spotting_plague_pyre_03",
				"pwh_objective_cemetery_spotting_plague_pyre_04"
			},
			sound_events = {
				"pwh_objective_cemetery_spotting_plague_pyre_01",
				"pwh_objective_cemetery_spotting_plague_pyre_02",
				"pwh_objective_cemetery_spotting_plague_pyre_03",
				"pwh_objective_cemetery_spotting_plague_pyre_04"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			sound_events_duration = {
				2.957750082016,
				4.9262709617615,
				1.663645863533,
				3.326708316803
			}
		},
		pwh_objective_cemetery_spotting_hedge_maze = {
			face_animations_n = 4,
			database = "witch_hunter_cemetery",
			sound_events_n = 4,
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 4,
			randomize_indexes = {},
			localization_strings = {
				"pwh_objective_cemetery_spotting_hedge_maze_01",
				"pwh_objective_cemetery_spotting_hedge_maze_02",
				"pwh_objective_cemetery_spotting_hedge_maze_03",
				"pwh_objective_cemetery_spotting_hedge_maze_04"
			},
			sound_events = {
				"pwh_objective_cemetery_spotting_hedge_maze_01",
				"pwh_objective_cemetery_spotting_hedge_maze_02",
				"pwh_objective_cemetery_spotting_hedge_maze_03",
				"pwh_objective_cemetery_spotting_hedge_maze_04"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			sound_events_duration = {
				1.4812707901001,
				4.1481041908264,
				3.7192709445953,
				2.8166041374206
			}
		},
		pwh_objective_cemetery_through_crypt_c = {
			face_animations_n = 4,
			database = "witch_hunter_cemetery",
			sound_events_n = 4,
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 4,
			randomize_indexes = {},
			localization_strings = {
				"pwh_objective_cemetery_through_crypt_c_01",
				"pwh_objective_cemetery_through_crypt_c_02",
				"pwh_objective_cemetery_through_crypt_c_03",
				"pwh_objective_cemetery_through_crypt_c_04"
			},
			sound_events = {
				"pwh_objective_cemetery_through_crypt_c_01",
				"pwh_objective_cemetery_through_crypt_c_02",
				"pwh_objective_cemetery_through_crypt_c_03",
				"pwh_objective_cemetery_through_crypt_c_04"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			sound_events_duration = {
				2.5758125782013,
				1.4875416755676,
				4.3263959884644,
				2.6845417022705
			}
		},
		pwh_objective_cemetery_spotting_skaven_tunnels = {
			face_animations_n = 4,
			database = "witch_hunter_cemetery",
			sound_events_n = 4,
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 4,
			randomize_indexes = {},
			localization_strings = {
				"pwh_objective_cemetery_spotting_skaven_tunnels_01",
				"pwh_objective_cemetery_spotting_skaven_tunnels_02",
				"pwh_objective_cemetery_spotting_skaven_tunnels_03",
				"pwh_objective_cemetery_spotting_skaven_tunnels_04"
			},
			sound_events = {
				"pwh_objective_cemetery_spotting_skaven_tunnels_01",
				"pwh_objective_cemetery_spotting_skaven_tunnels_02",
				"pwh_objective_cemetery_spotting_skaven_tunnels_03",
				"pwh_objective_cemetery_spotting_skaven_tunnels_04"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			sound_events_duration = {
				4.5404167175293,
				2.6912708282471,
				3.8680624961853,
				4.4428334236145
			}
		},
		pwh_objective_cemetery_spotting_graveyard = {
			face_animations_n = 4,
			database = "witch_hunter_cemetery",
			sound_events_n = 4,
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 4,
			randomize_indexes = {},
			localization_strings = {
				"pwh_objective_cemetery_spotting_graveyard_01",
				"pwh_objective_cemetery_spotting_graveyard_02",
				"pwh_objective_cemetery_spotting_graveyard_03",
				"pwh_objective_cemetery_spotting_graveyard_04"
			},
			sound_events = {
				"pwh_objective_cemetery_spotting_graveyard_01",
				"pwh_objective_cemetery_spotting_graveyard_02",
				"pwh_objective_cemetery_spotting_graveyard_03",
				"pwh_objective_cemetery_spotting_graveyard_04"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			sound_events_duration = {
				2.2697083950043,
				5.6989374160767,
				2.9831459522247,
				4.7641668319702
			}
		},
		pwh_objective_cemetery_spotting_the_attachements = {
			face_animations_n = 4,
			database = "witch_hunter_cemetery",
			sound_events_n = 4,
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 4,
			randomize_indexes = {},
			localization_strings = {
				"pwh_objective_cemetery_spotting_the_attachements_01",
				"pwh_objective_cemetery_spotting_the_attachements_02",
				"pwh_objective_cemetery_spotting_the_attachements_03",
				"pwh_objective_cemetery_spotting_the_attachements_04"
			},
			sound_events = {
				"pwh_objective_cemetery_spotting_the_attachements_01",
				"pwh_objective_cemetery_spotting_the_attachements_02",
				"pwh_objective_cemetery_spotting_the_attachements_03",
				"pwh_objective_cemetery_spotting_the_attachements_04"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			sound_events_duration = {
				1.8732291460037,
				3.2313332557678,
				3.3983540534973,
				2.7446458339691
			}
		},
		pwh_cemetary_intro_c = {
			face_animations_n = 2,
			database = "witch_hunter_cemetery",
			sound_events_n = 2,
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 2,
			randomize_indexes = {},
			localization_strings = {
				[1.0] = "pwh_cemetary_intro_c_01",
				[2.0] = "pwh_cemetary_intro_c_02"
			},
			sound_events = {
				[1.0] = "pwh_cemetary_intro_c_01",
				[2.0] = "pwh_cemetary_intro_c_02"
			},
			face_animations = {
				[1.0] = "face_neutral",
				[2.0] = "face_neutral"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk",
				[2.0] = "dialogue_talk"
			},
			sound_events_duration = {
				[1.0] = 5.1279373168945,
				[2.0] = 4.3689999580383
			}
		},
		pwh_cemetary_intro_b = {
			face_animations_n = 2,
			database = "witch_hunter_cemetery",
			sound_events_n = 2,
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 2,
			randomize_indexes = {},
			localization_strings = {
				[1.0] = "pwh_cemetary_intro_b_01",
				[2.0] = "pwh_cemetary_intro_b_02"
			},
			sound_events = {
				[1.0] = "pwh_cemetary_intro_b_01",
				[2.0] = "pwh_cemetary_intro_b_02"
			},
			face_animations = {
				[1.0] = "face_neutral",
				[2.0] = "face_neutral"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk",
				[2.0] = "dialogue_talk"
			},
			sound_events_duration = {
				[1.0] = 3.0743958950043,
				[2.0] = 3.198979139328
			}
		},
		pwh_objective_cemetery_spotting_plague_brew_stains = {
			face_animations_n = 4,
			database = "witch_hunter_cemetery",
			sound_events_n = 4,
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 4,
			randomize_indexes = {},
			localization_strings = {
				"pwh_objective_cemetery_spotting_plague_brew_stains_01",
				"pwh_objective_cemetery_spotting_plague_brew_stains_02",
				"pwh_objective_cemetery_spotting_plague_brew_stains_03",
				"pwh_objective_cemetery_spotting_plague_brew_stains_04"
			},
			sound_events = {
				"pwh_objective_cemetery_spotting_plague_brew_stains_01",
				"pwh_objective_cemetery_spotting_plague_brew_stains_02",
				"pwh_objective_cemetery_spotting_plague_brew_stains_03",
				"pwh_objective_cemetery_spotting_plague_brew_stains_04"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			sound_events_duration = {
				2.2494583129883,
				1.85056245327,
				4.1753540039063,
				4
			}
		},
		pwh_objective_cemetery_bringing_down_third_attachment = {
			face_animations_n = 4,
			database = "witch_hunter_cemetery",
			sound_events_n = 4,
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 4,
			randomize_indexes = {},
			localization_strings = {
				"pwh_objective_cemetery_bringing_down_third_attachment_01",
				"pwh_objective_cemetery_bringing_down_third_attachment_02",
				"pwh_objective_cemetery_bringing_down_third_attachment_03",
				"pwh_objective_cemetery_bringing_down_third_attachment_04"
			},
			sound_events = {
				"pwh_objective_cemetery_bringing_down_third_attachment_01",
				"pwh_objective_cemetery_bringing_down_third_attachment_02",
				"pwh_objective_cemetery_bringing_down_third_attachment_03",
				"pwh_objective_cemetery_bringing_down_third_attachment_04"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			sound_events_duration = {
				0.58908331394196,
				1.4561250209808,
				1.0817083120346,
				0.99418747425079
			}
		},
		pwh_cemetary_intro = {
			face_animations_n = 2,
			database = "witch_hunter_cemetery",
			sound_events_n = 2,
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 2,
			randomize_indexes = {},
			localization_strings = {
				[1.0] = "pwh_cemetary_intro_a_01",
				[2.0] = "pwh_cemetary_intro_a_02"
			},
			sound_events = {
				[1.0] = "pwh_cemetary_intro_a_01",
				[2.0] = "pwh_cemetary_intro_a_02"
			},
			face_animations = {
				[1.0] = "face_neutral",
				[2.0] = "face_neutral"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk",
				[2.0] = "dialogue_talk"
			},
			sound_events_duration = {
				[1.0] = 2.5473749637604,
				[2.0] = 2.4183750152588
			}
		},
		pwh_objective_cemetery_done = {
			face_animations_n = 4,
			database = "witch_hunter_cemetery",
			sound_events_n = 4,
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 4,
			randomize_indexes = {},
			localization_strings = {
				"pwh_objective_cemetery_done_01",
				"pwh_objective_cemetery_done_02",
				"pwh_objective_cemetery_done_03",
				"pwh_objective_cemetery_done_04"
			},
			sound_events = {
				"pwh_objective_cemetery_done_01",
				"pwh_objective_cemetery_done_02",
				"pwh_objective_cemetery_done_03",
				"pwh_objective_cemetery_done_04"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			sound_events_duration = {
				5.5948333740234,
				4.2688541412353,
				4.2170834541321,
				7.589250087738
			}
		},
		pwh_objective_cemetery_bringing_down_second_attachment = {
			face_animations_n = 4,
			database = "witch_hunter_cemetery",
			sound_events_n = 4,
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 4,
			randomize_indexes = {},
			localization_strings = {
				"pwh_objective_cemetery_bringing_down_second_attachment_01",
				"pwh_objective_cemetery_bringing_down_second_attachment_02",
				"pwh_objective_cemetery_bringing_down_second_attachment_03",
				"pwh_objective_cemetery_bringing_down_second_attachment_04"
			},
			sound_events = {
				"pwh_objective_cemetery_bringing_down_second_attachment_01",
				"pwh_objective_cemetery_bringing_down_second_attachment_02",
				"pwh_objective_cemetery_bringing_down_second_attachment_03",
				"pwh_objective_cemetery_bringing_down_second_attachment_04"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			sound_events_duration = {
				1,
				1.2432082891464,
				0.86774998903275,
				1.0190833806992
			}
		},
		pwh_objective_cemetery_bringing_down_fourth_attachment = {
			face_animations_n = 4,
			database = "witch_hunter_cemetery",
			sound_events_n = 4,
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 4,
			randomize_indexes = {},
			localization_strings = {
				"pwh_objective_cemetery_bringing_down_fourth_attachment_01",
				"pwh_objective_cemetery_bringing_down_fourth_attachment_02",
				"pwh_objective_cemetery_bringing_down_fourth_attachment_03",
				"pwh_objective_cemetery_bringing_down_fourth_attachment_04"
			},
			sound_events = {
				"pwh_objective_cemetery_bringing_down_fourth_attachment_01",
				"pwh_objective_cemetery_bringing_down_fourth_attachment_02",
				"pwh_objective_cemetery_bringing_down_fourth_attachment_03",
				"pwh_objective_cemetery_bringing_down_fourth_attachment_04"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			sound_events_duration = {
				1.0233124494553,
				1.1337292194366,
				0.76241666078568,
				1.1874166727066
			}
		},
		pwh_objective_cemetery_spotting_mausoleum = {
			face_animations_n = 4,
			database = "witch_hunter_cemetery",
			sound_events_n = 4,
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 4,
			randomize_indexes = {},
			localization_strings = {
				"pwh_objective_cemetery_spotting_mausoleum_01",
				"pwh_objective_cemetery_spotting_mausoleum_02",
				"pwh_objective_cemetery_spotting_mausoleum_03",
				"pwh_objective_cemetery_spotting_mausoleum_04"
			},
			sound_events = {
				"pwh_objective_cemetery_spotting_mausoleum_01",
				"pwh_objective_cemetery_spotting_mausoleum_02",
				"pwh_objective_cemetery_spotting_mausoleum_03",
				"pwh_objective_cemetery_spotting_mausoleum_04"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			sound_events_duration = {
				5.9460206031799,
				4.5,
				6.0250205993652,
				7.6613750457764
			}
		},
		pwh_objective_cemetery_bringing_down_first_attachment = {
			face_animations_n = 4,
			database = "witch_hunter_cemetery",
			sound_events_n = 4,
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 4,
			randomize_indexes = {},
			localization_strings = {
				"pwh_objective_cemetery_bringing_down_first_attachment_01",
				"pwh_objective_cemetery_bringing_down_first_attachment_02",
				"pwh_objective_cemetery_bringing_down_first_attachment_03",
				"pwh_objective_cemetery_bringing_down_first_attachment_04"
			},
			sound_events = {
				"pwh_objective_cemetery_bringing_down_first_attachment_01",
				"pwh_objective_cemetery_bringing_down_first_attachment_02",
				"pwh_objective_cemetery_bringing_down_first_attachment_03",
				"pwh_objective_cemetery_bringing_down_first_attachment_04"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			sound_events_duration = {
				0.72791665792465,
				0.77249997854233,
				1.4642708301544,
				1.0861250162125
			}
		},
		pwh_objective_cemetery_destroyed_plague_cauldron = {
			face_animations_n = 4,
			database = "witch_hunter_cemetery",
			sound_events_n = 4,
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 4,
			randomize_indexes = {},
			localization_strings = {
				"pwh_objective_cemetery_destroyed_plague_cauldron_01",
				"pwh_objective_cemetery_destroyed_plague_cauldron_02",
				"pwh_objective_cemetery_destroyed_plague_cauldron_03",
				"pwh_objective_cemetery_destroyed_plague_cauldron_04"
			},
			sound_events = {
				"pwh_objective_cemetery_destroyed_plague_cauldron_01",
				"pwh_objective_cemetery_destroyed_plague_cauldron_02",
				"pwh_objective_cemetery_destroyed_plague_cauldron_03",
				"pwh_objective_cemetery_destroyed_plague_cauldron_04"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			sound_events_duration = {
				2.2001249790192,
				3.6500208377838,
				2.7086250782013,
				2.094229221344
			}
		},
		pwh_objective_cemetery_spotting_plague_cauldron = {
			face_animations_n = 4,
			database = "witch_hunter_cemetery",
			sound_events_n = 4,
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 4,
			randomize_indexes = {},
			localization_strings = {
				"pwh_objective_cemetery_spotting_plague_cauldron_01",
				"pwh_objective_cemetery_spotting_plague_cauldron_02",
				"pwh_objective_cemetery_spotting_plague_cauldron_03",
				"pwh_objective_cemetery_spotting_plague_cauldron_04"
			},
			sound_events = {
				"pwh_objective_cemetery_spotting_plague_cauldron_01",
				"pwh_objective_cemetery_spotting_plague_cauldron_02",
				"pwh_objective_cemetery_spotting_plague_cauldron_03",
				"pwh_objective_cemetery_spotting_plague_cauldron_04"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			sound_events_duration = {
				7.7375206947327,
				3.8055832386017,
				4.9625000953674,
				6.079062461853
			}
		},
		pwh_objective_cemetery_spotting_crypt_maze = {
			face_animations_n = 4,
			database = "witch_hunter_cemetery",
			sound_events_n = 4,
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 4,
			randomize_indexes = {},
			localization_strings = {
				"pwh_objective_cemetery_spotting_crypt_maze_01",
				"pwh_objective_cemetery_spotting_crypt_maze_02",
				"pwh_objective_cemetery_spotting_crypt_maze_03",
				"pwh_objective_cemetery_spotting_crypt_maze_04"
			},
			sound_events = {
				"pwh_objective_cemetery_spotting_crypt_maze_01",
				"pwh_objective_cemetery_spotting_crypt_maze_02",
				"pwh_objective_cemetery_spotting_crypt_maze_03",
				"pwh_objective_cemetery_spotting_crypt_maze_04"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			sound_events_duration = {
				4.8718957901001,
				6.2526459693909,
				3.8631665706634,
				3.8430416584015
			}
		},
		pwh_objective_cemetery_through_crypt_a = {
			face_animations_n = 4,
			database = "witch_hunter_cemetery",
			sound_events_n = 4,
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 4,
			randomize_indexes = {},
			localization_strings = {
				"pwh_objective_cemetery_through_crypt_a_01",
				"pwh_objective_cemetery_through_crypt_a_02",
				"pwh_objective_cemetery_through_crypt_a_03",
				"pwh_objective_cemetery_through_crypt_a_04"
			},
			sound_events = {
				"pwh_objective_cemetery_through_crypt_a_01",
				"pwh_objective_cemetery_through_crypt_a_02",
				"pwh_objective_cemetery_through_crypt_a_03",
				"pwh_objective_cemetery_through_crypt_a_04"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			sound_events_duration = {
				1.6287916898727,
				1.7018749713898,
				5.3765830993652,
				1.9585208892822
			}
		},
		pwh_objective_cemetery_spotting_victim = {
			face_animations_n = 4,
			database = "witch_hunter_cemetery",
			sound_events_n = 4,
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 4,
			randomize_indexes = {},
			localization_strings = {
				"pwh_objective_cemetery_spotting_victim_01",
				"pwh_objective_cemetery_spotting_victim_02",
				"pwh_objective_cemetery_spotting_victim_03",
				"pwh_objective_cemetery_spotting_victim_04"
			},
			sound_events = {
				"pwh_objective_cemetery_spotting_victim_01",
				"pwh_objective_cemetery_spotting_victim_02",
				"pwh_objective_cemetery_spotting_victim_03",
				"pwh_objective_cemetery_spotting_victim_04"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			sound_events_duration = {
				3.9086041450501,
				4.5425624847412,
				4.5819997787476,
				4.9493541717529
			}
		},
		pwh_objective_cemetery_through_crypt_b = {
			face_animations_n = 4,
			database = "witch_hunter_cemetery",
			sound_events_n = 4,
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 4,
			randomize_indexes = {},
			localization_strings = {
				"pwh_objective_cemetery_through_crypt_b_01",
				"pwh_objective_cemetery_through_crypt_b_02",
				"pwh_objective_cemetery_through_crypt_b_03",
				"pwh_objective_cemetery_through_crypt_b_04"
			},
			sound_events = {
				"pwh_objective_cemetery_through_crypt_b_01",
				"pwh_objective_cemetery_through_crypt_b_02",
				"pwh_objective_cemetery_through_crypt_b_03",
				"pwh_objective_cemetery_through_crypt_b_04"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			sound_events_duration = {
				0.79781252145767,
				2.3751666545868,
				2.7127499580383,
				2.2706251144409
			}
		}
	})
end
