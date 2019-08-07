ActionBeam = class(ActionBeam, ActionBase)

ActionBeam.init = function (self, world, item_name, is_server, owner_unit, damage_unit, first_person_unit, weapon_unit, weapon_system)
	ActionBeam.super.init(self, world, item_name, is_server, owner_unit, damage_unit, first_person_unit, weapon_unit, weapon_system)

	if ScriptUnit.has_extension(weapon_unit, "ammo_system") then
		self.ammo_extension = ScriptUnit.extension(weapon_unit, "ammo_system")
	end

	self.inventory_extension = ScriptUnit.extension(owner_unit, "inventory_system")
	self.overcharge_extension = ScriptUnit.extension(owner_unit, "overcharge_system")
	self._rumble_effect_id = false
	self.unit_id = Managers.state.network.unit_storage:go_id(owner_unit)
end

ActionBeam.client_owner_start_action = function (self, new_action, t, chain_action_data, power_level)
	ActionBeam.super.client_owner_start_action(self, new_action, t, chain_action_data, power_level)

	self.current_action = new_action
	local owner_unit = self.owner_unit
	local buff_extension = ScriptUnit.extension(owner_unit, "buff_system")
	local status_extension = ScriptUnit.extension(owner_unit, "status_system")
	self.owner_buff_extension = buff_extension
	self.status_extension = status_extension
	self.state = "waiting_to_shoot"
	self.time_to_shoot = t + new_action.fire_time
	self.current_target = nil
	self.damage_timer = 0
	self.overcharge_timer = 0
	self.ramping_interval = 1
	self.consecutive_hits = 0
	self.power_level = power_level
	self._is_critical_strike = false
	self._num_hits = 0
	local beam_effect = new_action.particle_effect_trail
	local beam_effect_3p = new_action.particle_effect_trail_3p
	local beam_end_effect = new_action.particle_effect_target
	local beam_effect_lookup_id = NetworkLookup.effects[beam_effect_3p]
	local beam_end_effect_lookup_id = NetworkLookup.effects[beam_end_effect]
	local world = self.world

	if not self.owner_player.bot_player then
		self.beam_effect_id = World.create_particles(world, beam_effect, Vector3.zero())
		self.beam_effect_length_id = World.find_particles_variable(world, beam_effect, "trail_length")
	end

	self.beam_end_effect_id = World.create_particles(world, beam_end_effect, Vector3.zero())
	local go_id = self.unit_id

	if self.is_server or LEVEL_EDITOR_TEST then
		self.network_transmit:send_rpc_clients("rpc_start_beam", go_id, beam_effect_lookup_id, beam_end_effect_lookup_id, new_action.range)

		if self.owner_player.bot_player then
			self.network_transmit:queue_local_rpc("rpc_start_beam", go_id, beam_effect_lookup_id, beam_end_effect_lookup_id, new_action.range)
		end
	else
		self.network_transmit:send_rpc_server("rpc_start_beam", go_id, beam_effect_lookup_id, beam_end_effect_lookup_id, new_action.range)
	end

	local overcharge_type = new_action.overcharge_type

	if overcharge_type then
		local overcharge_amount = PlayerUnitStatusSettings.overcharge_values[overcharge_type]

		self.overcharge_extension:add_charge(overcharge_amount)
	end

	self.overcharge_target_hit = false

	self:_start_charge_sound()
end

ActionBeam._start_charge_sound = function (self)
	local current_action = self.current_action
	local owner_unit = self.owner_unit
	local owner_player = self.owner_player
	local is_bot = owner_player and owner_player.bot_player
	local is_local = owner_player and not owner_player.remote
	local wwise_world = self.wwise_world

	if is_local and not is_bot then
		local wwise_playing_id, wwise_source_id = ActionUtils.start_charge_sound(wwise_world, self.weapon_unit, owner_unit, current_action)
		self.charging_sound_id = wwise_playing_id
		self.wwise_source_id = wwise_source_id
	end

	ActionUtils.play_husk_sound_event(wwise_world, current_action.charge_sound_husk_name, owner_unit, is_bot)
end

ActionBeam._stop_charge_sound = function (self)
	local current_action = self.current_action
	local owner_unit = self.owner_unit
	local owner_player = self.owner_player
	local is_bot = owner_player and owner_player.bot_player
	local is_local = owner_player and not owner_player.remote
	local wwise_world = self.wwise_world

	if is_local and not is_bot then
		ActionUtils.stop_charge_sound(wwise_world, self.charging_sound_id, self.wwise_source_id, current_action)

		self.charging_sound_id = nil
		self.wwise_source_id = nil
	end

	ActionUtils.play_husk_sound_event(wwise_world, current_action.charge_sound_husk_stop_event, owner_unit, is_bot)
