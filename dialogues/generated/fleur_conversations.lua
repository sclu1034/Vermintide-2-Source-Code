return function ()
	define_rule({
		name = "pes_fleur_conversation_one_01",
		response = "pes_fleur_conversation_one_01",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"story_trigger"
			},
			{
				"global_context",
				"wood_elf",
				OP.EQ,
				1
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"empire_soldier"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"empire_soldier"
			},
			{
				"user_context",
				"player_career",
				OP.EQ,
				"es_questingknight"
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
				5
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
				60
			},
			{
				"faction_memory",
				"pes_fleur_conversation_one_01",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"pes_fleur_conversation_one_01",
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
		name = "pwe_fleur_conversation_one_01",
		response = "pwe_fleur_conversation_one_01",
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
				"pes_fleur_conversation_one_01"
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
		name = "pes_fleur_conversation_one_02",
		response = "pes_fleur_conversation_one_02",
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
				"pwe_fleur_conversation_one_01"
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
		name = "pwe_fleur_conversation_one_02",
		response = "pwe_fleur_conversation_one_02",
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
				"pes_fleur_conversation_one_02"
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
		name = "pes_fleur_conversation_one_03",
		response = "pes_fleur_conversation_one_03",
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
				"pwe_fleur_conversation_one_02"
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
		name = "pes_fleur_conversation_two_01",
		response = "pes_fleur_conversation_two_01",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"story_trigger"
			},
			{
				"global_context",
				"wood_elf",
				OP.EQ,
				1
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"empire_soldier"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"empire_soldier"
			},
			{
				"user_context",
				"player_career",
				OP.EQ,
				"es_questingknight"
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
				5
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
				60
			},
			{
				"faction_memory",
				"pes_fleur_conversation_two_01",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"pes_fleur_conversation_two_01",
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
		name = "pwe_fleur_conversation_two_01",
		response = "pwe_fleur_conversation_two_01",
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
				"pes_fleur_conversation_two_01"
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
		name = "pes_fleur_conversation_two_02",
		response = "pes_fleur_conversation_two_02",
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
				"pwe_fleur_conversation_two_01"
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
		name = "pwe_fleur_conversation_two_02",
		response = "pwe_fleur_conversation_two_02",
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
				"pes_fleur_conversation_two_02"
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
		name = "pes_fleur_conversation_three_01",
		response = "pes_fleur_conversation_three_01",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"story_trigger"
			},
			{
				"global_context",
				"wood_elf",
				OP.EQ,
				1
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"empire_soldier"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"empire_soldier"
			},
			{
				"user_context",
				"player_career",
				OP.EQ,
				"es_questingknight"
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
				5
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
				60
			},
			{
				"faction_memory",
				"pes_fleur_conversation_three_01",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"pes_fleur_conversation_three_01",
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
		name = "pwe_fleur_conversation_three_01",
		response = "pwe_fleur_conversation_three_01",
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
				"pes_fleur_conversation_three_01"
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
		name = "pes_fleur_conversation_four_01",
		response = "pes_fleur_conversation_four_01",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"story_trigger"
			},
			{
				"global_context",
				"wood_elf",
				OP.EQ,
				1
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"empire_soldier"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"empire_soldier"
			},
			{
				"user_context",
				"player_career",
				OP.EQ,
				"es_questingknight"
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
				5
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
				60
			},
			{
				"faction_memory",
				"pes_fleur_conversation_four_01",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"pes_fleur_conversation_four_01",
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
		name = "pwe_fleur_conversation_four_01",
		response = "pwe_fleur_conversation_four_01",
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
				"pes_fleur_conversation_four_01"
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
		name = "pes_fleur_conversation_four_02",
		response = "pes_fleur_conversation_four_02",
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
				"pwe_fleur_conversation_four_01"
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
		name = "pwe_fleur_conversation_four_02",
		response = "pwe_fleur_conversation_four_02",
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
				"pes_fleur_conversation_four_02"
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
		name = "pes_fleur_conversation_four_03",
		response = "pes_fleur_conversation_four_03",
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
				"pwe_fleur_conversation_four_02"
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
		name = "pwe_fleur_conversation_four_03",
		response = "pwe_fleur_conversation_four_03",
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
				"pes_fleur_conversation_four_03"
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
		name = "pdr_fleur_conversation_five_01",
		response = "pdr_fleur_conversation_five_01",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"story_trigger"
			},
			{
				"global_context",
				"es_questingknight",
				OP.EQ,
				1
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"dwarf_ranger"
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
				5
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
				60
			},
			{
				"faction_memory",
				"pdr_fleur_conversation_five_01",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"pdr_fleur_conversation_five_01",
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
		name = "pes_fleur_conversation_five_01",
		response = "pes_fleur_conversation_five_01",
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
				"pdr_fleur_conversation_five_01"
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
		name = "pdr_fleur_conversation_five_02",
		response = "pdr_fleur_conversation_five_02",
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
				"pes_fleur_conversation_five_01"
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
		name = "pes_fleur_conversation_five_02",
		response = "pes_fleur_conversation_five_02",
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
				"pdr_fleur_conversation_five_02"
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
		name = "pdr_fleur_conversation_six_01",
		response = "pdr_fleur_conversation_six_01",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"story_trigger"
			},
			{
				"global_context",
				"es_questingknight",
				OP.EQ,
				1
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"dwarf_ranger"
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
				5
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
				60
			},
			{
				"faction_memory",
				"pdr_fleur_conversation_six_01",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"pdr_fleur_conversation_six_01",
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
		name = "pes_fleur_conversation_six_01",
		response = "pes_fleur_conversation_six_01",
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
				"pdr_fleur_conversation_six_01"
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
		name = "pdr_fleur_conversation_six_02",
		response = "pdr_fleur_conversation_six_02",
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
				"pes_fleur_conversation_six_01"
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
		name = "pes_fleur_conversation_six_02",
		response = "pes_fleur_conversation_six_02",
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
				"pdr_fleur_conversation_six_02"
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
		name = "pdr_fleur_conversation_seven_01",
		response = "pdr_fleur_conversation_seven_01",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"story_trigger"
			},
			{
				"global_context",
				"es_questingknight",
				OP.EQ,
				1
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"dwarf_ranger"
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
				5
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
				60
			},
			{
				"faction_memory",
				"pdr_fleur_conversation_seven_01",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"pdr_fleur_conversation_seven_01",
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
		name = "pes_fleur_conversation_seven_01",
		response = "pes_fleur_conversation_seven_01",
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
				"pdr_fleur_conversation_seven_01"
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
		name = "pdr_fleur_conversation_seven_02",
		response = "pdr_fleur_conversation_seven_02",
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
				"pes_fleur_conversation_seven_01"
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
		name = "pes_fleur_conversation_seven_02",
		response = "pes_fleur_conversation_seven_02",
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
				"pdr_fleur_conversation_seven_02"
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
		name = "pdr_fleur_conversation_seven_03",
		response = "pdr_fleur_conversation_seven_03",
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
				"pes_fleur_conversation_seven_02"
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
		name = "pdr_fleur_conversation_eight_01",
		response = "pdr_fleur_conversation_eight_01",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"story_trigger"
			},
			{
				"global_context",
				"es_questingknight",
				OP.EQ,
				1
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"dwarf_ranger"
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
				5
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
				60
			},
			{
				"faction_memory",
				"pdr_fleur_conversation_eight_01",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"pdr_fleur_conversation_eight_01",
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
		name = "pes_fleur_conversation_eight_01",
		response = "pes_fleur_conversation_eight_01",
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
				"pdr_fleur_conversation_eight_01"
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
		name = "pdr_fleur_conversation_eight_02",
		response = "pdr_fleur_conversation_eight_02",
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
				"pes_fleur_conversation_eight_01"
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
		name = "pes_fleur_conversation_eight_02",
		response = "pes_fleur_conversation_eight_02",
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
				"pdr_fleur_conversation_eight_02"
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
		name = "pdr_fleur_conversation_eight_03",
		response = "pdr_fleur_conversation_eight_03",
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
				"pes_fleur_conversation_eight_02"
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
		name = "pes_fleur_conversation_eight_03",
		response = "pes_fleur_conversation_eight_03",
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
				"pdr_fleur_conversation_eight_03"
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
		name = "pwh_fleur_conversation_nine_01",
		response = "pwh_fleur_conversation_nine_01",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"story_trigger"
			},
			{
				"global_context",
				"es_questingknight",
				OP.EQ,
				1
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"witch_hunter"
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
				5
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
				60
			},
			{
				"faction_memory",
				"pwh_fleur_conversation_nine_01",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"pwh_fleur_conversation_nine_01",
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
		name = "pes_fleur_conversation_nine_01",
		response = "pes_fleur_conversation_nine_01",
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
				"pwh_fleur_conversation_nine_01"
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
		name = "pwh_fleur_conversation_nine_02",
		response = "pwh_fleur_conversation_nine_02",
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
				"pes_fleur_conversation_nine_01"
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
		name = "pes_fleur_conversation_nine_02",
		response = "pes_fleur_conversation_nine_02",
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
				"pwh_fleur_conversation_nine_02"
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
		name = "pwh_fleur_conversation_nine_03",
		response = "pwh_fleur_conversation_nine_03",
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
				"pes_fleur_conversation_nine_02"
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
		name = "pwh_fleur_conversation_ten_01",
		response = "pwh_fleur_conversation_ten_01",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"story_trigger"
			},
			{
				"global_context",
				"es_questingknight",
				OP.EQ,
				1
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"witch_hunter"
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
				5
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
				60
			},
			{
				"faction_memory",
				"pwh_fleur_conversation_ten_01",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"pwh_fleur_conversation_ten_01",
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
		name = "pes_fleur_conversation_ten_01",
		response = "pes_fleur_conversation_ten_01",
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
				"pwh_fleur_conversation_ten_01"
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
		name = "pwh_fleur_conversation_ten_02",
		response = "pwh_fleur_conversation_ten_02",
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
				"pes_fleur_conversation_ten_01"
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
		name = "pes_fleur_conversation_ten_02",
		response = "pes_fleur_conversation_ten_02",
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
				"pwh_fleur_conversation_ten_02"
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
		name = "pwh_fleur_conversation_ten_03",
		response = "pwh_fleur_conversation_ten_03",
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
				"pes_fleur_conversation_ten_02"
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
		name = "pwh_fleur_conversation_eleven_01",
		response = "pwh_fleur_conversation_eleven_01",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"story_trigger"
			},
			{
				"global_context",
				"es_questingknight",
				OP.EQ,
				1
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"witch_hunter"
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
				5
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
				60
			},
			{
				"faction_memory",
				"pwh_fleur_conversation_eleven_01",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"pwh_fleur_conversation_eleven_01",
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
		name = "pes_fleur_conversation_eleven_01",
		response = "pes_fleur_conversation_eleven_01",
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
				"pwh_fleur_conversation_eleven_01"
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
		name = "pwh_fleur_conversation_eleven_02",
		response = "pwh_fleur_conversation_eleven_02",
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
				"pes_fleur_conversation_eleven_01"
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
		name = "pes_fleur_conversation_eleven_02",
		response = "pes_fleur_conversation_eleven_02",
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
				"pwh_fleur_conversation_eleven_02"
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
		name = "pwh_fleur_conversation_eleven_03",
		response = "pwh_fleur_conversation_eleven_03",
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
				"pes_fleur_conversation_eleven_02"
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
		name = "pes_fleur_conversation_eleven_03",
		response = "pes_fleur_conversation_eleven_03",
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
				"pwh_fleur_conversation_eleven_03"
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
		name = "pwh_fleur_conversation_twelve_01",
		response = "pwh_fleur_conversation_twelve_01",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"story_trigger"
			},
			{
				"global_context",
				"es_questingknight",
				OP.EQ,
				1
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"witch_hunter"
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
				5
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
				60
			},
			{
				"faction_memory",
				"pwh_fleur_conversation_twelve_01",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"pwh_fleur_conversation_twelve_01",
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
		name = "pes_fleur_conversation_twelve_01",
		response = "pes_fleur_conversation_twelve_01",
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
				"pwh_fleur_conversation_twelve_01"
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
		name = "pwh_fleur_conversation_twelve_02",
		response = "pwh_fleur_conversation_twelve_02",
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
				"pes_fleur_conversation_twelve_01"
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
		name = "pes_fleur_conversation_twelve_02",
		response = "pes_fleur_conversation_twelve_02",
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
				"pwh_fleur_conversation_twelve_02"
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
		name = "pbw_fleur_conversation_thirteen_01",
		response = "pbw_fleur_conversation_thirteen_01",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"story_trigger"
			},
			{
				"global_context",
				"es_questingknight",
				OP.EQ,
				1
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"query_context",
				"source_name",
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
				"user_context",
				"enemies_distant",
				OP.LT,
				5
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
				60
			},
			{
				"faction_memory",
				"pbw_fleur_conversation_thirteen_01",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"pbw_fleur_conversation_thirteen_01",
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
		name = "pes_fleur_conversation_thirteen_01",
		response = "pes_fleur_conversation_thirteen_01",
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
				"pbw_fleur_conversation_thirteen_01"
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
		name = "pbw_fleur_conversation_thirteen_02",
		response = "pbw_fleur_conversation_thirteen_02",
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
				"pes_fleur_conversation_thirteen_01"
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
		name = "pes_fleur_conversation_thirteen_02",
		response = "pes_fleur_conversation_thirteen_02",
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
				"pbw_fleur_conversation_thirteen_02"
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
		name = "pbw_fleur_conversation_fourteen_01",
		response = "pbw_fleur_conversation_fourteen_01",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"story_trigger"
			},
			{
				"global_context",
				"es_questingknight",
				OP.EQ,
				1
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"query_context",
				"source_name",
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
				"user_context",
				"enemies_distant",
				OP.LT,
				5
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
				60
			},
			{
				"faction_memory",
				"pbw_fleur_conversation_fourteen_01",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"pbw_fleur_conversation_fourteen_01",
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
		name = "pes_fleur_conversation_fourteen_01",
		response = "pes_fleur_conversation_fourteen_01",
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
				"pbw_fleur_conversation_fourteen_01"
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
		name = "pbw_fleur_conversation_fourteen_02",
		response = "pbw_fleur_conversation_fourteen_02",
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
				"pes_fleur_conversation_fourteen_01"
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
		name = "pes_fleur_conversation_fourteen_02",
		response = "pes_fleur_conversation_fourteen_02",
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
				"pbw_fleur_conversation_fourteen_02"
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
		name = "pbw_fleur_conversation_fifteen_01",
		response = "pbw_fleur_conversation_fifteen_01",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"story_trigger"
			},
			{
				"global_context",
				"es_questingknight",
				OP.EQ,
				1
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"query_context",
				"source_name",
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
				"user_context",
				"enemies_distant",
				OP.LT,
				5
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
				60
			},
			{
				"faction_memory",
				"pbw_fleur_conversation_fifteen_01",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"pbw_fleur_conversation_fifteen_01",
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
		name = "pes_fleur_conversation_fifteen_01",
		response = "pes_fleur_conversation_fifteen_01",
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
				"pbw_fleur_conversation_fifteen_01"
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
		name = "pbw_fleur_conversation_fifteen_02",
		response = "pbw_fleur_conversation_fifteen_02",
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
				"pes_fleur_conversation_fifteen_01"
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
		name = "pes_fleur_conversation_fifteen_02",
		response = "pes_fleur_conversation_fifteen_02",
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
				"pbw_fleur_conversation_fifteen_02"
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
		name = "pbw_fleur_conversation_sixteen_01",
		response = "pbw_fleur_conversation_sixteen_01",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"story_trigger"
			},
			{
				"global_context",
				"es_questingknight",
				OP.EQ,
				1
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"query_context",
				"source_name",
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
				"user_context",
				"enemies_distant",
				OP.LT,
				5
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
				60
			},
			{
				"faction_memory",
				"pbw_fleur_conversation_sixteen_01",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"pbw_fleur_conversation_sixteen_01",
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
		name = "pes_fleur_conversation_sixteen_01",
		response = "pes_fleur_conversation_sixteen_01",
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
				"pbw_fleur_conversation_sixteen_01"
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
		name = "pbw_fleur_conversation_sixteen_02",
		response = "pbw_fleur_conversation_sixteen_02",
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
				"pes_fleur_conversation_sixteen_01"
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
		name = "pes_fleur_conversation_sixteen_02",
		response = "pes_fleur_conversation_sixteen_02",
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
				"pbw_fleur_conversation_sixteen_02"
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
		name = "pdr_fleur_conversation_twentythree_01",
		response = "pdr_fleur_conversation_twentythree_01",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"story_trigger"
			},
			{
				"global_context",
				"witch_hunter",
				OP.EQ,
				1
			},
			{
				"global_context",
				"empire_soldier",
				OP.EQ,
				0
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"dwarf_ranger"
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
				5
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
				60
			},
			{
				"faction_memory",
				"pdr_fleur_conversation_twentythree_01",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"pdr_fleur_conversation_twentythree_01",
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
		name = "pwh_fleur_conversation_twentythree_01",
		response = "pwh_fleur_conversation_twentythree_01",
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
				"pdr_fleur_conversation_twentythree_01"
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
		name = "pdr_fleur_conversation_twentythree_02",
		response = "pdr_fleur_conversation_twentythree_02",
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
				"pwh_fleur_conversation_twentythree_01"
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
		name = "pwh_fleur_conversation_twentythree_02",
		response = "pwh_fleur_conversation_twentythree_02",
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
				"pdr_fleur_conversation_twentythree_02"
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
		name = "pwe_fleur_conversation_twentyfour_01",
		response = "pwe_fleur_conversation_twentyfour_01",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"story_trigger"
			},
			{
				"global_context",
				"bright_wizard",
				OP.EQ,
				1
			},
			{
				"global_context",
				"empire_soldier",
				OP.EQ,
				0
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"wood_elf"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"wood_elf"
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
				5
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
				60
			},
			{
				"faction_memory",
				"pwe_fleur_conversation_twentyfour_01",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"pwe_fleur_conversation_twentyfour_01",
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
		name = "pbw_fleur_conversation_twentyfour_01",
		response = "pbw_fleur_conversation_twentyfour_01",
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
				"pwe_fleur_conversation_twentyfour_01"
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
		name = "pwe_fleur_conversation_twentyfour_02",
		response = "pwe_fleur_conversation_twentyfour_02",
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
				"pbw_fleur_conversation_twentyfour_01"
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
		name = "pbw_fleur_conversation_twentyfour_02",
		response = "pbw_fleur_conversation_twentyfour_02",
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
				"pwe_fleur_conversation_twentyfour_02"
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
		name = "pwe_fleur_conversation_twentyfour_03",
		response = "pwe_fleur_conversation_twentyfour_03",
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
				"pbw_fleur_conversation_twentyfour_02"
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
		name = "pwh_fleur_conversation_twentyfive_01",
		response = "pwh_fleur_conversation_twentyfive_01",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"story_trigger"
			},
			{
				"global_context",
				"wood_elf",
				OP.EQ,
				1
			},
			{
				"global_context",
				"empire_soldier",
				OP.EQ,
				0
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"witch_hunter"
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
				5
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
				60
			},
			{
				"faction_memory",
				"pwh_fleur_conversation_twentyfive_01",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"pwh_fleur_conversation_twentyfive_01",
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
		name = "pwe_fleur_conversation_twentyfive_01",
		response = "pwe_fleur_conversation_twentyfive_01",
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
				"pwh_fleur_conversation_twentyfive_01"
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
		name = "pwh_fleur_conversation_twentyfive_02",
		response = "pwh_fleur_conversation_twentyfive_02",
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
				"pwe_fleur_conversation_twentyfive_01"
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
		name = "pwe_fleur_conversation_twentyfive_02",
		response = "pwe_fleur_conversation_twentyfive_02",
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
				"pwh_fleur_conversation_twentyfive_02"
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
		name = "pwh_fleur_conversation_twentyfive_03",
		response = "pwh_fleur_conversation_twentyfive_03",
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
				"pwe_fleur_conversation_twentyfive_02"
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
		name = "pwe_fleur_conversation_twentyfive_03",
		response = "pwe_fleur_conversation_twentyfive_03",
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
				"pwh_fleur_conversation_twentyfive_03"
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
		name = "pwh_fleur_conversation_twentysix_01",
		response = "pwh_fleur_conversation_twentysix_01",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"story_trigger"
			},
			{
				"global_context",
				"bright_wizard",
				OP.EQ,
				1
			},
			{
				"global_context",
				"empire_soldier",
				OP.EQ,
				0
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"witch_hunter"
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
				5
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
				60
			},
			{
				"faction_memory",
				"pwh_fleur_conversation_twentysix_01",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"pwh_fleur_conversation_twentysix_01",
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
		name = "pbw_fleur_conversation_twentysix_01",
		response = "pbw_fleur_conversation_twentysix_01",
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
				"pwh_fleur_conversation_twentysix_01"
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
		name = "pwh_fleur_conversation_twentysix_02",
		response = "pwh_fleur_conversation_twentysix_02",
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
				"pbw_fleur_conversation_twentysix_01"
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
		name = "pbw_fleur_conversation_twentysix_02",
		response = "pbw_fleur_conversation_twentysix_02",
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
				"pwh_fleur_conversation_twentysix_02"
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
		name = "pdr_fleur_conversation_twentyseven_01",
		response = "pdr_fleur_conversation_twentyseven_01",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"story_trigger"
			},
			{
				"global_context",
				"bright_wizard",
				OP.EQ,
				1
			},
			{
				"global_context",
				"empire_soldier",
				OP.EQ,
				0
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"dwarf_ranger"
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
				5
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
				60
			},
			{
				"faction_memory",
				"pdr_fleur_conversation_twentyseven_01",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"pdr_fleur_conversation_twentyseven_01",
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
		name = "pbw_fleur_conversation_twentyseven_01",
		response = "pbw_fleur_conversation_twentyseven_01",
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
				"pdr_fleur_conversation_twentyseven_01"
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
		name = "pdr_fleur_conversation_twentyseven_02",
		response = "pdr_fleur_conversation_twentyseven_02",
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
				"pbw_fleur_conversation_twentyseven_01"
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
		name = "pbw_fleur_conversation_twentyseven_02",
		response = "pbw_fleur_conversation_twentyseven_02",
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
				"pdr_fleur_conversation_twentyseven_02"
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
		name = "pdr_fleur_conversation_twentyseven_03",
		response = "pdr_fleur_conversation_twentyseven_03",
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
				"pbw_fleur_conversation_twentyseven_02"
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
		name = "pdr_fleur_conversation_twentyeight_01",
		response = "pdr_fleur_conversation_twentyeight_01",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"story_trigger"
			},
			{
				"global_context",
				"wood_elf",
				OP.EQ,
				1
			},
			{
				"global_context",
				"empire_soldier",
				OP.EQ,
				0
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"dwarf_ranger"
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
				5
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
				60
			},
			{
				"faction_memory",
				"pdr_fleur_conversation_twentyeight_01",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"pdr_fleur_conversation_twentyeight_01",
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
		name = "pwe_fleur_conversation_twentyeight_01",
		response = "pwe_fleur_conversation_twentyeight_01",
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
				"pdr_fleur_conversation_twentyeight_01"
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
		name = "pdr_fleur_conversation_twentyeight_02",
		response = "pdr_fleur_conversation_twentyeight_02",
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
				"pwe_fleur_conversation_twentyeight_01"
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
		name = "pwe_fleur_conversation_twentyeight_02",
		response = "pwe_fleur_conversation_twentyeight_02",
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
				"pdr_fleur_conversation_twentyeight_02"
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
		pwh_fleur_conversation_twentythree_02 = {
			face_animations_n = 1,
			database = "fleur_conversations",
			sound_events_n = 1,
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pwh_fleur_conversation_twentythree_02"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			localization_strings = {
				[1.0] = "pwh_fleur_conversation_twentythree_02"
			},
			sound_events_duration = {
				[1.0] = 2.8726875782013
			},
			face_animations = {
				[1.0] = "face_calm"
			}
		},
		pdr_fleur_conversation_five_01 = {
			face_animations_n = 1,
			database = "fleur_conversations",
			sound_events_n = 1,
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pdr_fleur_conversation_five_01"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			localization_strings = {
				[1.0] = "pdr_fleur_conversation_five_01"
			},
			sound_events_duration = {
				[1.0] = 6.4927501678467
			},
			face_animations = {
				[1.0] = "face_calm"
			}
		},
		pes_fleur_conversation_eleven_03 = {
			face_animations_n = 1,
			database = "fleur_conversations",
			sound_events_n = 1,
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pes_fleur_conversation_eleven_03"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			localization_strings = {
				[1.0] = "pes_fleur_conversation_eleven_03"
			},
			sound_events_duration = {
				[1.0] = 2.0257084369659
			},
			face_animations = {
				[1.0] = "face_calm"
			}
		},
		pwe_fleur_conversation_four_02 = {
			face_animations_n = 1,
			database = "fleur_conversations",
			sound_events_n = 1,
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pwe_fleur_conversation_four_02"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			localization_strings = {
				[1.0] = "pwe_fleur_conversation_four_02"
			},
			sound_events_duration = {
				[1.0] = 5.7377500534058
			},
			face_animations = {
				[1.0] = "face_calm"
			}
		},
		pwh_fleur_conversation_twelve_01 = {
			face_animations_n = 1,
			database = "fleur_conversations",
			sound_events_n = 1,
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pwh_fleur_conversation_twelve_01"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			localization_strings = {
				[1.0] = "pwh_fleur_conversation_twelve_01"
			},
			sound_events_duration = {
				[1.0] = 6.813458442688
			},
			face_animations = {
				[1.0] = "face_calm"
			}
		},
		pes_fleur_conversation_five_01 = {
			face_animations_n = 1,
			database = "fleur_conversations",
			sound_events_n = 1,
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pes_fleur_conversation_five_01"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			localization_strings = {
				[1.0] = "pes_fleur_conversation_five_01"
			},
			sound_events_duration = {
				[1.0] = 4.5713124275208
			},
			face_animations = {
				[1.0] = "face_calm"
			}
		},
		pes_fleur_conversation_nine_01 = {
			face_animations_n = 1,
			database = "fleur_conversations",
			sound_events_n = 1,
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pes_fleur_conversation_nine_01"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			localization_strings = {
				[1.0] = "pes_fleur_conversation_nine_01"
			},
			sound_events_duration = {
				[1.0] = 2.7414166927338
			},
			face_animations = {
				[1.0] = "face_calm"
			}
		},
		pwe_fleur_conversation_four_03 = {
			face_animations_n = 1,
			database = "fleur_conversations",
			sound_events_n = 1,
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pwe_fleur_conversation_four_03"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			localization_strings = {
				[1.0] = "pwe_fleur_conversation_four_03"
			},
			sound_events_duration = {
				[1.0] = 3.2824375629425
			},
			face_animations = {
				[1.0] = "face_calm"
			}
		},
		pes_fleur_conversation_eight_01 = {
			face_animations_n = 1,
			database = "fleur_conversations",
			sound_events_n = 1,
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pes_fleur_conversation_eight_01"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			localization_strings = {
				[1.0] = "pes_fleur_conversation_eight_01"
			},
			sound_events_duration = {
				[1.0] = 4.1928749084473
			},
			face_animations = {
				[1.0] = "face_calm"
			}
		},
		pes_fleur_conversation_eleven_02 = {
			face_animations_n = 1,
			database = "fleur_conversations",
			sound_events_n = 1,
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pes_fleur_conversation_eleven_02"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			localization_strings = {
				[1.0] = "pes_fleur_conversation_eleven_02"
			},
			sound_events_duration = {
				[1.0] = 5.4573125839233
			},
			face_animations = {
				[1.0] = "face_calm"
			}
		},
		pes_fleur_conversation_eight_02 = {
			face_animations_n = 1,
			database = "fleur_conversations",
			sound_events_n = 1,
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pes_fleur_conversation_eight_02"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			localization_strings = {
				[1.0] = "pes_fleur_conversation_eight_02"
			},
			sound_events_duration = {
				[1.0] = 2.9591250419617
			},
			face_animations = {
				[1.0] = "face_calm"
			}
		},
		pdr_fleur_conversation_five_02 = {
			face_animations_n = 1,
			database = "fleur_conversations",
			sound_events_n = 1,
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pdr_fleur_conversation_five_02"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			localization_strings = {
				[1.0] = "pdr_fleur_conversation_five_02"
			},
			sound_events_duration = {
				[1.0] = 2.7802290916443
			},
			face_animations = {
				[1.0] = "face_calm"
			}
		},
		pwe_fleur_conversation_twentyfour_03 = {
			face_animations_n = 1,
			database = "fleur_conversations",
			sound_events_n = 1,
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pwe_fleur_conversation_twentyfour_03"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			localization_strings = {
				[1.0] = "pwe_fleur_conversation_twentyfour_03"
			},
			sound_events_duration = {
				[1.0] = 2.7769792079926
			},
			face_animations = {
				[1.0] = "face_calm"
			}
		},
		pwh_fleur_conversation_twentyfive_01 = {
			face_animations_n = 1,
			database = "fleur_conversations",
			sound_events_n = 1,
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pwh_fleur_conversation_twentyfive_01"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			localization_strings = {
				[1.0] = "pwh_fleur_conversation_twentyfive_01"
			},
			sound_events_duration = {
				[1.0] = 4.7993750572205
			},
			face_animations = {
				[1.0] = "face_calm"
			}
		},
		pes_fleur_conversation_fifteen_02 = {
			face_animations_n = 1,
			database = "fleur_conversations",
			sound_events_n = 1,
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pes_fleur_conversation_fifteen_02"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			localization_strings = {
				[1.0] = "pes_fleur_conversation_fifteen_02"
			},
			sound_events_duration = {
				[1.0] = 8.1326246261597
			},
			face_animations = {
				[1.0] = "face_calm"
			}
		},
		pbw_fleur_conversation_fourteen_02 = {
			face_animations_n = 1,
			database = "fleur_conversations",
			sound_events_n = 1,
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pbw_fleur_conversation_fourteen_02"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			localization_strings = {
				[1.0] = "pbw_fleur_conversation_fourteen_02"
			},
			sound_events_duration = {
				[1.0] = 1.3564374446869
			},
			face_animations = {
				[1.0] = "face_calm"
			}
		},
		pes_fleur_conversation_fourteen_02 = {
			face_animations_n = 1,
			database = "fleur_conversations",
			sound_events_n = 1,
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pes_fleur_conversation_fourteen_02"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			localization_strings = {
				[1.0] = "pes_fleur_conversation_fourteen_02"
			},
			sound_events_duration = {
				[1.0] = 1.8061457872391
			},
			face_animations = {
				[1.0] = "face_calm"
			}
		},
		pes_fleur_conversation_six_01 = {
			face_animations_n = 1,
			database = "fleur_conversations",
			sound_events_n = 1,
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pes_fleur_conversation_six_01"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			localization_strings = {
				[1.0] = "pes_fleur_conversation_six_01"
			},
			sound_events_duration = {
				[1.0] = 3.170458316803
			},
			face_animations = {
				[1.0] = "face_calm"
			}
		},
		pbw_fleur_conversation_twentysix_02 = {
			face_animations_n = 1,
			database = "fleur_conversations",
			sound_events_n = 1,
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pbw_fleur_conversation_twentysix_02"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			localization_strings = {
				[1.0] = "pbw_fleur_conversation_twentysix_02"
			},
			sound_events_duration = {
				[1.0] = 6.1726040840149
			},
			face_animations = {
				[1.0] = "face_calm"
			}
		},
		pwh_fleur_conversation_twentysix_01 = {
			face_animations_n = 1,
			database = "fleur_conversations",
			sound_events_n = 1,
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pwh_fleur_conversation_twentysix_01"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			localization_strings = {
				[1.0] = "pwh_fleur_conversation_twentysix_01"
			},
			sound_events_duration = {
				[1.0] = 2.835000038147
			},
			face_animations = {
				[1.0] = "face_calm"
			}
		},
		pes_fleur_conversation_four_02 = {
			face_animations_n = 1,
			database = "fleur_conversations",
			sound_events_n = 1,
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pes_fleur_conversation_four_02"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			localization_strings = {
				[1.0] = "pes_fleur_conversation_four_02"
			},
			sound_events_duration = {
				[1.0] = 0.88752084970474
			},
			face_animations = {
				[1.0] = "face_calm"
			}
		},
		pes_fleur_conversation_eight_03 = {
			face_animations_n = 1,
			database = "fleur_conversations",
			sound_events_n = 1,
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pes_fleur_conversation_eight_03"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			localization_strings = {
				[1.0] = "pes_fleur_conversation_eight_03"
			},
			sound_events_duration = {
				[1.0] = 4.8964581489563
			},
			face_animations = {
				[1.0] = "face_calm"
			}
		},
		pwe_fleur_conversation_twentyeight_02 = {
			face_animations_n = 1,
			database = "fleur_conversations",
			sound_events_n = 1,
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pwe_fleur_conversation_twentyeight_02"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			localization_strings = {
				[1.0] = "pwe_fleur_conversation_twentyeight_02"
			},
			sound_events_duration = {
				[1.0] = 5.1695623397827
			},
			face_animations = {
				[1.0] = "face_calm"
			}
		},
		pwh_fleur_conversation_ten_01 = {
			face_animations_n = 1,
			database = "fleur_conversations",
			sound_events_n = 1,
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pwh_fleur_conversation_ten_01"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			localization_strings = {
				[1.0] = "pwh_fleur_conversation_ten_01"
			},
			sound_events_duration = {
				[1.0] = 3.1309583187103
			},
			face_animations = {
				[1.0] = "face_calm"
			}
		},
		pes_fleur_conversation_four_01 = {
			face_animations_n = 1,
			database = "fleur_conversations",
			sound_events_n = 1,
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pes_fleur_conversation_four_01"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			localization_strings = {
				[1.0] = "pes_fleur_conversation_four_01"
			},
			sound_events_duration = {
				[1.0] = 3.0853958129883
			},
			face_animations = {
				[1.0] = "face_calm"
			}
		},
		pes_fleur_conversation_five_02 = {
			face_animations_n = 1,
			database = "fleur_conversations",
			sound_events_n = 1,
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pes_fleur_conversation_five_02"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			localization_strings = {
				[1.0] = "pes_fleur_conversation_five_02"
			},
			sound_events_duration = {
				[1.0] = 3.8380000591278
			},
			face_animations = {
				[1.0] = "face_calm"
			}
		},
		pdr_fleur_conversation_twentythree_02 = {
			face_animations_n = 1,
			database = "fleur_conversations",
			sound_events_n = 1,
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pdr_fleur_conversation_twentythree_02"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			localization_strings = {
				[1.0] = "pdr_fleur_conversation_twentythree_02"
			},
			sound_events_duration = {
				[1.0] = 3.3758542537689
			},
			face_animations = {
				[1.0] = "face_calm"
			}
		},
		pdr_fleur_conversation_seven_02 = {
			face_animations_n = 1,
			database = "fleur_conversations",
			sound_events_n = 1,
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pdr_fleur_conversation_seven_02"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			localization_strings = {
				[1.0] = "pdr_fleur_conversation_seven_02"
			},
			sound_events_duration = {
				[1.0] = 2.1089792251587
			},
			face_animations = {
				[1.0] = "face_calm"
			}
		},
		pdr_fleur_conversation_twentyeight_02 = {
			face_animations_n = 1,
			database = "fleur_conversations",
			sound_events_n = 1,
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pdr_fleur_conversation_twentyeight_02"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			localization_strings = {
				[1.0] = "pdr_fleur_conversation_twentyeight_02"
			},
			sound_events_duration = {
				[1.0] = 9.3523960113525
			},
			face_animations = {
				[1.0] = "face_calm"
			}
		},
		pes_fleur_conversation_one_01 = {
			face_animations_n = 1,
			database = "fleur_conversations",
			sound_events_n = 1,
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pes_fleur_conversation_one_01"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			localization_strings = {
				[1.0] = "pes_fleur_conversation_one_01"
			},
			sound_events_duration = {
				[1.0] = 2.6940207481384
			},
			face_animations = {
				[1.0] = "face_calm"
			}
		},
		pwh_fleur_conversation_nine_03 = {
			face_animations_n = 1,
			database = "fleur_conversations",
			sound_events_n = 1,
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pwh_fleur_conversation_nine_03"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			localization_strings = {
				[1.0] = "pwh_fleur_conversation_nine_03"
			},
			sound_events_duration = {
				[1.0] = 2.7620000839233
			},
			face_animations = {
				[1.0] = "face_calm"
			}
		},
		pwe_fleur_conversation_four_01 = {
			face_animations_n = 1,
			database = "fleur_conversations",
			sound_events_n = 1,
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pwe_fleur_conversation_four_01"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			localization_strings = {
				[1.0] = "pwe_fleur_conversation_four_01"
			},
			sound_events_duration = {
				[1.0] = 4.86172914505
			},
			face_animations = {
				[1.0] = "face_calm"
			}
		},
		pes_fleur_conversation_three_01 = {
			face_animations_n = 1,
			database = "fleur_conversations",
			sound_events_n = 1,
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pes_fleur_conversation_three_01"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			localization_strings = {
				[1.0] = "pes_fleur_conversation_three_01"
			},
			sound_events_duration = {
				[1.0] = 4.6890001296997
			},
			face_animations = {
				[1.0] = "face_calm"
			}
		},
		pbw_fleur_conversation_twentysix_01 = {
			face_animations_n = 1,
			database = "fleur_conversations",
			sound_events_n = 1,
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pbw_fleur_conversation_twentysix_01"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			localization_strings = {
				[1.0] = "pbw_fleur_conversation_twentysix_01"
			},
			sound_events_duration = {
				[1.0] = 3.4056458473206
			},
			face_animations = {
				[1.0] = "face_calm"
			}
		},
		pbw_fleur_conversation_fifteen_02 = {
			face_animations_n = 1,
			database = "fleur_conversations",
			sound_events_n = 1,
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pbw_fleur_conversation_fifteen_02"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			localization_strings = {
				[1.0] = "pbw_fleur_conversation_fifteen_02"
			},
			sound_events_duration = {
				[1.0] = 3.4968957901001
			},
			face_animations = {
				[1.0] = "face_calm"
			}
		},
		pes_fleur_conversation_one_02 = {
			face_animations_n = 1,
			database = "fleur_conversations",
			sound_events_n = 1,
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pes_fleur_conversation_one_02"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			localization_strings = {
				[1.0] = "pes_fleur_conversation_one_02"
			},
			sound_events_duration = {
				[1.0] = 2.868020772934
			},
			face_animations = {
				[1.0] = "face_calm"
			}
		},
		pwe_fleur_conversation_twentyeight_01 = {
			face_animations_n = 1,
			database = "fleur_conversations",
			sound_events_n = 1,
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pwe_fleur_conversation_twentyeight_01"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			localization_strings = {
				[1.0] = "pwe_fleur_conversation_twentyeight_01"
			},
			sound_events_duration = {
				[1.0] = 4.4766874313355
			},
			face_animations = {
				[1.0] = "face_calm"
			}
		},
		pes_fleur_conversation_thirteen_02 = {
			face_animations_n = 1,
			database = "fleur_conversations",
			sound_events_n = 1,
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pes_fleur_conversation_thirteen_02"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			localization_strings = {
				[1.0] = "pes_fleur_conversation_thirteen_02"
			},
			sound_events_duration = {
				[1.0] = 1.6628124713898
			},
			face_animations = {
				[1.0] = "face_calm"
			}
		},
		pdr_fleur_conversation_eight_01 = {
			face_animations_n = 1,
			database = "fleur_conversations",
			sound_events_n = 1,
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pdr_fleur_conversation_eight_01"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			localization_strings = {
				[1.0] = "pdr_fleur_conversation_eight_01"
			},
			sound_events_duration = {
				[1.0] = 3.4621665477753
			},
			face_animations = {
				[1.0] = "face_calm"
			}
		},
		pdr_fleur_conversation_twentyseven_03 = {
			face_animations_n = 1,
			database = "fleur_conversations",
			sound_events_n = 1,
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pdr_fleur_conversation_twentyseven_03"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			localization_strings = {
				[1.0] = "pdr_fleur_conversation_twentyseven_03"
			},
			sound_events_duration = {
				[1.0] = 2.2177500724792
			},
			face_animations = {
				[1.0] = "face_calm"
			}
		},
		pbw_fleur_conversation_twentyseven_02 = {
			face_animations_n = 1,
			database = "fleur_conversations",
			sound_events_n = 1,
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pbw_fleur_conversation_twentyseven_02"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			localization_strings = {
				[1.0] = "pbw_fleur_conversation_twentyseven_02"
			},
			sound_events_duration = {
				[1.0] = 2.6101665496826
			},
			face_animations = {
				[1.0] = "face_calm"
			}
		},
		pdr_fleur_conversation_twentyseven_02 = {
			face_animations_n = 1,
			database = "fleur_conversations",
			sound_events_n = 1,
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pdr_fleur_conversation_twentyseven_02"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			localization_strings = {
				[1.0] = "pdr_fleur_conversation_twentyseven_02"
			},
			sound_events_duration = {
				[1.0] = 7.9932918548584
			},
			face_animations = {
				[1.0] = "face_calm"
			}
		},
		pes_fleur_conversation_fourteen_01 = {
			face_animations_n = 1,
			database = "fleur_conversations",
			sound_events_n = 1,
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pes_fleur_conversation_fourteen_01"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			localization_strings = {
				[1.0] = "pes_fleur_conversation_fourteen_01"
			},
			sound_events_duration = {
				[1.0] = 6.085000038147
			},
			face_animations = {
				[1.0] = "face_calm"
			}
		},
		pdr_fleur_conversation_twentyseven_01 = {
			face_animations_n = 1,
			database = "fleur_conversations",
			sound_events_n = 1,
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pdr_fleur_conversation_twentyseven_01"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			localization_strings = {
				[1.0] = "pdr_fleur_conversation_twentyseven_01"
			},
			sound_events_duration = {
				[1.0] = 4.3073959350586
			},
			face_animations = {
				[1.0] = "face_calm"
			}
		},
		pwh_fleur_conversation_twelve_02 = {
			face_animations_n = 1,
			database = "fleur_conversations",
			sound_events_n = 1,
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pwh_fleur_conversation_twelve_02"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			localization_strings = {
				[1.0] = "pwh_fleur_conversation_twelve_02"
			},
			sound_events_duration = {
				[1.0] = 3.7708332538605
			},
			face_animations = {
				[1.0] = "face_calm"
			}
		},
		pbw_fleur_conversation_thirteen_01 = {
			face_animations_n = 1,
			database = "fleur_conversations",
			sound_events_n = 1,
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pbw_fleur_conversation_thirteen_01"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			localization_strings = {
				[1.0] = "pbw_fleur_conversation_thirteen_01"
			},
			sound_events_duration = {
				[1.0] = 4.4289584159851
			},
			face_animations = {
				[1.0] = "face_calm"
			}
		},
		pes_fleur_conversation_thirteen_01 = {
			face_animations_n = 1,
			database = "fleur_conversations",
			sound_events_n = 1,
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pes_fleur_conversation_thirteen_01"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			localization_strings = {
				[1.0] = "pes_fleur_conversation_thirteen_01"
			},
			sound_events_duration = {
				[1.0] = 3.3167500495911
			},
			face_animations = {
				[1.0] = "face_calm"
			}
		},
		pwh_fleur_conversation_twentysix_02 = {
			face_animations_n = 1,
			database = "fleur_conversations",
			sound_events_n = 1,
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pwh_fleur_conversation_twentysix_02"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			localization_strings = {
				[1.0] = "pwh_fleur_conversation_twentysix_02"
			},
			sound_events_duration = {
				[1.0] = 2.8529999256134
			},
			face_animations = {
				[1.0] = "face_calm"
			}
		},
		pwe_fleur_conversation_twentyfour_01 = {
			face_animations_n = 1,
			database = "fleur_conversations",
			sound_events_n = 1,
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pwe_fleur_conversation_twentyfour_01"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			localization_strings = {
				[1.0] = "pwe_fleur_conversation_twentyfour_01"
			},
			sound_events_duration = {
				[1.0] = 8.2547292709351
			},
			face_animations = {
				[1.0] = "face_calm"
			}
		},
		pwe_fleur_conversation_twentyfive_03 = {
			face_animations_n = 1,
			database = "fleur_conversations",
			sound_events_n = 1,
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pwe_fleur_conversation_twentyfive_03"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			localization_strings = {
				[1.0] = "pwe_fleur_conversation_twentyfive_03"
			},
			sound_events_duration = {
				[1.0] = 2.8183124065399
			},
			face_animations = {
				[1.0] = "face_calm"
			}
		},
		pwh_fleur_conversation_eleven_01 = {
			face_animations_n = 1,
			database = "fleur_conversations",
			sound_events_n = 1,
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pwh_fleur_conversation_eleven_01"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			localization_strings = {
				[1.0] = "pwh_fleur_conversation_eleven_01"
			},
			sound_events_duration = {
				[1.0] = 5.6969585418701
			},
			face_animations = {
				[1.0] = "face_calm"
			}
		},
		pwh_fleur_conversation_twentyfive_03 = {
			face_animations_n = 1,
			database = "fleur_conversations",
			sound_events_n = 1,
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pwh_fleur_conversation_twentyfive_03"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			localization_strings = {
				[1.0] = "pwh_fleur_conversation_twentyfive_03"
			},
			sound_events_duration = {
				[1.0] = 2.2620000839233
			},
			face_animations = {
				[1.0] = "face_calm"
			}
		},
		pwe_fleur_conversation_twentyfive_02 = {
			face_animations_n = 1,
			database = "fleur_conversations",
			sound_events_n = 1,
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pwe_fleur_conversation_twentyfive_02"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			localization_strings = {
				[1.0] = "pwe_fleur_conversation_twentyfive_02"
			},
			sound_events_duration = {
				[1.0] = 7.0694999694824
			},
			face_animations = {
				[1.0] = "face_calm"
			}
		},
		pwe_fleur_conversation_three_01 = {
			face_animations_n = 1,
			database = "fleur_conversations",
			sound_events_n = 1,
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pwe_fleur_conversation_three_01"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			localization_strings = {
				[1.0] = "pwe_fleur_conversation_three_01"
			},
			sound_events_duration = {
				[1.0] = 8.8712291717529
			},
			face_animations = {
				[1.0] = "face_calm"
			}
		},
		pes_fleur_conversation_four_03 = {
			face_animations_n = 1,
			database = "fleur_conversations",
			sound_events_n = 1,
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pes_fleur_conversation_four_03"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			localization_strings = {
				[1.0] = "pes_fleur_conversation_four_03"
			},
			sound_events_duration = {
				[1.0] = 2.2256667613983
			},
			face_animations = {
				[1.0] = "face_calm"
			}
		},
		pwe_fleur_conversation_twentyfive_01 = {
			face_animations_n = 1,
			database = "fleur_conversations",
			sound_events_n = 1,
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pwe_fleur_conversation_twentyfive_01"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			localization_strings = {
				[1.0] = "pwe_fleur_conversation_twentyfive_01"
			},
			sound_events_duration = {
				[1.0] = 3.3296875953674
			},
			face_animations = {
				[1.0] = "face_calm"
			}
		},
		pwh_fleur_conversation_ten_02 = {
			face_animations_n = 1,
			database = "fleur_conversations",
			sound_events_n = 1,
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pwh_fleur_conversation_ten_02"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			localization_strings = {
				[1.0] = "pwh_fleur_conversation_ten_02"
			},
			sound_events_duration = {
				[1.0] = 3.2299375534058
			},
			face_animations = {
				[1.0] = "face_calm"
			}
		},
		pes_fleur_conversation_ten_02 = {
			face_animations_n = 1,
			database = "fleur_conversations",
			sound_events_n = 1,
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pes_fleur_conversation_ten_02"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			localization_strings = {
				[1.0] = "pes_fleur_conversation_ten_02"
			},
			sound_events_duration = {
				[1.0] = 2.5496459007263
			},
			face_animations = {
				[1.0] = "face_calm"
			}
		},
		pwe_fleur_conversation_one_01 = {
			face_animations_n = 1,
			database = "fleur_conversations",
			sound_events_n = 1,
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pwe_fleur_conversation_one_01"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			localization_strings = {
				[1.0] = "pwe_fleur_conversation_one_01"
			},
			sound_events_duration = {
				[1.0] = 1.7285416126251
			},
			face_animations = {
				[1.0] = "face_calm"
			}
		},
		pes_fleur_conversation_one_03 = {
			face_animations_n = 1,
			database = "fleur_conversations",
			sound_events_n = 1,
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pes_fleur_conversation_one_03"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			localization_strings = {
				[1.0] = "pes_fleur_conversation_one_03"
			},
			sound_events_duration = {
				[1.0] = 2.2553541660309
			},
			face_animations = {
				[1.0] = "face_calm"
			}
		},
		pes_fleur_conversation_eleven_01 = {
			face_animations_n = 1,
			database = "fleur_conversations",
			sound_events_n = 1,
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pes_fleur_conversation_eleven_01"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			localization_strings = {
				[1.0] = "pes_fleur_conversation_eleven_01"
			},
			sound_events_duration = {
				[1.0] = 4.2976665496826
			},
			face_animations = {
				[1.0] = "face_calm"
			}
		},
		pbw_fleur_conversation_twentyseven_01 = {
			face_animations_n = 1,
			database = "fleur_conversations",
			sound_events_n = 1,
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pbw_fleur_conversation_twentyseven_01"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			localization_strings = {
				[1.0] = "pbw_fleur_conversation_twentyseven_01"
			},
			sound_events_duration = {
				[1.0] = 1.4913958311081
			},
			face_animations = {
				[1.0] = "face_calm"
			}
		},
		pdr_fleur_conversation_seven_03 = {
			face_animations_n = 1,
			database = "fleur_conversations",
			sound_events_n = 1,
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pdr_fleur_conversation_seven_03"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			localization_strings = {
				[1.0] = "pdr_fleur_conversation_seven_03"
			},
			sound_events_duration = {
				[1.0] = 2.017041683197
			},
			face_animations = {
				[1.0] = "face_calm"
			}
		},
		pdr_fleur_conversation_seven_01 = {
			face_animations_n = 1,
			database = "fleur_conversations",
			sound_events_n = 1,
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pdr_fleur_conversation_seven_01"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			localization_strings = {
				[1.0] = "pdr_fleur_conversation_seven_01"
			},
			sound_events_duration = {
				[1.0] = 4.6776251792908
			},
			face_animations = {
				[1.0] = "face_calm"
			}
		},
		pwh_fleur_conversation_twentythree_01 = {
			face_animations_n = 1,
			database = "fleur_conversations",
			sound_events_n = 1,
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pwh_fleur_conversation_twentythree_01"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			localization_strings = {
				[1.0] = "pwh_fleur_conversation_twentythree_01"
			},
			sound_events_duration = {
				[1.0] = 1.7332082986832
			},
			face_animations = {
				[1.0] = "face_calm"
			}
		},
		pes_fleur_conversation_seven_02 = {
			face_animations_n = 1,
			database = "fleur_conversations",
			sound_events_n = 1,
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pes_fleur_conversation_seven_02"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			localization_strings = {
				[1.0] = "pes_fleur_conversation_seven_02"
			},
			sound_events_duration = {
				[1.0] = 5.4818959236145
			},
			face_animations = {
				[1.0] = "face_calm"
			}
		},
		pes_fleur_conversation_sixteen_02 = {
			face_animations_n = 1,
			database = "fleur_conversations",
			sound_events_n = 1,
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pes_fleur_conversation_sixteen_02"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			localization_strings = {
				[1.0] = "pes_fleur_conversation_sixteen_02"
			},
			sound_events_duration = {
				[1.0] = 5.7121043205261
			},
			face_animations = {
				[1.0] = "face_calm"
			}
		},
		pwe_fleur_conversation_two_02 = {
			face_animations_n = 1,
			database = "fleur_conversations",
			sound_events_n = 1,
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pwe_fleur_conversation_two_02"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			localization_strings = {
				[1.0] = "pwe_fleur_conversation_two_02"
			},
			sound_events_duration = {
				[1.0] = 4.9519581794739
			},
			face_animations = {
				[1.0] = "face_calm"
			}
		},
		pdr_fleur_conversation_twentythree_01 = {
			face_animations_n = 1,
			database = "fleur_conversations",
			sound_events_n = 1,
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pdr_fleur_conversation_twentythree_01"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			localization_strings = {
				[1.0] = "pdr_fleur_conversation_twentythree_01"
			},
			sound_events_duration = {
				[1.0] = 8.1563749313354
			},
			face_animations = {
				[1.0] = "face_calm"
			}
		},
		pes_fleur_conversation_six_02 = {
			face_animations_n = 1,
			database = "fleur_conversations",
			sound_events_n = 1,
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pes_fleur_conversation_six_02"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			localization_strings = {
				[1.0] = "pes_fleur_conversation_six_02"
			},
			sound_events_duration = {
				[1.0] = 2.9413957595825
			},
			face_animations = {
				[1.0] = "face_calm"
			}
		},
		pbw_fleur_conversation_sixteen_02 = {
			face_animations_n = 1,
			database = "fleur_conversations",
			sound_events_n = 1,
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pbw_fleur_conversation_sixteen_02"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			localization_strings = {
				[1.0] = "pbw_fleur_conversation_sixteen_02"
			},
			sound_events_duration = {
				[1.0] = 3.887416601181
			},
			face_animations = {
				[1.0] = "face_calm"
			}
		},
		pes_fleur_conversation_sixteen_01 = {
			face_animations_n = 1,
			database = "fleur_conversations",
			sound_events_n = 1,
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pes_fleur_conversation_sixteen_01"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			localization_strings = {
				[1.0] = "pes_fleur_conversation_sixteen_01"
			},
			sound_events_duration = {
				[1.0] = 3.2231042385101
			},
			face_animations = {
				[1.0] = "face_calm"
			}
		},
		pbw_fleur_conversation_sixteen_01 = {
			face_animations_n = 1,
			database = "fleur_conversations",
			sound_events_n = 1,
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pbw_fleur_conversation_sixteen_01"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			localization_strings = {
				[1.0] = "pbw_fleur_conversation_sixteen_01"
			},
			sound_events_duration = {
				[1.0] = 6.1856460571289
			},
			face_animations = {
				[1.0] = "face_calm"
			}
		},
		pwe_fleur_conversation_two_01 = {
			face_animations_n = 1,
			database = "fleur_conversations",
			sound_events_n = 1,
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pwe_fleur_conversation_two_01"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			localization_strings = {
				[1.0] = "pwe_fleur_conversation_two_01"
			},
			sound_events_duration = {
				[1.0] = 2.948499917984
			},
			face_animations = {
				[1.0] = "face_calm"
			}
		},
		pes_fleur_conversation_twelve_02 = {
			face_animations_n = 1,
			database = "fleur_conversations",
			sound_events_n = 1,
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pes_fleur_conversation_twelve_02"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			localization_strings = {
				[1.0] = "pes_fleur_conversation_twelve_02"
			},
			sound_events_duration = {
				[1.0] = 3.5606875419617
			},
			face_animations = {
				[1.0] = "face_calm"
			}
		},
		pes_fleur_conversation_seven_01 = {
			face_animations_n = 1,
			database = "fleur_conversations",
			sound_events_n = 1,
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pes_fleur_conversation_seven_01"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			localization_strings = {
				[1.0] = "pes_fleur_conversation_seven_01"
			},
			sound_events_duration = {
				[1.0] = 11.278520584106
			},
			face_animations = {
				[1.0] = "face_calm"
			}
		},
		pbw_fleur_conversation_fifteen_01 = {
			face_animations_n = 1,
			database = "fleur_conversations",
			sound_events_n = 1,
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pbw_fleur_conversation_fifteen_01"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			localization_strings = {
				[1.0] = "pbw_fleur_conversation_fifteen_01"
			},
			sound_events_duration = {
				[1.0] = 4.6902709007263
			},
			face_animations = {
				[1.0] = "face_calm"
			}
		},
		pbw_fleur_conversation_fourteen_01 = {
			face_animations_n = 1,
			database = "fleur_conversations",
			sound_events_n = 1,
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pbw_fleur_conversation_fourteen_01"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			localization_strings = {
				[1.0] = "pbw_fleur_conversation_fourteen_01"
			},
			sound_events_duration = {
				[1.0] = 5.1693124771118
			},
			face_animations = {
				[1.0] = "face_calm"
			}
		},
		pes_fleur_conversation_ten_01 = {
			face_animations_n = 1,
			database = "fleur_conversations",
			sound_events_n = 1,
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pes_fleur_conversation_ten_01"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			localization_strings = {
				[1.0] = "pes_fleur_conversation_ten_01"
			},
			sound_events_duration = {
				[1.0] = 1.9531667232513
			},
			face_animations = {
				[1.0] = "face_calm"
			}
		},
		pdr_fleur_conversation_six_02 = {
			face_animations_n = 1,
			database = "fleur_conversations",
			sound_events_n = 1,
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pdr_fleur_conversation_six_02"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			localization_strings = {
				[1.0] = "pdr_fleur_conversation_six_02"
			},
			sound_events_duration = {
				[1.0] = 3.5835626125336
			},
			face_animations = {
				[1.0] = "face_calm"
			}
		},
		pdr_fleur_conversation_eight_03 = {
			face_animations_n = 1,
			database = "fleur_conversations",
			sound_events_n = 1,
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pdr_fleur_conversation_eight_03"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			localization_strings = {
				[1.0] = "pdr_fleur_conversation_eight_03"
			},
			sound_events_duration = {
				[1.0] = 0.6397500038147
			},
			face_animations = {
				[1.0] = "face_calm"
			}
		},
		pwh_fleur_conversation_ten_03 = {
			face_animations_n = 1,
			database = "fleur_conversations",
			sound_events_n = 1,
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pwh_fleur_conversation_ten_03"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			localization_strings = {
				[1.0] = "pwh_fleur_conversation_ten_03"
			},
			sound_events_duration = {
				[1.0] = 1.7563749551773
			},
			face_animations = {
				[1.0] = "face_calm"
			}
		},
		pwe_fleur_conversation_twentyfour_02 = {
			face_animations_n = 1,
			database = "fleur_conversations",
			sound_events_n = 1,
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pwe_fleur_conversation_twentyfour_02"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			localization_strings = {
				[1.0] = "pwe_fleur_conversation_twentyfour_02"
			},
			sound_events_duration = {
				[1.0] = 4.5524582862854
			},
			face_animations = {
				[1.0] = "face_calm"
			}
		},
		pdr_fleur_conversation_six_01 = {
			face_animations_n = 1,
			database = "fleur_conversations",
			sound_events_n = 1,
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pdr_fleur_conversation_six_01"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			localization_strings = {
				[1.0] = "pdr_fleur_conversation_six_01"
			},
			sound_events_duration = {
				[1.0] = 3.2263541221619
			},
			face_animations = {
				[1.0] = "face_calm"
			}
		},
		pwh_fleur_conversation_nine_02 = {
			face_animations_n = 1,
			database = "fleur_conversations",
			sound_events_n = 1,
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pwh_fleur_conversation_nine_02"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			localization_strings = {
				[1.0] = "pwh_fleur_conversation_nine_02"
			},
			sound_events_duration = {
				[1.0] = 6.2304582595825
			},
			face_animations = {
				[1.0] = "face_calm"
			}
		},
		pdr_fleur_conversation_twentyeight_01 = {
			face_animations_n = 1,
			database = "fleur_conversations",
			sound_events_n = 1,
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pdr_fleur_conversation_twentyeight_01"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			localization_strings = {
				[1.0] = "pdr_fleur_conversation_twentyeight_01"
			},
			sound_events_duration = {
				[1.0] = 6.0747084617615
			},
			face_animations = {
				[1.0] = "face_calm"
			}
		},
		pes_fleur_conversation_two_02 = {
			face_animations_n = 1,
			database = "fleur_conversations",
			sound_events_n = 1,
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pes_fleur_conversation_two_02"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			localization_strings = {
				[1.0] = "pes_fleur_conversation_two_02"
			},
			sound_events_duration = {
				[1.0] = 2.6830832958221
			},
			face_animations = {
				[1.0] = "face_calm"
			}
		},
		pwh_fleur_conversation_twentyfive_02 = {
			face_animations_n = 1,
			database = "fleur_conversations",
			sound_events_n = 1,
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pwh_fleur_conversation_twentyfive_02"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			localization_strings = {
				[1.0] = "pwh_fleur_conversation_twentyfive_02"
			},
			sound_events_duration = {
				[1.0] = 1.4051666259766
			},
			face_animations = {
				[1.0] = "face_calm"
			}
		},
		pes_fleur_conversation_fifteen_01 = {
			face_animations_n = 1,
			database = "fleur_conversations",
			sound_events_n = 1,
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pes_fleur_conversation_fifteen_01"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			localization_strings = {
				[1.0] = "pes_fleur_conversation_fifteen_01"
			},
			sound_events_duration = {
				[1.0] = 3.1070415973663
			},
			face_animations = {
				[1.0] = "face_calm"
			}
		},
		pbw_fleur_conversation_thirteen_02 = {
			face_animations_n = 1,
			database = "fleur_conversations",
			sound_events_n = 1,
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pbw_fleur_conversation_thirteen_02"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			localization_strings = {
				[1.0] = "pbw_fleur_conversation_thirteen_02"
			},
			sound_events_duration = {
				[1.0] = 3.2772917747498
			},
			face_animations = {
				[1.0] = "face_calm"
			}
		},
		pes_fleur_conversation_twelve_01 = {
			face_animations_n = 1,
			database = "fleur_conversations",
			sound_events_n = 1,
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pes_fleur_conversation_twelve_01"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			localization_strings = {
				[1.0] = "pes_fleur_conversation_twelve_01"
			},
			sound_events_duration = {
				[1.0] = 5.2594165802002
			},
			face_animations = {
				[1.0] = "face_calm"
			}
		},
		pwh_fleur_conversation_eleven_02 = {
			face_animations_n = 1,
			database = "fleur_conversations",
			sound_events_n = 1,
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pwh_fleur_conversation_eleven_02"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			localization_strings = {
				[1.0] = "pwh_fleur_conversation_eleven_02"
			},
			sound_events_duration = {
				[1.0] = 0.566645860672
			},
			face_animations = {
				[1.0] = "face_calm"
			}
		},
		pwh_fleur_conversation_nine_01 = {
			face_animations_n = 1,
			database = "fleur_conversations",
			sound_events_n = 1,
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pwh_fleur_conversation_nine_01"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			localization_strings = {
				[1.0] = "pwh_fleur_conversation_nine_01"
			},
			sound_events_duration = {
				[1.0] = 7.0547499656677
			},
			face_animations = {
				[1.0] = "face_calm"
			}
		},
		pbw_fleur_conversation_twentyfour_01 = {
			face_animations_n = 1,
			database = "fleur_conversations",
			sound_events_n = 1,
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pbw_fleur_conversation_twentyfour_01"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			localization_strings = {
				[1.0] = "pbw_fleur_conversation_twentyfour_01"
			},
			sound_events_duration = {
				[1.0] = 2.7445209026337
			},
			face_animations = {
				[1.0] = "face_calm"
			}
		},
		pwh_fleur_conversation_eleven_03 = {
			face_animations_n = 1,
			database = "fleur_conversations",
			sound_events_n = 1,
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pwh_fleur_conversation_eleven_03"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			localization_strings = {
				[1.0] = "pwh_fleur_conversation_eleven_03"
			},
			sound_events_duration = {
				[1.0] = 1.5049166679382
			},
			face_animations = {
				[1.0] = "face_calm"
			}
		},
		pbw_fleur_conversation_twentyfour_02 = {
			face_animations_n = 1,
			database = "fleur_conversations",
			sound_events_n = 1,
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pbw_fleur_conversation_twentyfour_02"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			localization_strings = {
				[1.0] = "pbw_fleur_conversation_twentyfour_02"
			},
			sound_events_duration = {
				[1.0] = 4.4869585037231
			},
			face_animations = {
				[1.0] = "face_calm"
			}
		},
		pes_fleur_conversation_two_01 = {
			face_animations_n = 1,
			database = "fleur_conversations",
			sound_events_n = 1,
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pes_fleur_conversation_two_01"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			localization_strings = {
				[1.0] = "pes_fleur_conversation_two_01"
			},
			sound_events_duration = {
				[1.0] = 3.5134999752045
			},
			face_animations = {
				[1.0] = "face_calm"
			}
		},
		pwe_fleur_conversation_one_02 = {
			face_animations_n = 1,
			database = "fleur_conversations",
			sound_events_n = 1,
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pwe_fleur_conversation_one_02"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			localization_strings = {
				[1.0] = "pwe_fleur_conversation_one_02"
			},
			sound_events_duration = {
				[1.0] = 5.1999998092651
			},
			face_animations = {
				[1.0] = "face_calm"
			}
		},
		pes_fleur_conversation_nine_02 = {
			face_animations_n = 1,
			database = "fleur_conversations",
			sound_events_n = 1,
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pes_fleur_conversation_nine_02"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			localization_strings = {
				[1.0] = "pes_fleur_conversation_nine_02"
			},
			sound_events_duration = {
				[1.0] = 3.138854265213
			},
			face_animations = {
				[1.0] = "face_calm"
			}
		},
		pdr_fleur_conversation_eight_02 = {
			face_animations_n = 1,
			database = "fleur_conversations",
			sound_events_n = 1,
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pdr_fleur_conversation_eight_02"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			localization_strings = {
				[1.0] = "pdr_fleur_conversation_eight_02"
			},
			sound_events_duration = {
				[1.0] = 3.1484375
			},
			face_animations = {
				[1.0] = "face_calm"
			}
		}
	})
end
