return function ()
	define_rule({
		name = "pbw_level_helmgart_military_empty_town",
		response = "pbw_level_helmgart_military_empty_town",
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
				"helmgart_military_empty_town"
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
				"time_since_helmgart_military_empty_town",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_helmgart_military_empty_town",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pbw_level_helmgart_military_fort_help",
		response = "pbw_level_helmgart_military_fort_help",
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
				"helmgart_military_fort_help"
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
				"time_since_helmgart_military_fort_help",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_helmgart_military_fort_help",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pbw_level_helmgart_military_fort_entrance",
		response = "pbw_level_helmgart_military_fort_entrance",
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
				"helmgart_military_fort_entrance"
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
				"time_since_helmgart_military_fort_entrance",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_helmgart_military_fort_entrance",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pbw_level_helmgart_military_fort_massacre",
		response = "pbw_level_helmgart_military_fort_massacre",
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
				"helmgart_military_fort_massacre"
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
				"time_since_helmgart_military_fort_massacre",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_helmgart_military_fort_massacre",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pbw_level_helmgart_military_fort_elevator",
		response = "pbw_level_helmgart_military_fort_elevator",
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
				"helmgart_military_fort_elevator"
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
				"time_since_helmgart_military_fort_elevator",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_helmgart_military_fort_elevator",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pbw_level_helmgart_military_armoury",
		response = "pbw_level_helmgart_military_armoury",
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
				"helmgart_military_armoury"
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
				"time_since_helmgart_military_armoury",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_helmgart_military_armoury",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pbw_level_helmgart_military_courtyard_event",
		response = "pbw_level_helmgart_military_courtyard_event",
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
				"helmgart_military_courtyard_event"
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
				"time_since_helmgart_military_courtyard_event",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_helmgart_military_courtyard_event",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pbw_level_helmgart_military_axebite_pass_vista",
		response = "pbw_level_helmgart_military_axebite_pass_vista",
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
				"helmgart_military_axebite_pass_vista"
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
				"time_since_helmgart_military_axebite_pass_vista",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_helmgart_military_axebite_pass_vista",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pbw_level_helmgart_military_helmgart_vista",
		response = "pbw_level_helmgart_military_helmgart_vista",
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
				"helmgart_military_helmgart_vista"
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
				"time_since_helmgart_military_helmgart_vista",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_helmgart_military_helmgart_vista",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pbw_level_helmgart_military_locked_portcullis",
		response = "pbw_level_helmgart_military_locked_portcullis",
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
				"helmgart_military_locked_portcullis"
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
				"time_since_helmgart_military_locked_portcullis",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_helmgart_military_locked_portcullis",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pbw_level_helmgart_military_turn_cannon",
		response = "pbw_level_helmgart_military_turn_cannon",
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
				"helmgart_military_turn_cannon"
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
				"time_since_helmgart_military_turn_cannon",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_helmgart_military_turn_cannon",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pbw_level_helmgart_military_fire_cannon",
		response = "pbw_level_helmgart_military_fire_cannon",
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
				"helmgart_military_fire_cannon"
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
				"time_since_helmgart_military_fire_cannon",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_helmgart_military_fire_cannon",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pbw_level_helmgart_military_oops",
		response = "pbw_level_helmgart_military_oops",
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
				"helmgart_military_oops"
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
				"time_since_helmgart_military_oops",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_helmgart_military_oops",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pbw_level_helmgart_military_temple_ahead",
		response = "pbw_level_helmgart_military_temple_ahead",
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
				"helmgart_military_temple_ahead"
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
				"time_since_helmgart_military_temple_ahead",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_helmgart_military_temple_ahead",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pbw_level_helmgart_military_pilgrim_path",
		response = "pbw_level_helmgart_military_pilgrim_path",
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
				"helmgart_military_pilgrim_path"
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
				"time_since_helmgart_military_pilgrim_path",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_helmgart_military_pilgrim_path",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pbw_level_helmgart_military_arriving_temple",
		response = "pbw_level_helmgart_military_arriving_temple",
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
				"helmgart_military_arriving_temple"
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
				"time_since_helmgart_military_arriving_temple",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_helmgart_military_arriving_temple",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pbw_level_helmgart_military_prepare",
		response = "pbw_level_helmgart_military_prepare",
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
				"helmgart_military_prepare"
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
				"time_since_helmgart_military_prepare",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_helmgart_military_prepare",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pbw_level_helmgart_military_ring_bell",
		response = "pbw_level_helmgart_military_ring_bell",
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
				"helmgart_military_ring_bell"
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
				"time_since_helmgart_military_ring_bell",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_helmgart_military_ring_bell",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pbw_level_helmgart_military_they_are_coming",
		response = "pbw_level_helmgart_military_they_are_coming",
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
				"helmgart_military_they_are_coming"
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
				"time_since_helmgart_military_they_are_coming",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_helmgart_military_they_are_coming",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pbw_level_helmgart_military_halfway_through_horde",
		response = "pbw_level_helmgart_military_halfway_through_horde",
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
				"helmgart_military_halfway_through_horde"
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
				"time_since_helmgart_military_halfway_through_horde",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_helmgart_military_halfway_through_horde",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pbw_level_helmgart_military_spooky_temple",
		response = "pbw_level_helmgart_military_spooky_temple",
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
				"helmgart_military_spooky_temple"
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
				"time_since_helmgart_military_spooky_temple",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_helmgart_military_spooky_temple",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pbw_level_helmgart_military_door_opens",
		response = "pbw_level_helmgart_military_door_opens",
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
				"helmgart_military_door_opens"
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
				"time_since_helmgart_military_door_opens",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_helmgart_military_door_opens",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pbw_level_helmgart_military_time_to_leave",
		response = "pbw_level_helmgart_military_time_to_leave",
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
				"helmgart_military_time_to_leave"
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
				"time_since_helmgart_military_time_to_leave",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_helmgart_military_time_to_leave",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pbw_level_helmgart_military_spotting_portal",
		response = "pbw_level_helmgart_military_spotting_portal",
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
				"helmgart_military_spotting_portal"
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
				"time_since_helmgart_military_spotting_portal",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_helmgart_military_spotting_portal",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pbw_helmgart_military_a",
		response = "pbw_helmgart_military_a",
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
				"helmgart_military_a"
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
				"helmgart_military_a",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"helmgart_military_a",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pbw_helmgart_military_b",
		response = "pbw_helmgart_military_b",
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
				"helmgart_military_a"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"helmgart_military_b",
				OP.TIMEDIFF,
				OP.GT,
				1
			}
		},
		on_done = {
			{
				"faction_memory",
				"helmgart_military_b",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pbw_helmgart_military_c",
		response = "pbw_helmgart_military_c",
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
				"helmgart_military_c"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"helmgart_military_c",
				OP.TIMEDIFF,
				OP.GT,
				1
			}
		},
		on_done = {
			{
				"faction_memory",
				"helmgart_military_c",
				OP.TIMESET
			}
		}
	})
	add_dialogues({
		pbw_level_helmgart_military_oops = {
			face_animations_n = 4,
			database = "bright_wizard_military",
			sound_events_n = 4,
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 4,
			randomize_indexes = {},
			localization_strings = {
				"pbw_level_helmgart_military_oops_01",
				"pbw_level_helmgart_military_oops_02",
				"pbw_level_helmgart_military_oops_03",
				"pbw_level_helmgart_military_oops_04"
			},
			sound_events = {
				"pbw_level_helmgart_military_oops_01",
				"pbw_level_helmgart_military_oops_02",
				"pbw_level_helmgart_military_oops_03",
				"pbw_level_helmgart_military_oops_04"
			},
			face_animations = {
				"face_concerned",
				"face_concerned",
				"face_concerned",
				"face_concerned"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			sound_events_duration = {
				3.7087082862854,
				2.3971667289734,
				4.7198543548584,
				5.0475206375122
			}
		},
		pbw_level_helmgart_military_time_to_leave = {
			face_animations_n = 4,
			database = "bright_wizard_military",
			sound_events_n = 4,
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 4,
			randomize_indexes = {},
			localization_strings = {
				"pbw_level_helmgart_military_time_to_leave_01",
				"pbw_level_helmgart_military_time_to_leave_02",
				"pbw_level_helmgart_military_time_to_leave_03",
				"pbw_level_helmgart_military_time_to_leave_04"
			},
			sound_events = {
				"pbw_level_helmgart_military_time_to_leave_01",
				"pbw_level_helmgart_military_time_to_leave_02",
				"pbw_level_helmgart_military_time_to_leave_03",
				"pbw_level_helmgart_military_time_to_leave_04"
			},
			face_animations = {
				"face_concerned",
				"face_concerned",
				"face_concerned",
				"face_concerned"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			sound_events_duration = {
				4.0721039772034,
				7.0354166030884,
				1.9849582910538,
				2.0610415935516
			}
		},
		pbw_level_helmgart_military_temple_ahead = {
			face_animations_n = 4,
			database = "bright_wizard_military",
			sound_events_n = 4,
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 4,
			randomize_indexes = {},
			localization_strings = {
				"pbw_level_helmgart_military_temple_ahead_01",
				"pbw_level_helmgart_military_temple_ahead_02",
				"pbw_level_helmgart_military_temple_ahead_03",
				"pbw_level_helmgart_military_temple_ahead_04"
			},
			sound_events = {
				"pbw_level_helmgart_military_temple_ahead_01",
				"pbw_level_helmgart_military_temple_ahead_02",
				"pbw_level_helmgart_military_temple_ahead_03",
				"pbw_level_helmgart_military_temple_ahead_04"
			},
			face_animations = {
				"face_concerned",
				"face_concerned",
				"face_concerned",
				"face_concerned"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			sound_events_duration = {
				3.2029790878296,
				4.7494792938232,
				2.4829790592194,
				4.0898957252502
			}
		},
		pbw_level_helmgart_military_fort_elevator = {
			face_animations_n = 4,
			database = "bright_wizard_military",
			sound_events_n = 4,
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 4,
			randomize_indexes = {},
			localization_strings = {
				"pbw_level_helmgart_military_fort_elevator_01",
				"pbw_level_helmgart_military_fort_elevator_02",
				"pbw_level_helmgart_military_fort_elevator_03",
				"pbw_level_helmgart_military_fort_elevator_04"
			},
			sound_events = {
				"pbw_level_helmgart_military_fort_elevator_01",
				"pbw_level_helmgart_military_fort_elevator_02",
				"pbw_level_helmgart_military_fort_elevator_03",
				"pbw_level_helmgart_military_fort_elevator_04"
			},
			face_animations = {
				"face_concerned",
				"face_concerned",
				"face_concerned",
				"face_concerned"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			sound_events_duration = {
				2.0504999160767,
				3.1458542346954,
				1.6488749980927,
				2.0196249485016
			}
		},
		pbw_helmgart_military_c = {
			face_animations_n = 2,
			database = "bright_wizard_military",
			sound_events_n = 2,
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 2,
			randomize_indexes = {},
			localization_strings = {
				[1.0] = "pbw_helmgart_military_intro_c_01",
				[2.0] = "pbw_helmgart_military_intro_c_02"
			},
			sound_events = {
				[1.0] = "pbw_helmgart_military_intro_c_01",
				[2.0] = "pbw_helmgart_military_intro_c_02"
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
				[1.0] = 5.7244377136231,
				[2.0] = 3.167729139328
			}
		},
		pbw_helmgart_military_b = {
			face_animations_n = 2,
			database = "bright_wizard_military",
			sound_events_n = 2,
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 2,
			randomize_indexes = {},
			localization_strings = {
				[1.0] = "pbw_helmgart_military_intro_b_01",
				[2.0] = "pbw_helmgart_military_intro_b_02"
			},
			sound_events = {
				[1.0] = "pbw_helmgart_military_intro_b_01",
				[2.0] = "pbw_helmgart_military_intro_b_02"
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
				[1.0] = 5.6246042251587,
				[2.0] = 5.397979259491
			}
		},
		pbw_level_helmgart_military_fort_massacre = {
			face_animations_n = 4,
			database = "bright_wizard_military",
			sound_events_n = 4,
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 4,
			randomize_indexes = {},
			localization_strings = {
				"pbw_level_helmgart_military_fort_massacre_01",
				"pbw_level_helmgart_military_fort_massacre_02",
				"pbw_level_helmgart_military_fort_massacre_03",
				"pbw_level_helmgart_military_fort_massacre_04"
			},
			sound_events = {
				"pbw_level_helmgart_military_fort_massacre_01",
				"pbw_level_helmgart_military_fort_massacre_02",
				"pbw_level_helmgart_military_fort_massacre_03",
				"pbw_level_helmgart_military_fort_massacre_04"
			},
			face_animations = {
				"face_concerned",
				"face_concerned",
				"face_concerned",
				"face_concerned"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			sound_events_duration = {
				6.2155418395996,
				3.5603125095367,
				2.0381667613983,
				4.7340207099915
			}
		},
		pbw_level_helmgart_military_courtyard_event = {
			face_animations_n = 4,
			database = "bright_wizard_military",
			sound_events_n = 4,
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 4,
			randomize_indexes = {},
			localization_strings = {
				"pbw_level_helmgart_military_courtyard_event_01",
				"pbw_level_helmgart_military_courtyard_event_02",
				"pbw_level_helmgart_military_courtyard_event_03",
				"pbw_level_helmgart_military_courtyard_event_04"
			},
			sound_events = {
				"pbw_level_helmgart_military_courtyard_event_01",
				"pbw_level_helmgart_military_courtyard_event_02",
				"pbw_level_helmgart_military_courtyard_event_03",
				"pbw_level_helmgart_military_courtyard_event_04"
			},
			face_animations = {
				"face_concerned",
				"face_concerned",
				"face_concerned",
				"face_concerned"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			sound_events_duration = {
				3.4025416374206,
				2.5677917003632,
				2.2261874675751,
				5.051146030426
			}
		},
		pbw_level_helmgart_military_arriving_temple = {
			face_animations_n = 4,
			database = "bright_wizard_military",
			sound_events_n = 4,
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 4,
			randomize_indexes = {},
			localization_strings = {
				"pbw_level_helmgart_military_arriving_temple_01",
				"pbw_level_helmgart_military_arriving_temple_02",
				"pbw_level_helmgart_military_arriving_temple_03",
				"pbw_level_helmgart_military_arriving_temple_04"
			},
			sound_events = {
				"pbw_level_helmgart_military_arriving_temple_01",
				"pbw_level_helmgart_military_arriving_temple_02",
				"pbw_level_helmgart_military_arriving_temple_03",
				"pbw_level_helmgart_military_arriving_temple_04"
			},
			face_animations = {
				"face_concerned",
				"face_concerned",
				"face_concerned",
				"face_concerned"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			sound_events_duration = {
				2.6715624332428,
				3.4553124904633,
				5.7298331260681,
				3.5028958320618
			}
		},
		pbw_level_helmgart_military_armoury = {
			face_animations_n = 4,
			database = "bright_wizard_military",
			sound_events_n = 4,
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 4,
			randomize_indexes = {},
			localization_strings = {
				"pbw_level_helmgart_military_armoury_01",
				"pbw_level_helmgart_military_armoury_02",
				"pbw_level_helmgart_military_armoury_03",
				"pbw_level_helmgart_military_armoury_04"
			},
			sound_events = {
				"pbw_level_helmgart_military_armoury_01",
				"pbw_level_helmgart_military_armoury_02",
				"pbw_level_helmgart_military_armoury_03",
				"pbw_level_helmgart_military_armoury_04"
			},
			face_animations = {
				"face_concerned",
				"face_concerned",
				"face_concerned",
				"face_concerned"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			sound_events_duration = {
				1.8860833644867,
				2.3318333625794,
				2.6092708110809,
				4.156750202179
			}
		},
		pbw_level_helmgart_military_turn_cannon = {
			face_animations_n = 4,
			database = "bright_wizard_military",
			sound_events_n = 4,
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 4,
			randomize_indexes = {},
			localization_strings = {
				"pbw_level_helmgart_military_turn_cannon_01",
				"pbw_level_helmgart_military_turn_cannon_02",
				"pbw_level_helmgart_military_turn_cannon_03",
				"pbw_level_helmgart_military_turn_cannon_04"
			},
			sound_events = {
				"pbw_level_helmgart_military_turn_cannon_01",
				"pbw_level_helmgart_military_turn_cannon_02",
				"pbw_level_helmgart_military_turn_cannon_03",
				"pbw_level_helmgart_military_turn_cannon_04"
			},
			face_animations = {
				"face_concerned",
				"face_concerned",
				"face_concerned",
				"face_concerned"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			sound_events_duration = {
				3.913583278656,
				4.4962291717529,
				5.6284165382385,
				4.2127709388733
			}
		},
		pbw_level_helmgart_military_spotting_portal = {
			face_animations_n = 4,
			database = "bright_wizard_military",
			sound_events_n = 4,
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 4,
			randomize_indexes = {},
			localization_strings = {
				"pbw_level_helmgart_military_spotting_portal_01",
				"pbw_level_helmgart_military_spotting_portal_02",
				"pbw_level_helmgart_military_spotting_portal_03",
				"pbw_level_helmgart_military_spotting_portal_04"
			},
			sound_events = {
				"pbw_level_helmgart_military_spotting_portal_01",
				"pbw_level_helmgart_military_spotting_portal_02",
				"pbw_level_helmgart_military_spotting_portal_03",
				"pbw_level_helmgart_military_spotting_portal_04"
			},
			face_animations = {
				"face_concerned",
				"face_concerned",
				"face_concerned",
				"face_concerned"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			sound_events_duration = {
				3.0724582672119,
				2.7111041545868,
				2.1253125667572,
				4.3716249465942
			}
		},
		pbw_helmgart_military_a = {
			face_animations_n = 2,
			database = "bright_wizard_military",
			sound_events_n = 2,
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 2,
			randomize_indexes = {},
			localization_strings = {
				[1.0] = "pbw_helmgart_military_intro_a_01",
				[2.0] = "pbw_helmgart_military_intro_a_02"
			},
			sound_events = {
				[1.0] = "pbw_helmgart_military_intro_a_01",
				[2.0] = "pbw_helmgart_military_intro_a_02"
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
				[1.0] = 3.9878749847412,
				[2.0] = 3.292249917984
			}
		},
		pbw_level_helmgart_military_fort_entrance = {
			face_animations_n = 4,
			database = "bright_wizard_military",
			sound_events_n = 4,
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 4,
			randomize_indexes = {},
			localization_strings = {
				"pbw_level_helmgart_military_fort_entrance_01",
				"pbw_level_helmgart_military_fort_entrance_02",
				"pbw_level_helmgart_military_fort_entrance_03",
				"pbw_level_helmgart_military_fort_entrance_04"
			},
			sound_events = {
				"pbw_level_helmgart_military_fort_entrance_01",
				"pbw_level_helmgart_military_fort_entrance_02",
				"pbw_level_helmgart_military_fort_entrance_03",
				"pbw_level_helmgart_military_fort_entrance_04"
			},
			face_animations = {
				"face_concerned",
				"face_concerned",
				"face_concerned",
				"face_concerned"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			sound_events_duration = {
				1.8367500305176,
				1.7638958692551,
				4.8534164428711,
				1.8301041126251
			}
		},
		pbw_level_helmgart_military_fire_cannon = {
			face_animations_n = 4,
			database = "bright_wizard_military",
			sound_events_n = 4,
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 4,
			randomize_indexes = {},
			localization_strings = {
				"pbw_level_helmgart_military_fire_cannon_01",
				"pbw_level_helmgart_military_fire_cannon_02",
				"pbw_level_helmgart_military_fire_cannon_03",
				"pbw_level_helmgart_military_fire_cannon_04"
			},
			sound_events = {
				"pbw_level_helmgart_military_fire_cannon_01",
				"pbw_level_helmgart_military_fire_cannon_02",
				"pbw_level_helmgart_military_fire_cannon_03",
				"pbw_level_helmgart_military_fire_cannon_04"
			},
			face_animations = {
				"face_concerned",
				"face_concerned",
				"face_concerned",
				"face_concerned"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			sound_events_duration = {
				3.3581042289734,
				1.5076458454132,
				3.2410209178925,
				3.3165833950043
			}
		},
		pbw_level_helmgart_military_door_opens = {
			face_animations_n = 4,
			database = "bright_wizard_military",
			sound_events_n = 4,
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 4,
			randomize_indexes = {},
			localization_strings = {
				"pbw_level_helmgart_military_door_opens_01",
				"pbw_level_helmgart_military_door_opens_02",
				"pbw_level_helmgart_military_door_opens_03",
				"pbw_level_helmgart_military_door_opens_04"
			},
			sound_events = {
				"pbw_level_helmgart_military_door_opens_01",
				"pbw_level_helmgart_military_door_opens_02",
				"pbw_level_helmgart_military_door_opens_03",
				"pbw_level_helmgart_military_door_opens_04"
			},
			face_animations = {
				"face_concerned",
				"face_concerned",
				"face_concerned",
				"face_concerned"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			sound_events_duration = {
				1.6056250333786,
				1.4767291545868,
				2.5077290534973,
				3.2498126029968
			}
		},
		pbw_level_helmgart_military_spooky_temple = {
			face_animations_n = 4,
			database = "bright_wizard_military",
			sound_events_n = 4,
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 4,
			randomize_indexes = {},
			localization_strings = {
				"pbw_level_helmgart_military_spooky_temple_01",
				"pbw_level_helmgart_military_spooky_temple_02",
				"pbw_level_helmgart_military_spooky_temple_03",
				"pbw_level_helmgart_military_spooky_temple_04"
			},
			sound_events = {
				"pbw_level_helmgart_military_spooky_temple_01",
				"pbw_level_helmgart_military_spooky_temple_02",
				"pbw_level_helmgart_military_spooky_temple_03",
				"pbw_level_helmgart_military_spooky_temple_04"
			},
			face_animations = {
				"face_concerned",
				"face_concerned",
				"face_concerned",
				"face_concerned"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			sound_events_duration = {
				2.5559165477753,
				2.1598124504089,
				4.3862290382385,
				4.5402708053589
			}
		},
		pbw_level_helmgart_military_locked_portcullis = {
			face_animations_n = 4,
			database = "bright_wizard_military",
			sound_events_n = 4,
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 4,
			randomize_indexes = {},
			localization_strings = {
				"pbw_level_helmgart_military_locked_portcullis_01",
				"pbw_level_helmgart_military_locked_portcullis_02",
				"pbw_level_helmgart_military_locked_portcullis_03",
				"pbw_level_helmgart_military_locked_portcullis_04"
			},
			sound_events = {
				"pbw_level_helmgart_military_locked_portcullis_01",
				"pbw_level_helmgart_military_locked_portcullis_02",
				"pbw_level_helmgart_military_locked_portcullis_03",
				"pbw_level_helmgart_military_locked_portcullis_04"
			},
			face_animations = {
				"face_concerned",
				"face_concerned",
				"face_concerned",
				"face_concerned"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			sound_events_duration = {
				1.3462916612625,
				3.0526041984558,
				3.1770625114441,
				4.1369376182556
			}
		},
		pbw_level_helmgart_military_halfway_through_horde = {
			face_animations_n = 4,
			database = "bright_wizard_military",
			sound_events_n = 4,
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 4,
			randomize_indexes = {},
			localization_strings = {
				"pbw_level_helmgart_military_halfway_through_horde_01",
				"pbw_level_helmgart_military_halfway_through_horde_02",
				"pbw_level_helmgart_military_halfway_through_horde_03",
				"pbw_level_helmgart_military_halfway_through_horde_04"
			},
			sound_events = {
				"pbw_level_helmgart_military_halfway_through_horde_01",
				"pbw_level_helmgart_military_halfway_through_horde_02",
				"pbw_level_helmgart_military_halfway_through_horde_03",
				"pbw_level_helmgart_military_halfway_through_horde_04"
			},
			face_animations = {
				"face_concerned",
				"face_concerned",
				"face_concerned",
				"face_concerned"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			sound_events_duration = {
				3.0733749866486,
				2.6832292079926,
				2.2461042404175,
				1.8004583120346
			}
		},
		pbw_level_helmgart_military_axebite_pass_vista = {
			face_animations_n = 4,
			database = "bright_wizard_military",
			sound_events_n = 4,
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 4,
			randomize_indexes = {},
			localization_strings = {
				"pbw_level_helmgart_military_axebite_pass_vista_01",
				"pbw_level_helmgart_military_axebite_pass_vista_02",
				"pbw_level_helmgart_military_axebite_pass_vista_03",
				"pbw_level_helmgart_military_axebite_pass_vista_04"
			},
			sound_events = {
				"pbw_level_helmgart_military_axebite_pass_vista_01",
				"pbw_level_helmgart_military_axebite_pass_vista_02",
				"pbw_level_helmgart_military_axebite_pass_vista_03",
				"pbw_level_helmgart_military_axebite_pass_vista_04"
			},
			face_animations = {
				"face_concerned",
				"face_concerned",
				"face_concerned",
				"face_concerned"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			sound_events_duration = {
				3.1762292385101,
				5.1249165534973,
				3.625958442688,
				3.4755833148956
			}
		},
		pbw_level_helmgart_military_empty_town = {
			face_animations_n = 4,
			database = "bright_wizard_military",
			sound_events_n = 4,
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 4,
			randomize_indexes = {},
			localization_strings = {
				"pbw_level_helmgart_military_empty_town_01",
				"pbw_level_helmgart_military_empty_town_02",
				"pbw_level_helmgart_military_empty_town_03",
				"pbw_level_helmgart_military_empty_town_04"
			},
			sound_events = {
				"pbw_level_helmgart_military_empty_town_01",
				"pbw_level_helmgart_military_empty_town_02",
				"pbw_level_helmgart_military_empty_town_03",
				"pbw_level_helmgart_military_empty_town_04"
			},
			face_animations = {
				"face_concerned",
				"face_concerned",
				"face_concerned",
				"face_concerned"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			sound_events_duration = {
				3.8374166488648,
				3.5300834178925,
				4.3595623970032,
				3.7443749904633
			}
		},
		pbw_level_helmgart_military_prepare = {
			face_animations_n = 4,
			database = "bright_wizard_military",
			sound_events_n = 4,
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 4,
			randomize_indexes = {},
			localization_strings = {
				"pbw_level_helmgart_military_prepare_01",
				"pbw_level_helmgart_military_prepare_02",
				"pbw_level_helmgart_military_prepare_03",
				"pbw_level_helmgart_military_prepare_04"
			},
			sound_events = {
				"pbw_level_helmgart_military_prepare_01",
				"pbw_level_helmgart_military_prepare_02",
				"pbw_level_helmgart_military_prepare_03",
				"pbw_level_helmgart_military_prepare_04"
			},
			face_animations = {
				"face_concerned",
				"face_concerned",
				"face_concerned",
				"face_concerned"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			sound_events_duration = {
				1.6390416622162,
				4.6281666755676,
				1.8805416822434,
				4.3815832138061
			}
		},
		pbw_level_helmgart_military_pilgrim_path = {
			face_animations_n = 4,
			database = "bright_wizard_military",
			sound_events_n = 4,
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 4,
			randomize_indexes = {},
			localization_strings = {
				"pbw_level_helmgart_military_pilgrim_path_01",
				"pbw_level_helmgart_military_pilgrim_path_02",
				"pbw_level_helmgart_military_pilgrim_path_03",
				"pbw_level_helmgart_military_pilgrim_path_04"
			},
			sound_events = {
				"pbw_level_helmgart_military_pilgrim_path_01",
				"pbw_level_helmgart_military_pilgrim_path_02",
				"pbw_level_helmgart_military_pilgrim_path_03",
				"pbw_level_helmgart_military_pilgrim_path_04"
			},
			face_animations = {
				"face_concerned",
				"face_concerned",
				"face_concerned",
				"face_concerned"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			sound_events_duration = {
				2.5292708873749,
				4.9750623703003,
				4.5577502250671,
				2.907562494278
			}
		},
		pbw_level_helmgart_military_ring_bell = {
			face_animations_n = 4,
			database = "bright_wizard_military",
			sound_events_n = 4,
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 4,
			randomize_indexes = {},
			localization_strings = {
				"pbw_level_helmgart_military_ring_bell_01",
				"pbw_level_helmgart_military_ring_bell_02",
				"pbw_level_helmgart_military_ring_bell_03",
				"pbw_level_helmgart_military_ring_bell_04"
			},
			sound_events = {
				"pbw_level_helmgart_military_ring_bell_01",
				"pbw_level_helmgart_military_ring_bell_02",
				"pbw_level_helmgart_military_ring_bell_03",
				"pbw_level_helmgart_military_ring_bell_04"
			},
			face_animations = {
				"face_concerned",
				"face_concerned",
				"face_concerned",
				"face_concerned"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			sound_events_duration = {
				4.3669376373291,
				4.2549166679382,
				1.5568749904633,
				1.9238125085831
			}
		},
		pbw_level_helmgart_military_they_are_coming = {
			face_animations_n = 4,
			database = "bright_wizard_military",
			sound_events_n = 4,
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 4,
			randomize_indexes = {},
			localization_strings = {
				"pbw_level_helmgart_military_they_are_coming_01",
				"pbw_level_helmgart_military_they_are_coming_02",
				"pbw_level_helmgart_military_they_are_coming_03",
				"pbw_level_helmgart_military_they_are_coming_04"
			},
			sound_events = {
				"pbw_level_helmgart_military_they_are_coming_01",
				"pbw_level_helmgart_military_they_are_coming_02",
				"pbw_level_helmgart_military_they_are_coming_03",
				"pbw_level_helmgart_military_they_are_coming_04"
			},
			face_animations = {
				"face_concerned",
				"face_concerned",
				"face_concerned",
				"face_concerned"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			sound_events_duration = {
				3.3129374980927,
				2.6273748874664,
				1.5969582796097,
				4.8536667823792
			}
		},
		pbw_level_helmgart_military_fort_help = {
			face_animations_n = 4,
			database = "bright_wizard_military",
			sound_events_n = 4,
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 4,
			randomize_indexes = {},
			localization_strings = {
				"pbw_level_helmgart_military_fort_help_01",
				"pbw_level_helmgart_military_fort_help_02",
				"pbw_level_helmgart_military_fort_help_03",
				"pbw_level_helmgart_military_fort_help_04"
			},
			sound_events = {
				"pbw_level_helmgart_military_fort_help_01",
				"pbw_level_helmgart_military_fort_help_02",
				"pbw_level_helmgart_military_fort_help_03",
				"pbw_level_helmgart_military_fort_help_04"
			},
			face_animations = {
				"face_concerned",
				"face_concerned",
				"face_concerned",
				"face_concerned"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			sound_events_duration = {
				2.7704374790192,
				3.9541041851044,
				4.4891457557678,
				3.625833272934
			}
		},
		pbw_level_helmgart_military_helmgart_vista = {
			face_animations_n = 4,
			database = "bright_wizard_military",
			sound_events_n = 4,
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 4,
			randomize_indexes = {},
			localization_strings = {
				"pbw_level_helmgart_military_helmgart_vista_01",
				"pbw_level_helmgart_military_helmgart_vista_02",
				"pbw_level_helmgart_military_helmgart_vista_03",
				"pbw_level_helmgart_military_helmgart_vista_04"
			},
			sound_events = {
				"pbw_level_helmgart_military_helmgart_vista_01",
				"pbw_level_helmgart_military_helmgart_vista_02",
				"pbw_level_helmgart_military_helmgart_vista_03",
				"pbw_level_helmgart_military_helmgart_vista_04"
			},
			face_animations = {
				"face_concerned",
				"face_concerned",
				"face_concerned",
				"face_concerned"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			sound_events_duration = {
				4.8054165840149,
				3.4456250667572,
				3.4645209312439,
				8.211874961853
			}
		}
	})
end
