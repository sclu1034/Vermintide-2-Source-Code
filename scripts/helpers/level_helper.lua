LevelHelper = LevelHelper or {}
LevelHelper.INGAME_WORLD_NAME = "level_world"

LevelHelper.current_level_settings = function (self)
	local level_key = Managers.state.game_mode:level_key()

	return LevelSettings[level_key]
end

LevelHelper.current_level = function (self, world)
	local level_settings = self:current_level_settings()
	local level = ScriptWorld.level(world, level_settings.level_name)

	return level
end

LevelHelper.get_environment_variation_id = function (self, level_key)
	local backend_manager = Managers.backend
	local environment_variations = backend_manager:get_title_data("environment_variations")

	if not environment_variations then
		return self:get_random_variation_id(level_key)
	end

	environment_variations = cjson.decode(environment_variations)
	local level_environment_variations = environment_variations[level_key]

	if not level_environment_variations then
		return 0
	end

	local type = level_environment_variations.type

	if type == "random" then
		return self:get_random_variation_id(level_key)
	elseif type == "specific" then
		local level_settings = LevelSettings[level_key]
		local existing_variations = level_settings and level_settings.environment_variations

		if not existing_variations or #existing_variations < 1 then
			return 0
		end

		local variations = level_environment_variations.variations
		local selected_variation_string, i, id = nil

		while #variations > 0 do
			i = math.random(1, #variations)
			selected_variation_string = variations[i]

			if selected_variation_string == "default" then
				return 0
			end

			id = table.find(existing_variations, selected_variation_string)

			if id then
				return id
			else
				table.remove(variations, i)
			end
		end
	elseif type == "default" then
		return 0
	end

	return 0
end

LevelHelper.get_random_variation_id = function (self, level_key)
	local settings = LevelSettings[level_key]
	local variations = settings and settings.environment_variations

	return (variations and math.random(0, #variations)) or 0
end

LevelHelper.flow_event = function (self, world, event)
	local level_settings = self:current_level_settings()
	local level = ScriptWorld.level(world, level_settings.level_name)

	Level.trigger_event(level, event)
end

LevelHelper.set_flow_parameter = function (self, world, name, value)
	local level_settings = self:current_level_settings()
	local level = ScriptWorld.level(world, level_settings.level_name)

	Level.set_flow_variable(level, name, value)
end

LevelHelper.unit_index = function (self, world, unit)
	local level = self:current_level(world)

	return Level.unit_index(level, unit)
end

LevelHelper.unit_by_index = function (self, world, index)
	local level = self:current_level(world)

	return Level.unit_by_index(level, index)
end

return
