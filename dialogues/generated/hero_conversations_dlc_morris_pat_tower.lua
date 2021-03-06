return function ()
	define_rule({
		name = "pwh_morris_tower_towervista",
		response = "pwh_morris_tower_towervista",
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
				"pat_tower_towervista"
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
				"pwh_morris_tower_towervista",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"pwh_morris_tower_towervista",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwh_morris_tower_lair",
		response = "pwh_morris_tower_lair",
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
				"pat_tower_lair"
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
				"pwh_morris_tower_lair",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"pwh_morris_tower_lair",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwh_morris_tower_ledge",
		response = "pwh_morris_tower_ledge",
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
				"pat_tower_ledge"
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
				"pwh_morris_tower_ledge",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"pwh_morris_tower_ledge",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwh_morris_tower_library",
		response = "pwh_morris_tower_library",
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
				"pat_tower_library"
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
				"pwh_morris_tower_library",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"pwh_morris_tower_library",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwh_morris_tower_stairs",
		response = "pwh_morris_tower_stairs",
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
				"pat_tower_stairs"
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
				"pwh_morris_tower_stairs",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"pwh_morris_tower_stairs",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwh_morris_tower_lookout",
		response = "pwh_morris_tower_lookout",
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
				"pat_tower_lookout"
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
				"pwh_morris_tower_lookout",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"pwh_morris_tower_lookout",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pbw_morris_tower_towervista",
		response = "pbw_morris_tower_towervista",
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
				"pat_tower_towervista"
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
				"pbw_morris_tower_towervista",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"pbw_morris_tower_towervista",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pbw_morris_tower_lair",
		response = "pbw_morris_tower_lair",
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
				"pat_tower_lair"
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
				"pbw_morris_tower_lair",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"pbw_morris_tower_lair",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pbw_morris_tower_ledge",
		response = "pbw_morris_tower_ledge",
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
				"pat_tower_ledge"
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
				"pbw_morris_tower_ledge",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"pbw_morris_tower_ledge",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pbw_morris_tower_library",
		response = "pbw_morris_tower_library",
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
				"pat_tower_library"
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
				"pbw_morris_tower_library",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"pbw_morris_tower_library",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pbw_morris_tower_stairs",
		response = "pbw_morris_tower_stairs",
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
				"pat_tower_stairs"
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
				"pbw_morris_tower_stairs",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"pbw_morris_tower_stairs",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pbw_morris_tower_lookout",
		response = "pbw_morris_tower_lookout",
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
				"pat_tower_lookout"
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
				"pbw_morris_tower_lookout",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"pbw_morris_tower_lookout",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pdr_morris_tower_towervista",
		response = "pdr_morris_tower_towervista",
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
				"pat_tower_towervista"
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
				"faction_memory",
				"pdr_morris_tower_towervista",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"pdr_morris_tower_towervista",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pdr_morris_tower_lair",
		response = "pdr_morris_tower_lair",
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
				"pat_tower_lair"
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
				"faction_memory",
				"pdr_morris_tower_lair",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"pdr_morris_tower_lair",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pdr_morris_tower_ledge",
		response = "pdr_morris_tower_ledge",
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
				"pat_tower_ledge"
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
				"faction_memory",
				"pdr_morris_tower_ledge",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"pdr_morris_tower_ledge",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pdr_morris_tower_library",
		response = "pdr_morris_tower_library",
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
				"pat_tower_library"
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
				"faction_memory",
				"pdr_morris_tower_library",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"pdr_morris_tower_library",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pdr_morris_tower_stairs",
		response = "pdr_morris_tower_stairs",
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
				"pat_tower_stairs"
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
				"faction_memory",
				"pdr_morris_tower_stairs",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"pdr_morris_tower_stairs",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pdr_morris_tower_lookout",
		response = "pdr_morris_tower_lookout",
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
				"pat_tower_lookout"
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
				"faction_memory",
				"pdr_morris_tower_lookout",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"pdr_morris_tower_lookout",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwe_morris_tower_towervista",
		response = "pwe_morris_tower_towervista",
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
				"pat_tower_towervista"
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
				"faction_memory",
				"pwe_morris_tower_towervista",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"pwe_morris_tower_towervista",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwe_morris_tower_lair",
		response = "pwe_morris_tower_lair",
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
				"pat_tower_lair"
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
				"faction_memory",
				"pwe_morris_tower_lair",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"pwe_morris_tower_lair",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwe_morris_tower_ledge",
		response = "pwe_morris_tower_ledge",
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
				"pat_tower_ledge"
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
				"faction_memory",
				"pwe_morris_tower_ledge",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"pwe_morris_tower_ledge",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwe_morris_tower_library",
		response = "pwe_morris_tower_library",
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
				"pat_tower_library"
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
				"faction_memory",
				"pwe_morris_tower_library",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"pwe_morris_tower_library",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwe_morris_tower_stairs",
		response = "pwe_morris_tower_stairs",
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
				"pat_tower_stairs"
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
				"faction_memory",
				"pwe_morris_tower_stairs",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"pwe_morris_tower_stairs",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwe_morris_tower_lookout",
		response = "pwe_morris_tower_lookout",
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
				"pat_tower_lookout"
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
				"faction_memory",
				"pwe_morris_tower_lookout",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"pwe_morris_tower_lookout",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pes_morris_tower_towervista",
		response = "pes_morris_tower_towervista",
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
				"pat_tower_towervista"
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
				"pes_morris_tower_towervista",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"pes_morris_tower_towervista",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pes_morris_tower_lair",
		response = "pes_morris_tower_lair",
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
				"pat_tower_lair"
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
				"pes_morris_tower_lair",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"pes_morris_tower_lair",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pes_morris_tower_ledge",
		response = "pes_morris_tower_ledge",
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
				"pat_tower_ledge"
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
				"pes_morris_tower_ledge",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"pes_morris_tower_ledge",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pes_morris_tower_library",
		response = "pes_morris_tower_library",
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
				"pat_tower_library"
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
				"pes_morris_tower_library",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"pes_morris_tower_library",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pes_morris_tower_stairs",
		response = "pes_morris_tower_stairs",
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
				"pat_tower_stairs"
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
				"pes_morris_tower_stairs",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"pes_morris_tower_stairs",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pes_morris_tower_lookout",
		response = "pes_morris_tower_lookout",
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
				"pat_tower_lookout"
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
				"pes_morris_tower_lookout",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"pes_morris_tower_lookout",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pdr_morris_level_conversations_tower_twelve_01",
		response = "pdr_morris_level_conversations_tower_twelve_01",
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
				"witch_hunter",
				OP.EQ,
				1
			},
			{
				"global_context",
				"empire_soldier",
				OP.EQ,
				1
			},
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMEDIFF,
				OP.GT,
				120
			},
			{
				"faction_memory",
				"pdr_morris_level_conversations_tower_twelve_01",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"pdr_morris_level_conversations_tower_twelve_01",
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
		name = "pbw_morris_level_conversations_tower_twelve_01",
		response = "pbw_morris_level_conversations_tower_twelve_01",
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
				"pdr_morris_level_conversations_tower_twelve_01"
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
		name = "pwh_morris_level_conversations_tower_twelve_01",
		response = "pwh_morris_level_conversations_tower_twelve_01",
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
				"pbw_morris_level_conversations_tower_twelve_01"
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
		name = "pes_morris_level_conversations_tower_thirteen_01",
		response = "pes_morris_level_conversations_tower_thirteen_01",
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
				"witch_hunter",
				OP.EQ,
				1
			},
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMEDIFF,
				OP.GT,
				120
			},
			{
				"faction_memory",
				"pes_morris_level_conversations_tower_thirteen_01",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"pes_morris_level_conversations_tower_thirteen_01",
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
		name = "pwh_morris_level_conversations_tower_thirteen_01",
		response = "pwh_morris_level_conversations_tower_thirteen_01",
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
				"pes_morris_level_conversations_tower_thirteen_01"
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
		name = "pes_morris_level_conversations_tower_thirteen_02",
		response = "pes_morris_level_conversations_tower_thirteen_02",
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
				"pwh_morris_level_conversations_tower_thirteen_01"
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
		response = "pwh_morris_level_conversations_tower_thirteen_02",
		name = "pwh_morris_level_conversations_tower_thirteen_02",
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
				"pes_morris_level_conversations_tower_thirteen_02"
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
		}
	})
	add_dialogues({
		pdr_morris_tower_lair = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "hero_conversations_dlc_morris_pat_tower",
			sound_events_n = 4,
			category = "level_talk",
			dialogue_animations_n = 4,
			randomize_indexes = {},
			sound_events = {
				"pdr_morris_tower_lair_01",
				"pdr_morris_tower_lair_02",
				"pdr_morris_tower_lair_03",
				"pdr_morris_tower_lair_04"
			},
			sound_events_duration = {
				1.961416721344,
				2.4741876125336,
				2.1561665534973,
				2.9793541431427
			},
			face_animations = {
				"face_calm",
				"face_calm",
				"face_calm",
				"face_calm"
			},
			localization_strings = {
				"pdr_morris_tower_lair_01",
				"pdr_morris_tower_lair_02",
				"pdr_morris_tower_lair_03",
				"pdr_morris_tower_lair_04"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			}
		},
		pwh_morris_tower_stairs = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "hero_conversations_dlc_morris_pat_tower",
			sound_events_n = 4,
			category = "level_talk",
			dialogue_animations_n = 4,
			randomize_indexes = {},
			sound_events = {
				"pwh_morris_tower_stairs_01",
				"pwh_morris_tower_stairs_02",
				"pwh_morris_tower_stairs_03",
				"pwh_morris_tower_stairs_04"
			},
			sound_events_duration = {
				2.5693333148956,
				2.5003125667572,
				3.2542500495911,
				3.920937538147
			},
			face_animations = {
				"face_calm",
				"face_calm",
				"face_calm",
				"face_calm"
			},
			localization_strings = {
				"pwh_morris_tower_stairs_01",
				"pwh_morris_tower_stairs_02",
				"pwh_morris_tower_stairs_03",
				"pwh_morris_tower_stairs_04"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			}
		},
		pdr_morris_tower_ledge = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "hero_conversations_dlc_morris_pat_tower",
			sound_events_n = 4,
			category = "level_talk",
			dialogue_animations_n = 4,
			randomize_indexes = {},
			sound_events = {
				"pdr_morris_tower_ledge_01",
				"pdr_morris_tower_ledge_02",
				"pdr_morris_tower_ledge_03",
				"pdr_morris_tower_ledge_04"
			},
			sound_events_duration = {
				1.4587708711624,
				1.4208124876022,
				2.5755832195282,
				3.9095416069031
			},
			face_animations = {
				"face_calm",
				"face_calm",
				"face_calm",
				"face_calm"
			},
			localization_strings = {
				"pdr_morris_tower_ledge_01",
				"pdr_morris_tower_ledge_02",
				"pdr_morris_tower_ledge_03",
				"pdr_morris_tower_ledge_04"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			}
		},
		pbw_morris_tower_lair = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "hero_conversations_dlc_morris_pat_tower",
			sound_events_n = 4,
			category = "level_talk",
			dialogue_animations_n = 4,
			randomize_indexes = {},
			sound_events = {
				"pbw_morris_tower_lair_01",
				"pbw_morris_tower_lair_02",
				"pbw_morris_tower_lair_03",
				"pbw_morris_tower_lair_04"
			},
			sound_events_duration = {
				4.626916885376,
				1.7909791469574,
				5.1446876525879,
				3.7012083530426
			},
			face_animations = {
				"face_calm",
				"face_calm",
				"face_calm",
				"face_calm"
			},
			localization_strings = {
				"pbw_morris_tower_lair_01",
				"pbw_morris_tower_lair_02",
				"pbw_morris_tower_lair_03",
				"pbw_morris_tower_lair_04"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			}
		},
		pwe_morris_tower_lair = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "hero_conversations_dlc_morris_pat_tower",
			sound_events_n = 4,
			category = "level_talk",
			dialogue_animations_n = 4,
			randomize_indexes = {},
			sound_events = {
				"pwe_morris_tower_lair_01",
				"pwe_morris_tower_lair_02",
				"pwe_morris_tower_lair_03",
				"pwe_morris_tower_lair_04"
			},
			sound_events_duration = {
				1.7626458406448,
				1.6482708454132,
				2.0350208282471,
				3.7718749046326
			},
			face_animations = {
				"face_calm",
				"face_calm",
				"face_calm",
				"face_calm"
			},
			localization_strings = {
				"pwe_morris_tower_lair_01",
				"pwe_morris_tower_lair_02",
				"pwe_morris_tower_lair_03",
				"pwe_morris_tower_lair_04"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			}
		},
		pbw_morris_tower_ledge = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "hero_conversations_dlc_morris_pat_tower",
			sound_events_n = 4,
			category = "level_talk",
			dialogue_animations_n = 4,
			randomize_indexes = {},
			sound_events = {
				"pbw_morris_tower_ledge_01",
				"pbw_morris_tower_ledge_02",
				"pbw_morris_tower_ledge_03",
				"pbw_morris_tower_ledge_04"
			},
			sound_events_duration = {
				2.6963748931885,
				2.7880833148956,
				1.4320625066757,
				2.694354057312
			},
			face_animations = {
				"face_calm",
				"face_calm",
				"face_calm",
				"face_calm"
			},
			localization_strings = {
				"pbw_morris_tower_ledge_01",
				"pbw_morris_tower_ledge_02",
				"pbw_morris_tower_ledge_03",
				"pbw_morris_tower_ledge_04"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			}
		},
		pes_morris_level_conversations_tower_thirteen_01 = {
			face_animations_n = 1,
			database = "hero_conversations_dlc_morris_pat_tower",
			sound_events_n = 1,
			category = "story_talk",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pes_morris_level_conversations_tower_thirteen_01"
			},
			sound_events_duration = {
				[1.0] = 3.7486667633057
			},
			face_animations = {
				[1.0] = "face_neutral"
			},
			localization_strings = {
				[1.0] = "pes_morris_level_conversations_tower_thirteen_01"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			}
		},
		pwe_morris_tower_towervista = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "hero_conversations_dlc_morris_pat_tower",
			sound_events_n = 4,
			category = "level_talk",
			dialogue_animations_n = 4,
			randomize_indexes = {},
			sound_events = {
				"pwe_morris_tower_towervista_01",
				"pwe_morris_tower_towervista_02",
				"pwe_morris_tower_towervista_03",
				"pwe_morris_tower_towervista_04"
			},
			sound_events_duration = {
				2.400333404541,
				2.7012083530426,
				3.1447291374206,
				4.7928748130798
			},
			face_animations = {
				"face_calm",
				"face_calm",
				"face_calm",
				"face_calm"
			},
			localization_strings = {
				"pwe_morris_tower_towervista_01",
				"pwe_morris_tower_towervista_02",
				"pwe_morris_tower_towervista_03",
				"pwe_morris_tower_towervista_04"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			}
		},
		pwe_morris_tower_ledge = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "hero_conversations_dlc_morris_pat_tower",
			sound_events_n = 4,
			category = "level_talk",
			dialogue_animations_n = 4,
			randomize_indexes = {},
			sound_events = {
				"pwe_morris_tower_ledge_01",
				"pwe_morris_tower_ledge_02",
				"pwe_morris_tower_ledge_03",
				"pwe_morris_tower_ledge_04"
			},
			sound_events_duration = {
				3.9375207424164,
				3.226104259491,
				3.6447916030884,
				3.5190000534058
			},
			face_animations = {
				"face_calm",
				"face_calm",
				"face_calm",
				"face_calm"
			},
			localization_strings = {
				"pwe_morris_tower_ledge_01",
				"pwe_morris_tower_ledge_02",
				"pwe_morris_tower_ledge_03",
				"pwe_morris_tower_ledge_04"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			}
		},
		pwh_morris_level_conversations_tower_thirteen_02 = {
			face_animations_n = 1,
			database = "hero_conversations_dlc_morris_pat_tower",
			sound_events_n = 1,
			category = "default",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pwh_morris_level_conversations_tower_thirteen_02"
			},
			sound_events_duration = {
				[1.0] = 3.9641873836517
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			localization_strings = {
				[1.0] = "pwh_morris_level_conversations_tower_thirteen_02"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			}
		},
		pwh_morris_tower_library = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "hero_conversations_dlc_morris_pat_tower",
			sound_events_n = 4,
			category = "level_talk",
			dialogue_animations_n = 4,
			randomize_indexes = {},
			sound_events = {
				"pwh_morris_tower_library_01",
				"pwh_morris_tower_library_02",
				"pwh_morris_tower_library_03",
				"pwh_morris_tower_library_04"
			},
			sound_events_duration = {
				4.2492918968201,
				3.9990208148956,
				4.8563542366028,
				4.0239791870117
			},
			face_animations = {
				"face_calm",
				"face_calm",
				"face_calm",
				"face_calm"
			},
			localization_strings = {
				"pwh_morris_tower_library_01",
				"pwh_morris_tower_library_02",
				"pwh_morris_tower_library_03",
				"pwh_morris_tower_library_04"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			}
		},
		pwe_morris_tower_library = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "hero_conversations_dlc_morris_pat_tower",
			sound_events_n = 4,
			category = "level_talk",
			dialogue_animations_n = 4,
			randomize_indexes = {},
			sound_events = {
				"pwe_morris_tower_library_01",
				"pwe_morris_tower_library_02",
				"pwe_morris_tower_library_03",
				"pwe_morris_tower_library_04"
			},
			sound_events_duration = {
				2.8068125247955,
				3.9609999656677,
				4.280770778656,
				4.7695417404175
			},
			face_animations = {
				"face_calm",
				"face_calm",
				"face_calm",
				"face_calm"
			},
			localization_strings = {
				"pwe_morris_tower_library_01",
				"pwe_morris_tower_library_02",
				"pwe_morris_tower_library_03",
				"pwe_morris_tower_library_04"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			}
		},
		pwh_morris_tower_ledge = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "hero_conversations_dlc_morris_pat_tower",
			sound_events_n = 4,
			category = "level_talk",
			dialogue_animations_n = 4,
			randomize_indexes = {},
			sound_events = {
				"pwh_morris_tower_ledge_01",
				"pwh_morris_tower_ledge_02",
				"pwh_morris_tower_ledge_03",
				"pwh_morris_tower_ledge_04"
			},
			sound_events_duration = {
				3.5353124141693,
				3.3313541412353,
				2.3983333110809,
				2.732479095459
			},
			face_animations = {
				"face_calm",
				"face_calm",
				"face_calm",
				"face_calm"
			},
			localization_strings = {
				"pwh_morris_tower_ledge_01",
				"pwh_morris_tower_ledge_02",
				"pwh_morris_tower_ledge_03",
				"pwh_morris_tower_ledge_04"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			}
		},
		pdr_morris_tower_towervista = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "hero_conversations_dlc_morris_pat_tower",
			sound_events_n = 4,
			category = "level_talk",
			dialogue_animations_n = 4,
			randomize_indexes = {},
			sound_events = {
				"pdr_morris_tower_towervista_01",
				"pdr_morris_tower_towervista_02",
				"pdr_morris_tower_towervista_03",
				"pdr_morris_tower_towervista_04"
			},
			sound_events_duration = {
				3.7527916431427,
				2.1403541564941,
				1.6982291936874,
				2.2655415534973
			},
			face_animations = {
				"face_calm",
				"face_calm",
				"face_calm",
				"face_calm"
			},
			localization_strings = {
				"pdr_morris_tower_towervista_01",
				"pdr_morris_tower_towervista_02",
				"pdr_morris_tower_towervista_03",
				"pdr_morris_tower_towervista_04"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			}
		},
		pes_morris_tower_library = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "hero_conversations_dlc_morris_pat_tower",
			sound_events_n = 4,
			category = "level_talk",
			dialogue_animations_n = 4,
			randomize_indexes = {},
			sound_events = {
				"pes_morris_tower_library_01",
				"pes_morris_tower_library_02",
				"pes_morris_tower_library_03",
				"pes_morris_tower_library_04"
			},
			sound_events_duration = {
				3.2264583110809,
				2.846583366394,
				3.2382082939148,
				3.0307290554047
			},
			face_animations = {
				"face_calm",
				"face_calm",
				"face_calm",
				"face_calm"
			},
			localization_strings = {
				"pes_morris_tower_library_01",
				"pes_morris_tower_library_02",
				"pes_morris_tower_library_03",
				"pes_morris_tower_library_04"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			}
		},
		pwh_morris_level_conversations_tower_twelve_01 = {
			face_animations_n = 1,
			database = "hero_conversations_dlc_morris_pat_tower",
			sound_events_n = 1,
			category = "story_talk",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pwh_morris_level_conversations_tower_twelve_01"
			},
			sound_events_duration = {
				[1.0] = 6.6078124046326
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			localization_strings = {
				[1.0] = "pwh_morris_level_conversations_tower_twelve_01"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			}
		},
		pdr_morris_tower_library = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "hero_conversations_dlc_morris_pat_tower",
			sound_events_n = 4,
			category = "level_talk",
			dialogue_animations_n = 4,
			randomize_indexes = {},
			sound_events = {
				"pdr_morris_tower_library_01",
				"pdr_morris_tower_library_02",
				"pdr_morris_tower_library_03",
				"pdr_morris_tower_library_04"
			},
			sound_events_duration = {
				1.8988332748413,
				2.1840417385101,
				3.7965416908264,
				4.5943126678467
			},
			face_animations = {
				"face_calm",
				"face_calm",
				"face_calm",
				"face_calm"
			},
			localization_strings = {
				"pdr_morris_tower_library_01",
				"pdr_morris_tower_library_02",
				"pdr_morris_tower_library_03",
				"pdr_morris_tower_library_04"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			}
		},
		pwe_morris_tower_lookout = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "hero_conversations_dlc_morris_pat_tower",
			sound_events_n = 4,
			category = "level_talk",
			dialogue_animations_n = 4,
			randomize_indexes = {},
			sound_events = {
				"pwe_morris_tower_lookout_01",
				"pwe_morris_tower_lookout_02",
				"pwe_morris_tower_lookout_03",
				"pwe_morris_tower_lookout_04"
			},
			sound_events_duration = {
				4.7704792022705,
				3.9188332557678,
				4.4467916488647,
				2.9912917613983
			},
			face_animations = {
				"face_calm",
				"face_calm",
				"face_calm",
				"face_calm"
			},
			localization_strings = {
				"pwe_morris_tower_lookout_01",
				"pwe_morris_tower_lookout_02",
				"pwe_morris_tower_lookout_03",
				"pwe_morris_tower_lookout_04"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			}
		},
		pdr_morris_tower_lookout = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "hero_conversations_dlc_morris_pat_tower",
			sound_events_n = 4,
			category = "level_talk",
			dialogue_animations_n = 4,
			randomize_indexes = {},
			sound_events = {
				"pdr_morris_tower_lookout_01",
				"pdr_morris_tower_lookout_02",
				"pdr_morris_tower_lookout_03",
				"pdr_morris_tower_lookout_04"
			},
			sound_events_duration = {
				3.3880207538605,
				1.3676874637604,
				3.2112083435059,
				2.6082291603088
			},
			face_animations = {
				"face_calm",
				"face_calm",
				"face_calm",
				"face_calm"
			},
			localization_strings = {
				"pdr_morris_tower_lookout_01",
				"pdr_morris_tower_lookout_02",
				"pdr_morris_tower_lookout_03",
				"pdr_morris_tower_lookout_04"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			}
		},
		pwh_morris_tower_lair = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "hero_conversations_dlc_morris_pat_tower",
			sound_events_n = 4,
			category = "level_talk",
			dialogue_animations_n = 4,
			randomize_indexes = {},
			sound_events = {
				"pwh_morris_tower_lair_01",
				"pwh_morris_tower_lair_02",
				"pwh_morris_tower_lair_03",
				"pwh_morris_tower_lair_04"
			},
			sound_events_duration = {
				3.1482501029968,
				3.8752915859222,
				1.9133125543594,
				4.2484169006348
			},
			face_animations = {
				"face_calm",
				"face_calm",
				"face_calm",
				"face_calm"
			},
			localization_strings = {
				"pwh_morris_tower_lair_01",
				"pwh_morris_tower_lair_02",
				"pwh_morris_tower_lair_03",
				"pwh_morris_tower_lair_04"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			}
		},
		pes_morris_level_conversations_tower_thirteen_02 = {
			face_animations_n = 1,
			database = "hero_conversations_dlc_morris_pat_tower",
			sound_events_n = 1,
			category = "story_talk",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pes_morris_level_conversations_tower_thirteen_02"
			},
			sound_events_duration = {
				[1.0] = 5.6923542022705
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			localization_strings = {
				[1.0] = "pes_morris_level_conversations_tower_thirteen_02"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			}
		},
		pwh_morris_level_conversations_tower_thirteen_01 = {
			face_animations_n = 1,
			database = "hero_conversations_dlc_morris_pat_tower",
			sound_events_n = 1,
			category = "story_talk",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pwh_morris_level_conversations_tower_thirteen_01"
			},
			sound_events_duration = {
				[1.0] = 8.9041042327881
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			localization_strings = {
				[1.0] = "pwh_morris_level_conversations_tower_thirteen_01"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			}
		},
		pes_morris_tower_stairs = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "hero_conversations_dlc_morris_pat_tower",
			sound_events_n = 4,
			category = "level_talk",
			dialogue_animations_n = 4,
			randomize_indexes = {},
			sound_events = {
				"pes_morris_tower_stairs_01",
				"pes_morris_tower_stairs_02",
				"pes_morris_tower_stairs_03",
				"pes_morris_tower_stairs_04"
			},
			sound_events_duration = {
				2.0485208034515,
				1.3415416479111,
				2.9245207309723,
				2.2885415554047
			},
			face_animations = {
				"face_calm",
				"face_calm",
				"face_calm",
				"face_calm"
			},
			localization_strings = {
				"pes_morris_tower_stairs_01",
				"pes_morris_tower_stairs_02",
				"pes_morris_tower_stairs_03",
				"pes_morris_tower_stairs_04"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			}
		},
		pdr_morris_tower_stairs = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "hero_conversations_dlc_morris_pat_tower",
			sound_events_n = 4,
			category = "level_talk",
			dialogue_animations_n = 4,
			randomize_indexes = {},
			sound_events = {
				"pdr_morris_tower_stairs_01",
				"pdr_morris_tower_stairs_02",
				"pdr_morris_tower_stairs_03",
				"pdr_morris_tower_stairs_04"
			},
			sound_events_duration = {
				2.3328542709351,
				3.5155208110809,
				2.1542499065399,
				4.5154790878296
			},
			face_animations = {
				"face_calm",
				"face_calm",
				"face_calm",
				"face_calm"
			},
			localization_strings = {
				"pdr_morris_tower_stairs_01",
				"pdr_morris_tower_stairs_02",
				"pdr_morris_tower_stairs_03",
				"pdr_morris_tower_stairs_04"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			}
		},
		pbw_morris_tower_towervista = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "hero_conversations_dlc_morris_pat_tower",
			sound_events_n = 4,
			category = "level_talk",
			dialogue_animations_n = 4,
			randomize_indexes = {},
			sound_events = {
				"pbw_morris_tower_towervista_01",
				"pbw_morris_tower_towervista_02",
				"pbw_morris_tower_towervista_03",
				"pbw_morris_tower_towervista_04"
			},
			sound_events_duration = {
				3.6416873931885,
				5.4201874732971,
				3.439270734787,
				3.2197499275208
			},
			face_animations = {
				"face_calm",
				"face_calm",
				"face_calm",
				"face_calm"
			},
			localization_strings = {
				"pbw_morris_tower_towervista_01",
				"pbw_morris_tower_towervista_02",
				"pbw_morris_tower_towervista_03",
				"pbw_morris_tower_towervista_04"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			}
		},
		pbw_morris_level_conversations_tower_twelve_01 = {
			face_animations_n = 1,
			database = "hero_conversations_dlc_morris_pat_tower",
			sound_events_n = 1,
			category = "story_talk",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pbw_morris_level_conversations_tower_twelve_01"
			},
			sound_events_duration = {
				[1.0] = 6.7058334350586
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			localization_strings = {
				[1.0] = "pbw_morris_level_conversations_tower_twelve_01"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			}
		},
		pes_morris_tower_lookout = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "hero_conversations_dlc_morris_pat_tower",
			sound_events_n = 4,
			category = "level_talk",
			dialogue_animations_n = 4,
			randomize_indexes = {},
			sound_events = {
				"pes_morris_tower_lookout_01",
				"pes_morris_tower_lookout_02",
				"pes_morris_tower_lookout_03",
				"pes_morris_tower_lookout_04"
			},
			sound_events_duration = {
				2.1288125514984,
				2.9974582195282,
				1.7737499475479,
				2.7013125419617
			},
			face_animations = {
				"face_calm",
				"face_calm",
				"face_calm",
				"face_calm"
			},
			localization_strings = {
				"pes_morris_tower_lookout_01",
				"pes_morris_tower_lookout_02",
				"pes_morris_tower_lookout_03",
				"pes_morris_tower_lookout_04"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			}
		},
		pdr_morris_level_conversations_tower_twelve_01 = {
			face_animations_n = 1,
			database = "hero_conversations_dlc_morris_pat_tower",
			sound_events_n = 1,
			category = "story_talk",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pdr_morris_level_conversations_tower_twelve_01"
			},
			sound_events_duration = {
				[1.0] = 4.5022706985474
			},
			face_animations = {
				[1.0] = "face_neutral"
			},
			localization_strings = {
				[1.0] = "pdr_morris_level_conversations_tower_twelve_01"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			}
		},
		pwh_morris_tower_towervista = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "hero_conversations_dlc_morris_pat_tower",
			sound_events_n = 4,
			category = "level_talk",
			dialogue_animations_n = 4,
			randomize_indexes = {},
			sound_events = {
				"pwh_morris_tower_towervista_01",
				"pwh_morris_tower_towervista_02",
				"pwh_morris_tower_towervista_03",
				"pwh_morris_tower_towervista_04"
			},
			sound_events_duration = {
				3.5581250190735,
				2.9516251087189,
				3.663229227066,
				3.9041874408722
			},
			face_animations = {
				"face_calm",
				"face_calm",
				"face_calm",
				"face_calm"
			},
			localization_strings = {
				"pwh_morris_tower_towervista_01",
				"pwh_morris_tower_towervista_02",
				"pwh_morris_tower_towervista_03",
				"pwh_morris_tower_towervista_04"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			}
		},
		pbw_morris_tower_library = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "hero_conversations_dlc_morris_pat_tower",
			sound_events_n = 4,
			category = "level_talk",
			dialogue_animations_n = 4,
			randomize_indexes = {},
			sound_events = {
				"pbw_morris_tower_library_01",
				"pbw_morris_tower_library_02",
				"pbw_morris_tower_library_03",
				"pbw_morris_tower_library_04"
			},
			sound_events_duration = {
				3.3652501106262,
				3.1354999542236,
				3.1944167613983,
				2.6256248950958
			},
			face_animations = {
				"face_calm",
				"face_calm",
				"face_calm",
				"face_calm"
			},
			localization_strings = {
				"pbw_morris_tower_library_01",
				"pbw_morris_tower_library_02",
				"pbw_morris_tower_library_03",
				"pbw_morris_tower_library_04"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			}
		},
		pwh_morris_tower_lookout = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "hero_conversations_dlc_morris_pat_tower",
			sound_events_n = 4,
			category = "level_talk",
			dialogue_animations_n = 4,
			randomize_indexes = {},
			sound_events = {
				"pwh_morris_tower_lookout_01",
				"pwh_morris_tower_lookout_02",
				"pwh_morris_tower_lookout_03",
				"pwh_morris_tower_lookout_04"
			},
			sound_events_duration = {
				4.7620210647583,
				1.6758124828339,
				5.0750417709351,
				3.6992707252502
			},
			face_animations = {
				"face_calm",
				"face_calm",
				"face_calm",
				"face_calm"
			},
			localization_strings = {
				"pwh_morris_tower_lookout_01",
				"pwh_morris_tower_lookout_02",
				"pwh_morris_tower_lookout_03",
				"pwh_morris_tower_lookout_04"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			}
		},
		pes_morris_tower_ledge = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "hero_conversations_dlc_morris_pat_tower",
			sound_events_n = 4,
			category = "level_talk",
			dialogue_animations_n = 4,
			randomize_indexes = {},
			sound_events = {
				"pes_morris_tower_ledge_01",
				"pes_morris_tower_ledge_02",
				"pes_morris_tower_ledge_03",
				"pes_morris_tower_ledge_04"
			},
			sound_events_duration = {
				2.3211040496826,
				1.9668749570847,
				3.4347915649414,
				1.4016666412354
			},
			face_animations = {
				"face_calm",
				"face_calm",
				"face_calm",
				"face_calm"
			},
			localization_strings = {
				"pes_morris_tower_ledge_01",
				"pes_morris_tower_ledge_02",
				"pes_morris_tower_ledge_03",
				"pes_morris_tower_ledge_04"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			}
		},
		pbw_morris_tower_lookout = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "hero_conversations_dlc_morris_pat_tower",
			sound_events_n = 4,
			category = "level_talk",
			dialogue_animations_n = 4,
			randomize_indexes = {},
			sound_events = {
				"pbw_morris_tower_lookout_01",
				"pbw_morris_tower_lookout_02",
				"pbw_morris_tower_lookout_03",
				"pbw_morris_tower_lookout_04"
			},
			sound_events_duration = {
				1.6165208816528,
				2.1572499275208,
				2.7788333892822,
				1.4413541555405
			},
			face_animations = {
				"face_calm",
				"face_calm",
				"face_calm",
				"face_calm"
			},
			localization_strings = {
				"pbw_morris_tower_lookout_01",
				"pbw_morris_tower_lookout_02",
				"pbw_morris_tower_lookout_03",
				"pbw_morris_tower_lookout_04"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			}
		},
		pes_morris_tower_lair = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "hero_conversations_dlc_morris_pat_tower",
			sound_events_n = 4,
			category = "level_talk",
			dialogue_animations_n = 4,
			randomize_indexes = {},
			sound_events = {
				"pes_morris_tower_lair_01",
				"pes_morris_tower_lair_02",
				"pes_morris_tower_lair_03",
				"pes_morris_tower_lair_04"
			},
			sound_events_duration = {
				2.2824375629425,
				1.1340416669846,
				3.3837916851044,
				2.610687494278
			},
			face_animations = {
				"face_calm",
				"face_calm",
				"face_calm",
				"face_calm"
			},
			localization_strings = {
				"pes_morris_tower_lair_01",
				"pes_morris_tower_lair_02",
				"pes_morris_tower_lair_03",
				"pes_morris_tower_lair_04"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			}
		},
		pes_morris_tower_towervista = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "hero_conversations_dlc_morris_pat_tower",
			sound_events_n = 4,
			category = "level_talk",
			dialogue_animations_n = 4,
			randomize_indexes = {},
			sound_events = {
				"pes_morris_tower_towervista_01",
				"pes_morris_tower_towervista_02",
				"pes_morris_tower_towervista_03",
				"pes_morris_tower_towervista_04"
			},
			sound_events_duration = {
				2.7143957614899,
				4.5148539543152,
				1.5473124980927,
				1.8149791955948
			},
			face_animations = {
				"face_calm",
				"face_calm",
				"face_calm",
				"face_calm"
			},
			localization_strings = {
				"pes_morris_tower_towervista_01",
				"pes_morris_tower_towervista_02",
				"pes_morris_tower_towervista_03",
				"pes_morris_tower_towervista_04"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			}
		},
		pbw_morris_tower_stairs = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "hero_conversations_dlc_morris_pat_tower",
			sound_events_n = 4,
			category = "level_talk",
			dialogue_animations_n = 4,
			randomize_indexes = {},
			sound_events = {
				"pbw_morris_tower_stairs_01",
				"pbw_morris_tower_stairs_02",
				"pbw_morris_tower_stairs_03",
				"pbw_morris_tower_stairs_04"
			},
			sound_events_duration = {
				4.688937664032,
				2.9475834369659,
				3.6042499542236,
				4.4716873168945
			},
			face_animations = {
				"face_calm",
				"face_calm",
				"face_calm",
				"face_calm"
			},
			localization_strings = {
				"pbw_morris_tower_stairs_01",
				"pbw_morris_tower_stairs_02",
				"pbw_morris_tower_stairs_03",
				"pbw_morris_tower_stairs_04"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			}
		},
		pwe_morris_tower_stairs = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "hero_conversations_dlc_morris_pat_tower",
			sound_events_n = 4,
			category = "level_talk",
			dialogue_animations_n = 4,
			randomize_indexes = {},
			sound_events = {
				"pwe_morris_tower_stairs_01",
				"pwe_morris_tower_stairs_02",
				"pwe_morris_tower_stairs_03",
				"pwe_morris_tower_stairs_04"
			},
			sound_events_duration = {
				2.5967500209808,
				3.2190001010895,
				3.4527499675751,
				2.0914583206177
			},
			face_animations = {
				"face_calm",
				"face_calm",
				"face_calm",
				"face_calm"
			},
			localization_strings = {
				"pwe_morris_tower_stairs_01",
				"pwe_morris_tower_stairs_02",
				"pwe_morris_tower_stairs_03",
				"pwe_morris_tower_stairs_04"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			}
		}
	})
end
