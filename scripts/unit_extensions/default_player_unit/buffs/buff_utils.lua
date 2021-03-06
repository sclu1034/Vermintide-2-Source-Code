BuffUtils = BuffUtils or {}

if script_data then
	script_data.debug_legendary_traits = script_data.debug_legendary_traits or Development.parameter("debug_legendary_traits")
end

BuffUtils.apply_buff_tweak_data = function (buffs, tweak_data)
	for name, buff_data in pairs(buffs) do
		local data = tweak_data[name]

		if data then
			table.merge(buff_data.buffs[1], data)
		end
	end
end

BuffUtils.copy_talent_buff_names = function (buffs)
	for name, buff_data in pairs(buffs) do
		local buffs = buff_data.buffs

		fassert(#buffs == 1, "talent buff has more than one sub buff, add multiple buffs from the talent instead")

		local buff = buffs[1]
		buff.name = name
	end
end

BuffUtils.get_max_stacks = function (buff_name, buff_index)
	local buffs = BuffTemplates[buff_name].buffs
	local max_stacks = buffs[buff_index or 1].max_stacks

	return max_stacks or nil
end

BuffUtils.remove_stacked_buffs = function (buffed_unit, stacked_buff_ids)
	local buff_extension = buffed_unit and ScriptUnit.has_extension(buffed_unit, "buff_system")

	if not buff_extension then
		return
	end

	for _, buff_id in ipairs(stacked_buff_ids) do
		buff_extension:remove_buff(buff_id)
	end

	table.clear(stacked_buff_ids)
end

BuffUtils.buffs_from_rpc_params = function (num_buffs, buff_ids, buff_data_type_ids, buff_values)
	local lookup_templates = NetworkLookup.buff_templates
	local lookup_data_types = NetworkLookup.buff_data_types
	local buffs = {}

	for i = 1, num_buffs, 1 do
		local id = buff_ids[i]
		local data_type_id = buff_data_type_ids[i]
		local value = buff_values[i]
		local name = lookup_templates[id]
		local data_type = lookup_data_types[data_type_id]
		buffs[name] = {
			[data_type] = value
		}
	end

	return buffs
end

BuffUtils.buffs_to_rpc_params = function (buffs)
	local lookup_templates = NetworkLookup.buff_templates
	local lookup_data_types = NetworkLookup.buff_data_types
	local num_buffs = 0
	local buff_ids = {}
	local buff_data_type_ids = {}
	local buff_values = {}

	for name, data in pairs(buffs) do
		num_buffs = num_buffs + 1
		local id = lookup_templates[name]
		local data_type, value = next(data)
		local data_type_id = lookup_data_types[data_type]
		buff_ids[num_buffs] = id
		buff_data_type_ids[num_buffs] = data_type_id
		buff_values[num_buffs] = value or 1
	end

	return {
		num_buffs,
		buff_ids,
		buff_data_type_ids,
		buff_values
	}
end

local unit_node = Unit.node

local function _get_particle_link_node(fx, link_target)
	return (fx.link_node and unit_node(link_target, fx.link_node)) or 0
end

BuffUtils.create_attached_particles = function (world, particle_fx, unit, is_first_person)
	if not world or not particle_fx then
		return nil
	end

	local stop_fx = {}
	local destroy_fx = {}
	local fx_ids = {
		stop_fx = stop_fx,
		destroy_fx = destroy_fx
	}

	for i = 1, #particle_fx, 1 do
		local fx = particle_fx[i]

		if (is_first_person and fx.first_person) or (not is_first_person and fx.third_person) then
			local link_target = unit

			if link_target then
				local node_id = _get_particle_link_node(fx, link_target)
				local fx_id = ScriptWorld.create_particles_linked(world, fx.effect, link_target, node_id, fx.orphaned_policy)

				if fx.continuous then
					if fx.destroy_policy == "stop" then
						stop_fx[#stop_fx + 1] = fx_id
					else
						destroy_fx[#destroy_fx + 1] = fx_id
					end
				end
			end
		end
	end

	return fx_ids
end

BuffUtils.destroy_attached_particles = function (world, fx_ids)
	if fx_ids and world then
		local destroy_fx = fx_ids.destroy_fx

		if destroy_fx then
			for i = 1, #destroy_fx, 1 do
				World.destroy_particles(world, destroy_fx[i])
			end
		end

		local stop_fx = fx_ids.stop_fx

		if stop_fx then
			for i = 1, #stop_fx, 1 do
				World.stop_spawning_particles(world, stop_fx[i])
			end
		end
	end
end

return
