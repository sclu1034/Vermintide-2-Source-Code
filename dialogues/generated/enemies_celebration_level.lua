return function ()
	define_rule({
		name = "ecr_gameplay_startled_celebration_level",
		response = "ecr_gameplay_startled_celebration_level",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"startled"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"skaven_clan_rat"
			},
			{
				"faction_memory",
				"time_since_clan_rat_startled",
				OP.TIMEDIFF,
				OP.GT,
				5
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_clan_rat_startled",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "ecr_gameplay_running_towards_players_celebration_level",
		response = "ecr_gameplay_running_towards_players_celebration_level",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"running"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"skaven_clan_rat"
			},
			{
				"query_context",
				"distance",
				OP.GT,
				6
			}
		},
		on_done = {
			{
				"faction_memory",
				"last_cr_running",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "ecr_gameplay_running_towards_players_alone_celebration_level",
		response = "ecr_gameplay_running_towards_players_alone_celebration_level",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"running"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"skaven_clan_rat"
			},
			{
				"query_context",
				"distance",
				OP.GT,
				6
			},
			{
				"faction_memory",
				"last_cr_running",
				OP.TIMEDIFF,
				OP.GT,
				1
			}
		},
		on_done = {
			{
				"faction_memory",
				"last_cr_running",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "ecr_gameplay_player_knocked_down_celebration_level",
		response = "ecr_gameplay_player_knocked_down_celebration_level",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"knocked_down"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"skaven_clan_rat"
			},
			{
				"faction_memory",
				"last_cr_seen_knockdown",
				OP.TIMEDIFF,
				OP.GT,
				3
			}
		},
		on_done = {
			{
				"faction_memory",
				"last_cr_seen_knockdown",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "ecr_gameplay_witch_hunter_knocked_down_celebration_level",
		response = "ecr_gameplay_witch_hunter_knocked_down_celebration_level",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"knocked_down"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"skaven_clan_rat"
			},
			{
				"query_context",
				"target_name",
				OP.EQ,
				"witch_hunter"
			},
			{
				"faction_memory",
				"last_cr_seen_knockdown",
				OP.TIMEDIFF,
				OP.GT,
				3
			}
		},
		on_done = {
			{
				"faction_memory",
				"last_cr_seen_knockdown",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "ecr_gameplay_bright_wizard_knocked_down_celebration_level",
		response = "ecr_gameplay_bright_wizard_knocked_down_celebration_level",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"knocked_down"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"skaven_clan_rat"
			},
			{
				"query_context",
				"target_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"last_cr_seen_knockdown",
				OP.TIMEDIFF,
				OP.GT,
				3
			}
		},
		on_done = {
			{
				"faction_memory",
				"last_cr_seen_knockdown",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "ecr_gameplay_dwarf_ranger_knocked_down_celebration_level",
		response = "ecr_gameplay_dwarf_ranger_knocked_down_celebration_level",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"knocked_down"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"skaven_clan_rat"
			},
			{
				"query_context",
				"target_name",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"faction_memory",
				"last_cr_seen_knockdown",
				OP.TIMEDIFF,
				OP.GT,
				3
			}
		},
		on_done = {
			{
				"faction_memory",
				"last_cr_seen_knockdown",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "ecr_gameplay_wood_elf_knocked_down_celebration_level",
		response = "ecr_gameplay_wood_elf_knocked_down_celebration_level",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"knocked_down"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"skaven_clan_rat"
			},
			{
				"query_context",
				"target_name",
				OP.EQ,
				"wood_elf"
			},
			{
				"faction_memory",
				"last_cr_seen_knockdown",
				OP.TIMEDIFF,
				OP.GT,
				3
			}
		},
		on_done = {
			{
				"faction_memory",
				"last_cr_seen_knockdown",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "ecr_gameplay_empire_soldier_knocked_down_celebration_level",
		response = "ecr_gameplay_empire_soldier_knocked_down_celebration_level",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"knocked_down"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"skaven_clan_rat"
			},
			{
				"query_context",
				"target_name",
				OP.EQ,
				"empire_soldier"
			},
			{
				"faction_memory",
				"last_cr_seen_knockdown",
				OP.TIMEDIFF,
				OP.GT,
				3
			}
		},
		on_done = {
			{
				"faction_memory",
				"last_cr_seen_knockdown",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "ecr_gameplay_striking_a_player_celebration_level",
		response = "ecr_gameplay_striking_a_player_celebration_level",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"shouting"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"skaven_clan_rat"
			},
			{
				"faction_memory",
				"last_cr_said_hit",
				OP.TIMEDIFF,
				OP.GT,
				3
			}
		},
		on_done = {
			{
				"faction_memory",
				"last_cr_said_hit",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "ecr_gameplay_killing_a_player_celebration_level",
		response = "ecr_gameplay_killing_a_player_celebration_level",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"killing_player"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"skaven_clan_rat"
			},
			{
				"faction_memory",
				"last_cr_killed_player",
				OP.TIMEDIFF,
				OP.GT,
				3
			}
		},
		on_done = {
			{
				"faction_memory",
				"last_cr_killed_player",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "ecr_gameplay_fleeing_celebration_level",
		response = "ecr_gameplay_fleeing_celebration_level",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"fleeing"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"skaven_clan_rat"
			},
			{
				"faction_memory",
				"last_cr_killed_player",
				OP.TIMEDIFF,
				OP.GT,
				5
			}
		},
		on_done = {
			{
				"faction_memory",
				"last_cr_killed_player",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "ecr_gameplay_running_in_horde_celebration_level",
		response = "ecr_gameplay_running_in_horde_celebration_level",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"running"
			},
			{
				"query_context",
				"distance",
				OP.GT,
				10
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"skaven_slave"
			},
			{
				"query_context",
				"num_units",
				OP.GT,
				3
			},
			{
				"faction_memory",
				"last_cr_running",
				OP.TIMEDIFF,
				OP.GT,
				2
			}
		},
		on_done = {
			{
				"faction_memory",
				"last_cr_running",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "ecr_gameplay_seeing_bomb_thrown_celebration_level",
		response = "ecr_gameplay_seeing_bomb_thrown_celebration_level",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"enemy_attack"
			},
			{
				"query_context",
				"attack_tag",
				OP.EQ,
				"pwg_projectile"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"skaven_clan_rat"
			},
			{
				"faction_memory",
				"last_saw_pwg_projectile",
				OP.TIMEDIFF,
				OP.GT,
				5
			}
		},
		on_done = {
			{
				"faction_memory",
				"last_saw_pwg_projectile",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "ecr_gameplay_seeing_weapon_special_activated_celebration_level",
		response = "ecr_gameplay_seeing_weapon_special_activated_celebration_level",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"special_attack"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"skaven_clan_rat"
			},
			{
				"faction_memory",
				"last_saw_special_attack",
				OP.TIMEDIFF,
				OP.GT,
				10
			}
		},
		on_done = {
			{
				"faction_memory",
				"last_saw_special_attack",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "ecr_gameplay_attacking_witch_hunter_backstab_celebration_level",
		response = "ecr_gameplay_attacking_witch_hunter_backstab_celebration_level",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"backstab"
			},
			{
				"query_context",
				"target_name",
				OP.EQ,
				"witch_hunter"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"skaven_clan_rat"
			},
			{
				"faction_memory",
				"last_backstabbing",
				OP.TIMEDIFF,
				OP.GT,
				3
			}
		},
		on_done = {
			{
				"faction_memory",
				"last_backstabbing",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "ecr_gameplay_attacking_bright_wizard_backstab_celebration_level",
		response = "ecr_gameplay_attacking_bright_wizard_backstab_celebration_level",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"backstab"
			},
			{
				"query_context",
				"target_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"skaven_clan_rat"
			},
			{
				"faction_memory",
				"last_backstabbing",
				OP.TIMEDIFF,
				OP.GT,
				3
			}
		},
		on_done = {
			{
				"faction_memory",
				"last_backstabbing",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "ecr_gameplay_attacking_empire_soldier_backstab_celebration_level",
		response = "ecr_gameplay_attacking_empire_soldier_backstab_celebration_level",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"backstab"
			},
			{
				"query_context",
				"target_name",
				OP.EQ,
				"empire_soldier"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"skaven_clan_rat"
			},
			{
				"faction_memory",
				"last_backstabbing",
				OP.TIMEDIFF,
				OP.GT,
				3
			}
		},
		on_done = {
			{
				"faction_memory",
				"last_backstabbing",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "ecr_gameplay_attacking_dwarf_ranger_backstab_celebration_level",
		response = "ecr_gameplay_attacking_dwarf_ranger_backstab_celebration_level",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"backstab"
			},
			{
				"query_context",
				"target_name",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"skaven_clan_rat"
			},
			{
				"faction_memory",
				"last_backstabbing",
				OP.TIMEDIFF,
				OP.GT,
				3
			}
		},
		on_done = {
			{
				"faction_memory",
				"last_backstabbing",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "ecr_gameplay_attacking_wood_elf_backstab_celebration_level",
		response = "ecr_gameplay_attacking_wood_elf_backstab_celebration_level",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"backstab"
			},
			{
				"query_context",
				"target_name",
				OP.EQ,
				"wood_elf"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"skaven_clan_rat"
			},
			{
				"faction_memory",
				"last_backstabbing",
				OP.TIMEDIFF,
				OP.GT,
				3
			}
		},
		on_done = {
			{
				"faction_memory",
				"last_backstabbing",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "epwg_gameplay_throwing_globe_celebration_level",
		response = "epwg_gameplay_throwing_globe_celebration_level",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"enemy_attack"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"skaven_poison_wind_globadier"
			},
			{
				"user_memory",
				"last_threw_globe",
				OP.TIMEDIFF,
				OP.GT,
				2
			}
		},
		on_done = {
			{
				"user_memory",
				"last_threw_globe",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "epwg_gameplay_hitting_a_player_celebration_level",
		response = "epwg_gameplay_hitting_a_player_celebration_level",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"pwg_projectile_hit"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"skaven_poison_wind_globadier"
			},
			{
				"query_context",
				"num_units",
				OP.EQ,
				1
			},
			{
				"faction_memory",
				"last_pwg_hitting_a_player",
				OP.TIMEDIFF,
				OP.GT,
				20
			}
		},
		on_done = {
			{
				"faction_memory",
				"last_pwg_hitting_a_player",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "epwg_gameplay_hitting_multiple_players_celebration_level",
		response = "epwg_gameplay_hitting_multiple_players_celebration_level",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"pwg_projectile_hit"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"skaven_poison_wind_globadier"
			},
			{
				"query_context",
				"num_units",
				OP.GT,
				1
			},
			{
				"faction_memory",
				"last_pwg_hitting_a_player",
				OP.TIMEDIFF,
				OP.GT,
				20
			}
		},
		on_done = {
			{
				"faction_memory",
				"last_pwg_hitting_a_player",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "epwg_gameplay_hitting_only_skaven_celebration_level",
		response = "epwg_gameplay_hitting_only_skaven_celebration_level",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"pwg_projectile_hit"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"skaven_poison_wind_globadier"
			},
			{
				"query_context",
				"num_units",
				OP.LT,
				1
			},
			{
				"faction_memory",
				"last_pwg_hitting_a_player",
				OP.TIMEDIFF,
				OP.GT,
				20
			}
		},
		on_done = {
			{
				"faction_memory",
				"last_pwg_hitting_a_player",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "epwg_gameplay_begin_suicide_run_celebration_level",
		response = "epwg_gameplay_begin_suicide_run_celebration_level",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"enemy_attack"
			},
			{
				"query_context",
				"attack_tag",
				OP.EQ,
				"pwg_suicide_run"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"skaven_poison_wind_globadier"
			},
			{
				"faction_memory",
				"last_pwg_suicide_run",
				OP.GT,
				20
			}
		},
		on_done = {
			{
				"faction_memory",
				"last_pwg_suicide_run",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "esv_gameplay_rally_fleeing_clanrats_celebration_level",
		response = "esv_gameplay_rally_fleeing_clanrats_celebration_level",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"rally_fleeing_rats"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"skaven_storm_vermin_commander"
			},
			{
				"faction_memory",
				"esv_last_commanding",
				OP.TIMEDIFF,
				OP.GT,
				15
			}
		},
		on_done = {
			{
				"faction_memory",
				"esv_last_commanding",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "esv_gameplay_cheering_on_player_kill_celebration_level",
		response = "esv_gameplay_cheering_on_player_kill_celebration_level",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"player_death"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"skaven_storm_vermin_commander"
			},
			{
				"faction_memory",
				"sv_last_cheer",
				OP.TIMEDIFF,
				OP.GT,
				15
			}
		},
		on_done = {
			{
				"faction_memory",
				"sv_last_cheer",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "esv_gameplay_startled_celebration_level",
		response = "esv_gameplay_startled_celebration_level",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"startled"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"skaven_storm_vermin_commander"
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_esvc_startled",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "esv_gameplay_running_towards_players_celebration_level",
		response = "esv_gameplay_running_towards_players_celebration_level",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"running"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"skaven_storm_vermin_commander"
			},
			{
				"query_context",
				"distance",
				OP.GT,
				5
			},
			{
				"query_context",
				"friends_close",
				OP.EQ,
				1
			},
			{
				"faction_memory",
				"last_sv_running",
				OP.TIMEDIFF,
				OP.GT,
				10
			}
		},
		on_done = {
			{
				"faction_memory",
				"last_sv_running",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "esv_gameplay_running_towards_players_alone_celebration_level",
		response = "esv_gameplay_running_towards_players_alone_celebration_level",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"running"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"skaven_storm_vermin_commander"
			},
			{
				"query_context",
				"distance",
				OP.GT,
				5
			},
			{
				"query_context",
				"friends_close",
				OP.EQ,
				0
			},
			{
				"faction_memory",
				"last_sv_running",
				OP.TIMEDIFF,
				OP.GT,
				10
			}
		},
		on_done = {
			{
				"faction_memory",
				"last_sv_running",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "esv_gameplay_player_knocked_down_celebration_level",
		response = "esv_gameplay_player_knocked_down_celebration_level",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"knocked_down"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"skaven_storm_vermin_commander"
			},
			{
				"faction_memory",
				"esv_last_player_knockdown",
				OP.TIMEDIFF,
				OP.GT,
				20
			}
		},
		on_done = {
			{
				"faction_memory",
				"esv_last_player_knockdown",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "esv_gameplay_striking_a_player_celebration_level",
		response = "esv_gameplay_striking_a_player_celebration_level",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"striking"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"skaven_storm_vermin_commander"
			},
			{
				"faction_memory",
				"esv_last_striked_player",
				OP.TIMEDIFF,
				OP.GT,
				20
			}
		},
		on_done = {
			{
				"faction_memory",
				"esv_last_striked_player",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "esv_gameplay_killing_a_player_celebration_level",
		response = "esv_gameplay_killing_a_player_celebration_level",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"player_death"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"skaven_storm_vermin_commander"
			},
			{
				"query_context",
				"distance",
				OP.LT,
				3
			},
			{
				"faction_memory",
				"esv_last_player_death",
				OP.TIMEDIFF,
				OP.GT,
				5
			}
		},
		on_done = {
			{
				"faction_memory",
				"esv_last_player_death",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "esv_gameplay_fleeing_celebration_level",
		response = "esv_gameplay_fleeing_celebration_level",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"fleeing"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"skaven_storm_vermin_commander"
			},
			{
				"user_memory",
				"esv_last_flee",
				OP.TIMEDIFF,
				OP.GT,
				20
			}
		},
		on_done = {
			{
				"user_memory",
				"esv_last_flee",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "esv_gameplay_set_on_fire_celebration_level",
		response = "esv_gameplay_set_on_fire_celebration_level",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"burning"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"skaven_storm_vermin_commander"
			},
			{
				"user_memory",
				"esv_last_burning",
				OP.TIMEDIFF,
				OP.GT,
				10
			}
		},
		on_done = {
			{
				"user_memory",
				"esv_last_burning",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "esr_gameplay_player_knocked_down_celebration_level",
		response = "esr_gameplay_player_knocked_down_celebration_level",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"knocked_down"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"skaven_slave"
			},
			{
				"faction_memory",
				"last_cr_seen_knockdown",
				OP.TIMEDIFF,
				OP.GT,
				3
			}
		},
		on_done = {
			{
				"faction_memory",
				"last_cr_seen_knockdown",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "esr_gameplay_witch_hunter_knocked_down_celebration_level",
		response = "esr_gameplay_witch_hunter_knocked_down_celebration_level",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"knocked_down"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"skaven_slave"
			},
			{
				"query_context",
				"target_name",
				OP.EQ,
				"witch_hunter"
			},
			{
				"faction_memory",
				"last_cr_seen_knockdown",
				OP.TIMEDIFF,
				OP.GT,
				3
			}
		},
		on_done = {
			{
				"faction_memory",
				"last_cr_seen_knockdown",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "esr_gameplay_bright_wizard_knocked_down_celebration_level",
		response = "esr_gameplay_bright_wizard_knocked_down_celebration_level",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"knocked_down"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"skaven_slave"
			},
			{
				"query_context",
				"target_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"last_cr_seen_knockdown",
				OP.TIMEDIFF,
				OP.GT,
				3
			}
		},
		on_done = {
			{
				"faction_memory",
				"last_cr_seen_knockdown",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "esr_gameplay_dwarf_ranger_knocked_down_celebration_level",
		response = "esr_gameplay_dwarf_ranger_knocked_down_celebration_level",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"knocked_down"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"skaven_slave"
			},
			{
				"query_context",
				"target_name",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"faction_memory",
				"last_cr_seen_knockdown",
				OP.TIMEDIFF,
				OP.GT,
				3
			}
		},
		on_done = {
			{
				"faction_memory",
				"last_cr_seen_knockdown",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "esr_gameplay_wood_elf_knocked_down_celebration_level",
		response = "esr_gameplay_wood_elf_knocked_down_celebration_level",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"knocked_down"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"skaven_slave"
			},
			{
				"query_context",
				"target_name",
				OP.EQ,
				"wood_elf"
			},
			{
				"faction_memory",
				"last_cr_seen_knockdown",
				OP.TIMEDIFF,
				OP.GT,
				3
			}
		},
		on_done = {
			{
				"faction_memory",
				"last_cr_seen_knockdown",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "esr_gameplay_empire_soldier_knocked_down_celebration_level",
		response = "esr_gameplay_empire_soldier_knocked_down_celebration_level",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"knocked_down"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"skaven_slave"
			},
			{
				"query_context",
				"target_name",
				OP.EQ,
				"empire_soldier"
			},
			{
				"faction_memory",
				"last_cr_seen_knockdown",
				OP.TIMEDIFF,
				OP.GT,
				3
			}
		},
		on_done = {
			{
				"faction_memory",
				"last_cr_seen_knockdown",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "esr_gameplay_shouting_celebration_level",
		response = "esr_gameplay_shouting_celebration_level",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"shouting"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"skaven_slave"
			},
			{
				"faction_memory",
				"last_cr_said_hit",
				OP.TIMEDIFF,
				OP.GT,
				3
			}
		},
		on_done = {
			{
				"faction_memory",
				"last_cr_said_hit",
				OP.TIMESET
			}
		}
	})
	define_rule({
		response = "ecr_gameplay_fall_celebration_level",
		name = "ecr_gameplay_fall_celebration_level",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"falling"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"skaven_clan_rat"
			}
		}
	})
	define_rule({
		response = "ecr_gameplay_land_celebration_level",
		name = "ecr_gameplay_land_celebration_level",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"landing"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"skaven_clan_rat"
			}
		}
	})
	define_rule({
		response = "esr_gameplay_fall_celebration_level",
		name = "esr_gameplay_fall_celebration_level",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"falling"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"skaven_slave"
			}
		}
	})
	define_rule({
		response = "esr_gameplay_land_celebration_level",
		name = "esr_gameplay_land_celebration_level",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"landing"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"skaven_slave"
			}
		}
	})
	define_rule({
		name = "ecm_gameplay_running_towards_players_celebration_level",
		response = "ecm_gameplay_running_towards_players_celebration_level",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"running"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"chaos_marauder"
			},
			{
				"query_context",
				"distance",
				OP.GT,
				7
			},
			{
				"faction_memory",
				"time_since_ecm_gameplay_running_towards_players",
				OP.TIMEDIFF,
				OP.GT,
				5
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_ecm_gameplay_running_towards_players",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "ecm_gameplay_dogpile_shouts_celebration_level",
		response = "ecm_gameplay_dogpile_shouts_celebration_level",
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
				"ecm_gameplay_dogpile_shouts"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"chaos_marauder"
			},
			{
				"query_context",
				"distance",
				OP.GT,
				4
			},
			{
				"faction_memory",
				"time_since_ecm_gameplay_dogpile_shouts",
				OP.TIMEDIFF,
				OP.GT,
				10
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_ecm_gameplay_dogpile_shouts",
				OP.TIMESET
			}
		}
	})
	define_rule({
		response = "epm_gameplay_startled_celebration_level",
		name = "epm_gameplay_startled_celebration_level",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"startled"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"skaven_plague_monk"
			}
		}
	})
	define_rule({
		response = "epm_gameplay_running_celebration_level",
		name = "epm_gameplay_running_celebration_level",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"running"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"skaven_plague_monk"
			}
		}
	})
	define_rule({
		name = "ecm_gameplay_flanking_players_celebration_level",
		response = "ecm_gameplay_flanking_players_celebration_level",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"flanking"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"chaos_marauder"
			},
			{
				"faction_memory",
				"last_ecm_flanking",
				OP.TIMEDIFF,
				OP.GT,
				7
			}
		},
		on_done = {
			{
				"faction_memory",
				"last_ecm_flanking",
				OP.TIMESET
			}
		}
	})
	define_rule({
		response = "ecb_gameplay_running_towards_players_celebration_level",
		name = "ecb_gameplay_running_towards_players_celebration_level",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"running"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"chaos_berzerker"
			}
		}
	})
	define_rule({
		name = "ecr_shield_gameplay_startled_celebration_level",
		response = "ecr_shield_gameplay_startled_celebration_level",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"startled"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"skaven_clan_rat_with_shield"
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_cr_shield_startled",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "ecr_shield_gameplay_running_towards_players_celebration_level",
		response = "ecr_shield_gameplay_running_towards_players_celebration_level",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"running"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"skaven_clan_rat_with_shield"
			},
			{
				"query_context",
				"distance",
				OP.GT,
				6
			},
			{
				"faction_memory",
				"last_cr_shield_running",
				OP.TIMEDIFF,
				OP.GT,
				1
			}
		},
		on_done = {
			{
				"faction_memory",
				"last_cr_shield_running",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "ecr_shield_gameplay_running_towards_players_alone_celebration_level",
		response = "ecr_shield_gameplay_running_towards_players_alone_celebration_level",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"running"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"skaven_clan_rat_with_shield"
			},
			{
				"query_context",
				"distance",
				OP.GT,
				6
			},
			{
				"faction_memory",
				"last_cr_shield_running",
				OP.TIMEDIFF,
				OP.GT,
				2
			}
		},
		on_done = {
			{
				"faction_memory",
				"last_cr_shield_running",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "ecr_shield_gameplay_running_in_horde_celebration_level",
		response = "ecr_shield_gameplay_running_in_horde_celebration_level",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"running"
			},
			{
				"query_context",
				"distance",
				OP.GT,
				10
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"skaven_clan_rat_with_shield"
			},
			{
				"query_context",
				"num_units",
				OP.GT,
				3
			},
			{
				"faction_memory",
				"last_cr_shield_running_in_horde",
				OP.TIMEDIFF,
				OP.GT,
				2
			}
		},
		on_done = {
			{
				"faction_memory",
				"last_cr_shield_running_in_horde",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "ecr_shield_gameplay_striking_a_player_celebration_level",
		response = "ecr_shield_gameplay_striking_a_player_celebration_level",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"shouting"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"skaven_clan_rat_with_shield"
			},
			{
				"faction_memory",
				"last_cr_shield_hit",
				OP.TIMEDIFF,
				OP.GT,
				3
			}
		},
		on_done = {
			{
				"faction_memory",
				"last_cr_shield_hit",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "ecw_gameplay_targeting_wood_elf_celebration_level",
		response = "ecw_gameplay_targeting_wood_elf_celebration_level",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"enemy_target_changed"
			},
			{
				"query_context",
				"target_name",
				OP.EQ,
				"wood_elf"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"chaos_warrior"
			},
			{
				"faction_memory",
				"time_since_chaos_warrior_targeting",
				OP.TIMEDIFF,
				OP.GT,
				5
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_chaos_warrior_targeting",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "ecw_gameplay_targeting_empire_soldier_celebration_level",
		response = "ecw_gameplay_targeting_empire_soldier_celebration_level",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"enemy_target_changed"
			},
			{
				"query_context",
				"target_name",
				OP.EQ,
				"empire_soldier"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"chaos_warrior"
			},
			{
				"faction_memory",
				"time_since_chaos_warrior_targeting",
				OP.TIMEDIFF,
				OP.GT,
				5
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_chaos_warrior_targeting",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "ecw_gameplay_targeting_witch_hunter_celebration_level",
		response = "ecw_gameplay_targeting_witch_hunter_celebration_level",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"enemy_target_changed"
			},
			{
				"query_context",
				"target_name",
				OP.EQ,
				"witch_hunter"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"chaos_warrior"
			},
			{
				"faction_memory",
				"time_since_chaos_warrior_targeting",
				OP.TIMEDIFF,
				OP.GT,
				5
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_chaos_warrior_targeting",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "ecw_gameplay_targeting_bright_wizard_celebration_level",
		response = "ecw_gameplay_targeting_bright_wizard_celebration_level",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"enemy_target_changed"
			},
			{
				"query_context",
				"target_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"chaos_warrior"
			},
			{
				"faction_memory",
				"time_since_chaos_warrior_targeting",
				OP.TIMEDIFF,
				OP.GT,
				5
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_chaos_warrior_targeting",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "ecw_gameplay_targeting_dwarf_ranger_celebration_level",
		response = "ecw_gameplay_targeting_dwarf_ranger_celebration_level",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"enemy_target_changed"
			},
			{
				"query_context",
				"target_name",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"chaos_warrior"
			},
			{
				"faction_memory",
				"time_since_chaos_warrior_targeting",
				OP.TIMEDIFF,
				OP.GT,
				5
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_chaos_warrior_targeting",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "ecw_gameplay_no_damage_celebration_level",
		response = "ecw_gameplay_no_damage_celebration_level",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"no_damage_taunt_player"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"chaos_warrior"
			},
			{
				"faction_memory",
				"time_since_chaos_warrior_resilience",
				OP.TIMEDIFF,
				OP.GT,
				10
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_chaos_warrior_resilience",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "ecw_gameplay_alert_celebration_level",
		response = "ecw_gameplay_alert_celebration_level",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"startled"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"chaos_warrior"
			},
			{
				"faction_memory",
				"time_since_chaos_warrior_startled",
				OP.TIMEDIFF,
				OP.GT,
				5
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_chaos_warrior_startled",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "ecw_gameplay_downing_a_player_celebration_level",
		response = "ecw_gameplay_downing_a_player_celebration_level",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"knocked_down"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"chaos_warrior"
			},
			{
				"faction_memory",
				"last_chaos_warrior_seen_knocked_down",
				OP.TIMEDIFF,
				OP.GT,
				10
			}
		},
		on_done = {
			{
				"faction_memory",
				"last_chaos_warrior_seen_knocked_down",
				OP.TIMESET
			}
		}
	})
	add_dialogues({
		ecm_gameplay_dogpile_shouts_celebration_level = {
			face_animations_n = 1,
			database = "enemies_celebration_level",
			sound_events_n = 1,
			category = "enemy_basic_prio",
			dialogue_animations_n = 1,
			localization_strings = {
				[1.0] = "ecm_gameplay_dogpile_shouts"
			},
			sound_events = {
				[1.0] = "ecm_gameplay_dogpile_shouts"
			},
			face_animations = {
				[1.0] = "face_angry"
			},
			dialogue_animations = {
				[1.0] = "dialogue_shout"
			},
			sound_events_duration = {
				[1.0] = 2.4357753396034
			}
		},
		ecr_gameplay_witch_hunter_knocked_down_celebration_level = {
			face_animations_n = 5,
			database = "enemies_celebration_level",
			sound_events_n = 5,
			randomize_indexes_n = 0,
			category = "enemy_basic_prio",
			dialogue_animations_n = 5,
			randomize_indexes = {},
			localization_strings = {
				"ecr_gameplay_witch_hunter_knocked_down_01",
				"ecr_gameplay_witch_hunter_knocked_down_02",
				"ecr_gameplay_witch_hunter_knocked_down_03",
				"ecr_gameplay_witch_hunter_knocked_down_04",
				"ecr_gameplay_witch_hunter_knocked_down_05"
			},
			sound_events = {
				"ecr_gameplay_witch_hunter_knocked_down_01",
				"ecr_gameplay_witch_hunter_knocked_down_02",
				"ecr_gameplay_witch_hunter_knocked_down_03",
				"ecr_gameplay_witch_hunter_knocked_down_04",
				"ecr_gameplay_witch_hunter_knocked_down_05"
			},
			face_animations = {
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
				"dialogue_shout"
			},
			sound_events_duration = {
				1.3785625100136,
				2.5637916326523,
				2.731166601181,
				1.9364895224571,
				3.0035729408264
			}
		},
		esr_gameplay_empire_soldier_knocked_down_celebration_level = {
			face_animations_n = 5,
			database = "enemies_celebration_level",
			sound_events_n = 5,
			randomize_indexes_n = 0,
			category = "enemy_basic_prio",
			dialogue_animations_n = 5,
			randomize_indexes = {},
			localization_strings = {
				"esr_gameplay_empire_soldier_knocked_down_1",
				"esr_gameplay_empire_soldier_knocked_down_4",
				"esr_gameplay_empire_soldier_knocked_down_5",
				"esr_gameplay_empire_soldier_knocked_down_2",
				"esr_gameplay_empire_soldier_knocked_down_3"
			},
			sound_events = {
				"esr_gameplay_empire_soldier_knocked_down_1",
				"esr_gameplay_empire_soldier_knocked_down_4",
				"esr_gameplay_empire_soldier_knocked_down_5",
				"esr_gameplay_empire_soldier_knocked_down_2",
				"esr_gameplay_empire_soldier_knocked_down_3"
			},
			face_animations = {
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
				"dialogue_shout"
			},
			sound_events_duration = {
				2.0981771945953,
				3.0571548938751,
				2.2776836156845,
				2.9353897571564,
				2.4396891593933
			}
		},
		ecr_gameplay_seeing_weapon_special_activated_celebration_level = {
			face_animations_n = 7,
			database = "enemies_celebration_level",
			sound_events_n = 7,
			randomize_indexes_n = 0,
			category = "enemy_high_prio",
			dialogue_animations_n = 7,
			randomize_indexes = {},
			localization_strings = {
				"ecr_gameplay_seeing_weapon_special_activated_01",
				"ecr_gameplay_seeing_weapon_special_activated_02",
				"ecr_gameplay_seeing_weapon_special_activated_03",
				"ecr_gameplay_seeing_weapon_special_activated_04",
				"ecr_gameplay_seeing_weapon_special_activated_05",
				"ecr_gameplay_seeing_weapon_special_activated_06",
				"ecr_gameplay_seeing_weapon_special_activated_07"
			},
			sound_events = {
				"ecr_gameplay_seeing_weapon_special_activated_01",
				"ecr_gameplay_seeing_weapon_special_activated_02",
				"ecr_gameplay_seeing_weapon_special_activated_03",
				"ecr_gameplay_seeing_weapon_special_activated_04",
				"ecr_gameplay_seeing_weapon_special_activated_05",
				"ecr_gameplay_seeing_weapon_special_activated_06",
				"ecr_gameplay_seeing_weapon_special_activated_07"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			sound_events_duration = {
				1.1483333110809,
				2.1839375495911,
				1.4625624418259,
				1.369020819664,
				1.5745416879654,
				1.7800208330154,
				1.8344999551773
			}
		},
		ecw_gameplay_targeting_empire_soldier_celebration_level = {
			face_animations_n = 10,
			database = "enemies_celebration_level",
			sound_events_n = 10,
			randomize_indexes_n = 0,
			category = "enemy_high_prio",
			dialogue_animations_n = 10,
			randomize_indexes = {},
			localization_strings = {
				"ecw_gameplay_targeting_empire_soldier_10",
				"ecw_gameplay_targeting_empire_soldier_01",
				"ecw_gameplay_targeting_empire_soldier_02",
				"ecw_gameplay_targeting_empire_soldier_03",
				"ecw_gameplay_targeting_empire_soldier_04",
				"ecw_gameplay_targeting_empire_soldier_05",
				"ecw_gameplay_targeting_empire_soldier_06",
				"ecw_gameplay_targeting_empire_soldier_07",
				"ecw_gameplay_targeting_empire_soldier_08",
				"ecw_gameplay_targeting_empire_soldier_09"
			},
			sound_events = {
				"ecw_gameplay_targeting_empire_soldier_10",
				"ecw_gameplay_targeting_empire_soldier_01",
				"ecw_gameplay_targeting_empire_soldier_02",
				"ecw_gameplay_targeting_empire_soldier_03",
				"ecw_gameplay_targeting_empire_soldier_04",
				"ecw_gameplay_targeting_empire_soldier_05",
				"ecw_gameplay_targeting_empire_soldier_06",
				"ecw_gameplay_targeting_empire_soldier_07",
				"ecw_gameplay_targeting_empire_soldier_08",
				"ecw_gameplay_targeting_empire_soldier_09"
			},
			face_animations = {
				"face_angry",
				"face_angry",
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
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			sound_events_duration = {
				4.0159583091736,
				4.278874874115,
				4.278874874115,
				3.5030207633972,
				2.7161250114441,
				3.366229057312,
				3.4516041278839,
				3.8618125915527,
				3.4133958816528,
				3.1078958511352
			}
		},
		ecw_gameplay_alert_celebration_level = {
			face_animations_n = 16,
			database = "enemies_celebration_level",
			sound_events_n = 16,
			randomize_indexes_n = 0,
			category = "enemy_high_prio",
			dialogue_animations_n = 16,
			randomize_indexes = {},
			localization_strings = {
				"ecw_gameplay_alert_15",
				"ecw_gameplay_alert_01",
				"ecw_gameplay_alert_02",
				"ecw_gameplay_alert_03",
				"ecw_gameplay_alert_04",
				"ecw_gameplay_alert_04_alt1",
				"ecw_gameplay_alert_05",
				"ecw_gameplay_alert_06",
				"ecw_gameplay_alert_07",
				"ecw_gameplay_alert_08",
				"ecw_gameplay_alert_09",
				"ecw_gameplay_alert_10",
				"ecw_gameplay_alert_11",
				"ecw_gameplay_alert_12",
				"ecw_gameplay_alert_13",
				"ecw_gameplay_alert_14"
			},
			sound_events = {
				"ecw_gameplay_alert_15",
				"ecw_gameplay_alert_01",
				"ecw_gameplay_alert_02",
				"ecw_gameplay_alert_03",
				"ecw_gameplay_alert_04",
				"ecw_gameplay_alert_04_alt1",
				"ecw_gameplay_alert_05",
				"ecw_gameplay_alert_06",
				"ecw_gameplay_alert_07",
				"ecw_gameplay_alert_08",
				"ecw_gameplay_alert_09",
				"ecw_gameplay_alert_10",
				"ecw_gameplay_alert_11",
				"ecw_gameplay_alert_12",
				"ecw_gameplay_alert_13",
				"ecw_gameplay_alert_14"
			},
			face_animations = {
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry",
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
				"dialogue_shout",
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
				5.4635624885559,
				5.2052083015442,
				6.33047914505,
				6.1779584884644,
				7.1706252098083,
				4.6236248016357,
				5.4265832901001,
				5.6764998435974,
				5.9691042900085,
				5.0533957481384,
				5.090437412262,
				4.4456667900085,
				7.7570834159851,
				6.0019583702087,
				6.6013331413269,
				4.8120622634888
			}
		},
		esr_gameplay_wood_elf_knocked_down_celebration_level = {
			face_animations_n = 5,
			database = "enemies_celebration_level",
			sound_events_n = 5,
			randomize_indexes_n = 0,
			category = "enemy_basic_prio",
			dialogue_animations_n = 5,
			randomize_indexes = {},
			localization_strings = {
				"esr_gameplay_wood_elf_knocked_down_1",
				"esr_gameplay_wood_elf_knocked_down_2",
				"esr_gameplay_wood_elf_knocked_down_3",
				"esr_gameplay_wood_elf_knocked_down_4",
				"esr_gameplay_wood_elf_knocked_down_5"
			},
			sound_events = {
				"esr_gameplay_wood_elf_knocked_down_1",
				"esr_gameplay_wood_elf_knocked_down_2",
				"esr_gameplay_wood_elf_knocked_down_3",
				"esr_gameplay_wood_elf_knocked_down_4",
				"esr_gameplay_wood_elf_knocked_down_5"
			},
			face_animations = {
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
				"dialogue_shout"
			},
			sound_events_duration = {
				2.2165820002556,
				2.3942353725433,
				2.9860632419586,
				2.0639025568962,
				2.104850769043
			}
		},
		esv_gameplay_running_towards_players_alone_celebration_level = {
			face_animations_n = 8,
			database = "enemies_celebration_level",
			sound_events_n = 8,
			randomize_indexes_n = 0,
			category = "default",
			dialogue_animations_n = 8,
			randomize_indexes = {},
			localization_strings = {
				"esv_gameplay_running_towards_players_alone_01",
				"esv_gameplay_running_towards_players_alone_02",
				"esv_gameplay_running_towards_players_alone_03",
				"esv_gameplay_running_towards_players_alone_04",
				"esv_gameplay_running_towards_players_alone_05",
				"esv_gameplay_running_towards_players_alone_06",
				"esv_gameplay_running_towards_players_alone_07",
				"esv_gameplay_running_towards_players_alone_08"
			},
			sound_events = {
				"esv_gameplay_running_towards_players_alone_01",
				"esv_gameplay_running_towards_players_alone_02",
				"esv_gameplay_running_towards_players_alone_03",
				"esv_gameplay_running_towards_players_alone_04",
				"esv_gameplay_running_towards_players_alone_05",
				"esv_gameplay_running_towards_players_alone_06",
				"esv_gameplay_running_towards_players_alone_07",
				"esv_gameplay_running_towards_players_alone_08"
			},
			face_animations = {
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry",
				"face_neutral"
			},
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_talk"
			},
			sound_events_duration = {
				1.492166697979,
				1.355885386467,
				2.3659479022026,
				1.2154270708561,
				1.6010103821755,
				1.489437520504,
				2.5883958339691,
				1.7460415959358
			}
		},
		esr_gameplay_dwarf_ranger_knocked_down_celebration_level = {
			face_animations_n = 5,
			database = "enemies_celebration_level",
			sound_events_n = 5,
			randomize_indexes_n = 0,
			category = "enemy_basic_prio",
			dialogue_animations_n = 5,
			randomize_indexes = {},
			localization_strings = {
				"esr_gameplay_dwarf_ranger_knocked_down_1",
				"esr_gameplay_dwarf_ranger_knocked_down_3",
				"esr_gameplay_dwarf_ranger_knocked_down_4",
				"esr_gameplay_dwarf_ranger_knocked_down_5",
				"esr_gameplay_dwarf_ranger_knocked_down_2"
			},
			sound_events = {
				"esr_gameplay_dwarf_ranger_knocked_down_1",
				"esr_gameplay_dwarf_ranger_knocked_down_3",
				"esr_gameplay_dwarf_ranger_knocked_down_4",
				"esr_gameplay_dwarf_ranger_knocked_down_5",
				"esr_gameplay_dwarf_ranger_knocked_down_2"
			},
			face_animations = {
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
				"dialogue_shout"
			},
			sound_events_duration = {
				2.0404150485992,
				2.2688635587692,
				2.288533270359,
				3.0673674345017,
				2.3134577274323
			}
		},
		ecr_gameplay_running_in_horde_celebration_level = {
			face_animations_n = 11,
			database = "enemies_celebration_level",
			sound_events_n = 11,
			randomize_indexes_n = 0,
			category = "enemy_basic_prio",
			dialogue_animations_n = 11,
			randomize_indexes = {},
			localization_strings = {
				"ecr_gameplay_running_in_horde_01",
				"ecr_gameplay_running_in_horde_02",
				"ecr_gameplay_running_in_horde_03",
				"ecr_gameplay_running_in_horde_04",
				"ecr_gameplay_running_in_horde_05",
				"ecr_gameplay_running_in_horde_06",
				"ecr_gameplay_running_in_horde_07",
				"ecr_gameplay_running_in_horde_08",
				"ecr_gameplay_running_in_horde_09",
				"ecr_gameplay_running_in_horde_10",
				"ecr_gameplay_running_in_horde_11"
			},
			sound_events = {
				"ecr_gameplay_running_in_horde_01",
				"ecr_gameplay_running_in_horde_02",
				"ecr_gameplay_running_in_horde_03",
				"ecr_gameplay_running_in_horde_04",
				"ecr_gameplay_running_in_horde_05",
				"ecr_gameplay_running_in_horde_06",
				"ecr_gameplay_running_in_horde_07",
				"ecr_gameplay_running_in_horde_08",
				"ecr_gameplay_running_in_horde_09",
				"ecr_gameplay_running_in_horde_10",
				"ecr_gameplay_running_in_horde_11"
			},
			face_animations = {
				"face_angry",
				"face_angry",
				"face_angry",
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
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			sound_events_duration = {
				2.5956457853317,
				2.5252187252045,
				2.3333958387375,
				2.8580462932587,
				2.5198333263397,
				2.3732594847679,
				2.2964166998863,
				2.7859999537468,
				2.1980937123299,
				3.259292781353,
				2.6378124952316
			}
		},
		ecr_gameplay_wood_elf_knocked_down_celebration_level = {
			face_animations_n = 4,
			database = "enemies_celebration_level",
			sound_events_n = 4,
			randomize_indexes_n = 0,
			category = "enemy_basic_prio",
			dialogue_animations_n = 4,
			randomize_indexes = {},
			localization_strings = {
				"ecr_gameplay_wood_elf_knocked_down_01",
				"ecr_gameplay_wood_elf_knocked_down_03",
				"ecr_gameplay_wood_elf_knocked_down_04",
				"ecr_gameplay_wood_elf_knocked_down_05"
			},
			sound_events = {
				"ecr_gameplay_wood_elf_knocked_down_01",
				"ecr_gameplay_wood_elf_knocked_down_03",
				"ecr_gameplay_wood_elf_knocked_down_04",
				"ecr_gameplay_wood_elf_knocked_down_05"
			},
			face_animations = {
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry"
			},
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			sound_events_duration = {
				2.1427812576294,
				3.3540519475937,
				2.1710416674614,
				2.4568541049957
			}
		},
		esr_gameplay_shouting_celebration_level = {
			face_animations_n = 8,
			database = "enemies_celebration_level",
			sound_events_n = 8,
			randomize_indexes_n = 0,
			category = "enemy_basic_prio",
			dialogue_animations_n = 8,
			randomize_indexes = {},
			localization_strings = {
				"esr_gameplay_shouting_1",
				"esr_gameplay_shouting_2",
				"esr_gameplay_shouting_3",
				"esr_gameplay_shouting_5",
				"esr_gameplay_shouting_6",
				"esr_gameplay_shouting_8",
				"esr_gameplay_shouting_4",
				"esr_gameplay_shouting_7"
			},
			sound_events = {
				"esr_gameplay_shouting_1",
				"esr_gameplay_shouting_2",
				"esr_gameplay_shouting_3",
				"esr_gameplay_shouting_5",
				"esr_gameplay_shouting_6",
				"esr_gameplay_shouting_8",
				"esr_gameplay_shouting_4",
				"esr_gameplay_shouting_7"
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
				2.6175208687782,
				2.2240982651711,
				1.9760383963585,
				2.031823515892,
				2.0256657004356,
				2.5196250677109,
				2.2800567150116,
				2.746090054512
			}
		},
		ecr_gameplay_fall_celebration_level = {
			face_animations_n = 1,
			database = "enemies_celebration_level",
			sound_events_n = 1,
			category = "enemy_high_prio",
			dialogue_animations_n = 1,
			localization_strings = {
				[1.0] = "ecr_gameplay_fall"
			},
			sound_events = {
				[1.0] = "ecr_gameplay_fall"
			},
			face_animations = {
				[1.0] = "face_neutral"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			sound_events_duration = {
				[1.0] = 3.5791234374046
			}
		},
		epwg_gameplay_hitting_multiple_players_celebration_level = {
			face_animations_n = 8,
			database = "enemies_celebration_level",
			sound_events_n = 8,
			randomize_indexes_n = 0,
			category = "default",
			dialogue_animations_n = 8,
			randomize_indexes = {},
			localization_strings = {
				"epwg_gameplay_hitting_multiple_players_01",
				"epwg_gameplay_hitting_multiple_players_02",
				"epwg_gameplay_hitting_multiple_players_03",
				"epwg_gameplay_hitting_multiple_players_04",
				"epwg_gameplay_hitting_multiple_players_05",
				"epwg_gameplay_hitting_multiple_players_06",
				"epwg_gameplay_hitting_multiple_players_07",
				"epwg_gameplay_hitting_multiple_players_08"
			},
			sound_events = {
				"epwg_gameplay_hitting_multiple_players_01",
				"epwg_gameplay_hitting_multiple_players_02",
				"epwg_gameplay_hitting_multiple_players_03",
				"epwg_gameplay_hitting_multiple_players_04",
				"epwg_gameplay_hitting_multiple_players_05",
				"epwg_gameplay_hitting_multiple_players_06",
				"epwg_gameplay_hitting_multiple_players_07",
				"epwg_gameplay_hitting_multiple_players_08"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			sound_events_duration = {
				2.4380937814713,
				2.557656288147,
				1.8583853840828,
				1.8352499902248,
				2.207447886467,
				2.0799896121025,
				2.3486562371254,
				2.7040625214577
			}
		},
		epwg_gameplay_hitting_only_skaven_celebration_level = {
			face_animations_n = 8,
			database = "enemies_celebration_level",
			sound_events_n = 8,
			randomize_indexes_n = 0,
			category = "default",
			dialogue_animations_n = 8,
			randomize_indexes = {},
			localization_strings = {
				"epwg_gameplay_hitting_only_skaven_01",
				"epwg_gameplay_hitting_only_skaven_02",
				"epwg_gameplay_hitting_only_skaven_03",
				"epwg_gameplay_hitting_only_skaven_04",
				"epwg_gameplay_hitting_only_skaven_05",
				"epwg_gameplay_hitting_only_skaven_06",
				"epwg_gameplay_hitting_only_skaven_07",
				"epwg_gameplay_hitting_only_skaven_08"
			},
			sound_events = {
				"epwg_gameplay_hitting_only_skaven_01",
				"epwg_gameplay_hitting_only_skaven_02",
				"epwg_gameplay_hitting_only_skaven_03",
				"epwg_gameplay_hitting_only_skaven_04",
				"epwg_gameplay_hitting_only_skaven_05",
				"epwg_gameplay_hitting_only_skaven_06",
				"epwg_gameplay_hitting_only_skaven_07",
				"epwg_gameplay_hitting_only_skaven_08"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			sound_events_duration = {
				2.1648333072662,
				2.1235208511352,
				2.0627708435059,
				1.8546145558357,
				1.3992187380791,
				2.6631041765213,
				1.8565312623978,
				1.6903228759766
			}
		},
		ecr_gameplay_attacking_bright_wizard_backstab_celebration_level = {
			face_animations_n = 5,
			database = "enemies_celebration_level",
			sound_events_n = 5,
			randomize_indexes_n = 0,
			category = "enemy_high_prio",
			dialogue_animations_n = 5,
			randomize_indexes = {},
			localization_strings = {
				"ecr_gameplay_attacking_bright_wizard_backstab_01",
				"ecr_gameplay_attacking_bright_wizard_backstab_02",
				"ecr_gameplay_attacking_bright_wizard_backstab_03",
				"ecr_gameplay_attacking_bright_wizard_backstab_04",
				"ecr_gameplay_attacking_bright_wizard_backstab_05"
			},
			sound_events = {
				"ecr_gameplay_attacking_bright_wizard_backstab_01",
				"ecr_gameplay_attacking_bright_wizard_backstab_02",
				"ecr_gameplay_attacking_bright_wizard_backstab_03",
				"ecr_gameplay_attacking_bright_wizard_backstab_04",
				"ecr_gameplay_attacking_bright_wizard_backstab_05"
			},
			face_animations = {
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
				"dialogue_shout"
			},
			sound_events_duration = {
				2.891385436058,
				2.8543645143509,
				2.8261458873749,
				2.8884791135788,
				1.3641090393066
			}
		},
		esv_gameplay_killing_a_player_celebration_level = {
			face_animations_n = 7,
			database = "enemies_celebration_level",
			sound_events_n = 7,
			randomize_indexes_n = 0,
			category = "default",
			dialogue_animations_n = 7,
			randomize_indexes = {},
			localization_strings = {
				"esv_gameplay_killing_a_player_01",
				"esv_gameplay_killing_a_player_02",
				"esv_gameplay_killing_a_player_03",
				"esv_gameplay_killing_a_player_04",
				"esv_gameplay_killing_a_player_05",
				"esv_gameplay_killing_a_player_06",
				"esv_gameplay_killing_a_player_08"
			},
			sound_events = {
				"esv_gameplay_killing_a_player_01",
				"esv_gameplay_killing_a_player_02",
				"esv_gameplay_killing_a_player_03",
				"esv_gameplay_killing_a_player_04",
				"esv_gameplay_killing_a_player_05",
				"esv_gameplay_killing_a_player_06",
				"esv_gameplay_killing_a_player_08"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			sound_events_duration = {
				2.013812482357,
				1.9357187151909,
				1.8026874661446,
				2.7836250066757,
				1.95244795084,
				2.9839271306992,
				2.0430833101273
			}
		},
		esr_gameplay_bright_wizard_knocked_down_celebration_level = {
			face_animations_n = 5,
			database = "enemies_celebration_level",
			sound_events_n = 5,
			randomize_indexes_n = 0,
			category = "enemy_basic_prio",
			dialogue_animations_n = 5,
			randomize_indexes = {},
			localization_strings = {
				"esr_gameplay_bright_wizard_knocked_down_1",
				"esr_gameplay_bright_wizard_knocked_down_2",
				"esr_gameplay_bright_wizard_knocked_down_3",
				"esr_gameplay_bright_wizard_knocked_down_4",
				"esr_gameplay_bright_wizard_knocked_down_5"
			},
			sound_events = {
				"esr_gameplay_bright_wizard_knocked_down_1",
				"esr_gameplay_bright_wizard_knocked_down_2",
				"esr_gameplay_bright_wizard_knocked_down_3",
				"esr_gameplay_bright_wizard_knocked_down_4",
				"esr_gameplay_bright_wizard_knocked_down_5"
			},
			face_animations = {
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
				"dialogue_shout"
			},
			sound_events_duration = {
				2.1765139102936,
				2.298181951046,
				2.1644481420517,
				2.350643157959,
				1.463881790638
			}
		},
		ecr_shield_gameplay_striking_a_player_celebration_level = {
			face_animations_n = 11,
			database = "enemies_celebration_level",
			sound_events_n = 11,
			randomize_indexes_n = 0,
			category = "enemy_basic_prio",
			dialogue_animations_n = 11,
			randomize_indexes = {},
			localization_strings = {
				"ecr_shield_gameplay_striking_a_player_125",
				"ecr_shield_gameplay_striking_a_player_115",
				"ecr_shield_gameplay_striking_a_player_116",
				"ecr_shield_gameplay_striking_a_player_117",
				"ecr_shield_gameplay_striking_a_player_118",
				"ecr_shield_gameplay_striking_a_player_119",
				"ecr_shield_gameplay_striking_a_player_120",
				"ecr_shield_gameplay_striking_a_player_121",
				"ecr_shield_gameplay_striking_a_player_122",
				"ecr_shield_gameplay_striking_a_player_123",
				"ecr_shield_gameplay_striking_a_player_124"
			},
			sound_events = {
				"ecr_shield_gameplay_striking_a_player_125",
				"ecr_shield_gameplay_striking_a_player_115",
				"ecr_shield_gameplay_striking_a_player_116",
				"ecr_shield_gameplay_striking_a_player_117",
				"ecr_shield_gameplay_striking_a_player_118",
				"ecr_shield_gameplay_striking_a_player_119",
				"ecr_shield_gameplay_striking_a_player_120",
				"ecr_shield_gameplay_striking_a_player_121",
				"ecr_shield_gameplay_striking_a_player_122",
				"ecr_shield_gameplay_striking_a_player_123",
				"ecr_shield_gameplay_striking_a_player_124"
			},
			face_animations = {
				"face_angry",
				"face_angry",
				"face_angry",
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
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			sound_events_duration = {
				1.7672068476677,
				1.1083488464356,
				1.0823719501495,
				1.8876567482948,
				1.6105694770813,
				2.232283949852,
				1.7574293613434,
				3.0082724094391,
				1.8706274628639,
				2.0516180992127,
				1.5086461305618
			}
		},
		ecw_gameplay_targeting_bright_wizard_celebration_level = {
			face_animations_n = 10,
			database = "enemies_celebration_level",
			sound_events_n = 10,
			randomize_indexes_n = 0,
			category = "enemy_high_prio",
			dialogue_animations_n = 10,
			randomize_indexes = {},
			localization_strings = {
				"ecw_gameplay_targeting_bright_wizard_02",
				"ecw_gameplay_targeting_bright_wizard_03",
				"ecw_gameplay_targeting_bright_wizard_04",
				"ecw_gameplay_targeting_bright_wizard_05",
				"ecw_gameplay_targeting_bright_wizard_06",
				"ecw_gameplay_targeting_bright_wizard_07",
				"ecw_gameplay_targeting_bright_wizard_08",
				"ecw_gameplay_targeting_bright_wizard_09",
				"ecw_gameplay_targeting_bright_wizard_10",
				"ecw_gameplay_targeting_bright_wizard_01"
			},
			sound_events = {
				"ecw_gameplay_targeting_bright_wizard_02",
				"ecw_gameplay_targeting_bright_wizard_03",
				"ecw_gameplay_targeting_bright_wizard_04",
				"ecw_gameplay_targeting_bright_wizard_05",
				"ecw_gameplay_targeting_bright_wizard_06",
				"ecw_gameplay_targeting_bright_wizard_07",
				"ecw_gameplay_targeting_bright_wizard_08",
				"ecw_gameplay_targeting_bright_wizard_09",
				"ecw_gameplay_targeting_bright_wizard_10",
				"ecw_gameplay_targeting_bright_wizard_01"
			},
			face_animations = {
				"face_angry",
				"face_angry",
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
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			sound_events_duration = {
				2.4371666908264,
				2.6896667480469,
				2.01597905159,
				3.2472500801086,
				2.6469583511352,
				3.1956040859222,
				2.7164375782013,
				4.0721039772034,
				3.0967292785645,
				2.4371666908264
			}
		},
		ecw_gameplay_targeting_wood_elf_celebration_level = {
			face_animations_n = 10,
			database = "enemies_celebration_level",
			sound_events_n = 10,
			randomize_indexes_n = 0,
			category = "enemy_high_prio",
			dialogue_animations_n = 10,
			randomize_indexes = {},
			localization_strings = {
				"ecw_gameplay_targeting_wood_elf_10",
				"ecw_gameplay_targeting_wood_elf_01",
				"ecw_gameplay_targeting_wood_elf_02",
				"ecw_gameplay_targeting_wood_elf_03",
				"ecw_gameplay_targeting_wood_elf_04",
				"ecw_gameplay_targeting_wood_elf_05",
				"ecw_gameplay_targeting_wood_elf_06",
				"ecw_gameplay_targeting_wood_elf_07",
				"ecw_gameplay_targeting_wood_elf_08",
				"ecw_gameplay_targeting_wood_elf_09"
			},
			sound_events = {
				"ecw_gameplay_targeting_wood_elf_10",
				"ecw_gameplay_targeting_wood_elf_01",
				"ecw_gameplay_targeting_wood_elf_02",
				"ecw_gameplay_targeting_wood_elf_03",
				"ecw_gameplay_targeting_wood_elf_04",
				"ecw_gameplay_targeting_wood_elf_05",
				"ecw_gameplay_targeting_wood_elf_06",
				"ecw_gameplay_targeting_wood_elf_07",
				"ecw_gameplay_targeting_wood_elf_08",
				"ecw_gameplay_targeting_wood_elf_09"
			},
			face_animations = {
				"face_angry",
				"face_angry",
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
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			sound_events_duration = {
				3.5813958644867,
				2.1689791679382,
				2.1689791679382,
				3.3047499656677,
				2.4201667308807,
				2.1665832996368,
				3.2913959026337,
				2.9574167728424,
				2.8440208435059,
				3.5403957366943
			}
		},
		ecr_shield_gameplay_running_towards_players_celebration_level = {
			face_animations_n = 13,
			database = "enemies_celebration_level",
			sound_events_n = 13,
			randomize_indexes_n = 0,
			category = "enemy_basic_prio",
			dialogue_animations_n = 13,
			randomize_indexes = {},
			localization_strings = {
				"ecr_shield_gameplay_running_towards_players_38",
				"ecr_shield_gameplay_running_towards_players_26",
				"ecr_shield_gameplay_running_towards_players_27",
				"ecr_shield_gameplay_running_towards_players_28",
				"ecr_shield_gameplay_running_towards_players_29",
				"ecr_shield_gameplay_running_towards_players_30",
				"ecr_shield_gameplay_running_towards_players_31",
				"ecr_shield_gameplay_running_towards_players_32",
				"ecr_shield_gameplay_running_towards_players_33",
				"ecr_shield_gameplay_running_towards_players_34",
				"ecr_shield_gameplay_running_towards_players_35",
				"ecr_shield_gameplay_running_towards_players_36",
				"ecr_shield_gameplay_running_towards_players_37"
			},
			sound_events = {
				"ecr_shield_gameplay_running_towards_players_38",
				"ecr_shield_gameplay_running_towards_players_26",
				"ecr_shield_gameplay_running_towards_players_27",
				"ecr_shield_gameplay_running_towards_players_28",
				"ecr_shield_gameplay_running_towards_players_29",
				"ecr_shield_gameplay_running_towards_players_30",
				"ecr_shield_gameplay_running_towards_players_31",
				"ecr_shield_gameplay_running_towards_players_32",
				"ecr_shield_gameplay_running_towards_players_33",
				"ecr_shield_gameplay_running_towards_players_34",
				"ecr_shield_gameplay_running_towards_players_35",
				"ecr_shield_gameplay_running_towards_players_36",
				"ecr_shield_gameplay_running_towards_players_37"
			},
			face_animations = {
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry",
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
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			sound_events_duration = {
				1.3738186955452,
				1.6594746112824,
				1.293182015419,
				2.1765778064728,
				1.9611137509346,
				1.3147211074829,
				2.0257493853569,
				1.7887459397316,
				1.4009140133858,
				1.9611137509346,
				2.0257493853569,
				1.6503286361694,
				2.5368272066116
			}
		},
		ecr_gameplay_player_knocked_down_celebration_level = {
			face_animations_n = 8,
			database = "enemies_celebration_level",
			sound_events_n = 8,
			randomize_indexes_n = 0,
			category = "enemy_basic_prio",
			dialogue_animations_n = 8,
			randomize_indexes = {},
			localization_strings = {
				"ecr_gameplay_player_knocked_down_01",
				"ecr_gameplay_player_knocked_down_02",
				"ecr_gameplay_player_knocked_down_03",
				"ecr_gameplay_player_knocked_down_04",
				"ecr_gameplay_player_knocked_down_05",
				"ecr_gameplay_player_knocked_down_06",
				"ecr_gameplay_player_knocked_down_07",
				"ecr_gameplay_player_knocked_down_08"
			},
			sound_events = {
				"ecr_gameplay_player_knocked_down_01",
				"ecr_gameplay_player_knocked_down_02",
				"ecr_gameplay_player_knocked_down_03",
				"ecr_gameplay_player_knocked_down_04",
				"ecr_gameplay_player_knocked_down_05",
				"ecr_gameplay_player_knocked_down_06",
				"ecr_gameplay_player_knocked_down_07",
				"ecr_gameplay_player_knocked_down_08"
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
				2.0681250691414,
				1.8678125143051,
				2.1267187595367,
				2.4797916412353,
				2.0925833582878,
				2.1811770796776,
				2.1956562399864,
				2.300697863102
			}
		},
		ecr_gameplay_seeing_bomb_thrown_celebration_level = {
			face_animations_n = 7,
			database = "enemies_celebration_level",
			sound_events_n = 7,
			randomize_indexes_n = 0,
			category = "enemy_high_prio",
			dialogue_animations_n = 7,
			randomize_indexes = {},
			localization_strings = {
				"ecr_gameplay_seeing_bomb_thrown_01",
				"ecr_gameplay_seeing_bomb_thrown_02",
				"ecr_gameplay_seeing_bomb_thrown_03",
				"ecr_gameplay_seeing_bomb_thrown_04",
				"ecr_gameplay_seeing_bomb_thrown_05",
				"ecr_gameplay_seeing_bomb_thrown_06",
				"ecr_gameplay_seeing_bomb_thrown_07"
			},
			sound_events = {
				"ecr_gameplay_seeing_bomb_thrown_01",
				"ecr_gameplay_seeing_bomb_thrown_02",
				"ecr_gameplay_seeing_bomb_thrown_03",
				"ecr_gameplay_seeing_bomb_thrown_04",
				"ecr_gameplay_seeing_bomb_thrown_05",
				"ecr_gameplay_seeing_bomb_thrown_06",
				"ecr_gameplay_seeing_bomb_thrown_07"
			},
			face_animations = {
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
				"dialogue_shout"
			},
			sound_events_duration = {
				1.1551041603088,
				1.0714583396912,
				1.2909166812897,
				1.4922083616257,
				1.3328541517258,
				1.2070416212082,
				1.8025000095367
			}
		},
		esv_gameplay_rally_fleeing_clanrats_celebration_level = {
			face_animations_n = 8,
			database = "enemies_celebration_level",
			sound_events_n = 8,
			randomize_indexes_n = 0,
			category = "enemy_high_prio",
			dialogue_animations_n = 8,
			randomize_indexes = {},
			localization_strings = {
				"esv_gameplay_rally_fleeing_clanrats_01",
				"esv_gameplay_rally_fleeing_clanrats_02",
				"esv_gameplay_rally_fleeing_clanrats_03",
				"esv_gameplay_rally_fleeing_clanrats_04",
				"esv_gameplay_rally_fleeing_clanrats_05",
				"esv_gameplay_rally_fleeing_clanrats_06",
				"esv_gameplay_rally_fleeing_clanrats_07",
				"esv_gameplay_rally_fleeing_clanrats_08"
			},
			sound_events = {
				"esv_gameplay_rally_fleeing_clanrats_01",
				"esv_gameplay_rally_fleeing_clanrats_02",
				"esv_gameplay_rally_fleeing_clanrats_03",
				"esv_gameplay_rally_fleeing_clanrats_04",
				"esv_gameplay_rally_fleeing_clanrats_05",
				"esv_gameplay_rally_fleeing_clanrats_06",
				"esv_gameplay_rally_fleeing_clanrats_07",
				"esv_gameplay_rally_fleeing_clanrats_08"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			sound_events_duration = {
				1.77208340168,
				0.98653122782707,
				2.6444166898727,
				2.80823969841,
				2.7446771860123,
				2.9503228664398,
				1.7425312399864,
				2.9276041984558
			}
		},
		esv_gameplay_striking_a_player_celebration_level = {
			face_animations_n = 8,
			database = "enemies_celebration_level",
			sound_events_n = 8,
			randomize_indexes_n = 0,
			category = "default",
			dialogue_animations_n = 8,
			randomize_indexes = {},
			localization_strings = {
				"esv_gameplay_striking_a_player_01",
				"esv_gameplay_striking_a_player_02",
				"esv_gameplay_striking_a_player_03",
				"esv_gameplay_striking_a_player_04",
				"esv_gameplay_striking_a_player_05",
				"esv_gameplay_striking_a_player_06",
				"esv_gameplay_striking_a_player_07",
				"esv_gameplay_striking_a_player_08"
			},
			sound_events = {
				"esv_gameplay_striking_a_player_01",
				"esv_gameplay_striking_a_player_02",
				"esv_gameplay_striking_a_player_03",
				"esv_gameplay_striking_a_player_04",
				"esv_gameplay_striking_a_player_05",
				"esv_gameplay_striking_a_player_06",
				"esv_gameplay_striking_a_player_07",
				"esv_gameplay_striking_a_player_08"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			sound_events_duration = {
				2.3912395834923,
				2.0863228440285,
				1.0346145927906,
				0.99805209040642,
				0.8479166328907,
				1.8966562747955,
				1.7962604165077,
				2.577229142189
			}
		},
		ecw_gameplay_targeting_witch_hunter_celebration_level = {
			face_animations_n = 10,
			database = "enemies_celebration_level",
			sound_events_n = 10,
			randomize_indexes_n = 0,
			category = "enemy_high_prio",
			dialogue_animations_n = 10,
			randomize_indexes = {},
			localization_strings = {
				"ecw_gameplay_targeting_witch_hunter_10",
				"ecw_gameplay_targeting_witch_hunter_01",
				"ecw_gameplay_targeting_witch_hunter_02",
				"ecw_gameplay_targeting_witch_hunter_03",
				"ecw_gameplay_targeting_witch_hunter_04",
				"ecw_gameplay_targeting_witch_hunter_05",
				"ecw_gameplay_targeting_witch_hunter_06",
				"ecw_gameplay_targeting_witch_hunter_07",
				"ecw_gameplay_targeting_witch_hunter_08",
				"ecw_gameplay_targeting_witch_hunter_09"
			},
			sound_events = {
				"ecw_gameplay_targeting_witch_hunter_10",
				"ecw_gameplay_targeting_witch_hunter_01",
				"ecw_gameplay_targeting_witch_hunter_02",
				"ecw_gameplay_targeting_witch_hunter_03",
				"ecw_gameplay_targeting_witch_hunter_04",
				"ecw_gameplay_targeting_witch_hunter_05",
				"ecw_gameplay_targeting_witch_hunter_06",
				"ecw_gameplay_targeting_witch_hunter_07",
				"ecw_gameplay_targeting_witch_hunter_08",
				"ecw_gameplay_targeting_witch_hunter_09"
			},
			face_animations = {
				"face_angry",
				"face_angry",
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
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			sound_events_duration = {
				5.498083114624,
				3.5149791240692,
				3.5149791240692,
				3.308354139328,
				2.8955416679382,
				2.4309375286102,
				4.1226668357849,
				3.907666683197,
				4.3086042404175,
				3.9525415897369
			}
		},
		ecr_gameplay_killing_a_player_celebration_level = {
			face_animations_n = 8,
			database = "enemies_celebration_level",
			sound_events_n = 8,
			randomize_indexes_n = 0,
			category = "enemy_basic_prio",
			dialogue_animations_n = 8,
			randomize_indexes = {},
			localization_strings = {
				"ecr_gameplay_killing_a_player_01",
				"ecr_gameplay_killing_a_player_02",
				"ecr_gameplay_killing_a_player_03",
				"ecr_gameplay_killing_a_player_04",
				"ecr_gameplay_killing_a_player_05",
				"ecr_gameplay_killing_a_player_06",
				"ecr_gameplay_killing_a_player_07",
				"ecr_gameplay_killing_a_player_08"
			},
			sound_events = {
				"ecr_gameplay_killing_a_player_01",
				"ecr_gameplay_killing_a_player_02",
				"ecr_gameplay_killing_a_player_03",
				"ecr_gameplay_killing_a_player_04",
				"ecr_gameplay_killing_a_player_05",
				"ecr_gameplay_killing_a_player_06",
				"ecr_gameplay_killing_a_player_07",
				"ecr_gameplay_killing_a_player_08"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			sound_events_duration = {
				2.3172291517258,
				1.134604215622,
				2.6404166221619,
				1.6570416688919,
				1.659916639328,
				1.156729221344,
				2.0708749294281,
				2.5992500782013
			}
		},
		esr_gameplay_player_knocked_down_celebration_level = {
			face_animations_n = 8,
			database = "enemies_celebration_level",
			sound_events_n = 8,
			randomize_indexes_n = 0,
			category = "enemy_basic_prio",
			dialogue_animations_n = 8,
			randomize_indexes = {},
			localization_strings = {
				"esr_gameplay_player_knocked_down_1",
				"esr_gameplay_player_knocked_down_2",
				"esr_gameplay_player_knocked_down_3",
				"esr_gameplay_player_knocked_down_4",
				"esr_gameplay_player_knocked_down_5",
				"esr_gameplay_player_knocked_down_6",
				"esr_gameplay_player_knocked_down_7",
				"esr_gameplay_player_knocked_down_8"
			},
			sound_events = {
				"esr_gameplay_player_knocked_down_1",
				"esr_gameplay_player_knocked_down_2",
				"esr_gameplay_player_knocked_down_3",
				"esr_gameplay_player_knocked_down_4",
				"esr_gameplay_player_knocked_down_5",
				"esr_gameplay_player_knocked_down_6",
				"esr_gameplay_player_knocked_down_7",
				"esr_gameplay_player_knocked_down_8"
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
				1.4456084370613,
				1.6556223630905,
				1.8227429986,
				1.8540081977844,
				2.0795146226883,
				2.006293296814,
				2.1355746984482,
				2.5704188346863
			}
		},
		ecw_gameplay_downing_a_player_celebration_level = {
			face_animations_n = 12,
			database = "enemies_celebration_level",
			sound_events_n = 12,
			randomize_indexes_n = 0,
			category = "enemy_high_prio",
			dialogue_animations_n = 12,
			randomize_indexes = {},
			localization_strings = {
				"ecw_gameplay_downing_a_player_12",
				"ecw_gameplay_downing_a_player_01",
				"ecw_gameplay_downing_a_player_02",
				"ecw_gameplay_downing_a_player_03",
				"ecw_gameplay_downing_a_player_04",
				"ecw_gameplay_downing_a_player_05",
				"ecw_gameplay_downing_a_player_06",
				"ecw_gameplay_downing_a_player_07",
				"ecw_gameplay_downing_a_player_08",
				"ecw_gameplay_downing_a_player_09",
				"ecw_gameplay_downing_a_player_10",
				"ecw_gameplay_downing_a_player_11"
			},
			sound_events = {
				"ecw_gameplay_downing_a_player_12",
				"ecw_gameplay_downing_a_player_01",
				"ecw_gameplay_downing_a_player_02",
				"ecw_gameplay_downing_a_player_03",
				"ecw_gameplay_downing_a_player_04",
				"ecw_gameplay_downing_a_player_05",
				"ecw_gameplay_downing_a_player_06",
				"ecw_gameplay_downing_a_player_07",
				"ecw_gameplay_downing_a_player_08",
				"ecw_gameplay_downing_a_player_09",
				"ecw_gameplay_downing_a_player_10",
				"ecw_gameplay_downing_a_player_11"
			},
			face_animations = {
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry",
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
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			sound_events_duration = {
				1.1312708854675,
				2.8968958854675,
				2.849666595459,
				3.8111457824707,
				3.0181040763855,
				4.1496248245239,
				3.7249999046326,
				2.3901250362396,
				3.9852292537689,
				2.9520626068115,
				1.1278125047684,
				2.2089791297913
			}
		},
		ecm_gameplay_running_towards_players_celebration_level = {
			face_animations_n = 1,
			database = "enemies_celebration_level",
			sound_events_n = 1,
			category = "enemy_high_prio",
			dialogue_animations_n = 1,
			localization_strings = {
				[1.0] = "ecm_gameplay_running_towards_players"
			},
			sound_events = {
				[1.0] = "ecm_gameplay_running_towards_players"
			},
			face_animations = {
				[1.0] = "face_angry"
			},
			dialogue_animations = {
				[1.0] = "dialogue_shout"
			},
			sound_events_duration = {
				[1.0] = 2.7142012417316
			}
		},
		esv_gameplay_set_on_fire_celebration_level = {
			face_animations_n = 4,
			database = "enemies_celebration_level",
			sound_events_n = 4,
			randomize_indexes_n = 0,
			category = "default",
			dialogue_animations_n = 4,
			randomize_indexes = {},
			localization_strings = {
				"esv_gameplay_set_on_fire_01",
				"esv_gameplay_set_on_fire_02",
				"esv_gameplay_set_on_fire_03",
				"esv_gameplay_set_on_fire_04"
			},
			sound_events = {
				"esv_gameplay_set_on_fire_01",
				"esv_gameplay_set_on_fire_02",
				"esv_gameplay_set_on_fire_03",
				"esv_gameplay_set_on_fire_04"
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
				3.0554791688919,
				3.8044896125794,
				3.8181978464127,
				3.8958332538605
			}
		},
		epwg_gameplay_hitting_a_player_celebration_level = {
			face_animations_n = 8,
			database = "enemies_celebration_level",
			sound_events_n = 8,
			randomize_indexes_n = 0,
			category = "default",
			dialogue_animations_n = 8,
			randomize_indexes = {},
			localization_strings = {
				"epwg_gameplay_hitting_a_player_01",
				"epwg_gameplay_hitting_a_player_02",
				"epwg_gameplay_hitting_a_player_03",
				"epwg_gameplay_hitting_a_player_04",
				"epwg_gameplay_hitting_a_player_05",
				"epwg_gameplay_hitting_a_player_06",
				"epwg_gameplay_hitting_a_player_07",
				"epwg_gameplay_hitting_a_player_08"
			},
			sound_events = {
				"epwg_gameplay_hitting_a_player_01",
				"epwg_gameplay_hitting_a_player_02",
				"epwg_gameplay_hitting_a_player_03",
				"epwg_gameplay_hitting_a_player_04",
				"epwg_gameplay_hitting_a_player_05",
				"epwg_gameplay_hitting_a_player_06",
				"epwg_gameplay_hitting_a_player_07",
				"epwg_gameplay_hitting_a_player_08"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			sound_events_duration = {
				1.347416639328,
				1.9153229594231,
				3.7763854265213,
				2.3096667528153,
				1.5484895408154,
				1.3098333179951,
				2.8004896640778,
				1.9037187695503
			}
		},
		esr_gameplay_land_celebration_level = {
			face_animations_n = 1,
			database = "enemies_celebration_level",
			sound_events_n = 1,
			category = "enemy_high_prio",
			dialogue_animations_n = 1,
			localization_strings = {
				[1.0] = "esr_gameplay_land"
			},
			sound_events = {
				[1.0] = "esr_gameplay_land"
			},
			face_animations = {
				[1.0] = "face_neutral"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			sound_events_duration = {
				[1.0] = 1.0269469022751
			}
		},
		epm_gameplay_running_celebration_level = {
			face_animations_n = 1,
			database = "enemies_celebration_level",
			sound_events_n = 1,
			category = "enemy_high_prio",
			dialogue_animations_n = 1,
			localization_strings = {
				[1.0] = "Play_plague_monk_running_vce"
			},
			sound_events = {
				[1.0] = "Play_plague_monk_running_vce"
			},
			face_animations = {
				[1.0] = "face_angry"
			},
			dialogue_animations = {
				[1.0] = "dialogue_shout"
			},
			sound_events_duration = {
				[1.0] = 4.3576783537865
			}
		},
		ecr_shield_gameplay_running_towards_players_alone_celebration_level = {
			face_animations_n = 14,
			database = "enemies_celebration_level",
			sound_events_n = 14,
			randomize_indexes_n = 0,
			category = "enemy_basic_prio",
			dialogue_animations_n = 14,
			randomize_indexes = {},
			localization_strings = {
				"ecr_shield_gameplay_running_towards_players_alone_52",
				"ecr_shield_gameplay_running_towards_players_alone_39",
				"ecr_shield_gameplay_running_towards_players_alone_40",
				"ecr_shield_gameplay_running_towards_players_alone_41",
				"ecr_shield_gameplay_running_towards_players_alone_42",
				"ecr_shield_gameplay_running_towards_players_alone_43",
				"ecr_shield_gameplay_running_towards_players_alone_44",
				"ecr_shield_gameplay_running_towards_players_alone_45",
				"ecr_shield_gameplay_running_towards_players_alone_46",
				"ecr_shield_gameplay_running_towards_players_alone_47",
				"ecr_shield_gameplay_running_towards_players_alone_48",
				"ecr_shield_gameplay_running_towards_players_alone_49",
				"ecr_shield_gameplay_running_towards_players_alone_50",
				"ecr_shield_gameplay_running_towards_players_alone_51"
			},
			sound_events = {
				"ecr_shield_gameplay_running_towards_players_alone_52",
				"ecr_shield_gameplay_running_towards_players_alone_39",
				"ecr_shield_gameplay_running_towards_players_alone_40",
				"ecr_shield_gameplay_running_towards_players_alone_41",
				"ecr_shield_gameplay_running_towards_players_alone_42",
				"ecr_shield_gameplay_running_towards_players_alone_43",
				"ecr_shield_gameplay_running_towards_players_alone_44",
				"ecr_shield_gameplay_running_towards_players_alone_45",
				"ecr_shield_gameplay_running_towards_players_alone_46",
				"ecr_shield_gameplay_running_towards_players_alone_47",
				"ecr_shield_gameplay_running_towards_players_alone_48",
				"ecr_shield_gameplay_running_towards_players_alone_49",
				"ecr_shield_gameplay_running_towards_players_alone_50",
				"ecr_shield_gameplay_running_towards_players_alone_51"
			},
			face_animations = {
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry",
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
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			sound_events_duration = {
				2.5528464317322,
				1.7042848467827,
				1.8533815741539,
				1.9180173277855,
				0.7931621670723,
				1.8183847665787,
				1.7491130828857,
				2.7499462366104,
				2.3010687828064,
				3.0651510953903,
				3.6087362766266,
				3.3570487499237,
				3.196208357811,
				3.196208357811
			}
		},
		ecr_gameplay_fleeing_celebration_level = {
			face_animations_n = 6,
			database = "enemies_celebration_level",
			sound_events_n = 6,
			randomize_indexes_n = 0,
			category = "enemy_basic_prio",
			dialogue_animations_n = 6,
			randomize_indexes = {},
			localization_strings = {
				"ecr_gameplay_fleeing_01",
				"ecr_gameplay_fleeing_02",
				"ecr_gameplay_fleeing_03",
				"ecr_gameplay_fleeing_04",
				"ecr_gameplay_fleeing_06",
				"ecr_gameplay_fleeing_07"
			},
			sound_events = {
				"ecr_gameplay_fleeing_01",
				"ecr_gameplay_fleeing_02",
				"ecr_gameplay_fleeing_03",
				"ecr_gameplay_fleeing_04",
				"ecr_gameplay_fleeing_06",
				"ecr_gameplay_fleeing_07"
			},
			face_animations = {
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
				"dialogue_shout"
			},
			sound_events_duration = {
				1.3161770999432,
				1.2687916457653,
				2.4412187337875,
				1.2936354279518,
				1.7326874732971,
				2.1942604184151
			}
		},
		ecw_gameplay_no_damage_celebration_level = {
			face_animations_n = 11,
			database = "enemies_celebration_level",
			sound_events_n = 11,
			randomize_indexes_n = 0,
			category = "enemy_high_prio",
			dialogue_animations_n = 11,
			randomize_indexes = {},
			localization_strings = {
				"ecw_gameplay_resilience_12",
				"ecw_gameplay_resilience_01",
				"ecw_gameplay_resilience_03",
				"ecw_gameplay_resilience_04",
				"ecw_gameplay_resilience_05",
				"ecw_gameplay_resilience_06",
				"ecw_gameplay_resilience_07",
				"ecw_gameplay_resilience_08",
				"ecw_gameplay_resilience_09",
				"ecw_gameplay_resilience_10",
				"ecw_gameplay_resilience_11"
			},
			sound_events = {
				"ecw_gameplay_resilience_12",
				"ecw_gameplay_resilience_01",
				"ecw_gameplay_resilience_03",
				"ecw_gameplay_resilience_04",
				"ecw_gameplay_resilience_05",
				"ecw_gameplay_resilience_06",
				"ecw_gameplay_resilience_07",
				"ecw_gameplay_resilience_08",
				"ecw_gameplay_resilience_09",
				"ecw_gameplay_resilience_10",
				"ecw_gameplay_resilience_11"
			},
			face_animations = {
				"face_angry",
				"face_angry",
				"face_angry",
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
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			sound_events_duration = {
				1.3657873868942,
				1.29325568676,
				1.6440000534058,
				2.6308333873749,
				2.2638916969299,
				3.0576479434967,
				3.1109256744385,
				2.3538925647736,
				2.6216983795166,
				1.3562939167023,
				2.4985430240631
			}
		},
		ecr_gameplay_attacking_witch_hunter_backstab_celebration_level = {
			face_animations_n = 5,
			database = "enemies_celebration_level",
			sound_events_n = 5,
			randomize_indexes_n = 0,
			category = "enemy_high_prio",
			dialogue_animations_n = 5,
			randomize_indexes = {},
			localization_strings = {
				"ecr_gameplay_attacking_witch_hunter_backstab_01",
				"ecr_gameplay_attacking_witch_hunter_backstab_02",
				"ecr_gameplay_attacking_witch_hunter_backstab_03",
				"ecr_gameplay_attacking_witch_hunter_backstab_04",
				"ecr_gameplay_attacking_witch_hunter_backstab_05"
			},
			sound_events = {
				"ecr_gameplay_attacking_witch_hunter_backstab_01",
				"ecr_gameplay_attacking_witch_hunter_backstab_02",
				"ecr_gameplay_attacking_witch_hunter_backstab_03",
				"ecr_gameplay_attacking_witch_hunter_backstab_04",
				"ecr_gameplay_attacking_witch_hunter_backstab_05"
			},
			face_animations = {
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
				"dialogue_shout"
			},
			sound_events_duration = {
				2.4290937185287,
				2.6670729517937,
				1.1734999716282,
				2.7596249580383,
				2.238000035286
			}
		},
		ecr_gameplay_bright_wizard_knocked_down_celebration_level = {
			face_animations_n = 5,
			database = "enemies_celebration_level",
			sound_events_n = 5,
			randomize_indexes_n = 0,
			category = "enemy_basic_prio",
			dialogue_animations_n = 5,
			randomize_indexes = {},
			localization_strings = {
				"ecr_gameplay_bright_wizard_knocked_down_01",
				"ecr_gameplay_bright_wizard_knocked_down_02",
				"ecr_gameplay_bright_wizard_knocked_down_03",
				"ecr_gameplay_bright_wizard_knocked_down_04",
				"ecr_gameplay_bright_wizard_knocked_down_05"
			},
			sound_events = {
				"ecr_gameplay_bright_wizard_knocked_down_01",
				"ecr_gameplay_bright_wizard_knocked_down_02",
				"ecr_gameplay_bright_wizard_knocked_down_03",
				"ecr_gameplay_bright_wizard_knocked_down_04",
				"ecr_gameplay_bright_wizard_knocked_down_05"
			},
			face_animations = {
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
				"dialogue_shout"
			},
			sound_events_duration = {
				1.8218854665756,
				2.7576667070389,
				2.8134896159172,
				2.8717396259308,
				1.5437604188919
			}
		},
		ecr_gameplay_running_towards_players_alone_celebration_level = {
			face_animations_n = 8,
			database = "enemies_celebration_level",
			sound_events_n = 8,
			randomize_indexes_n = 0,
			category = "enemy_basic_prio",
			dialogue_animations_n = 8,
			randomize_indexes = {},
			localization_strings = {
				"ecr_gameplay_running_towards_players_alone_01",
				"ecr_gameplay_running_towards_players_alone_02",
				"ecr_gameplay_running_towards_players_alone_03",
				"ecr_gameplay_running_towards_players_alone_04",
				"ecr_gameplay_running_towards_players_alone_05",
				"ecr_gameplay_running_towards_players_alone_06",
				"ecr_gameplay_running_towards_players_alone_07",
				"ecr_gameplay_running_towards_players_alone_08"
			},
			sound_events = {
				"ecr_gameplay_running_towards_players_alone_01",
				"ecr_gameplay_running_towards_players_alone_02",
				"ecr_gameplay_running_towards_players_alone_03",
				"ecr_gameplay_running_towards_players_alone_04",
				"ecr_gameplay_running_towards_players_alone_05",
				"ecr_gameplay_running_towards_players_alone_06",
				"ecr_gameplay_running_towards_players_alone_07",
				"ecr_gameplay_running_towards_players_alone_08"
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
				1.7922794222832,
				2.0397656559944,
				2.6266366839409,
				2.0784459710121,
				1.7603061795235,
				1.7603061795235,
				1.7603061795235,
				1.7703519463539
			}
		},
		ecr_gameplay_attacking_wood_elf_backstab_celebration_level = {
			face_animations_n = 5,
			database = "enemies_celebration_level",
			sound_events_n = 5,
			randomize_indexes_n = 0,
			category = "enemy_high_prio",
			dialogue_animations_n = 5,
			randomize_indexes = {},
			localization_strings = {
				"ecr_gameplay_attacking_wood_elf_backstab_01",
				"ecr_gameplay_attacking_wood_elf_backstab_02",
				"ecr_gameplay_attacking_wood_elf_backstab_03",
				"ecr_gameplay_attacking_wood_elf_backstab_04",
				"ecr_gameplay_attacking_wood_elf_backstab_05"
			},
			sound_events = {
				"ecr_gameplay_attacking_wood_elf_backstab_01",
				"ecr_gameplay_attacking_wood_elf_backstab_02",
				"ecr_gameplay_attacking_wood_elf_backstab_03",
				"ecr_gameplay_attacking_wood_elf_backstab_04",
				"ecr_gameplay_attacking_wood_elf_backstab_05"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			sound_events_duration = {
				1.9373124837875,
				1.9153020679951,
				1.5616964697838,
				2.7061145305634,
				2.17490619421
			}
		},
		esv_gameplay_player_knocked_down_celebration_level = {
			face_animations_n = 8,
			database = "enemies_celebration_level",
			sound_events_n = 8,
			randomize_indexes_n = 0,
			category = "default",
			dialogue_animations_n = 8,
			randomize_indexes = {},
			localization_strings = {
				"esv_gameplay_player_knocked_down_01",
				"esv_gameplay_player_knocked_down_02",
				"esv_gameplay_player_knocked_down_03",
				"esv_gameplay_player_knocked_down_04",
				"esv_gameplay_player_knocked_down_05",
				"esv_gameplay_player_knocked_down_06",
				"esv_gameplay_player_knocked_down_07",
				"esv_gameplay_player_knocked_down_08"
			},
			sound_events = {
				"esv_gameplay_player_knocked_down_01",
				"esv_gameplay_player_knocked_down_02",
				"esv_gameplay_player_knocked_down_03",
				"esv_gameplay_player_knocked_down_04",
				"esv_gameplay_player_knocked_down_05",
				"esv_gameplay_player_knocked_down_06",
				"esv_gameplay_player_knocked_down_07",
				"esv_gameplay_player_knocked_down_08"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			sound_events_duration = {
				1.5284895598888,
				2.5103021264076,
				1.8018333315849,
				1.1937916576862,
				1.8576249480248,
				1.0097083151341,
				1.8910937309265,
				2.817104101181
			}
		},
		ecr_gameplay_attacking_empire_soldier_backstab_celebration_level = {
			face_animations_n = 5,
			database = "enemies_celebration_level",
			sound_events_n = 5,
			randomize_indexes_n = 0,
			category = "enemy_high_prio",
			dialogue_animations_n = 5,
			randomize_indexes = {},
			localization_strings = {
				"ecr_gameplay_attacking_empire_soldier_backstab_01",
				"ecr_gameplay_attacking_empire_soldier_backstab_02",
				"ecr_gameplay_attacking_empire_soldier_backstab_03",
				"ecr_gameplay_attacking_empire_soldier_backstab_04",
				"ecr_gameplay_attacking_empire_soldier_backstab_05"
			},
			sound_events = {
				"ecr_gameplay_attacking_empire_soldier_backstab_01",
				"ecr_gameplay_attacking_empire_soldier_backstab_02",
				"ecr_gameplay_attacking_empire_soldier_backstab_03",
				"ecr_gameplay_attacking_empire_soldier_backstab_04",
				"ecr_gameplay_attacking_empire_soldier_backstab_05"
			},
			face_animations = {
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
				"dialogue_shout"
			},
			sound_events_duration = {
				2.1762812137604,
				2.7345520853996,
				2.9121875166893,
				2.5181354284286,
				2.4682396054268
			}
		},
		ecr_shield_gameplay_running_in_horde_celebration_level = {
			face_animations_n = 12,
			database = "enemies_celebration_level",
			sound_events_n = 12,
			randomize_indexes_n = 0,
			category = "enemy_basic_prio",
			dialogue_animations_n = 12,
			randomize_indexes = {},
			localization_strings = {
				"ecr_shield_gameplay_running_in_horde_67",
				"ecr_shield_gameplay_running_in_horde_68",
				"ecr_shield_gameplay_running_in_horde_69",
				"ecr_shield_gameplay_running_in_horde_70",
				"ecr_shield_gameplay_running_in_horde_71",
				"ecr_shield_gameplay_running_in_horde_72",
				"ecr_shield_gameplay_running_in_horde_73",
				"ecr_shield_gameplay_running_in_horde_74",
				"ecr_shield_gameplay_running_in_horde_75",
				"ecr_shield_gameplay_running_in_horde_76",
				"ecr_shield_gameplay_running_in_horde_77",
				"ecr_shield_gameplay_running_in_horde_78"
			},
			sound_events = {
				"ecr_shield_gameplay_running_in_horde_67",
				"ecr_shield_gameplay_running_in_horde_68",
				"ecr_shield_gameplay_running_in_horde_69",
				"ecr_shield_gameplay_running_in_horde_70",
				"ecr_shield_gameplay_running_in_horde_71",
				"ecr_shield_gameplay_running_in_horde_72",
				"ecr_shield_gameplay_running_in_horde_73",
				"ecr_shield_gameplay_running_in_horde_74",
				"ecr_shield_gameplay_running_in_horde_75",
				"ecr_shield_gameplay_running_in_horde_76",
				"ecr_shield_gameplay_running_in_horde_77",
				"ecr_shield_gameplay_running_in_horde_78"
			},
			face_animations = {
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry",
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
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			sound_events_duration = {
				2.5186876058579,
				2.0309010148048,
				2.0759145021439,
				1.2504355311394,
				1.2504355311394,
				2.0383911728859,
				2.4862543344498,
				2.6159319877624,
				2.0479539036751,
				2.3280524015427,
				2.0893315076828,
				1.7563473582268
			}
		},
		epm_gameplay_startled_celebration_level = {
			face_animations_n = 1,
			database = "enemies_celebration_level",
			sound_events_n = 1,
			category = "enemy_high_prio",
			dialogue_animations_n = 1,
			localization_strings = {
				[1.0] = "Play_plague_monk_alerted_vce"
			},
			sound_events = {
				[1.0] = "Play_plague_monk_alerted_vce"
			},
			face_animations = {
				[1.0] = "face_angry"
			},
			dialogue_animations = {
				[1.0] = "dialogue_shout"
			},
			sound_events_duration = {
				[1.0] = 4.3576783537865
			}
		},
		epwg_gameplay_throwing_globe_celebration_level = {
			face_animations_n = 8,
			database = "enemies_celebration_level",
			sound_events_n = 8,
			randomize_indexes_n = 0,
			category = "enemy_high_prio",
			dialogue_animations_n = 8,
			randomize_indexes = {},
			localization_strings = {
				"epwg_gameplay_throwing_globe_01",
				"epwg_gameplay_throwing_globe_02",
				"epwg_gameplay_throwing_globe_03",
				"epwg_gameplay_throwing_globe_04",
				"epwg_gameplay_throwing_globe_05",
				"epwg_gameplay_throwing_globe_06",
				"epwg_gameplay_throwing_globe_07",
				"epwg_gameplay_throwing_globe_08"
			},
			sound_events = {
				"epwg_gameplay_throwing_globe_01",
				"epwg_gameplay_throwing_globe_02",
				"epwg_gameplay_throwing_globe_03",
				"epwg_gameplay_throwing_globe_04",
				"epwg_gameplay_throwing_globe_05",
				"epwg_gameplay_throwing_globe_06",
				"epwg_gameplay_throwing_globe_07",
				"epwg_gameplay_throwing_globe_08"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			sound_events_duration = {
				1.5051457881927,
				1.9372499585152,
				2.0225104689598,
				1.7481979131699,
				2.0402708053589,
				2.3820000886917,
				2.424364566803,
				1.2459583282471
			}
		},
		ecr_gameplay_dwarf_ranger_knocked_down_celebration_level = {
			face_animations_n = 5,
			database = "enemies_celebration_level",
			sound_events_n = 5,
			randomize_indexes_n = 0,
			category = "enemy_basic_prio",
			dialogue_animations_n = 5,
			randomize_indexes = {},
			localization_strings = {
				"ecr_gameplay_dwarf_ranger_knocked_down_01",
				"ecr_gameplay_dwarf_ranger_knocked_down_02",
				"ecr_gameplay_dwarf_ranger_knocked_down_03",
				"ecr_gameplay_dwarf_ranger_knocked_down_04",
				"ecr_gameplay_dwarf_ranger_knocked_down_05"
			},
			sound_events = {
				"ecr_gameplay_dwarf_ranger_knocked_down_01",
				"ecr_gameplay_dwarf_ranger_knocked_down_02",
				"ecr_gameplay_dwarf_ranger_knocked_down_03",
				"ecr_gameplay_dwarf_ranger_knocked_down_04",
				"ecr_gameplay_dwarf_ranger_knocked_down_05"
			},
			face_animations = {
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
				"dialogue_shout"
			},
			sound_events_duration = {
				1.8516979217529,
				1.7361457943916,
				2.1220937371254,
				2.5133333206177,
				2.7856041789055
			}
		},
		ecr_gameplay_empire_soldier_knocked_down_celebration_level = {
			face_animations_n = 5,
			database = "enemies_celebration_level",
			sound_events_n = 5,
			randomize_indexes_n = 0,
			category = "enemy_basic_prio",
			dialogue_animations_n = 5,
			randomize_indexes = {},
			localization_strings = {
				"ecr_gameplay_empire_soldier_knocked_down_01",
				"ecr_gameplay_empire_soldier_knocked_down_02",
				"ecr_gameplay_empire_soldier_knocked_down_03",
				"ecr_gameplay_empire_soldier_knocked_down_04",
				"ecr_gameplay_empire_soldier_knocked_down_05"
			},
			sound_events = {
				"ecr_gameplay_empire_soldier_knocked_down_01",
				"ecr_gameplay_empire_soldier_knocked_down_02",
				"ecr_gameplay_empire_soldier_knocked_down_03",
				"ecr_gameplay_empire_soldier_knocked_down_04",
				"ecr_gameplay_empire_soldier_knocked_down_05"
			},
			face_animations = {
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
				"dialogue_shout"
			},
			sound_events_duration = {
				2.1526978611946,
				3.0467604398727,
				2.4099375009537,
				2.2888124585152,
				2.1333541870117
			}
		},
		ecr_gameplay_attacking_dwarf_ranger_backstab_celebration_level = {
			face_animations_n = 5,
			database = "enemies_celebration_level",
			sound_events_n = 5,
			randomize_indexes_n = 0,
			category = "enemy_high_prio",
			dialogue_animations_n = 5,
			randomize_indexes = {},
			localization_strings = {
				"ecr_gameplay_attacking_dwarf_ranger_backstab_01",
				"ecr_gameplay_attacking_dwarf_ranger_backstab_02",
				"ecr_gameplay_attacking_dwarf_ranger_backstab_03",
				"ecr_gameplay_attacking_dwarf_ranger_backstab_04",
				"ecr_gameplay_attacking_dwarf_ranger_backstab_05"
			},
			sound_events = {
				"ecr_gameplay_attacking_dwarf_ranger_backstab_01",
				"ecr_gameplay_attacking_dwarf_ranger_backstab_02",
				"ecr_gameplay_attacking_dwarf_ranger_backstab_03",
				"ecr_gameplay_attacking_dwarf_ranger_backstab_04",
				"ecr_gameplay_attacking_dwarf_ranger_backstab_05"
			},
			face_animations = {
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
				"dialogue_shout"
			},
			sound_events_duration = {
				2.4948437213898,
				3.1902604103088,
				2.2633646130562,
				2.3909999728203,
				2.1890311837196
			}
		},
		ecr_gameplay_running_towards_players_celebration_level = {
			face_animations_n = 8,
			database = "enemies_celebration_level",
			sound_events_n = 8,
			randomize_indexes_n = 0,
			category = "enemy_basic_prio",
			dialogue_animations_n = 8,
			randomize_indexes = {},
			localization_strings = {
				"ecr_gameplay_running_towards_players_01",
				"ecr_gameplay_running_towards_players_02",
				"ecr_gameplay_running_towards_players_03",
				"ecr_gameplay_running_towards_players_04",
				"ecr_gameplay_running_towards_players_05",
				"ecr_gameplay_running_towards_players_06",
				"ecr_gameplay_running_towards_players_07",
				"ecr_gameplay_running_towards_players_08"
			},
			sound_events = {
				"ecr_gameplay_running_towards_players_01",
				"ecr_gameplay_running_towards_players_02",
				"ecr_gameplay_running_towards_players_03",
				"ecr_gameplay_running_towards_players_04",
				"ecr_gameplay_running_towards_players_05",
				"ecr_gameplay_running_towards_players_06",
				"ecr_gameplay_running_towards_players_07",
				"ecr_gameplay_running_towards_players_08"
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
				2.0480480194092,
				1.6026059985161,
				1.1005323827267,
				1.6697001159191,
				1.7250832915306,
				2.4445499181747,
				2.9767931699753,
				2.7777337431908
			}
		},
		esv_gameplay_fleeing_celebration_level = {
			face_animations_n = 8,
			database = "enemies_celebration_level",
			sound_events_n = 8,
			randomize_indexes_n = 0,
			category = "default",
			dialogue_animations_n = 8,
			randomize_indexes = {},
			localization_strings = {
				"esv_gameplay_fleeing_01",
				"esv_gameplay_fleeing_02",
				"esv_gameplay_fleeing_03",
				"esv_gameplay_fleeing_04",
				"esv_gameplay_fleeing_05",
				"esv_gameplay_fleeing_06",
				"esv_gameplay_fleeing_07",
				"esv_gameplay_fleeing_08"
			},
			sound_events = {
				"esv_gameplay_fleeing_01",
				"esv_gameplay_fleeing_02",
				"esv_gameplay_fleeing_03",
				"esv_gameplay_fleeing_04",
				"esv_gameplay_fleeing_05",
				"esv_gameplay_fleeing_06",
				"esv_gameplay_fleeing_07",
				"esv_gameplay_fleeing_08"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			sound_events_duration = {
				1.6263333559036,
				1.5198854207993,
				1.7404688000679,
				1.2774687409401,
				2.6736562252045,
				2.2971875667572,
				2.1877083182335,
				2.0095937848091
			}
		},
		ecr_gameplay_startled_celebration_level = {
			face_animations_n = 16,
			database = "enemies_celebration_level",
			sound_events_n = 16,
			randomize_indexes_n = 0,
			category = "enemy_basic_prio",
			dialogue_animations_n = 16,
			randomize_indexes = {},
			localization_strings = {
				"ecr_gameplay_startled_01",
				"ecr_gameplay_startled_02",
				"ecr_gameplay_startled_03",
				"ecr_gameplay_startled_04",
				"ecr_gameplay_startled_05",
				"ecr_gameplay_startled_06",
				"ecr_gameplay_startled_07",
				"ecr_gameplay_startled_08",
				"ecr_gameplay_startled_09",
				"ecr_gameplay_startled_10",
				"ecr_gameplay_startled_11",
				"ecr_gameplay_startled_12",
				"ecr_gameplay_startled_13",
				"ecr_gameplay_startled_14",
				"ecr_gameplay_startled_15",
				"ecr_gameplay_startled_16"
			},
			sound_events = {
				"ecr_gameplay_startled_01",
				"ecr_gameplay_startled_02",
				"ecr_gameplay_startled_03",
				"ecr_gameplay_startled_04",
				"ecr_gameplay_startled_05",
				"ecr_gameplay_startled_06",
				"ecr_gameplay_startled_07",
				"ecr_gameplay_startled_08",
				"ecr_gameplay_startled_09",
				"ecr_gameplay_startled_10",
				"ecr_gameplay_startled_11",
				"ecr_gameplay_startled_12",
				"ecr_gameplay_startled_13",
				"ecr_gameplay_startled_14",
				"ecr_gameplay_startled_15",
				"ecr_gameplay_startled_16"
			},
			face_animations = {
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry",
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
				"dialogue_shout",
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
				1.6208342909813,
				1.9902109503746,
				2.4745980799198,
				2.3556458950043,
				1.5016041994095,
				1.5016041994095,
				1.5847500264645,
				1.8960312008858,
				1.3864062726498,
				1.2408541738987,
				1.350187510252,
				1.8861354589462,
				1.7848542332649,
				1.7719895839691,
				1.5615207850933,
				1.9781666398048
			}
		},
		esr_gameplay_witch_hunter_knocked_down_celebration_level = {
			face_animations_n = 4,
			database = "enemies_celebration_level",
			sound_events_n = 4,
			randomize_indexes_n = 0,
			category = "enemy_basic_prio",
			dialogue_animations_n = 4,
			randomize_indexes = {},
			localization_strings = {
				"esr_gameplay_witch_hunter_knocked_down_1",
				"esr_gameplay_witch_hunter_knocked_down_3",
				"esr_gameplay_witch_hunter_knocked_down_4",
				"esr_gameplay_witch_hunter_knocked_down_5"
			},
			sound_events = {
				"esr_gameplay_witch_hunter_knocked_down_1",
				"esr_gameplay_witch_hunter_knocked_down_3",
				"esr_gameplay_witch_hunter_knocked_down_4",
				"esr_gameplay_witch_hunter_knocked_down_5"
			},
			face_animations = {
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry"
			},
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			sound_events_duration = {
				1.3271155953407,
				1.6900754570961,
				1.9223294854164,
				2.2967426776886
			}
		},
		ecr_gameplay_land_celebration_level = {
			face_animations_n = 1,
			database = "enemies_celebration_level",
			sound_events_n = 1,
			category = "enemy_high_prio",
			dialogue_animations_n = 1,
			localization_strings = {
				[1.0] = "ecr_gameplay_land"
			},
			sound_events = {
				[1.0] = "ecr_gameplay_land"
			},
			face_animations = {
				[1.0] = "face_neutral"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			sound_events_duration = {
				[1.0] = 1.0269469022751
			}
		},
		ecr_gameplay_striking_a_player_celebration_level = {
			face_animations_n = 7,
			database = "enemies_celebration_level",
			sound_events_n = 7,
			randomize_indexes_n = 0,
			category = "enemy_basic_prio",
			dialogue_animations_n = 7,
			randomize_indexes = {},
			localization_strings = {
				"ecr_gameplay_striking_a_player_01",
				"ecr_gameplay_striking_a_player_02",
				"ecr_gameplay_striking_a_player_03",
				"ecr_gameplay_striking_a_player_04",
				"ecr_gameplay_striking_a_player_05",
				"ecr_gameplay_striking_a_player_07",
				"ecr_gameplay_striking_a_player_08"
			},
			sound_events = {
				"ecr_gameplay_striking_a_player_01",
				"ecr_gameplay_striking_a_player_02",
				"ecr_gameplay_striking_a_player_03",
				"ecr_gameplay_striking_a_player_04",
				"ecr_gameplay_striking_a_player_05",
				"ecr_gameplay_striking_a_player_07",
				"ecr_gameplay_striking_a_player_08"
			},
			face_animations = {
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
				"dialogue_shout"
			},
			sound_events_duration = {
				1.6096666455269,
				1.946510374546,
				2.0407500267029,
				2.1811770796776,
				2.1893645524979,
				2.1384791731834,
				2.1038228869438
			}
		},
		esv_gameplay_startled_celebration_level = {
			face_animations_n = 7,
			database = "enemies_celebration_level",
			sound_events_n = 7,
			randomize_indexes_n = 0,
			category = "default",
			dialogue_animations_n = 7,
			randomize_indexes = {},
			localization_strings = {
				"esv_gameplay_startled_02",
				"esv_gameplay_startled_03",
				"esv_gameplay_startled_04",
				"esv_gameplay_startled_05",
				"esv_gameplay_startled_06",
				"esv_gameplay_startled_07",
				"esv_gameplay_startled_08"
			},
			sound_events = {
				"esv_gameplay_startled_02",
				"esv_gameplay_startled_03",
				"esv_gameplay_startled_04",
				"esv_gameplay_startled_05",
				"esv_gameplay_startled_06",
				"esv_gameplay_startled_07",
				"esv_gameplay_startled_08"
			},
			face_animations = {
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
				"dialogue_shout"
			},
			sound_events_duration = {
				1.6041771173477,
				1.4957291483879,
				1.510322868824,
				2.2470833659172,
				2.0863333940506,
				2.5102916359901,
				3.1294895410538
			}
		},
		epwg_gameplay_begin_suicide_run_celebration_level = {
			face_animations_n = 5,
			database = "enemies_celebration_level",
			sound_events_n = 5,
			randomize_indexes_n = 0,
			category = "default",
			dialogue_animations_n = 5,
			randomize_indexes = {},
			localization_strings = {
				"epwg_gameplay_begin_suicide_run_01",
				"epwg_gameplay_begin_suicide_run_02",
				"epwg_gameplay_begin_suicide_run_03",
				"epwg_gameplay_begin_suicide_run_04",
				"epwg_gameplay_begin_suicide_run_05"
			},
			sound_events = {
				"epwg_gameplay_begin_suicide_run_01",
				"epwg_gameplay_begin_suicide_run_02",
				"epwg_gameplay_begin_suicide_run_03",
				"epwg_gameplay_begin_suicide_run_04",
				"epwg_gameplay_begin_suicide_run_05"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			sound_events_duration = {
				1.9501666426659,
				2.8706667423248,
				2.2869374752045,
				2.5426145792007,
				3.5704687833786
			}
		},
		ecr_shield_gameplay_startled_celebration_level = {
			face_animations_n = 18,
			database = "enemies_celebration_level",
			sound_events_n = 18,
			randomize_indexes_n = 0,
			category = "enemy_basic_prio",
			dialogue_animations_n = 18,
			randomize_indexes = {},
			localization_strings = {
				"ecr_shield_startled_018",
				"ecr_shield_startled_001",
				"ecr_shield_startled_002",
				"ecr_shield_startled_003",
				"ecr_shield_startled_004",
				"ecr_shield_startled_005",
				"ecr_shield_startled_006",
				"ecr_shield_startled_007",
				"ecr_shield_startled_008",
				"ecr_shield_startled_009",
				"ecr_shield_startled_010",
				"ecr_shield_startled_011",
				"ecr_shield_startled_012",
				"ecr_shield_startled_013",
				"ecr_shield_startled_014",
				"ecr_shield_startled_015",
				"ecr_shield_startled_016",
				"ecr_shield_startled_017"
			},
			sound_events = {
				"ecr_shield_startled_018",
				"ecr_shield_startled_001",
				"ecr_shield_startled_002",
				"ecr_shield_startled_003",
				"ecr_shield_startled_004",
				"ecr_shield_startled_005",
				"ecr_shield_startled_006",
				"ecr_shield_startled_007",
				"ecr_shield_startled_008",
				"ecr_shield_startled_009",
				"ecr_shield_startled_010",
				"ecr_shield_startled_011",
				"ecr_shield_startled_012",
				"ecr_shield_startled_013",
				"ecr_shield_startled_014",
				"ecr_shield_startled_015",
				"ecr_shield_startled_016",
				"ecr_shield_startled_017"
			},
			face_animations = {
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry",
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
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
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
				1.2780106663704,
				1.3854361176491,
				0.95248731970787,
				1.6816993951798,
				1.5460240244865,
				1.3854361176491,
				1.9171694517136,
				1.9089974761009,
				1.9539339542389,
				2.2183393239975,
				2.1302343606949,
				1.9611137509346,
				2.0042102336884,
				1.5466373562813,
				1.0690948963165,
				1.3535060882568,
				1.7992629408836,
				1.5014122724533
			}
		},
		ecm_gameplay_flanking_players_celebration_level = {
			face_animations_n = 1,
			database = "enemies_celebration_level",
			sound_events_n = 1,
			category = "enemy_high_prio",
			dialogue_animations_n = 1,
			localization_strings = {
				[1.0] = "ecm_gameplay_flanking_players"
			},
			sound_events = {
				[1.0] = "ecm_gameplay_flanking_players"
			},
			face_animations = {
				[1.0] = "face_angry"
			},
			dialogue_animations = {
				[1.0] = "dialogue_shout"
			},
			sound_events_duration = {
				[1.0] = 2.3080244064331
			}
		},
		ecb_gameplay_running_towards_players_celebration_level = {
			face_animations_n = 1,
			database = "enemies_celebration_level",
			sound_events_n = 1,
			category = "enemy_high_prio",
			dialogue_animations_n = 1,
			localization_strings = {
				[1.0] = "ecb_gameplay_running_towards_players"
			},
			sound_events = {
				[1.0] = "ecb_gameplay_running_towards_players"
			},
			face_animations = {
				[1.0] = "face_angry"
			},
			dialogue_animations = {
				[1.0] = "dialogue_shout"
			},
			sound_events_duration = {
				[1.0] = 2.6563487052917
			}
		},
		esv_gameplay_cheering_on_player_kill_celebration_level = {
			face_animations_n = 8,
			database = "enemies_celebration_level",
			sound_events_n = 8,
			randomize_indexes_n = 0,
			category = "enemy_high_prio",
			dialogue_animations_n = 8,
			randomize_indexes = {},
			localization_strings = {
				"esv_gameplay_cheering_on_player_kill_01",
				"esv_gameplay_cheering_on_player_kill_02",
				"esv_gameplay_cheering_on_player_kill_03",
				"esv_gameplay_cheering_on_player_kill_04",
				"esv_gameplay_cheering_on_player_kill_05",
				"esv_gameplay_cheering_on_player_kill_06",
				"esv_gameplay_cheering_on_player_kill_07",
				"esv_gameplay_cheering_on_player_kill_08"
			},
			sound_events = {
				"esv_gameplay_cheering_on_player_kill_01",
				"esv_gameplay_cheering_on_player_kill_02",
				"esv_gameplay_cheering_on_player_kill_03",
				"esv_gameplay_cheering_on_player_kill_04",
				"esv_gameplay_cheering_on_player_kill_05",
				"esv_gameplay_cheering_on_player_kill_06",
				"esv_gameplay_cheering_on_player_kill_07",
				"esv_gameplay_cheering_on_player_kill_08"
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
				2.3126874566078,
				2.4460520744324,
				3.2568438053131,
				4.0063228607178,
				3.1245520114899,
				2.6834479570389,
				2.1040624380112,
				3.7263957262039
			}
		},
		esr_gameplay_fall_celebration_level = {
			face_animations_n = 1,
			database = "enemies_celebration_level",
			sound_events_n = 1,
			category = "enemy_high_prio",
			dialogue_animations_n = 1,
			localization_strings = {
				[1.0] = "esr_gameplay_fall"
			},
			sound_events = {
				[1.0] = "esr_gameplay_fall"
			},
			face_animations = {
				[1.0] = "face_neutral"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			sound_events_duration = {
				[1.0] = 3.5635517239571
			}
		},
		esv_gameplay_running_towards_players_celebration_level = {
			face_animations_n = 7,
			database = "enemies_celebration_level",
			sound_events_n = 7,
			randomize_indexes_n = 0,
			category = "default",
			dialogue_animations_n = 7,
			randomize_indexes = {},
			localization_strings = {
				"esv_gameplay_running_towards_players_01",
				"esv_gameplay_running_towards_players_02",
				"esv_gameplay_running_towards_players_03",
				"esv_gameplay_running_towards_players_04",
				"esv_gameplay_running_towards_players_05",
				"esv_gameplay_running_towards_players_06",
				"esv_gameplay_running_towards_players_08"
			},
			sound_events = {
				"esv_gameplay_running_towards_players_01",
				"esv_gameplay_running_towards_players_02",
				"esv_gameplay_running_towards_players_03",
				"esv_gameplay_running_towards_players_04",
				"esv_gameplay_running_towards_players_05",
				"esv_gameplay_running_towards_players_06",
				"esv_gameplay_running_towards_players_08"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			sound_events_duration = {
				1.5452187657356,
				1.2551562786102,
				2.1086562871933,
				1.522916674614,
				1.2732812166214,
				2.0187187790871,
				1.389031291008
			}
		},
		ecw_gameplay_targeting_dwarf_ranger_celebration_level = {
			face_animations_n = 10,
			database = "enemies_celebration_level",
			sound_events_n = 10,
			randomize_indexes_n = 0,
			category = "enemy_high_prio",
			dialogue_animations_n = 10,
			randomize_indexes = {},
			localization_strings = {
				"ecw_gameplay_targeting_dwarf_ranger_10",
				"ecw_gameplay_targeting_dwarf_ranger_01",
				"ecw_gameplay_targeting_dwarf_ranger_02",
				"ecw_gameplay_targeting_dwarf_ranger_03",
				"ecw_gameplay_targeting_dwarf_ranger_04",
				"ecw_gameplay_targeting_dwarf_ranger_05",
				"ecw_gameplay_targeting_dwarf_ranger_06",
				"ecw_gameplay_targeting_dwarf_ranger_07",
				"ecw_gameplay_targeting_dwarf_ranger_08",
				"ecw_gameplay_targeting_dwarf_ranger_09"
			},
			sound_events = {
				"ecw_gameplay_targeting_dwarf_ranger_10",
				"ecw_gameplay_targeting_dwarf_ranger_01",
				"ecw_gameplay_targeting_dwarf_ranger_02",
				"ecw_gameplay_targeting_dwarf_ranger_03",
				"ecw_gameplay_targeting_dwarf_ranger_04",
				"ecw_gameplay_targeting_dwarf_ranger_05",
				"ecw_gameplay_targeting_dwarf_ranger_06",
				"ecw_gameplay_targeting_dwarf_ranger_07",
				"ecw_gameplay_targeting_dwarf_ranger_08",
				"ecw_gameplay_targeting_dwarf_ranger_09"
			},
			face_animations = {
				"face_angry",
				"face_angry",
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
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			sound_events_duration = {
				3.0581457614899,
				2.5530624389648,
				2.5530624389648,
				2.9329583644867,
				1.5283750295639,
				2.356062412262,
				2.7996249198914,
				2.6886250972748,
				4.7664999961853,
				4.0580415725708
			}
		}
	})
end
