return function ()
	define_rule({
		name = "pdr_morris_level_conversations_khorne_twentyfour_01",
		response = "pdr_morris_level_conversations_khorne_twentyfour_01",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"story_trigger"
			},
			{
				"user_context",
				"enemies_close",
				OP.EQ,
				0
			},
			{
				"user_context",
				"enemies_distant",
				OP.LT,
				15
			},
			{
				"user_context",
				"friends_close",
				OP.GT,
				1
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"global_context",
				"bright_wizard",
				OP.EQ,
				1
			},
			{
				"global_context",
				"current_theme",
				OP.EQ,
				"khorne"
			},
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMEDIFF,
				OP.GT,
				240
			},
			{
				"faction_memory",
				"pdr_morris_level_conversations_khorne_twentyfour_01",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"pdr_morris_level_conversations_khorne_twentyfour_01",
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
		name = "pbw_morris_level_conversations_khorne_twentyfour_01",
		response = "pbw_morris_level_conversations_khorne_twentyfour_01",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"sound_event",
				OP.EQ,
				"pdr_morris_level_conversations_khorne_twentyfour_01"
			},
			{
				"user_context",
				"enemies_close",
				OP.LT,
				6
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pdr_morris_level_conversations_khorne_twentyfour_02",
		response = "pdr_morris_level_conversations_khorne_twentyfour_02",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"sound_event",
				OP.EQ,
				"pbw_morris_level_conversations_khorne_twentyfour_01"
			},
			{
				"user_context",
				"enemies_close",
				OP.LT,
				6
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pwe_morris_level_conversations_khorne_twentyfive_01",
		response = "pwe_morris_level_conversations_khorne_twentyfive_01",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"story_trigger"
			},
			{
				"user_context",
				"enemies_close",
				OP.EQ,
				0
			},
			{
				"user_context",
				"enemies_distant",
				OP.LT,
				15
			},
			{
				"user_context",
				"friends_close",
				OP.GT,
				1
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"wood_elf"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"wood_elf"
			},
			{
				"global_context",
				"empire_soldier",
				OP.EQ,
				1
			},
			{
				"global_context",
				"current_theme",
				OP.EQ,
				"khorne"
			},
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMEDIFF,
				OP.GT,
				240
			},
			{
				"faction_memory",
				"pwe_morris_level_conversations_khorne_twentyfive_01",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"pwe_morris_level_conversations_khorne_twentyfive_01",
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
		name = "pes_morris_level_conversations_khorne_twentyfive_01",
		response = "pes_morris_level_conversations_khorne_twentyfive_01",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"sound_event",
				OP.EQ,
				"pwe_morris_level_conversations_khorne_twentyfive_01"
			},
			{
				"user_context",
				"enemies_close",
				OP.LT,
				6
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"empire_soldier"
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pwe_morris_level_conversations_khorne_twentyfive_02",
		response = "pwe_morris_level_conversations_khorne_twentyfive_02",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"sound_event",
				OP.EQ,
				"pes_morris_level_conversations_khorne_twentyfive_01"
			},
			{
				"user_context",
				"enemies_close",
				OP.LT,
				6
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"wood_elf"
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pes_morris_level_conversations_khorne_twentyfive_02",
		response = "pes_morris_level_conversations_khorne_twentyfive_02",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"sound_event",
				OP.EQ,
				"pwe_morris_level_conversations_khorne_twentyfive_02"
			},
			{
				"user_context",
				"enemies_close",
				OP.LT,
				6
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"empire_soldier"
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pbw_morris_level_conversations_tzeentch_twentysix_01",
		response = "pbw_morris_level_conversations_tzeentch_twentysix_01",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"story_trigger"
			},
			{
				"user_context",
				"enemies_close",
				OP.EQ,
				0
			},
			{
				"user_context",
				"enemies_distant",
				OP.LT,
				15
			},
			{
				"user_context",
				"friends_close",
				OP.GT,
				1
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
				"global_context",
				"witch_hunter",
				OP.EQ,
				1
			},
			{
				"global_context",
				"current_theme",
				OP.EQ,
				"tzeentch"
			},
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMEDIFF,
				OP.GT,
				240
			},
			{
				"faction_memory",
				"pbw_morris_level_conversations_tzeentch_twentysix_01",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"pbw_morris_level_conversations_tzeentch_twentysix_01",
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
		name = "pwh_morris_level_conversations_tzeentch_twentysix_01",
		response = "pwh_morris_level_conversations_tzeentch_twentysix_01",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"sound_event",
				OP.EQ,
				"pbw_morris_level_conversations_tzeentch_twentysix_01"
			},
			{
				"user_context",
				"enemies_close",
				OP.LT,
				6
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pbw_morris_level_conversations_tzeentch_twentysix_02",
		response = "pbw_morris_level_conversations_tzeentch_twentysix_02",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"sound_event",
				OP.EQ,
				"pwh_morris_level_conversations_tzeentch_twentysix_01"
			},
			{
				"user_context",
				"enemies_close",
				OP.LT,
				6
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pwh_morris_level_conversations_tzeentch_twentysix_02",
		response = "pwh_morris_level_conversations_tzeentch_twentysix_02",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"sound_event",
				OP.EQ,
				"pbw_morris_level_conversations_tzeentch_twentysix_02"
			},
			{
				"user_context",
				"enemies_close",
				OP.LT,
				6
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pdr_morris_level_conversations_tzeentch_twentyseven_01",
		response = "pdr_morris_level_conversations_tzeentch_twentyseven_01",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"story_trigger"
			},
			{
				"user_context",
				"enemies_close",
				OP.EQ,
				0
			},
			{
				"user_context",
				"enemies_distant",
				OP.LT,
				15
			},
			{
				"user_context",
				"friends_close",
				OP.GT,
				1
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"global_context",
				"bright_wizard",
				OP.EQ,
				1
			},
			{
				"global_context",
				"current_theme",
				OP.EQ,
				"tzeentch"
			},
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMEDIFF,
				OP.GT,
				240
			},
			{
				"faction_memory",
				"pdr_morris_level_conversations_tzeentch_twentyseven_01",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"pdr_morris_level_conversations_tzeentch_twentyseven_01",
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
		name = "pbw_morris_level_conversations_tzeentch_twentyseven_01",
		response = "pbw_morris_level_conversations_tzeentch_twentyseven_01",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"sound_event",
				OP.EQ,
				"pdr_morris_level_conversations_tzeentch_twentyseven_01"
			},
			{
				"user_context",
				"enemies_close",
				OP.LT,
				6
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pes_morris_level_conversations_nurgle_twentyeight_01",
		response = "pes_morris_level_conversations_nurgle_twentyeight_01",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"story_trigger"
			},
			{
				"user_context",
				"enemies_close",
				OP.EQ,
				0
			},
			{
				"user_context",
				"enemies_distant",
				OP.LT,
				15
			},
			{
				"user_context",
				"friends_close",
				OP.GT,
				1
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
				"global_context",
				"wood_elf",
				OP.EQ,
				1
			},
			{
				"global_context",
				"current_theme",
				OP.EQ,
				"nurgle"
			},
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMEDIFF,
				OP.GT,
				240
			},
			{
				"faction_memory",
				"pes_morris_level_conversations_nurgle_twentyeight_01",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"pes_morris_level_conversations_nurgle_twentyeight_01",
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
		name = "pwe_morris_level_conversations_nurgle_twentyeight_01",
		response = "pwe_morris_level_conversations_nurgle_twentyeight_01",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"sound_event",
				OP.EQ,
				"pes_morris_level_conversations_nurgle_twentyeight_01"
			},
			{
				"user_context",
				"enemies_close",
				OP.LT,
				6
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"wood_elf"
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pes_morris_level_conversations_nurgle_twentyeight_02",
		response = "pes_morris_level_conversations_nurgle_twentyeight_02",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"sound_event",
				OP.EQ,
				"pwe_morris_level_conversations_nurgle_twentyeight_01"
			},
			{
				"user_context",
				"enemies_close",
				OP.LT,
				6
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"empire_soldier"
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pwe_morris_level_conversations_nurgle_twentyeight_02",
		response = "pwe_morris_level_conversations_nurgle_twentyeight_02",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"sound_event",
				OP.EQ,
				"pes_morris_level_conversations_nurgle_twentyeight_02"
			},
			{
				"user_context",
				"enemies_close",
				OP.LT,
				6
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"wood_elf"
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pdr_morris_level_conversations_nurgle_twentynine_01",
		response = "pdr_morris_level_conversations_nurgle_twentynine_01",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"story_trigger"
			},
			{
				"user_context",
				"enemies_close",
				OP.EQ,
				0
			},
			{
				"user_context",
				"enemies_distant",
				OP.LT,
				15
			},
			{
				"user_context",
				"friends_close",
				OP.GT,
				1
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"global_context",
				"empire_soldier",
				OP.EQ,
				1
			},
			{
				"global_context",
				"current_theme",
				OP.EQ,
				"nurgle"
			},
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMEDIFF,
				OP.GT,
				240
			},
			{
				"faction_memory",
				"pdr_morris_level_conversations_nurgle_twentynine_01",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"pdr_morris_level_conversations_nurgle_twentynine_01",
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
		name = "pes_morris_level_conversations_nurgle_twentynine_01",
		response = "pes_morris_level_conversations_nurgle_twentynine_01",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"sound_event",
				OP.EQ,
				"pdr_morris_level_conversations_nurgle_twentynine_01"
			},
			{
				"user_context",
				"enemies_close",
				OP.LT,
				6
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"empire_soldier"
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pdr_morris_level_conversations_nurgle_twentynine_02",
		response = "pdr_morris_level_conversations_nurgle_twentynine_02",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"sound_event",
				OP.EQ,
				"pes_morris_level_conversations_nurgle_twentynine_01"
			},
			{
				"user_context",
				"enemies_close",
				OP.LT,
				6
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pes_morris_level_conversations_nurgle_twentynine_02",
		response = "pes_morris_level_conversations_nurgle_twentynine_02",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"sound_event",
				OP.EQ,
				"pdr_morris_level_conversations_nurgle_twentynine_02"
			},
			{
				"user_context",
				"enemies_close",
				OP.LT,
				6
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"empire_soldier"
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pes_morris_level_conversations_slaanesh_thirty_01",
		response = "pes_morris_level_conversations_slaanesh_thirty_01",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"story_trigger"
			},
			{
				"user_context",
				"enemies_close",
				OP.EQ,
				0
			},
			{
				"user_context",
				"enemies_distant",
				OP.LT,
				15
			},
			{
				"user_context",
				"friends_close",
				OP.GT,
				1
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
				"global_context",
				"wood_elf",
				OP.EQ,
				1
			},
			{
				"global_context",
				"current_theme",
				OP.EQ,
				"slaanesh"
			},
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMEDIFF,
				OP.GT,
				240
			},
			{
				"faction_memory",
				"pes_morris_level_conversations_slaanesh_thirty_01",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"pes_morris_level_conversations_slaanesh_thirty_01",
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
		name = "pwe_morris_level_conversations_slaanesh_thirty_01",
		response = "pwe_morris_level_conversations_slaanesh_thirty_01",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"sound_event",
				OP.EQ,
				"pes_morris_level_conversations_slaanesh_thirty_01"
			},
			{
				"user_context",
				"enemies_close",
				OP.LT,
				6
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"wood_elf"
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pes_morris_level_conversations_slaanesh_thirty_02",
		response = "pes_morris_level_conversations_slaanesh_thirty_02",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"sound_event",
				OP.EQ,
				"pwe_morris_level_conversations_slaanesh_thirty_01"
			},
			{
				"user_context",
				"enemies_close",
				OP.LT,
				6
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"empire_soldier"
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pwe_morris_level_conversations_slaanesh_thirty_02",
		response = "pwe_morris_level_conversations_slaanesh_thirty_02",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"sound_event",
				OP.EQ,
				"pes_morris_level_conversations_slaanesh_thirty_02"
			},
			{
				"user_context",
				"enemies_close",
				OP.LT,
				6
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"wood_elf"
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pes_morris_level_conversations_slaanesh_thirty_03",
		response = "pes_morris_level_conversations_slaanesh_thirty_03",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"sound_event",
				OP.EQ,
				"pwe_morris_level_conversations_slaanesh_thirty_02"
			},
			{
				"user_context",
				"enemies_close",
				OP.LT,
				6
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"wood_elf"
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pwh_morris_level_conversations_slaanesh_thirtyone_01",
		response = "pwh_morris_level_conversations_slaanesh_thirtyone_01",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"story_trigger"
			},
			{
				"user_context",
				"enemies_close",
				OP.EQ,
				0
			},
			{
				"user_context",
				"enemies_distant",
				OP.LT,
				15
			},
			{
				"user_context",
				"friends_close",
				OP.GT,
				1
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
				"global_context",
				"dwarf_ranger",
				OP.EQ,
				1
			},
			{
				"global_context",
				"current_theme",
				OP.EQ,
				"slaanesh"
			},
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMEDIFF,
				OP.GT,
				240
			},
			{
				"faction_memory",
				"pwh_morris_level_conversations_slaanesh_thirtyone_01",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"pwh_morris_level_conversations_slaanesh_thirtyone_01",
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
		name = "pdr_morris_level_conversations_slaanesh_thirtyone_01",
		response = "pdr_morris_level_conversations_slaanesh_thirtyone_01",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"sound_event",
				OP.EQ,
				"pwh_morris_level_conversations_slaanesh_thirtyone_01"
			},
			{
				"user_context",
				"enemies_close",
				OP.LT,
				6
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pwh_morris_level_conversations_slaanesh_thirtyone_02",
		response = "pwh_morris_level_conversations_slaanesh_thirtyone_02",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"sound_event",
				OP.EQ,
				"pdr_morris_level_conversations_slaanesh_thirtyone_01"
			},
			{
				"user_context",
				"enemies_close",
				OP.LT,
				6
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMESET
			}
		}
	})
	add_dialogues({
		pdr_morris_level_conversations_slaanesh_thirtyone_01 = {
			face_animations_n = 1,
			database = "hero_conversations_dlc_morris_level_banter_themed",
			sound_events_n = 1,
			category = "story_talk",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pdr_morris_level_conversations_slaanesh_thirtyone_01"
			},
			sound_events_duration = {
				[1.0] = 3.1492917537689
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			localization_strings = {
				[1.0] = "pdr_morris_level_conversations_slaanesh_thirtyone_01"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			}
		},
		pdr_morris_level_conversations_nurgle_twentynine_02 = {
			face_animations_n = 1,
			database = "hero_conversations_dlc_morris_level_banter_themed",
			sound_events_n = 1,
			category = "story_talk",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pdr_morris_level_conversations_nurgle_twentynine_02"
			},
			sound_events_duration = {
				[1.0] = 3.0793957710266
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			localization_strings = {
				[1.0] = "pdr_morris_level_conversations_nurgle_twentynine_02"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			}
		},
		pbw_morris_level_conversations_khorne_twentyfour_01 = {
			face_animations_n = 1,
			database = "hero_conversations_dlc_morris_level_banter_themed",
			sound_events_n = 1,
			category = "story_talk",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pbw_morris_level_conversations_khorne_twentyfour_01"
			},
			sound_events_duration = {
				[1.0] = 5.1674790382385
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			localization_strings = {
				[1.0] = "pbw_morris_level_conversations_khorne_twentyfour_01"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			}
		},
		pbw_morris_level_conversations_tzeentch_twentysix_02 = {
			face_animations_n = 1,
			database = "hero_conversations_dlc_morris_level_banter_themed",
			sound_events_n = 1,
			category = "story_talk",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pbw_morris_level_conversations_tzeentch_twentysix_02"
			},
			sound_events_duration = {
				[1.0] = 7.9500832557678
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			localization_strings = {
				[1.0] = "pbw_morris_level_conversations_tzeentch_twentysix_02"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			}
		},
		pes_morris_level_conversations_nurgle_twentyeight_01 = {
			face_animations_n = 1,
			database = "hero_conversations_dlc_morris_level_banter_themed",
			sound_events_n = 1,
			category = "story_talk",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pes_morris_level_conversations_nurgle_twentyeight_01"
			},
			sound_events_duration = {
				[1.0] = 8.7251253128052
			},
			face_animations = {
				[1.0] = "face_neutral"
			},
			localization_strings = {
				[1.0] = "pes_morris_level_conversations_nurgle_twentyeight_01"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			}
		},
		pes_morris_level_conversations_slaanesh_thirty_01 = {
			face_animations_n = 1,
			database = "hero_conversations_dlc_morris_level_banter_themed",
			sound_events_n = 1,
			category = "story_talk",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pes_morris_level_conversations_slaanesh_thirty_01"
			},
			sound_events_duration = {
				[1.0] = 6.2740001678467
			},
			face_animations = {
				[1.0] = "face_neutral"
			},
			localization_strings = {
				[1.0] = "pes_morris_level_conversations_slaanesh_thirty_01"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			}
		},
		pwe_morris_level_conversations_khorne_twentyfive_01 = {
			face_animations_n = 1,
			database = "hero_conversations_dlc_morris_level_banter_themed",
			sound_events_n = 1,
			category = "story_talk",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pwe_morris_level_conversations_khorne_twentyfive_01"
			},
			sound_events_duration = {
				[1.0] = 5.0829792022705
			},
			face_animations = {
				[1.0] = "face_neutral"
			},
			localization_strings = {
				[1.0] = "pwe_morris_level_conversations_khorne_twentyfive_01"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			}
		},
		pwh_morris_level_conversations_slaanesh_thirtyone_02 = {
			face_animations_n = 1,
			database = "hero_conversations_dlc_morris_level_banter_themed",
			sound_events_n = 1,
			category = "story_talk",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pwh_morris_level_conversations_slaanesh_thirtyone_02"
			},
			sound_events_duration = {
				[1.0] = 2.6515207290649
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			localization_strings = {
				[1.0] = "pwh_morris_level_conversations_slaanesh_thirtyone_02"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			}
		},
		pwh_morris_level_conversations_slaanesh_thirtyone_01 = {
			face_animations_n = 1,
			database = "hero_conversations_dlc_morris_level_banter_themed",
			sound_events_n = 1,
			category = "story_talk",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pwh_morris_level_conversations_slaanesh_thirtyone_01"
			},
			sound_events_duration = {
				[1.0] = 7.0671458244324
			},
			face_animations = {
				[1.0] = "face_neutral"
			},
			localization_strings = {
				[1.0] = "pwh_morris_level_conversations_slaanesh_thirtyone_01"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			}
		},
		pwe_morris_level_conversations_khorne_twentyfive_02 = {
			face_animations_n = 1,
			database = "hero_conversations_dlc_morris_level_banter_themed",
			sound_events_n = 1,
			category = "story_talk",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pwe_morris_level_conversations_khorne_twentyfive_02"
			},
			sound_events_duration = {
				[1.0] = 5.4178333282471
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			localization_strings = {
				[1.0] = "pwe_morris_level_conversations_khorne_twentyfive_02"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			}
		},
		pwe_morris_level_conversations_slaanesh_thirty_01 = {
			face_animations_n = 1,
			database = "hero_conversations_dlc_morris_level_banter_themed",
			sound_events_n = 1,
			category = "story_talk",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pwe_morris_level_conversations_slaanesh_thirty_01"
			},
			sound_events_duration = {
				[1.0] = 5.7202706336975
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			localization_strings = {
				[1.0] = "pwe_morris_level_conversations_slaanesh_thirty_01"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			}
		},
		pdr_morris_level_conversations_khorne_twentyfour_02 = {
			face_animations_n = 1,
			database = "hero_conversations_dlc_morris_level_banter_themed",
			sound_events_n = 1,
			category = "story_talk",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pdr_morris_level_conversations_khorne_twentyfour_02"
			},
			sound_events_duration = {
				[1.0] = 3.3144373893738
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			localization_strings = {
				[1.0] = "pdr_morris_level_conversations_khorne_twentyfour_02"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			}
		},
		pwe_morris_level_conversations_nurgle_twentyeight_02 = {
			face_animations_n = 1,
			database = "hero_conversations_dlc_morris_level_banter_themed",
			sound_events_n = 1,
			category = "story_talk",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pwe_morris_level_conversations_nurgle_twentyeight_02"
			},
			sound_events_duration = {
				[1.0] = 1.4549791812897
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			localization_strings = {
				[1.0] = "pwe_morris_level_conversations_nurgle_twentyeight_02"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			}
		},
		pes_morris_level_conversations_slaanesh_thirty_03 = {
			face_animations_n = 1,
			database = "hero_conversations_dlc_morris_level_banter_themed",
			sound_events_n = 1,
			category = "story_talk",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pes_morris_level_conversations_slaanesh_thirty_03"
			},
			sound_events_duration = {
				[1.0] = 2.2461874485016
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			localization_strings = {
				[1.0] = "pes_morris_level_conversations_slaanesh_thirty_03"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			}
		},
		pes_morris_level_conversations_slaanesh_thirty_02 = {
			face_animations_n = 1,
			database = "hero_conversations_dlc_morris_level_banter_themed",
			sound_events_n = 1,
			category = "story_talk",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pes_morris_level_conversations_slaanesh_thirty_02"
			},
			sound_events_duration = {
				[1.0] = 2.5013542175293
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			localization_strings = {
				[1.0] = "pes_morris_level_conversations_slaanesh_thirty_02"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			}
		},
		pes_morris_level_conversations_nurgle_twentynine_02 = {
			face_animations_n = 1,
			database = "hero_conversations_dlc_morris_level_banter_themed",
			sound_events_n = 1,
			category = "story_talk",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pes_morris_level_conversations_nurgle_twentynine_02"
			},
			sound_events_duration = {
				[1.0] = 2.6536667346954
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			localization_strings = {
				[1.0] = "pes_morris_level_conversations_nurgle_twentynine_02"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			}
		},
		pwe_morris_level_conversations_nurgle_twentyeight_01 = {
			face_animations_n = 1,
			database = "hero_conversations_dlc_morris_level_banter_themed",
			sound_events_n = 1,
			category = "story_talk",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pwe_morris_level_conversations_nurgle_twentyeight_01"
			},
			sound_events_duration = {
				[1.0] = 2.7229166030884
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			localization_strings = {
				[1.0] = "pwe_morris_level_conversations_nurgle_twentyeight_01"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			}
		},
		pbw_morris_level_conversations_tzeentch_twentyseven_01 = {
			face_animations_n = 1,
			database = "hero_conversations_dlc_morris_level_banter_themed",
			sound_events_n = 1,
			category = "story_talk",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pbw_morris_level_conversations_tzeentch_twentyseven_01"
			},
			sound_events_duration = {
				[1.0] = 4.2238335609436
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			localization_strings = {
				[1.0] = "pbw_morris_level_conversations_tzeentch_twentyseven_01"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			}
		},
		pes_morris_level_conversations_nurgle_twentynine_01 = {
			face_animations_n = 1,
			database = "hero_conversations_dlc_morris_level_banter_themed",
			sound_events_n = 1,
			category = "story_talk",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pes_morris_level_conversations_nurgle_twentynine_01"
			},
			sound_events_duration = {
				[1.0] = 1.6353332996368
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			localization_strings = {
				[1.0] = "pes_morris_level_conversations_nurgle_twentynine_01"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			}
		},
		pbw_morris_level_conversations_tzeentch_twentysix_01 = {
			face_animations_n = 1,
			database = "hero_conversations_dlc_morris_level_banter_themed",
			sound_events_n = 1,
			category = "story_talk",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pbw_morris_level_conversations_tzeentch_twentysix_01"
			},
			sound_events_duration = {
				[1.0] = 7.106062412262
			},
			face_animations = {
				[1.0] = "face_neutral"
			},
			localization_strings = {
				[1.0] = "pbw_morris_level_conversations_tzeentch_twentysix_01"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			}
		},
		pes_morris_level_conversations_khorne_twentyfive_01 = {
			face_animations_n = 1,
			database = "hero_conversations_dlc_morris_level_banter_themed",
			sound_events_n = 1,
			category = "story_talk",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pes_morris_level_conversations_khorne_twentyfive_01"
			},
			sound_events_duration = {
				[1.0] = 1.2056875228882
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			localization_strings = {
				[1.0] = "pes_morris_level_conversations_khorne_twentyfive_01"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			}
		},
		pdr_morris_level_conversations_khorne_twentyfour_01 = {
			face_animations_n = 1,
			database = "hero_conversations_dlc_morris_level_banter_themed",
			sound_events_n = 1,
			category = "story_talk",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pdr_morris_level_conversations_khorne_twentyfour_01"
			},
			sound_events_duration = {
				[1.0] = 2.4539375305176
			},
			face_animations = {
				[1.0] = "face_neutral"
			},
			localization_strings = {
				[1.0] = "pdr_morris_level_conversations_khorne_twentyfour_01"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			}
		},
		pdr_morris_level_conversations_nurgle_twentynine_01 = {
			face_animations_n = 1,
			database = "hero_conversations_dlc_morris_level_banter_themed",
			sound_events_n = 1,
			category = "story_talk",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pdr_morris_level_conversations_nurgle_twentynine_01"
			},
			sound_events_duration = {
				[1.0] = 4.3611040115356
			},
			face_animations = {
				[1.0] = "face_neutral"
			},
			localization_strings = {
				[1.0] = "pdr_morris_level_conversations_nurgle_twentynine_01"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			}
		},
		pdr_morris_level_conversations_tzeentch_twentyseven_01 = {
			face_animations_n = 1,
			database = "hero_conversations_dlc_morris_level_banter_themed",
			sound_events_n = 1,
			category = "story_talk",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pdr_morris_level_conversations_tzeentch_twentyseven_01"
			},
			sound_events_duration = {
				[1.0] = 8.3637294769287
			},
			face_animations = {
				[1.0] = "face_neutral"
			},
			localization_strings = {
				[1.0] = "pdr_morris_level_conversations_tzeentch_twentyseven_01"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			}
		},
		pwh_morris_level_conversations_tzeentch_twentysix_01 = {
			face_animations_n = 1,
			database = "hero_conversations_dlc_morris_level_banter_themed",
			sound_events_n = 1,
			category = "story_talk",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pwh_morris_level_conversations_tzeentch_twentysix_01"
			},
			sound_events_duration = {
				[1.0] = 3.7522916793823
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			localization_strings = {
				[1.0] = "pwh_morris_level_conversations_tzeentch_twentysix_01"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			}
		},
		pwh_morris_level_conversations_tzeentch_twentysix_02 = {
			face_animations_n = 1,
			database = "hero_conversations_dlc_morris_level_banter_themed",
			sound_events_n = 1,
			category = "story_talk",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pwh_morris_level_conversations_tzeentch_twentysix_02"
			},
			sound_events_duration = {
				[1.0] = 3.2571249008179
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			localization_strings = {
				[1.0] = "pwh_morris_level_conversations_tzeentch_twentysix_02"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			}
		},
		pes_morris_level_conversations_nurgle_twentyeight_02 = {
			face_animations_n = 1,
			database = "hero_conversations_dlc_morris_level_banter_themed",
			sound_events_n = 1,
			category = "story_talk",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pes_morris_level_conversations_nurgle_twentyeight_02"
			},
			sound_events_duration = {
				[1.0] = 2.2034375667572
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			localization_strings = {
				[1.0] = "pes_morris_level_conversations_nurgle_twentyeight_02"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			}
		},
		pes_morris_level_conversations_khorne_twentyfive_02 = {
			face_animations_n = 1,
			database = "hero_conversations_dlc_morris_level_banter_themed",
			sound_events_n = 1,
			category = "story_talk",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pes_morris_level_conversations_khorne_twentyfive_02"
			},
			sound_events_duration = {
				[1.0] = 2.1561458110809
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			localization_strings = {
				[1.0] = "pes_morris_level_conversations_khorne_twentyfive_02"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			}
		},
		pwe_morris_level_conversations_slaanesh_thirty_02 = {
			face_animations_n = 1,
			database = "hero_conversations_dlc_morris_level_banter_themed",
			sound_events_n = 1,
			category = "story_talk",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pwe_morris_level_conversations_slaanesh_thirty_02"
			},
			sound_events_duration = {
				[1.0] = 1.1140625476837
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			localization_strings = {
				[1.0] = "pwe_morris_level_conversations_slaanesh_thirty_02"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			}
		}
	})
end