end

local INDEX_POSITION = 1
local INDEX_ACTOR = 4

ActionBeam.client_owner_post_update = function (self, dt, t, world, can_damage)
	local owner_unit = self.owner_unit
	local current_action = self.current_action
	local is_server = self.is_server
	local input_extension = ScriptUnit.extension(self.owner_unit, "input_system")
	local buff_extension = self.owner_buff_extension
	local status_extension = self.status_extension

	if not status_extension:is_zooming() then
		status_extension:set_zooming(true)
	end

	if buff_extension:has_buff_type("increased_zoom") and status_extension:is_zooming() and input_extension:get("action_three") then
		status_extension:switch_variable_zoom(current_action.buffed_zoom_thresholds)
	elseif current_action.zoom_thresholds and status_extension:is_zooming() and input_extension:get("action_three") then
		status_extension:switch_variable_zoom(current_action.zoom_thresholds)
	end

	if self.state == "waiting_to_shoot" and self.time_to_shoot <= t then
		self.state = "shooting"
	end

	self.overcharge_timer = self.overcharge_timer + dt

	if current_action.overcharge_interval <= self.overcharge_timer then
		local overcharge_amount = PlayerUnitStatusSettings.overcharge_values.charging

		self.overcharge_extension:add_charge(overcharge_amount)

		self._is_critical_strike = ActionUtils.is_critical_strike(owner_unit, current_action, t)
		self.overcharge_timer = 0
		self.overcharge_target_hit = false
	end

	if self.state == "shooting" then
		if not Managers.player:owner(self.owner_unit).bot_player and not self._rumble_effect_id then
			self._rumble_effect_id = Managers.state.controller_features:add_effect("persistent_rumble", {
				rumble_effect = "reload_start"
			})
		end

		local first_person_extension = ScriptUnit.extension(owner_unit, "first_person_system")
		local current_position = first_person_extension:current_position()
		local current_rotation = first_person_extension:current_rotation()
		local direction = Quaternion.forward(current_rotation)
		local physics_world = World.get_data(self.world, "physics_world")
		local range = current_action.range or 30
		local result = PhysicsWorld.immediate_raycast_actors(physics_world, current_position, direction, range, "static_collision_filter", "filter_player_ray_projectile_static_only", "dynamic_collision_filter", "filter_player_ray_projectile_ai_only", "dynamic_collision_filter", "filter_player_ray_projectile_hitbox_only")
		local beam_end_position = current_position + direction * range
		local hit_unit, hit_position = nil

		if result then
			local difficulty_settings = Managers.state.difficulty:get_difficulty_settings()
			local owner_player = self.owner_player
			local allow_friendly_fire = DamageUtils.allow_friendly_fire_ranged(difficulty_settings, owner_player)

			for _, hit_data in pairs(result) do
				local potential_hit_position = hit_data[INDEX_POSITION]
				local hit_actor = hit_data[INDEX_ACTOR]
				local potential_hit_unit = Actor.unit(hit_actor)
				potential_hit_unit, hit_actor = ActionUtils.redirect_shield_hit(potential_hit_unit, hit_actor)

				if potential_hit_unit ~= owner_unit then
					local breed = Unit.get_data(potential_hit_unit, "breed")
					local hit_enemy = nil

					if breed then
						local is_enemy = DamageUtils.is_enemy(owner_unit, potential_hit_unit)
						local node = Actor.node(hit_actor)
						local hit_zone = breed.hit_zones_lookup[node]
						local hit_zone_name = hit_zone.name
						hit_enemy = (allow_friendly_fire or is_enemy) and hit_zone_name ~= "afro"
					else
						hit_enemy = true
					end

					if hit_enemy then
						hit_position = potential_hit_position - direction * 0.15
						hit_unit = potential_hit_unit

						break
					end
				end
			end

			if hit_position then
				beam_end_position = hit_position
			end

			if hit_unit then
				if hit_unit ~= self.current_target then
					self.ramping_interval = 0.4
					self.damage_timer = 0
					self._num_hits = 0
				end

				local health_extension = ScriptUnit.has_extension(hit_unit, "health_system")

				if self.damage_timer >= current_action.damage_interval * self.ramping_interval then
					Managers.state.entity:system("ai_system"):alert_enemies_within_range(owner_unit, POSITION_LOOKUP[owner_unit], 5)

					self.damage_timer = 0

					if health_extension then
						self.ramping_interval = math.clamp(self.ramping_interval * 1.4, 0.45, 1.5)
					end
				end

				if self.damage_timer == 0 then
					local is_critical_strike = self._is_critical_strike
					local hud_extension = ScriptUnit.has_extension(owner_unit, "hud_system")

					self:_handle_critical_strike(is_critical_strike, buff_extension, hud_extension, first_person_extension, nil, nil)

					if health_extension then
						local override_damage_profile = nil
						local power_level = self.power_level
						power_level = power_level * self.ramping_interval

						if hit_unit ~= self.current_target then
							self.consecutive_hits = 0
							power_level = power_level * 0.5
							override_damage_profile = current_action.initial_damage_profile or current_action.damage_profile or "default"
						else
							self.consecutive_hits = self.consecutive_hits + 1

							if self.consecutive_hits < 3 then
								override_damage_profile = current_action.initial_damage_profile or current_action.damage_profile or "default"
							end
						end

						first_person_extension:play_hud_sound_event("staff_beam_hit_enemy", nil, false)

						local check_buffs = self._num_hits > 1

						DamageUtils.process_projectile_hit(world, self.item_name, owner_unit, is_server, result, current_action, direction, check_buffs, nil, nil, self._is_critical_strike, power_level, override_damage_profile)

						self._num_hits = self._num_hits + 1

						if not Managers.player:owner(self.owner_unit).bot_player then
							Managers.state.controller_features:add_effect("rumble", {
								rumble_effect = "hit_character_light"
							})
						end

						if health_extension:is_alive() then
							local overcharge_amount = PlayerUnitStatusSettings.overcharge_values[current_action.overcharge_type]

							if is_critical_strike and buff_extension:has_buff_perk("no_overcharge_crit") then
								overcharge_amount = 0
							end

							self.overcharge_extension:add_charge(overcharge_amount * self.ramping_interval)
						end
					end
				end

				self.damage_timer = self.damage_timer + dt
			end
		end

		if self.beam_effect_id then
			local weapon_unit = self.weapon_unit
			local end_of_staff_position = Unit.world_position(weapon_unit, Unit.node(weapon_unit, "fx_muzzle"))
			local distance = Vector3.distance(end_of_staff_position, beam_end_position)
			local beam_direction = Vector3.normalize(end_of_staff_position - beam_end_position)
			local rotation = Quaternion.look(beam_direction)

			World.move_particles(world, self.beam_effect_id, beam_end_position, rotation)
			World.set_particles_variable(world, self.beam_effect_id, self.beam_effect_length_id, Vector3(0.3, distance, 0))
			World.move_particles(world, self.beam_end_effect_id, beam_end_position, rotation)
		end

		self.current_target = hit_unit
	end
