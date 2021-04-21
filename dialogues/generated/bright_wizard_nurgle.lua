return function ()
	define_rule({
		name = "pbw_level_nurgle_ruins",
		response = "pbw_level_nurgle_ruins",
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
				"level_nurgle_ruins"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"enemies_close",
				OP.EQ,
				0
			},
			{
				"faction_memory",
				"level_nurgle_ruins",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"level_nurgle_ruins",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pbw_level_nurgle_outcast_lair",
		response = "pbw_level_nurgle_outcast_lair",
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
				"level_nurgle_outcast_lair"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"enemies_close",
				OP.EQ,
				0
			},
			{
				"faction_memory",
				"level_nurgle_outcast_lair",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"level_nurgle_outcast_lair",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pbw_level_nurgle_river",
		response = "pbw_level_nurgle_river",
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
				"level_nurgle_river"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"enemies_close",
				OP.EQ,
				0
			},
			{
				"faction_memory",
				"level_nurgle_river",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"level_nurgle_river",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pbw_level_nurgle_drop_down",
		response = "pbw_level_nurgle_drop_down",
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
				"level_nurgle_drop_down"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"enemies_close",
				OP.EQ,
				0
			},
			{
				"faction_memory",
				"level_nurgle_drop_down",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"level_nurgle_drop_down",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pbw_level_nurgle_swift_river",
		response = "pbw_level_nurgle_swift_river",
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
				"level_nurgle_swift_river"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"level_nurgle_swift_river",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"level_nurgle_swift_river",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pbw_level_nurgle_nurglification",
		response = "pbw_level_nurgle_nurglification",
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
				"level_nurgle_nurglification"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"enemies_close",
				OP.EQ,
				0
			},
			{
				"faction_memory",
				"level_nurgle_nurglification",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"level_nurgle_nurglification",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pbw_level_nurgle_nurglification_increase",
		response = "pbw_level_nurgle_nurglification_increase",
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
				"level_nurgle_nurglification_increase"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"enemies_close",
				OP.EQ,
				0
			},
			{
				"faction_memory",
				"level_nurgle_nurglification_increase",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"level_nurgle_nurglification_increase",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pbw_level_nurgle_skaven_collapse",
		response = "pbw_level_nurgle_skaven_collapse",
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
				"level_nurgle_skaven_collapse"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"enemies_close",
				OP.EQ,
				0
			},
			{
				"faction_memory",
				"level_nurgle_skaven_collapse",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"level_nurgle_skaven_collapse",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pbw_level_nurgle_digsite",
		response = "pbw_level_nurgle_digsite",
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
				"level_nurgle_digsite"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"enemies_close",
				OP.EQ,
				0
			},
			{
				"faction_memory",
				"level_nurgle_digsite",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"level_nurgle_digsite",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pbw_level_nurgle_spotting_objective",
		response = "pbw_level_nurgle_spotting_objective",
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
				"level_nurgle_spotting_objective"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"level_nurgle_spotting_objective",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"level_nurgle_spotting_objective",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pbw_level_nurgle_bury_objective",
		response = "pbw_level_nurgle_bury_objective",
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
				"level_nurgle_bury_objective"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"level_nurgle_bury_objective",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"level_nurgle_bury_objective",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pbw_level_nurgle_coming_down",
		response = "pbw_level_nurgle_coming_down",
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
				"level_nurgle_coming_down"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"level_nurgle_coming_down",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"level_nurgle_coming_down",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pbw_nurgle_intro_a",
		response = "pbw_nurgle_intro_a",
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
				"nurgle_intro_a"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"nurgle_intro_a",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"nurgle_intro_a",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pbw_nurgle_intro_b",
		response = "pbw_nurgle_intro_b",
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
				"nurgle_intro_a"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"nurgle_intro_b",
				OP.TIMEDIFF,
				OP.GT,
				1
			}
		},
		on_done = {
			{
				"faction_memory",
				"nurgle_intro_b",
				OP.TIMESET
			}
		}
	})
	add_dialogues({
		pbw_nurgle_intro_a = {
			face_animations_n = 2,
			database = "bright_wizard_nurgle",
			sound_events_n = 2,
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 2,
			randomize_indexes = {},
			localization_strings = {
				[1.0] = "pbw_nurgle_intro_a_01",
				[2.0] = "pbw_nurgle_intro_a_02"
			},
			sound_events = {
				[1.0] = "pbw_nurgle_intro_a_01",
				[2.0] = "pbw_nurgle_intro_a_02"
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
				[1.0] = 7.4851040840149,
				[2.0] = 8.1700830459595
			}
		},
		pbw_level_nurgle_nurglification = {
			face_animations_n = 4,
			database = "bright_wizard_nurgle",
			sound_events_n = 4,
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 4,
			randomize_indexes = {},
			localization_strings = {
				"pbw_level_nurgle_nurglification_01",
				"pbw_level_nurgle_nurglification_02",
				"pbw_level_nurgle_nurglification_03",
				"pbw_level_nurgle_nurglification_04"
			},
			sound_events = {
				"pbw_level_nurgle_nurglification_01",
				"pbw_level_nurgle_nurglification_02",
				"pbw_level_nurgle_nurglification_03",
				"pbw_level_nurgle_nurglification_04"
			},
			face_animations = {
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear"
			},
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			sound_events_duration = {
				3.6995000839233,
				3.9216666221619,
				1.3077291250229,
				4.2634372711182
			}
		},
		pbw_level_nurgle_spotting_objective = {
			face_animations_n = 4,
			database = "bright_wizard_nurgle",
			sound_events_n = 4,
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 4,
			randomize_indexes = {},
			localization_strings = {
				"pbw_level_nurgle_spotting_objective_01",
				"pbw_level_nurgle_spotting_objective_02",
				"pbw_level_nurgle_spotting_objective_03",
				"pbw_level_nurgle_spotting_objective_04"
			},
			sound_events = {
				"pbw_level_nurgle_spotting_objective_01",
				"pbw_level_nurgle_spotting_objective_02",
				"pbw_level_nurgle_spotting_objective_03",
				"pbw_level_nurgle_spotting_objective_04"
			},
			face_animations = {
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear"
			},
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			sound_events_duration = {
				6.1763334274292,
				4.7558541297913,
				4.3497085571289,
				6.5088334083557
			}
		},
		pbw_level_nurgle_skaven_collapse = {
			face_animations_n = 4,
			database = "bright_wizard_nurgle",
			sound_events_n = 4,
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 4,
			randomize_indexes = {},
			localization_strings = {
				"pbw_level_nurgle_skaven_collapse_01",
				"pbw_level_nurgle_skaven_collapse_02",
				"pbw_level_nurgle_skaven_collapse_03",
				"pbw_level_nurgle_skaven_collapse_04"
			},
			sound_events = {
				"pbw_level_nurgle_skaven_collapse_01",
				"pbw_level_nurgle_skaven_collapse_02",
				"pbw_level_nurgle_skaven_collapse_03",
				"pbw_level_nurgle_skaven_collapse_04"
			},
			face_animations = {
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear"
			},
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			sound_events_duration = {
				3.1763958930969,
				3.1292290687561,
				4.1092710494995,
				4.3292708396912
			}
		},
		pbw_level_nurgle_swift_river = {
			face_animations_n = 4,
			database = "bright_wizard_nurgle",
			sound_events_n = 4,
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 4,
			randomize_indexes = {},
			localization_strings = {
				"pbw_level_nurgle_swift_river_01",
				"pbw_level_nurgle_swift_river_02",
				"pbw_level_nurgle_swift_river_03",
				"pbw_level_nurgle_swift_river_04"
			},
			sound_events = {
				"pbw_level_nurgle_swift_river_01",
				"pbw_level_nurgle_swift_river_02",
				"pbw_level_nurgle_swift_river_03",
				"pbw_level_nurgle_swift_river_04"
			},
			face_animations = {
				"face_concerned",
				"face_concerned",
				"face_concerned",
				"face_concerned"
			},
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			sound_events_duration = {
				2.462708234787,
				3.2273333072662,
				3.1687500476837,
				3.4791667461395
			}
		},
		pbw_level_nurgle_coming_down = {
			face_animations_n = 4,
			database = "bright_wizard_nurgle",
			sound_events_n = 4,
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 4,
			randomize_indexes = {},
			localization_strings = {
				"pbw_level_nurgle_coming_down_01",
				"pbw_level_nurgle_coming_down_02",
				"pbw_level_nurgle_coming_down_03",
				"pbw_level_nurgle_coming_down_04"
			},
			sound_events = {
				"pbw_level_nurgle_coming_down_01",
				"pbw_level_nurgle_coming_down_02",
				"pbw_level_nurgle_coming_down_03",
				"pbw_level_nurgle_coming_down_04"
			},
			face_animations = {
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear"
			},
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			sound_events_duration = {
				5.3582916259766,
				6.8751249313355,
				6.4462084770203,
				7.1327290534973
			}
		},
		pbw_level_nurgle_bury_objective = {
			face_animations_n = 4,
			database = "bright_wizard_nurgle",
			sound_events_n = 4,
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 4,
			randomize_indexes = {},
			localization_strings = {
				"pbw_level_nurgle_bury_objective_01",
				"pbw_level_nurgle_bury_objective_02",
				"pbw_level_nurgle_bury_objective_03",
				"pbw_level_nurgle_bury_objective_04"
			},
			sound_events = {
				"pbw_level_nurgle_bury_objective_01",
				"pbw_level_nurgle_bury_objective_02",
				"pbw_level_nurgle_bury_objective_03",
				"pbw_level_nurgle_bury_objective_04"
			},
			face_animations = {
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear"
			},
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			sound_events_duration = {
				3.0437707901001,
				4.8699584007263,
				4.3143124580383,
				5.8599791526794
			}
		},
		pbw_level_nurgle_nurglification_increase = {
			face_animations_n = 4,
			database = "bright_wizard_nurgle",
			sound_events_n = 4,
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 4,
			randomize_indexes = {},
			localization_strings = {
				"pbw_level_nurgle_nurglification_increase_01",
				"pbw_level_nurgle_nurglification_increase_02",
				"pbw_level_nurgle_nurglification_increase_03",
				"pbw_level_nurgle_nurglification_increase_04"
			},
			sound_events = {
				"pbw_level_nurgle_nurglification_increase_01",
				"pbw_level_nurgle_nurglification_increase_02",
				"pbw_level_nurgle_nurglification_increase_03",
				"pbw_level_nurgle_nurglification_increase_04"
			},
			face_animations = {
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear"
			},
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			sound_events_duration = {
				3.2436459064484,
				3.0019373893738,
				4.0258955955505,
				6.0843749046326
			}
		},
		pbw_level_nurgle_river = {
			face_animations_n = 4,
			database = "bright_wizard_nurgle",
			sound_events_n = 4,
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 4,
			randomize_indexes = {},
			localization_strings = {
				"pbw_level_nurgle_river_01",
				"pbw_level_nurgle_river_02",
				"pbw_level_nurgle_river_03",
				"pbw_level_nurgle_river_04"
			},
			sound_events = {
				"pbw_level_nurgle_river_01",
				"pbw_level_nurgle_river_02",
				"pbw_level_nurgle_river_03",
				"pbw_level_nurgle_river_04"
			},
			face_animations = {
				"face_calm",
				"face_calm",
				"face_calm",
				"face_calm"
			},
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			sound_events_duration = {
				2.2616457939148,
				1.923666715622,
				3.3246250152588,
				2.858416557312
			}
		},
		pbw_level_nurgle_ruins = {
			face_animations_n = 4,
			database = "bright_wizard_nurgle",
			sound_events_n = 4,
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 4,
			randomize_indexes = {},
			localization_strings = {
				"pbw_level_nurgle_ruins_01",
				"pbw_level_nurgle_ruins_02",
				"pbw_level_nurgle_ruins_03",
				"pbw_level_nurgle_ruins_04"
			},
			sound_events = {
				"pbw_level_nurgle_ruins_01",
				"pbw_level_nurgle_ruins_02",
				"pbw_level_nurgle_ruins_03",
				"pbw_level_nurgle_ruins_04"
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
				4.1002082824707,
				4.8668751716614,
				4.2422914505005,
				2.782083272934
			}
		},
		pbw_level_nurgle_digsite = {
			face_animations_n = 4,
			database = "bright_wizard_nurgle",
			sound_events_n = 4,
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 4,
			randomize_indexes = {},
			localization_strings = {
				"pbw_level_nurgle_digsite_01",
				"pbw_level_nurgle_digsite_02",
				"pbw_level_nurgle_digsite_03",
				"pbw_level_nurgle_digsite_04"
			},
			sound_events = {
				"pbw_level_nurgle_digsite_01",
				"pbw_level_nurgle_digsite_02",
				"pbw_level_nurgle_digsite_03",
				"pbw_level_nurgle_digsite_04"
			},
			face_animations = {
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear"
			},
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			sound_events_duration = {
				1.6231458187103,
				2.0025417804718,
				3.1977083683014,
				1.5915207862854
			}
		},
		pbw_nurgle_intro_b = {
			face_animations_n = 2,
			database = "bright_wizard_nurgle",
			sound_events_n = 2,
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 2,
			randomize_indexes = {},
			localization_strings = {
				[1.0] = "pbw_nurgle_intro_b_01",
				[2.0] = "pbw_nurgle_intro_b_02"
			},
			sound_events = {
				[1.0] = "pbw_nurgle_intro_b_01",
				[2.0] = "pbw_nurgle_intro_b_02"
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
				[1.0] = 7.9115624427795,
				[2.0] = 8.6083745956421
			}
		},
		pbw_level_nurgle_drop_down = {
			face_animations_n = 4,
			database = "bright_wizard_nurgle",
			sound_events_n = 4,
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 4,
			randomize_indexes = {},
			localization_strings = {
				"pbw_level_nurgle_drop_down_01",
				"pbw_level_nurgle_drop_down_02",
				"pbw_level_nurgle_drop_down_03",
				"pbw_level_nurgle_drop_down_04"
			},
			sound_events = {
				"pbw_level_nurgle_drop_down_01",
				"pbw_level_nurgle_drop_down_02",
				"pbw_level_nurgle_drop_down_03",
				"pbw_level_nurgle_drop_down_04"
			},
			face_animations = {
				"face_concerned",
				"face_concerned",
				"face_concerned",
				"face_concerned"
			},
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			sound_events_duration = {
				1.1369166374207,
				2.0736875534058,
				2.6978957653046,
				1.1347916126251
			}
		},
		pbw_level_nurgle_outcast_lair = {
			face_animations_n = 4,
			database = "bright_wizard_nurgle",
			sound_events_n = 4,
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 4,
			randomize_indexes = {},
			localization_strings = {
				"pbw_level_nurgle_outcast_lair_01",
				"pbw_level_nurgle_outcast_lair_02",
				"pbw_level_nurgle_outcast_lair_03",
				"pbw_level_nurgle_outcast_lair_04"
			},
			sound_events = {
				"pbw_level_nurgle_outcast_lair_01",
				"pbw_level_nurgle_outcast_lair_02",
				"pbw_level_nurgle_outcast_lair_03",
				"pbw_level_nurgle_outcast_lair_04"
			},
			face_animations = {
				"face_calm",
				"face_calm",
				"face_calm",
				"face_calm"
			},
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			sound_events_duration = {
				4.803249835968,
				4.3851456642151,
				4.7519583702087,
				4.4822502136231
			}
		}
	})
end
