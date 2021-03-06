return function ()
	define_rule({
		name = "pwh_morris_hub_conversation_one_a",
		response = "pwh_morris_hub_conversation_one_a",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"story_trigger"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"witch_hunter"
			},
			{
				"user_context",
				"friends_close",
				OP.GT,
				0
			},
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMEDIFF,
				OP.GT,
				120
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			},
			{
				"faction_memory",
				"morris_hub_conversation_one_a",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"morris_hub_conversation_one_a",
				OP.ADD,
				1
			},
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pwh_morris_hub_conversation_one_b",
		response = "pwh_morris_hub_conversation_one_b",
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
				"morris_hub_conversation_one_a"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			},
			{
				"faction_memory",
				"morris_hub_conversation_one_b",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"morris_hub_conversation_one_b",
				OP.ADD,
				1
			},
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pwh_morris_hub_conversation_one_c",
		response = "pwh_morris_hub_conversation_one_c",
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
				"morris_hub_conversation_one_b"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			},
			{
				"faction_memory",
				"morris_hub_conversation_one_c",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"morris_hub_conversation_one_c",
				OP.ADD,
				1
			},
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pbw_morris_hub_conversation_one_a",
		response = "pbw_morris_hub_conversation_one_a",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"story_trigger"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"friends_close",
				OP.GT,
				0
			},
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMEDIFF,
				OP.GT,
				120
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"morris_hub_conversation_one_a",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"morris_hub_conversation_one_a",
				OP.ADD,
				1
			},
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pbw_morris_hub_conversation_one_b",
		response = "pbw_morris_hub_conversation_one_b",
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
				"morris_hub_conversation_one_a"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"morris_hub_conversation_one_b",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"morris_hub_conversation_one_b",
				OP.ADD,
				1
			},
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pbw_morris_hub_conversation_one_c",
		response = "pbw_morris_hub_conversation_one_c",
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
				"morris_hub_conversation_one_b"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"morris_hub_conversation_one_c",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"morris_hub_conversation_one_c",
				OP.ADD,
				1
			},
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pdr_morris_hub_conversation_one_a",
		response = "pdr_morris_hub_conversation_one_a",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"story_trigger"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_context",
				"friends_close",
				OP.GT,
				0
			},
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMEDIFF,
				OP.GT,
				120
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"faction_memory",
				"morris_hub_conversation_one_a",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"morris_hub_conversation_one_a",
				OP.ADD,
				1
			},
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pdr_morris_hub_conversation_one_b",
		response = "pdr_morris_hub_conversation_one_b",
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
				"morris_hub_conversation_one_a"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"faction_memory",
				"morris_hub_conversation_one_b",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"morris_hub_conversation_one_b",
				OP.ADD,
				1
			},
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pdr_morris_hub_conversation_one_c",
		response = "pdr_morris_hub_conversation_one_c",
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
				"morris_hub_conversation_one_b"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"faction_memory",
				"morris_hub_conversation_one_c",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"morris_hub_conversation_one_c",
				OP.ADD,
				1
			},
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pwe_morris_hub_conversation_one_a",
		response = "pwe_morris_hub_conversation_one_a",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"story_trigger"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"wood_elf"
			},
			{
				"user_context",
				"friends_close",
				OP.GT,
				0
			},
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMEDIFF,
				OP.GT,
				120
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"wood_elf"
			},
			{
				"faction_memory",
				"morris_hub_conversation_one_a",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"morris_hub_conversation_one_a",
				OP.ADD,
				1
			},
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pwe_morris_hub_conversation_one_b",
		response = "pwe_morris_hub_conversation_one_b",
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
				"morris_hub_conversation_one_a"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"wood_elf"
			},
			{
				"faction_memory",
				"morris_hub_conversation_one_b",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"morris_hub_conversation_one_b",
				OP.ADD,
				1
			},
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pwe_morris_hub_conversation_one_c",
		response = "pwe_morris_hub_conversation_one_c",
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
				"morris_hub_conversation_one_b"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"wood_elf"
			},
			{
				"faction_memory",
				"morris_hub_conversation_one_c",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"morris_hub_conversation_one_c",
				OP.ADD,
				1
			},
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pes_morris_hub_conversation_one_a",
		response = "pes_morris_hub_conversation_one_a",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"story_trigger"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"empire_soldier"
			},
			{
				"user_context",
				"friends_close",
				OP.GT,
				0
			},
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMEDIFF,
				OP.GT,
				120
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"empire_soldier"
			},
			{
				"faction_memory",
				"morris_hub_conversation_one_a",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"morris_hub_conversation_one_a",
				OP.ADD,
				1
			},
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pes_morris_hub_conversation_one_b",
		response = "pes_morris_hub_conversation_one_b",
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
				"morris_hub_conversation_one_a"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"empire_soldier"
			},
			{
				"faction_memory",
				"morris_hub_conversation_one_b",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"morris_hub_conversation_one_b",
				OP.ADD,
				1
			},
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pes_morris_hub_conversation_one_c",
		response = "pes_morris_hub_conversation_one_c",
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
				"morris_hub_conversation_one_b"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"empire_soldier"
			},
			{
				"faction_memory",
				"morris_hub_conversation_one_c",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"morris_hub_conversation_one_c",
				OP.ADD,
				1
			},
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "nik_morris_idle_01",
		response = "nik_morris_idle_01",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"nik_morris_idle"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"inn_keeper"
			},
			{
				"user_memory",
				"nik_morris_idle_01",
				OP.LTEQ,
				1
			}
		},
		on_done = {
			{
				"user_memory",
				"nik_morris_idle_01",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwh_morris_saltzpyre_monologue",
		response = "pwh_morris_saltzpyre_monologue",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"story_trigger"
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
				"user_context",
				"friends_close",
				OP.EQ,
				0
			},
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMEDIFF,
				OP.GT,
				140
			},
			{
				"faction_memory",
				"pwh_morris_saltzpyre_monologue",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"pwh_morris_saltzpyre_monologue",
				OP.ADD,
				1
			},
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMESET
			}
		}
	})
	add_dialogues({
		pwe_morris_hub_conversation_one_c = {
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "hub_conversations_morris",
			sound_events_n = 2,
			category = "story_talk_keep",
			dialogue_animations_n = 2,
			dialogue_animations = {
				[1.0] = "dialogue_talk",
				[2.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_neutral",
				[2.0] = "face_neutral"
			},
			localization_strings = {
				[1.0] = "pwe_morris_hub_conversation_one_c_01",
				[2.0] = "pwe_morris_hub_conversation_one_c_02"
			},
			sound_events_duration = {
				[1.0] = 2.4623334407806,
				[2.0] = 4.048770904541
			},
			sound_events = {
				[1.0] = "pwe_morris_hub_conversation_one_c_01",
				[2.0] = "pwe_morris_hub_conversation_one_c_02"
			},
			randomize_indexes = {}
		},
		pwh_morris_hub_conversation_one_c = {
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "hub_conversations_morris",
			sound_events_n = 2,
			category = "story_talk_keep",
			dialogue_animations_n = 2,
			dialogue_animations = {
				[1.0] = "dialogue_talk",
				[2.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_neutral",
				[2.0] = "face_neutral"
			},
			localization_strings = {
				[1.0] = "pwh_morris_hub_conversation_one_c_01",
				[2.0] = "pwh_morris_hub_conversation_one_c_02"
			},
			sound_events_duration = {
				[1.0] = 4.3605418205261,
				[2.0] = 5.5029792785644
			},
			sound_events = {
				[1.0] = "pwh_morris_hub_conversation_one_c_01",
				[2.0] = "pwh_morris_hub_conversation_one_c_02"
			},
			randomize_indexes = {}
		},
		pwe_morris_hub_conversation_one_b = {
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "hub_conversations_morris",
			sound_events_n = 2,
			category = "story_talk_keep",
			dialogue_animations_n = 2,
			dialogue_animations = {
				[1.0] = "dialogue_talk",
				[2.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_neutral",
				[2.0] = "face_neutral"
			},
			localization_strings = {
				[1.0] = "pwe_morris_hub_conversation_one_b_01",
				[2.0] = "pwe_morris_hub_conversation_one_b_02"
			},
			sound_events_duration = {
				[1.0] = 4.983895778656,
				[2.0] = 3.9909167289734
			},
			sound_events = {
				[1.0] = "pwe_morris_hub_conversation_one_b_01",
				[2.0] = "pwe_morris_hub_conversation_one_b_02"
			},
			randomize_indexes = {}
		},
		pwh_morris_hub_conversation_one_b = {
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "hub_conversations_morris",
			sound_events_n = 2,
			category = "story_talk_keep",
			dialogue_animations_n = 2,
			dialogue_animations = {
				[1.0] = "dialogue_talk",
				[2.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_neutral",
				[2.0] = "face_neutral"
			},
			localization_strings = {
				[1.0] = "pwh_morris_hub_conversation_one_b_01",
				[2.0] = "pwh_morris_hub_conversation_one_b_02"
			},
			sound_events_duration = {
				[1.0] = 6.930145740509,
				[2.0] = 7.5941667556763
			},
			sound_events = {
				[1.0] = "pwh_morris_hub_conversation_one_b_01",
				[2.0] = "pwh_morris_hub_conversation_one_b_02"
			},
			randomize_indexes = {}
		},
		pdr_morris_hub_conversation_one_c = {
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "hub_conversations_morris",
			sound_events_n = 2,
			category = "story_talk_keep",
			dialogue_animations_n = 2,
			dialogue_animations = {
				[1.0] = "dialogue_talk",
				[2.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_neutral",
				[2.0] = "face_neutral"
			},
			localization_strings = {
				[1.0] = "pdr_morris_hub_conversation_one_c_01",
				[2.0] = "pdr_morris_hub_conversation_one_c_02"
			},
			sound_events_duration = {
				[1.0] = 3.7303333282471,
				[2.0] = 3.35972905159
			},
			sound_events = {
				[1.0] = "pdr_morris_hub_conversation_one_c_01",
				[2.0] = "pdr_morris_hub_conversation_one_c_02"
			},
			randomize_indexes = {}
		},
		pwh_morris_saltzpyre_monologue = {
			randomize_indexes_n = 0,
			face_animations_n = 11,
			database = "hub_conversations_morris",
			sound_events_n = 11,
			category = "story_talk_keep",
			dialogue_animations_n = 11,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"pwh_morris_saltzpyre_monologue_01",
				"pwh_morris_saltzpyre_monologue_02",
				"pwh_morris_saltzpyre_monologue_03",
				"pwh_morris_saltzpyre_monologue_04",
				"pwh_morris_saltzpyre_monologue_05",
				"pwh_morris_saltzpyre_monologue_06",
				"pwh_morris_saltzpyre_monologue_07",
				"pwh_morris_saltzpyre_monologue_08",
				"pwh_morris_saltzpyre_monologue_09",
				"pwh_morris_saltzpyre_monologue_10",
				"pwh_morris_saltzpyre_monologue_11"
			},
			sound_events_duration = {
				12.836833000183,
				10.173542022705,
				11.336062431335,
				11.800229072571,
				13.083541870117,
				10.855375289917,
				11.673146247864,
				13.101499557495,
				14.055062294006,
				12.624771118164,
				4.5355625152588
			},
			sound_events = {
				"pwh_morris_saltzpyre_monologue_01",
				"pwh_morris_saltzpyre_monologue_02",
				"pwh_morris_saltzpyre_monologue_03",
				"pwh_morris_saltzpyre_monologue_04",
				"pwh_morris_saltzpyre_monologue_05",
				"pwh_morris_saltzpyre_monologue_06",
				"pwh_morris_saltzpyre_monologue_07",
				"pwh_morris_saltzpyre_monologue_08",
				"pwh_morris_saltzpyre_monologue_09",
				"pwh_morris_saltzpyre_monologue_10",
				"pwh_morris_saltzpyre_monologue_11"
			},
			randomize_indexes = {}
		},
		pwh_morris_hub_conversation_one_a = {
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "hub_conversations_morris",
			sound_events_n = 2,
			category = "story_talk_keep",
			dialogue_animations_n = 2,
			dialogue_animations = {
				[1.0] = "dialogue_talk",
				[2.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_neutral",
				[2.0] = "face_neutral"
			},
			localization_strings = {
				[1.0] = "pwh_morris_hub_conversation_one_a_01",
				[2.0] = "pwh_morris_hub_conversation_one_a_02"
			},
			sound_events_duration = {
				[1.0] = 4.2901668548584,
				[2.0] = 4.3963127136231
			},
			sound_events = {
				[1.0] = "pwh_morris_hub_conversation_one_a_01",
				[2.0] = "pwh_morris_hub_conversation_one_a_02"
			},
			randomize_indexes = {}
		},
		pdr_morris_hub_conversation_one_b = {
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "hub_conversations_morris",
			sound_events_n = 2,
			category = "story_talk_keep",
			dialogue_animations_n = 2,
			dialogue_animations = {
				[1.0] = "dialogue_talk",
				[2.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_neutral",
				[2.0] = "face_neutral"
			},
			localization_strings = {
				[1.0] = "pdr_morris_hub_conversation_one_b_01",
				[2.0] = "pdr_morris_hub_conversation_one_b_02"
			},
			sound_events_duration = {
				[1.0] = 4.0275831222534,
				[2.0] = 3.4693958759308
			},
			sound_events = {
				[1.0] = "pdr_morris_hub_conversation_one_b_01",
				[2.0] = "pdr_morris_hub_conversation_one_b_02"
			},
			randomize_indexes = {}
		},
		pes_morris_hub_conversation_one_b = {
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "hub_conversations_morris",
			sound_events_n = 2,
			category = "story_talk_keep",
			dialogue_animations_n = 2,
			dialogue_animations = {
				[1.0] = "dialogue_talk",
				[2.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_neutral",
				[2.0] = "face_neutral"
			},
			localization_strings = {
				[1.0] = "pes_morris_hub_conversation_one_b_01",
				[2.0] = "pes_morris_hub_conversation_one_b_02"
			},
			sound_events_duration = {
				[1.0] = 5.2262916564941,
				[2.0] = 4.025812625885
			},
			sound_events = {
				[1.0] = "pes_morris_hub_conversation_one_b_01",
				[2.0] = "pes_morris_hub_conversation_one_b_02"
			},
			randomize_indexes = {}
		},
		nik_morris_idle_01 = {
			randomize_indexes_n = 0,
			face_animations_n = 20,
			database = "hub_conversations_morris",
			sound_events_n = 20,
			sound_distance = 15,
			category = "story_talk_keep",
			dialogue_animations_n = 20,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"nik_morris_idle_01",
				"nik_morris_idle_02",
				"nik_morris_idle_03",
				"nik_morris_idle_04",
				"nik_morris_idle_05",
				"nik_morris_idle_06",
				"nik_morris_idle_07",
				"nik_morris_idle_08",
				"nik_morris_idle_09",
				"nik_morris_idle_10",
				"nik_morris_idle_11",
				"nik_morris_idle_12",
				"nik_morris_idle_13",
				"nik_morris_idle_14",
				"nik_morris_idle_15",
				"nik_morris_idle_16",
				"nik_morris_idle_17",
				"nik_morris_idle_18",
				"nik_morris_idle_19",
				"nik_morris_idle_20"
			},
			sound_events_duration = {
				7.2243332862854,
				5.710437297821,
				5.1011877059936,
				6.4661664962769,
				4.5493960380554,
				5.5658540725708,
				7.917854309082,
				5.7921876907349,
				5.9557085037231,
				6.4053540229797,
				6.0374584197998,
				3.8504583835602,
				3.9395208358765,
				5.7401041984558,
				4.4622707366943,
				4.9907083511353,
				5.9557085037231,
				9.2668333053589,
				6.106062412262,
				5.681583404541
			},
			sound_events = {
				"nik_morris_idle_01",
				"nik_morris_idle_02",
				"nik_morris_idle_03",
				"nik_morris_idle_04",
				"nik_morris_idle_05",
				"nik_morris_idle_06",
				"nik_morris_idle_07",
				"nik_morris_idle_08",
				"nik_morris_idle_09",
				"nik_morris_idle_10",
				"nik_morris_idle_11",
				"nik_morris_idle_12",
				"nik_morris_idle_13",
				"nik_morris_idle_14",
				"nik_morris_idle_15",
				"nik_morris_idle_16",
				"nik_morris_idle_17",
				"nik_morris_idle_18",
				"nik_morris_idle_19",
				"nik_morris_idle_20"
			},
			randomize_indexes = {}
		},
		pdr_morris_hub_conversation_one_a = {
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "hub_conversations_morris",
			sound_events_n = 2,
			category = "story_talk_keep",
			dialogue_animations_n = 2,
			dialogue_animations = {
				[1.0] = "dialogue_talk",
				[2.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_neutral",
				[2.0] = "face_neutral"
			},
			localization_strings = {
				[1.0] = "pdr_morris_hub_conversation_one_a_01",
				[2.0] = "pdr_morris_hub_conversation_one_a_02"
			},
			sound_events_duration = {
				[1.0] = 3.6872498989105,
				[2.0] = 4.6014375686645
			},
			sound_events = {
				[1.0] = "pdr_morris_hub_conversation_one_a_01",
				[2.0] = "pdr_morris_hub_conversation_one_a_02"
			},
			randomize_indexes = {}
		},
		pbw_morris_hub_conversation_one_b = {
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "hub_conversations_morris",
			sound_events_n = 2,
			category = "story_talk_keep",
			dialogue_animations_n = 2,
			dialogue_animations = {
				[1.0] = "dialogue_talk",
				[2.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_neutral",
				[2.0] = "face_neutral"
			},
			localization_strings = {
				[1.0] = "pbw_morris_hub_conversation_one_b_01",
				[2.0] = "pbw_morris_hub_conversation_one_b_02"
			},
			sound_events_duration = {
				[1.0] = 4.7663540840149,
				[2.0] = 5.4693541526794
			},
			sound_events = {
				[1.0] = "pbw_morris_hub_conversation_one_b_01",
				[2.0] = "pbw_morris_hub_conversation_one_b_02"
			},
			randomize_indexes = {}
		},
		pes_morris_hub_conversation_one_a = {
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "hub_conversations_morris",
			sound_events_n = 2,
			category = "story_talk_keep",
			dialogue_animations_n = 2,
			dialogue_animations = {
				[1.0] = "dialogue_talk",
				[2.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_neutral",
				[2.0] = "face_neutral"
			},
			localization_strings = {
				[1.0] = "pes_morris_hub_conversation_one_a_01",
				[2.0] = "pes_morris_hub_conversation_one_a_02"
			},
			sound_events_duration = {
				[1.0] = 2.5063750743866,
				[2.0] = 2.9255623817444
			},
			sound_events = {
				[1.0] = "pes_morris_hub_conversation_one_a_01",
				[2.0] = "pes_morris_hub_conversation_one_a_02"
			},
			randomize_indexes = {}
		},
		pbw_morris_hub_conversation_one_c = {
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "hub_conversations_morris",
			sound_events_n = 2,
			category = "story_talk_keep",
			dialogue_animations_n = 2,
			dialogue_animations = {
				[1.0] = "dialogue_talk",
				[2.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_neutral",
				[2.0] = "face_neutral"
			},
			localization_strings = {
				[1.0] = "pbw_morris_hub_conversation_one_c_01",
				[2.0] = "pbw_morris_hub_conversation_one_c_02"
			},
			sound_events_duration = {
				[1.0] = 2.9101874828339,
				[2.0] = 4.4816875457764
			},
			sound_events = {
				[1.0] = "pbw_morris_hub_conversation_one_c_01",
				[2.0] = "pbw_morris_hub_conversation_one_c_02"
			},
			randomize_indexes = {}
		},
		pbw_morris_hub_conversation_one_a = {
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "hub_conversations_morris",
			sound_events_n = 2,
			category = "story_talk_keep",
			dialogue_animations_n = 2,
			dialogue_animations = {
				[1.0] = "dialogue_talk",
				[2.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_neutral",
				[2.0] = "face_neutral"
			},
			localization_strings = {
				[1.0] = "pbw_morris_hub_conversation_one_a_01",
				[2.0] = "pbw_morris_hub_conversation_one_a_02"
			},
			sound_events_duration = {
				[1.0] = 4.2449584007263,
				[2.0] = 3.6178750991821
			},
			sound_events = {
				[1.0] = "pbw_morris_hub_conversation_one_a_01",
				[2.0] = "pbw_morris_hub_conversation_one_a_02"
			},
			randomize_indexes = {}
		},
		pes_morris_hub_conversation_one_c = {
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "hub_conversations_morris",
			sound_events_n = 2,
			category = "story_talk_keep",
			dialogue_animations_n = 2,
			dialogue_animations = {
				[1.0] = "dialogue_talk",
				[2.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_neutral",
				[2.0] = "face_neutral"
			},
			localization_strings = {
				[1.0] = "pes_morris_hub_conversation_one_c_01",
				[2.0] = "pes_morris_hub_conversation_one_c_02"
			},
			sound_events_duration = {
				[1.0] = 2.2161667346954,
				[2.0] = 4.6671667098999
			},
			sound_events = {
				[1.0] = "pes_morris_hub_conversation_one_c_01",
				[2.0] = "pes_morris_hub_conversation_one_c_02"
			},
			randomize_indexes = {}
		},
		pwe_morris_hub_conversation_one_a = {
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "hub_conversations_morris",
			sound_events_n = 2,
			category = "story_talk_keep",
			dialogue_animations_n = 2,
			dialogue_animations = {
				[1.0] = "dialogue_talk",
				[2.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_neutral",
				[2.0] = "face_neutral"
			},
			localization_strings = {
				[1.0] = "pwe_morris_hub_conversation_one_a_01",
				[2.0] = "pwe_morris_hub_conversation_one_a_02"
			},
			sound_events_duration = {
				[1.0] = 4.1728749275208,
				[2.0] = 4.8879790306091
			},
			sound_events = {
				[1.0] = "pwe_morris_hub_conversation_one_a_01",
				[2.0] = "pwe_morris_hub_conversation_one_a_02"
			},
			randomize_indexes = {}
		}
	})
end