end

ActionBeam._stop_fx = function (self)
	local world = self.world

	if self.beam_end_effect_id then
		World.destroy_particles(world, self.beam_end_effect_id)

		self.beam_end_effect_id = nil
	end

	if self.beam_effect_id then
		World.destroy_particles(world, self.beam_effect_id)

		self.beam_effect_id = nil
	end

	if self._rumble_effect_id then
		Managers.state.controller_features:stop_effect(self._rumble_effect_id)

		self._rumble_effect_id = nil
	end

	self:_stop_charge_sound()
end

ActionBeam._stop_client_vfx = function (self)
	local go_id = self.unit_id

	if self.is_server or LEVEL_EDITOR_TEST then
		self.network_transmit:send_rpc_clients("rpc_end_beam", go_id)

		if self.owner_player.bot_player then
			self.network_transmit:queue_local_rpc("rpc_end_beam", go_id)
		end
	else
		self.network_transmit:send_rpc_server("rpc_end_beam", go_id)
	end
end

ActionBeam.finish = function (self, reason)
	self.status_extension:set_zooming(false)
	self:_stop_client_vfx()
	self:_stop_fx()
	self.owner_buff_extension:trigger_procs("on_spell_used", self.current_action)

	return {
		beam_consecutive_hits = math.max(self.consecutive_hits - 1, 0)
	}
end

ActionBeam.destroy = function (self)
	self:_stop_client_vfx()
	self:_stop_fx()
end

return
