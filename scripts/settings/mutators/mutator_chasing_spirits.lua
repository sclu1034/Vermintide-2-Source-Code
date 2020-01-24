local MAX_RAYCASTS = 5

return {
	delay_time = 2,
	display_name = "chasing_spirits_mutator_name",
	chase_time = 5,
	icon = "mutator_icon_death_spirits",
	description = "chasing_spirits_mutator_desc",
	chase_speed = 1,
	spirit_power_level = 200,
	spawn_spirit = function (data, spawn_unit, target_unit)
		local spawn_position = Vector3.add(Unit.local_position(spawn_unit, 0), Vector3(0, 0, data.offset))
		local spirit_unit = data.unit_spawner:spawn_network_unit(data.spirit_unit_name, "position_synched_dummy_unit", data.extension_init_data, spawn_position)
		local spirit = {
			follow_unit = target_unit,
			unit = spirit_unit,
			chase_time = data.chase_time,
			delay_time = data.delay_time
		}
		local spirit_id = data.network_manager:unit_game_object_id(spirit_unit)

		data.audio_system:play_audio_position_event("Play_winds_death_gameplay_spirit_release", spawn_position)
		data.audio_system:play_audio_unit_event("Play_winds_death_gameplay_spirit_loop", spirit_unit)

		data.spirits[spirit_id] = spirit
	end,
	update_spirits = function (context, data, dt, t)
		local spirits = data.spirits

		while data.num_raycasts <= MAX_RAYCASTS do
			local current_unit = data.current_unit
			local spirit, id = nil

			if current_unit == nil or spirits[current_unit] then
				id, spirit = next(spirits, current_unit)
			end

			local unit = spirit and spirit.unit

			if unit and spirit.delay_time == 0 then
				local physics_world = World.physics_world(context.world)
				local spirit_position = Unit.local_position(unit, 0)
				local player_unit = spirit.follow_unit
				local player_pos = POSITION_LOOKUP[player_unit]
				local direction = player_pos - spirit_position
				direction = Vector3.normalize(direction)
				local length = 0.75

				PhysicsWorld.prepare_actors_for_raycast(physics_world, spirit_position, direction, 0.1)

				local result = PhysicsWorld.immediate_raycast(physics_world, spirit_position, direction, length, "all", "collision_filter", "filter_player_hit_box_check")

				if result then
					local num_hits = #result

					for i = 1, num_hits, 1 do
						local hit = result[i]
						local hit_actor = hit[4]
						local hit_unit = Actor.unit(hit_actor)

						if hit_unit == spirit.follow_unit then
							local damage_profile = DamageProfileTemplates.death_explosion
							local power_level = data.spirit_power_level
							local hit_direction = spirit_position - player_pos
							hit_direction = Vector3.normalize(hit_direction)

							DamageUtils.add_damage_network_player(damage_profile, nil, power_level, player_unit, unit, "full", player_pos, hit_direction, "undefined", nil, 0, false, nil, false, 0, 1)

							local rotation = Unit.world_rotation(unit, 0)
							local area_damage_system = Managers.state.entity:system("area_damage_system")

							area_damage_system:create_explosion(unit, spirit_position, rotation, "death_spirit_bomb", 1, "undefined", 0, false)
							data.audio_system:play_audio_unit_event("Play_winds_death_gameplay_spirit_explode", unit)
							Managers.state.unit_spawner:mark_for_deletion(unit)

							data.spirits[id] = nil
						end
					end
				end

				data.num_raycasts = data.num_raycasts + 1
				data.current_unit = id
			else
				data.current_unit = nil

				break
			end
		end

		data.num_raycasts = 0

		for id, spirit in pairs(spirits) do
			local unit = spirit.unit

			if Unit.alive(unit) then
				if spirit.delay_time == 0 then
					local spirit_position = Unit.local_position(unit, 0)
					local player_unit = spirit.follow_unit
					local player_pos = POSITION_LOOKUP[player_unit]

					if player_pos then
						spirit.chase_time = math.max(spirit.chase_time - dt, 0)
						local unit_position = Unit.local_position(unit, 0)
						local chase_target_position = player_pos + Vector3(0, 0, 1)
						local direction_vector = chase_target_position - unit_position
						direction_vector = Vector3.normalize(direction_vector)
						local move_vector = direction_vector * dt * data.chase_speed
						local new_position = unit_position + move_vector

						Unit.set_local_position(unit, 0, new_position)

						if spirit.chase_time == 0 then
							local rotation = Unit.world_rotation(unit, 0)
							local area_damage_system = Managers.state.entity:system("area_damage_system")

							area_damage_system:create_explosion(unit, spirit_position, rotation, "death_spirit_bomb", 1, "undefined", 0, false)
							data.audio_system:play_audio_unit_event("Play_winds_death_gameplay_spirit_explode", unit)
							Managers.state.unit_spawner:mark_for_deletion(unit)

							data.spirits[id] = nil
						end
					end
				else
					spirit.delay_time = math.max(spirit.delay_time - dt, 0)
				end
			else
				data.spirits[id] = nil
			end
		end
	end,
	update_player_buff = function (context, data)
		local players = Managers.player:players()

		for _, player in pairs(players) do
			if player.player_unit == nil then
				return
			end

			local health_extension = ScriptUnit.extension(player.player_unit, "health_system")
			local current_health_percent = health_extension:current_health_percent()
			local buff_extension = ScriptUnit.has_extension(player.player_unit, "buff_system")
			local unit_id = data.network_manager:unit_game_object_id(player.player_unit)
			local has_buff = buff_extension:has_buff_type("death_attack_speed_buff")

			if not has_buff then
				if current_health_percent < 0.2 then
					local buff_id = data.buff_system:add_buff(player.player_unit, "mutator_death_attack_speed_player_buff", player.player_unit, true)
					data.player_buffs[unit_id] = buff_id
				end
			elseif current_health_percent >= 0.2 then
				data.buff_system:remove_server_controlled_buff(player.player_unit, data.player_buffs[unit_id])

				data.player_buffs[unit_id] = nil
			end
		end
	end,
	server_ai_hit_by_player_function = function (context, data, hit_unit, attacker_unit, hit_data)
		local breed = Unit.get_data(hit_unit, "breed")

		if breed.boss then
			local network_manager = data.network_manager
			local boss_id = network_manager:unit_game_object_id(hit_unit)

			if not data.boss_drop_timers[boss_id] then
				data.boss_drop_timers[boss_id] = {
					timer = data.boss_drop_cooldown
				}
			end

			if data.boss_drop_cooldown <= data.boss_drop_timers[boss_id].timer then
				data.template.spawn_spirit(data, hit_unit, attacker_unit)

				data.boss_drop_timers[boss_id].timer = 0
			end
		end
	end,
	server_player_hit_function = function (context, data, hit_unit, attacker_unit, hit_data)
		local damage_type = hit_data[2]
		local is_player_unit = DamageUtils.is_player_unit(hit_unit)

		if damage_type == "death_explosion" and is_player_unit then
			local network_manager = data.network_manager
			local heal_type_id = NetworkLookup.heal_types.mutator
			local damage_amount = hit_data[1]
			local unit_go_id = network_manager:unit_game_object_id(hit_unit)

			network_manager.network_transmit:send_rpc_server("rpc_request_heal", unit_go_id, damage_amount, heal_type_id)
		end
	end,
	server_ai_killed_function = function (context, data, killed_unit, killer_unit, death_data)
		if not ScriptUnit.has_extension(killer_unit, "status_system") then
			return
		end

		data.template.spawn_spirit(data, killed_unit, killer_unit)
	end,
	server_players_left_safe_zone = function (context, data)
		data.has_left_safe_zone = true
	end,
	server_start_function = function (context, data)
		printf("[Mutator]: mutator_start")

		data.spirit_power_level = data.template.spirit_power_level
		data.delay_time = data.template.delay_time
		data.chase_speed = data.template.chase_speed
		data.chase_time = data.template.chase_time
		data.audio_system = Managers.state.entity:system("audio_system")
		data.network_manager = Managers.state.network
		data.buff_system = Managers.state.entity:system("buff_system")
		data.unit_spawner = Managers.state.unit_spawner
		data.boss_drop_timers = {}
		data.boss_drop_cooldown = 2
		data.player_buffs = {}
		data.spirits = {}
		data.spirit_unit_name = "units/fx/vfx_animation_death_spirit_02"
		data.extension_init_data = {}
		data.offset = 1
		data.num_raycasts = 0
	end,
	server_stop_function = function (context, data)
		local spirits = data.spirits

		for id, spirit in pairs(spirits) do
			local unit = spirit.unit
			local spirit_position = Unit.local_position(unit, 0)
			local rotation = Unit.world_rotation(unit, 0)
			local area_damage_system = Managers.state.entity:system("area_damage_system")

			area_damage_system:create_explosion(unit, spirit_position, rotation, "death_spirit_bomb", 1, "undefined", 0, false)
			data.audio_system:play_audio_unit_event("Play_winds_death_gameplay_spirit_explode", unit)
			Managers.state.unit_spawner:mark_for_deletion(unit)

			data.spirits[id] = nil
		end
	end,
	server_update_function = function (context, data, dt, t)
		local game_session = Network.game_session()

		if game_session == nil then
			return
		end

		for _, boss in pairs(data.boss_drop_timers) do
			boss.timer = boss.timer + dt
		end

		data.template.update_spirits(context, data, dt, t)
	end
}
