return function ()
	define_rule({
		name = "pwh_crawl_conversation_one_01",
		response = "pwh_crawl_conversation_one_01",
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
				"empire_soldier",
				OP.EQ,
				1
			},
			{
				"faction_memory",
				"crawl_pub_horde_end",
				OP.EQ,
				1
			},
			{
				"faction_memory",
				"crawl_spot_third_pub",
				OP.NOT,
				"crawl_spot_third_pub"
			},
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMEDIFF,
				OP.GT,
				600
			},
			{
				"faction_memory",
				"crawl_conversation_one",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"crawl_conversation_one",
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
		name = "pes_crawl_conversation_one_01",
		response = "pes_crawl_conversation_one_01",
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
				"pwh_crawl_conversation_one_01"
			},
			{
				"user_context",
				"enemies_close",
				OP.LT,
				3
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
		name = "pwh_crawl_conversation_one_02",
		response = "pwh_crawl_conversation_one_02",
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
				"pes_crawl_conversation_one_01"
			},
			{
				"user_context",
				"enemies_close",
				OP.LT,
				3
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
		name = "pes_crawl_conversation_one_02",
		response = "pes_crawl_conversation_one_02",
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
				"pwh_crawl_conversation_one_02"
			},
			{
				"user_context",
				"enemies_close",
				OP.LT,
				3
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
		name = "pwh_crawl_conversation_one_03",
		response = "pwh_crawl_conversation_one_03",
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
				"pes_crawl_conversation_one_02"
			},
			{
				"user_context",
				"enemies_close",
				OP.LT,
				3
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
		name = "pwh_crawl_conversation_two_01",
		response = "pwh_crawl_conversation_two_01",
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
				"bright_wizard",
				OP.EQ,
				1
			},
			{
				"faction_memory",
				"crawl_pub_horde_end",
				OP.EQ,
				1
			},
			{
				"faction_memory",
				"crawl_spot_third_pub",
				OP.NOT,
				"crawl_spot_third_pub"
			},
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMEDIFF,
				OP.GT,
				600
			},
			{
				"faction_memory",
				"crawl_conversation_two",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"crawl_conversation_two",
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
		name = "pbw_crawl_conversation_two_01",
		response = "pbw_crawl_conversation_two_01",
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
				"pwh_crawl_conversation_two_01"
			},
			{
				"user_context",
				"enemies_close",
				OP.LT,
				3
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
		name = "pwh_crawl_conversation_two_02",
		response = "pwh_crawl_conversation_two_02",
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
				"pbw_crawl_conversation_two_01"
			},
			{
				"user_context",
				"enemies_close",
				OP.LT,
				3
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
		name = "pbw_crawl_conversation_three_01",
		response = "pbw_crawl_conversation_three_01",
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
				"empire_soldier",
				OP.EQ,
				1
			},
			{
				"faction_memory",
				"crawl_pub_horde_end",
				OP.EQ,
				1
			},
			{
				"faction_memory",
				"crawl_spot_third_pub",
				OP.NOT,
				"crawl_spot_third_pub"
			},
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMEDIFF,
				OP.GT,
				600
			},
			{
				"faction_memory",
				"crawl_conversation_three",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"crawl_conversation_three",
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
		name = "pes_crawl_conversation_three_01",
		response = "pes_crawl_conversation_three_01",
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
				"pbw_crawl_conversation_three_01"
			},
			{
				"user_context",
				"enemies_close",
				OP.LT,
				3
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
		name = "pbw_crawl_conversation_three_02",
		response = "pbw_crawl_conversation_three_02",
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
				"pes_crawl_conversation_three_01"
			},
			{
				"user_context",
				"enemies_close",
				OP.LT,
				3
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
		name = "pes_crawl_conversation_three_02",
		response = "pes_crawl_conversation_three_02",
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
				"pbw_crawl_conversation_three_02"
			},
			{
				"user_context",
				"enemies_close",
				OP.LT,
				3
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
		name = "pes_crawl_conversation_four_01",
		response = "pes_crawl_conversation_four_01",
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
				"faction_memory",
				"crawl_pub_horde_end",
				OP.EQ,
				1
			},
			{
				"faction_memory",
				"crawl_spot_third_pub",
				OP.NOT,
				"crawl_spot_third_pub"
			},
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMEDIFF,
				OP.GT,
				600
			},
			{
				"faction_memory",
				"crawl_conversation_four",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"crawl_conversation_four",
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
		name = "pwe_crawl_conversation_four_01",
		response = "pwe_crawl_conversation_four_01",
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
				"pes_crawl_conversation_four_01"
			},
			{
				"user_context",
				"enemies_close",
				OP.LT,
				3
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
		name = "pes_crawl_conversation_four_02",
		response = "pes_crawl_conversation_four_02",
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
				"pwe_crawl_conversation_four_01"
			},
			{
				"user_context",
				"enemies_close",
				OP.LT,
				3
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
		name = "pdr_crawl_conversation_five_01",
		response = "pdr_crawl_conversation_five_01",
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
				"faction_memory",
				"crawl_pub_horde_end",
				OP.EQ,
				1
			},
			{
				"faction_memory",
				"crawl_spot_third_pub",
				OP.NOT,
				"crawl_spot_third_pub"
			},
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMEDIFF,
				OP.GT,
				600
			},
			{
				"faction_memory",
				"crawl_conversation_five",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"crawl_conversation_five",
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
		name = "pes_crawl_conversation_five_01",
		response = "pes_crawl_conversation_five_01",
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
				"pdr_crawl_conversation_five_01"
			},
			{
				"user_context",
				"enemies_close",
				OP.LT,
				3
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
		name = "pdr_crawl_conversation_five_02",
		response = "pdr_crawl_conversation_five_02",
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
				"pes_crawl_conversation_five_01"
			},
			{
				"user_context",
				"enemies_close",
				OP.LT,
				3
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
		name = "pes_crawl_conversation_five_02",
		response = "pes_crawl_conversation_five_02",
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
				"pdr_crawl_conversation_five_02"
			},
			{
				"user_context",
				"enemies_close",
				OP.LT,
				3
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
		name = "pdr_crawl_conversation_six_01",
		response = "pdr_crawl_conversation_six_01",
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
				"faction_memory",
				"crawl_pub_horde_end",
				OP.EQ,
				1
			},
			{
				"faction_memory",
				"crawl_spot_third_pub",
				OP.NOT,
				"crawl_spot_third_pub"
			},
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMEDIFF,
				OP.GT,
				600
			},
			{
				"faction_memory",
				"crawl_conversation_six",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"crawl_conversation_six",
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
		name = "pbw_crawl_conversation_six_01",
		response = "pbw_crawl_conversation_six_01",
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
				"pdr_crawl_conversation_six_01"
			},
			{
				"user_context",
				"enemies_close",
				OP.LT,
				3
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
		name = "pdr_crawl_conversation_six_02",
		response = "pdr_crawl_conversation_six_02",
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
				"pbw_crawl_conversation_six_01"
			},
			{
				"user_context",
				"enemies_close",
				OP.LT,
				3
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
		name = "pbw_crawl_conversation_six_02",
		response = "pbw_crawl_conversation_six_02",
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
				"pdr_crawl_conversation_six_02"
			},
			{
				"user_context",
				"enemies_close",
				OP.LT,
				3
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
		name = "pwe_crawl_conversation_seven_01",
		response = "pwe_crawl_conversation_seven_01",
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
				"witch_hunter",
				OP.EQ,
				1
			},
			{
				"faction_memory",
				"crawl_pub_horde_end",
				OP.EQ,
				1
			},
			{
				"faction_memory",
				"crawl_spot_third_pub",
				OP.NOT,
				"crawl_spot_third_pub"
			},
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMEDIFF,
				OP.GT,
				600
			},
			{
				"faction_memory",
				"crawl_conversation_seven",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"crawl_conversation_seven",
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
		name = "pwh_crawl_conversation_seven_01",
		response = "pwh_crawl_conversation_seven_01",
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
				"pwe_crawl_conversation_seven_01"
			},
			{
				"user_context",
				"enemies_close",
				OP.LT,
				3
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
		name = "pwe_crawl_conversation_seven_02",
		response = "pwe_crawl_conversation_seven_02",
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
				"pwh_crawl_conversation_seven_01"
			},
			{
				"user_context",
				"enemies_close",
				OP.LT,
				3
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
		name = "pwh_crawl_conversation_seven_02",
		response = "pwh_crawl_conversation_seven_02",
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
				"pwe_crawl_conversation_seven_02"
			},
			{
				"user_context",
				"enemies_close",
				OP.LT,
				3
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
		name = "pwe_crawl_conversation_seven_03",
		response = "pwe_crawl_conversation_seven_03",
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
				"pwh_crawl_conversation_seven_02"
			},
			{
				"user_context",
				"enemies_close",
				OP.LT,
				3
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
		name = "pwh_crawl_conversation_eight_01",
		response = "pwh_crawl_conversation_eight_01",
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
				"faction_memory",
				"crawl_pub_horde_end",
				OP.EQ,
				1
			},
			{
				"faction_memory",
				"crawl_spot_third_pub",
				OP.NOT,
				"crawl_spot_third_pub"
			},
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMEDIFF,
				OP.GT,
				600
			},
			{
				"faction_memory",
				"crawl_conversation_eight",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"crawl_conversation_eight",
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
		name = "pdr_crawl_conversation_eight_01",
		response = "pdr_crawl_conversation_eight_01",
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
				"pwh_crawl_conversation_eight_01"
			},
			{
				"user_context",
				"enemies_close",
				OP.LT,
				3
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
		name = "pwh_crawl_conversation_eight_02",
		response = "pwh_crawl_conversation_eight_02",
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
				"pdr_crawl_conversation_eight_01"
			},
			{
				"user_context",
				"enemies_close",
				OP.LT,
				3
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
		name = "pdr_crawl_conversation_eight_02",
		response = "pdr_crawl_conversation_eight_02",
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
				"pwh_crawl_conversation_eight_02"
			},
			{
				"user_context",
				"enemies_close",
				OP.LT,
				3
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
		name = "pwe_crawl_conversation_nine_01",
		response = "pwe_crawl_conversation_nine_01",
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
				"bright_wizard",
				OP.EQ,
				1
			},
			{
				"faction_memory",
				"crawl_pub_horde_end",
				OP.EQ,
				1
			},
			{
				"faction_memory",
				"crawl_spot_third_pub",
				OP.NOT,
				"crawl_spot_third_pub"
			},
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMEDIFF,
				OP.GT,
				600
			},
			{
				"faction_memory",
				"crawl_conversation_nine",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"crawl_conversation_nine",
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
		name = "pbw_crawl_conversation_nine_01",
		response = "pbw_crawl_conversation_nine_01",
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
				"pwe_crawl_conversation_nine_01"
			},
			{
				"user_context",
				"enemies_close",
				OP.LT,
				3
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
		name = "pwe_crawl_conversation_nine_02",
		response = "pwe_crawl_conversation_nine_02",
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
				"pbw_crawl_conversation_nine_01"
			},
			{
				"user_context",
				"enemies_close",
				OP.LT,
				3
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
		name = "pbw_crawl_conversation_nine_02",
		response = "pbw_crawl_conversation_nine_02",
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
				"pwe_crawl_conversation_nine_02"
			},
			{
				"user_context",
				"enemies_close",
				OP.LT,
				3
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
		name = "pdr_crawl_conversation_ten_01",
		response = "pdr_crawl_conversation_ten_01",
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
				"faction_memory",
				"crawl_pub_horde_end",
				OP.EQ,
				1
			},
			{
				"faction_memory",
				"crawl_spot_third_pub",
				OP.NOT,
				"crawl_spot_third_pub"
			},
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMEDIFF,
				OP.GT,
				600
			},
			{
				"faction_memory",
				"crawl_conversation_ten",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"crawl_conversation_ten",
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
		name = "pwe_crawl_conversation_ten_01",
		response = "pwe_crawl_conversation_ten_01",
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
				"pdr_crawl_conversation_ten_01"
			},
			{
				"user_context",
				"enemies_close",
				OP.LT,
				3
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
		name = "pdr_crawl_conversation_ten_02",
		response = "pdr_crawl_conversation_ten_02",
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
				"pwe_crawl_conversation_ten_01"
			},
			{
				"user_context",
				"enemies_close",
				OP.LT,
				3
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
		name = "pwe_crawl_conversation_ten_02",
		response = "pwe_crawl_conversation_ten_02",
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
				"pdr_crawl_conversation_ten_02"
			},
			{
				"user_context",
				"enemies_close",
				OP.LT,
				3
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
	add_dialogues({
		pwe_crawl_conversation_seven_01 = {
			face_animations_n = 1,
			database = "hero_conversations_crawl",
			sound_events_n = 1,
			category = "story_talk",
			dialogue_animations_n = 1,
			localization_strings = {
				[1.0] = "pwe_crawl_conversation_seven_01"
			},
			sound_events = {
				[1.0] = "pwe_crawl_conversation_seven_01"
			},
			face_animations = {
				[1.0] = "face_neutral"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			sound_events_duration = {
				[1.0] = 10.144520759583
			}
		},
		pbw_crawl_conversation_two_01 = {
			face_animations_n = 1,
			database = "hero_conversations_crawl",
			sound_events_n = 1,
			category = "story_talk",
			dialogue_animations_n = 1,
			localization_strings = {
				[1.0] = "pbw_crawl_conversation_two_01"
			},
			sound_events = {
				[1.0] = "pbw_crawl_conversation_two_01"
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			sound_events_duration = {
				[1.0] = 2.762312412262
			}
		},
		pwe_crawl_conversation_seven_03 = {
			face_animations_n = 1,
			database = "hero_conversations_crawl",
			sound_events_n = 1,
			category = "story_talk",
			dialogue_animations_n = 1,
			localization_strings = {
				[1.0] = "pwe_crawl_conversation_seven_03"
			},
			sound_events = {
				[1.0] = "pwe_crawl_conversation_seven_03"
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			sound_events_duration = {
				[1.0] = 3.2339792251587
			}
		},
		pwe_crawl_conversation_seven_02 = {
			face_animations_n = 1,
			database = "hero_conversations_crawl",
			sound_events_n = 1,
			category = "story_talk",
			dialogue_animations_n = 1,
			localization_strings = {
				[1.0] = "pwe_crawl_conversation_seven_02"
			},
			sound_events = {
				[1.0] = "pwe_crawl_conversation_seven_02"
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			sound_events_duration = {
				[1.0] = 2.3214375972748
			}
		},
		pdr_crawl_conversation_ten_02 = {
			face_animations_n = 1,
			database = "hero_conversations_crawl",
			sound_events_n = 1,
			category = "story_talk",
			dialogue_animations_n = 1,
			localization_strings = {
				[1.0] = "pdr_crawl_conversation_ten_02"
			},
			sound_events = {
				[1.0] = "pdr_crawl_conversation_ten_02"
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			sound_events_duration = {
				[1.0] = 2.6574165821075
			}
		},
		pdr_crawl_conversation_eight_02 = {
			face_animations_n = 1,
			database = "hero_conversations_crawl",
			sound_events_n = 1,
			category = "story_talk",
			dialogue_animations_n = 1,
			localization_strings = {
				[1.0] = "pdr_crawl_conversation_eight_02"
			},
			sound_events = {
				[1.0] = "pdr_crawl_conversation_eight_02"
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			sound_events_duration = {
				[1.0] = 8.3614587783813
			}
		},
		pwh_crawl_conversation_seven_01 = {
			face_animations_n = 1,
			database = "hero_conversations_crawl",
			sound_events_n = 1,
			category = "story_talk",
			dialogue_animations_n = 1,
			localization_strings = {
				[1.0] = "pwh_crawl_conversation_seven_01"
			},
			sound_events = {
				[1.0] = "pwh_crawl_conversation_seven_01"
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			sound_events_duration = {
				[1.0] = 5.4539585113525
			}
		},
		pes_crawl_conversation_four_02 = {
			face_animations_n = 1,
			database = "hero_conversations_crawl",
			sound_events_n = 1,
			category = "story_talk",
			dialogue_animations_n = 1,
			localization_strings = {
				[1.0] = "pes_crawl_conversation_four_02"
			},
			sound_events = {
				[1.0] = "pes_crawl_conversation_four_02"
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			sound_events_duration = {
				[1.0] = 5.5877914428711
			}
		},
		pwh_crawl_conversation_eight_01 = {
			face_animations_n = 1,
			database = "hero_conversations_crawl",
			sound_events_n = 1,
			category = "story_talk",
			dialogue_animations_n = 1,
			localization_strings = {
				[1.0] = "pwh_crawl_conversation_eight_01"
			},
			sound_events = {
				[1.0] = "pwh_crawl_conversation_eight_01"
			},
			face_animations = {
				[1.0] = "face_neutral"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			sound_events_duration = {
				[1.0] = 14.767416954041
			}
		},
		pes_crawl_conversation_three_02 = {
			face_animations_n = 1,
			database = "hero_conversations_crawl",
			sound_events_n = 1,
			category = "story_talk",
			dialogue_animations_n = 1,
			localization_strings = {
				[1.0] = "pes_crawl_conversation_three_02"
			},
			sound_events = {
				[1.0] = "pes_crawl_conversation_three_02"
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			sound_events_duration = {
				[1.0] = 1.1869374513626
			}
		},
		pes_crawl_conversation_one_01 = {
			face_animations_n = 1,
			database = "hero_conversations_crawl",
			sound_events_n = 1,
			category = "story_talk",
			dialogue_animations_n = 1,
			localization_strings = {
				[1.0] = "pes_crawl_conversation_one_01"
			},
			sound_events = {
				[1.0] = "pes_crawl_conversation_one_01"
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			sound_events_duration = {
				[1.0] = 3.3469998836517
			}
		},
		pdr_crawl_conversation_six_01 = {
			face_animations_n = 1,
			database = "hero_conversations_crawl",
			sound_events_n = 1,
			category = "story_talk",
			dialogue_animations_n = 1,
			localization_strings = {
				[1.0] = "pdr_crawl_conversation_six_01"
			},
			sound_events = {
				[1.0] = "pdr_crawl_conversation_six_01"
			},
			face_animations = {
				[1.0] = "face_neutral"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			sound_events_duration = {
				[1.0] = 2.7935209274292
			}
		},
		pwe_crawl_conversation_ten_02 = {
			face_animations_n = 1,
			database = "hero_conversations_crawl",
			sound_events_n = 1,
			category = "story_talk",
			dialogue_animations_n = 1,
			localization_strings = {
				[1.0] = "pwe_crawl_conversation_ten_02"
			},
			sound_events = {
				[1.0] = "pwe_crawl_conversation_ten_02"
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			sound_events_duration = {
				[1.0] = 2.3052084445953
			}
		},
		pdr_crawl_conversation_five_01 = {
			face_animations_n = 1,
			database = "hero_conversations_crawl",
			sound_events_n = 1,
			category = "story_talk",
			dialogue_animations_n = 1,
			localization_strings = {
				[1.0] = "pdr_crawl_conversation_five_01"
			},
			sound_events = {
				[1.0] = "pdr_crawl_conversation_five_01"
			},
			face_animations = {
				[1.0] = "face_neutral"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			sound_events_duration = {
				[1.0] = 5.3464164733887
			}
		},
		pwe_crawl_conversation_four_01 = {
			face_animations_n = 1,
			database = "hero_conversations_crawl",
			sound_events_n = 1,
			category = "story_talk",
			dialogue_animations_n = 1,
			localization_strings = {
				[1.0] = "pwe_crawl_conversation_four_01"
			},
			sound_events = {
				[1.0] = "pwe_crawl_conversation_four_01"
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			sound_events_duration = {
				[1.0] = 5.275812625885
			}
		},
		pwh_crawl_conversation_two_01 = {
			face_animations_n = 1,
			database = "hero_conversations_crawl",
			sound_events_n = 1,
			category = "story_talk",
			dialogue_animations_n = 1,
			localization_strings = {
				[1.0] = "pwh_crawl_conversation_two_01"
			},
			sound_events = {
				[1.0] = "pwh_crawl_conversation_two_01"
			},
			face_animations = {
				[1.0] = "face_neutral"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			sound_events_duration = {
				[1.0] = 8.8224582672119
			}
		},
		pdr_crawl_conversation_six_02 = {
			face_animations_n = 1,
			database = "hero_conversations_crawl",
			sound_events_n = 1,
			category = "story_talk",
			dialogue_animations_n = 1,
			localization_strings = {
				[1.0] = "pdr_crawl_conversation_six_02"
			},
			sound_events = {
				[1.0] = "pdr_crawl_conversation_six_02"
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			sound_events_duration = {
				[1.0] = 7.7598123550415
			}
		},
		pwh_crawl_conversation_one_02 = {
			face_animations_n = 1,
			database = "hero_conversations_crawl",
			sound_events_n = 1,
			category = "story_talk",
			dialogue_animations_n = 1,
			localization_strings = {
				[1.0] = "pwh_crawl_conversation_one_02"
			},
			sound_events = {
				[1.0] = "pwh_crawl_conversation_one_02"
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			sound_events_duration = {
				[1.0] = 6.6771459579468
			}
		},
		pbw_crawl_conversation_six_01 = {
			face_animations_n = 1,
			database = "hero_conversations_crawl",
			sound_events_n = 1,
			category = "story_talk",
			dialogue_animations_n = 1,
			localization_strings = {
				[1.0] = "pbw_crawl_conversation_six_01"
			},
			sound_events = {
				[1.0] = "pbw_crawl_conversation_six_01"
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			sound_events_duration = {
				[1.0] = 7.9627289772034
			}
		},
		pwh_crawl_conversation_one_03 = {
			face_animations_n = 1,
			database = "hero_conversations_crawl",
			sound_events_n = 1,
			category = "story_talk",
			dialogue_animations_n = 1,
			localization_strings = {
				[1.0] = "pwh_crawl_conversation_one_03"
			},
			sound_events = {
				[1.0] = "pwh_crawl_conversation_one_03"
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			sound_events_duration = {
				[1.0] = 3.522604227066
			}
		},
		pwh_crawl_conversation_seven_02 = {
			face_animations_n = 1,
			database = "hero_conversations_crawl",
			sound_events_n = 1,
			category = "story_talk",
			dialogue_animations_n = 1,
			localization_strings = {
				[1.0] = "pwh_crawl_conversation_seven_02"
			},
			sound_events = {
				[1.0] = "pwh_crawl_conversation_seven_02"
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			sound_events_duration = {
				[1.0] = 2.3595833778381
			}
		},
		pwe_crawl_conversation_ten_01 = {
			face_animations_n = 1,
			database = "hero_conversations_crawl",
			sound_events_n = 1,
			category = "story_talk",
			dialogue_animations_n = 1,
			localization_strings = {
				[1.0] = "pwe_crawl_conversation_ten_01"
			},
			sound_events = {
				[1.0] = "pwe_crawl_conversation_ten_01"
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			sound_events_duration = {
				[1.0] = 8.5351247787476
			}
		},
		pwh_crawl_conversation_one_01 = {
			face_animations_n = 1,
			database = "hero_conversations_crawl",
			sound_events_n = 1,
			category = "story_talk",
			dialogue_animations_n = 1,
			localization_strings = {
				[1.0] = "pwh_crawl_conversation_one_01"
			},
			sound_events = {
				[1.0] = "pwh_crawl_conversation_one_01"
			},
			face_animations = {
				[1.0] = "face_neutral"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			sound_events_duration = {
				[1.0] = 3.5942709445953
			}
		},
		pwe_crawl_conversation_nine_01 = {
			face_animations_n = 1,
			database = "hero_conversations_crawl",
			sound_events_n = 1,
			category = "story_talk",
			dialogue_animations_n = 1,
			localization_strings = {
				[1.0] = "pwe_crawl_conversation_nine_01"
			},
			sound_events = {
				[1.0] = "pwe_crawl_conversation_nine_01"
			},
			face_animations = {
				[1.0] = "face_neutral"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			sound_events_duration = {
				[1.0] = 6.2093749046326
			}
		},
		pdr_crawl_conversation_ten_01 = {
			face_animations_n = 1,
			database = "hero_conversations_crawl",
			sound_events_n = 1,
			category = "story_talk",
			dialogue_animations_n = 1,
			localization_strings = {
				[1.0] = "pdr_crawl_conversation_ten_01"
			},
			sound_events = {
				[1.0] = "pdr_crawl_conversation_ten_01"
			},
			face_animations = {
				[1.0] = "face_neutral"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			sound_events_duration = {
				[1.0] = 6.6923751831055
			}
		},
		pbw_crawl_conversation_nine_02 = {
			face_animations_n = 1,
			database = "hero_conversations_crawl",
			sound_events_n = 1,
			category = "story_talk",
			dialogue_animations_n = 1,
			localization_strings = {
				[1.0] = "pbw_crawl_conversation_nine_02"
			},
			sound_events = {
				[1.0] = "pbw_crawl_conversation_nine_02"
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			sound_events_duration = {
				[1.0] = 4.5683126449585
			}
		},
		pwe_crawl_conversation_nine_02 = {
			face_animations_n = 1,
			database = "hero_conversations_crawl",
			sound_events_n = 1,
			category = "story_talk",
			dialogue_animations_n = 1,
			localization_strings = {
				[1.0] = "pwe_crawl_conversation_nine_02"
			},
			sound_events = {
				[1.0] = "pwe_crawl_conversation_nine_02"
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			sound_events_duration = {
				[1.0] = 6.2045207023621
			}
		},
		pbw_crawl_conversation_nine_01 = {
			face_animations_n = 1,
			database = "hero_conversations_crawl",
			sound_events_n = 1,
			category = "story_talk",
			dialogue_animations_n = 1,
			localization_strings = {
				[1.0] = "pbw_crawl_conversation_nine_01"
			},
			sound_events = {
				[1.0] = "pbw_crawl_conversation_nine_01"
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			sound_events_duration = {
				[1.0] = 8.0358753204346
			}
		},
		pes_crawl_conversation_five_01 = {
			face_animations_n = 1,
			database = "hero_conversations_crawl",
			sound_events_n = 1,
			category = "story_talk",
			dialogue_animations_n = 1,
			localization_strings = {
				[1.0] = "pes_crawl_conversation_five_01"
			},
			sound_events = {
				[1.0] = "pes_crawl_conversation_five_01"
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			sound_events_duration = {
				[1.0] = 5.2924790382385
			}
		},
		pdr_crawl_conversation_eight_01 = {
			face_animations_n = 1,
			database = "hero_conversations_crawl",
			sound_events_n = 1,
			category = "story_talk",
			dialogue_animations_n = 1,
			localization_strings = {
				[1.0] = "pdr_crawl_conversation_eight_01"
			},
			sound_events = {
				[1.0] = "pdr_crawl_conversation_eight_01"
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			sound_events_duration = {
				[1.0] = 5.6063122749329
			}
		},
		pwh_crawl_conversation_eight_02 = {
			face_animations_n = 1,
			database = "hero_conversations_crawl",
			sound_events_n = 1,
			category = "story_talk",
			dialogue_animations_n = 1,
			localization_strings = {
				[1.0] = "pwh_crawl_conversation_eight_02"
			},
			sound_events = {
				[1.0] = "pwh_crawl_conversation_eight_02"
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			sound_events_duration = {
				[1.0] = 4.5231251716614
			}
		},
		pdr_crawl_conversation_five_02 = {
			face_animations_n = 1,
			database = "hero_conversations_crawl",
			sound_events_n = 1,
			category = "story_talk",
			dialogue_animations_n = 1,
			localization_strings = {
				[1.0] = "pdr_crawl_conversation_five_02"
			},
			sound_events = {
				[1.0] = "pdr_crawl_conversation_five_02"
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			sound_events_duration = {
				[1.0] = 5.0065627098083
			}
		},
		pes_crawl_conversation_three_01 = {
			face_animations_n = 1,
			database = "hero_conversations_crawl",
			sound_events_n = 1,
			category = "story_talk",
			dialogue_animations_n = 1,
			localization_strings = {
				[1.0] = "pes_crawl_conversation_three_01"
			},
			sound_events = {
				[1.0] = "pes_crawl_conversation_three_01"
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			sound_events_duration = {
				[1.0] = 5.8731665611267
			}
		},
		pes_crawl_conversation_one_02 = {
			face_animations_n = 1,
			database = "hero_conversations_crawl",
			sound_events_n = 1,
			category = "story_talk",
			dialogue_animations_n = 1,
			localization_strings = {
				[1.0] = "pes_crawl_conversation_one_02"
			},
			sound_events = {
				[1.0] = "pes_crawl_conversation_one_02"
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			sound_events_duration = {
				[1.0] = 4.5279583930969
			}
		},
		pes_crawl_conversation_four_01 = {
			face_animations_n = 1,
			database = "hero_conversations_crawl",
			sound_events_n = 1,
			category = "story_talk",
			dialogue_animations_n = 1,
			localization_strings = {
				[1.0] = "pes_crawl_conversation_four_01"
			},
			sound_events = {
				[1.0] = "pes_crawl_conversation_four_01"
			},
			face_animations = {
				[1.0] = "face_neutral"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			sound_events_duration = {
				[1.0] = 2.8873333930969
			}
		},
		pes_crawl_conversation_five_02 = {
			face_animations_n = 1,
			database = "hero_conversations_crawl",
			sound_events_n = 1,
			category = "story_talk",
			dialogue_animations_n = 1,
			localization_strings = {
				[1.0] = "pes_crawl_conversation_five_02"
			},
			sound_events = {
				[1.0] = "pes_crawl_conversation_five_02"
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			sound_events_duration = {
				[1.0] = 2.3338332176209
			}
		},
		pwh_crawl_conversation_two_02 = {
			face_animations_n = 1,
			database = "hero_conversations_crawl",
			sound_events_n = 1,
			category = "story_talk",
			dialogue_animations_n = 1,
			localization_strings = {
				[1.0] = "pwh_crawl_conversation_two_02"
			},
			sound_events = {
				[1.0] = "pwh_crawl_conversation_two_02"
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			sound_events_duration = {
				[1.0] = 8.4113330841065
			}
		},
		pbw_crawl_conversation_six_02 = {
			face_animations_n = 1,
			database = "hero_conversations_crawl",
			sound_events_n = 1,
			category = "story_talk",
			dialogue_animations_n = 1,
			localization_strings = {
				[1.0] = "pbw_crawl_conversation_six_02"
			},
			sound_events = {
				[1.0] = "pbw_crawl_conversation_six_02"
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			sound_events_duration = {
				[1.0] = 2.7851042747498
			}
		},
		pbw_crawl_conversation_three_02 = {
			face_animations_n = 1,
			database = "hero_conversations_crawl",
			sound_events_n = 1,
			category = "story_talk",
			dialogue_animations_n = 1,
			localization_strings = {
				[1.0] = "pbw_crawl_conversation_three_02"
			},
			sound_events = {
				[1.0] = "pbw_crawl_conversation_three_02"
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			sound_events_duration = {
				[1.0] = 3.3836040496826
			}
		},
		pbw_crawl_conversation_three_01 = {
			face_animations_n = 1,
			database = "hero_conversations_crawl",
			sound_events_n = 1,
			category = "story_talk",
			dialogue_animations_n = 1,
			localization_strings = {
				[1.0] = "pbw_crawl_conversation_three_01"
			},
			sound_events = {
				[1.0] = "pbw_crawl_conversation_three_01"
			},
			face_animations = {
				[1.0] = "face_neutral"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			sound_events_duration = {
				[1.0] = 3.7317707538605
			}
		}
	})
end
