local definitions = local_require("scripts/ui/views/start_game_view/windows/definitions/start_game_window_difficulty_console_definitions")
local widget_definitions = definitions.widgets
local scenegraph_definition = definitions.scenegraph_definition
local animation_definitions = definitions.animation_definitions
local STARTING_DIFFICULTY_INDEX = 1
local SELECTION_INPUT = "confirm_press"
StartGameWindowDifficultyConsole = class(StartGameWindowDifficultyConsole)
StartGameWindowDifficultyConsole.NAME = "StartGameWindowDifficultyConsole"

StartGameWindowDifficultyConsole.on_enter = function (self, params, offset)
	print("[StartGameWindow] Enter Substate StartGameWindowDifficultyConsole")

	self.parent = params.parent
	local ingame_ui_context = params.ingame_ui_context
	self.ui_renderer = ingame_ui_context.ui_renderer
	self.ui_top_renderer = ingame_ui_context.ui_top_renderer
	self.input_manager = ingame_ui_context.input_manager
	self.statistics_db = ingame_ui_context.statistics_db
	self.render_settings = {
		snap_pixel_positions = true
	}
	local player_manager = Managers.player
	local local_player = player_manager:local_player()
	self._stats_id = local_player:stats_id()
	self.player_manager = player_manager
	self.peer_id = ingame_ui_context.peer_id
	self._animations = {}

	self:create_ui_elements(params, offset)
	self:_setup_difficulties()

	local difficulty_key = self.parent:get_difficulty_option() or Managers.state.difficulty:get_difficulty()

	self:_update_selected_difficulty_option(difficulty_key)

	if difficulty_key then
		self._difficulty_navigation_id = self:_get_difficulty_navigation_id_from_difficulty_key(difficulty_key)
	else
		self._difficulty_navigation_id = 1
	end

	self:_start_transition_animation("on_enter")
end

StartGameWindowDifficultyConsole._start_transition_animation = function (self, animation_name)
	local params = {
		render_settings = self.render_settings
	}
	local widgets = {}
	local anim_id = self.ui_animator:start_animation(animation_name, widgets, scenegraph_definition, params)
	self._animations[animation_name] = anim_id
end

StartGameWindowDifficultyConsole.create_ui_elements = function (self, params, offset)
	self.ui_scenegraph = UISceneGraph.init_scenegraph(scenegraph_definition)
	local widgets = {}
	local widgets_by_name = {}

	for name, widget_definition in pairs(widget_definitions) do
		local widget = UIWidget.init(widget_definition)
		widgets[#widgets + 1] = widget
		widgets_by_name[name] = widget
	end

	self._widgets = widgets
	self._widgets_by_name = widgets_by_name

	UIRenderer.clear_scenegraph_queue(self.ui_renderer)

	self.ui_animator = UIAnimator:new(self.ui_scenegraph, animation_definitions)

	if offset then
		local window_position = self.ui_scenegraph.window.local_position
		window_position[1] = window_position[1] + offset[1]
		window_position[2] = window_position[2] + offset[2]
		window_position[3] = window_position[3] + offset[3]
	end
end

StartGameWindowDifficultyConsole._setup_difficulties = function (self)
	local difficulties = self:_get_difficulty_options()
	local widgets_by_name = self._widgets_by_name
	local widget_index_counter = 1
	local widget_prefix = "difficulty_option_"

	for i = STARTING_DIFFICULTY_INDEX, #difficulties, 1 do
		local difficulty_key = difficulties[i]
		local difficulty_settings = DifficultySettings[difficulty_key]
		local display_name = difficulty_settings.display_name
		local display_image = difficulty_settings.display_image
		local frame_texture = difficulty_settings.completed_frame_texture
		local widget_name = widget_prefix .. widget_index_counter
		local widget = widgets_by_name[widget_name]
		local content = widget.content
		content.difficulty_key = difficulty_key
		content.text_title = Localize(display_name)
		content.icon_texture = display_image
		content.icon_frame_texture = frame_texture
		widget_index_counter = widget_index_counter + 1
	end
end

StartGameWindowDifficultyConsole._get_difficulty_options = function (self)
	return Managers.state.difficulty:get_level_difficulties()
end

StartGameWindowDifficultyConsole.on_exit = function (self, params)
	print("[StartGameWindow] Exit Substate StartGameWindowDifficultyConsole")

	self.ui_animator = nil

	self.parent:set_input_description(nil)
end

StartGameWindowDifficultyConsole.update = function (self, dt, t)
	self:_update_animations(dt)
	self:_handle_input(dt, t)
	self:_update_difficulty_lock()
	self:draw(dt)
end

StartGameWindowDifficultyConsole.post_update = function (self, dt, t)
	return
end

StartGameWindowDifficultyConsole._update_animations = function (self, dt)
	local ui_animator = self.ui_animator

	self.ui_animator:update(dt)

	local animations = self._animations

	for animation_name, animation_id in pairs(animations) do
		if ui_animator:is_animation_completed(animation_id) then
			ui_animator:stop_animation(animation_id)

			animations[animation_name] = nil
		end
	end
end

StartGameWindowDifficultyConsole._is_button_pressed = function (self, widget)
	local content = widget.content
	local hotspot = content.button_hotspot

	if hotspot.on_pressed then
		hotspot.on_pressed = false

		return true
	end
end

StartGameWindowDifficultyConsole._is_button_hover_enter = function (self, widget)
	local content = widget.content
	local hotspot = content.button_hotspot

	return hotspot.on_hover_enter and not hotspot.is_selected
end

local difficulties_select_sounds = {
	"play_gui_lobby_button_01_difficulty_select_normal",
	"play_gui_lobby_button_01_difficulty_select_hard",
	"play_gui_lobby_button_01_difficulty_select_nightmare",
	"play_gui_lobby_button_01_difficulty_select_cataclysm"
}

StartGameWindowDifficultyConsole._handle_input = function (self, dt, t)
	local input_service = self.parent:window_input_service()
	local gamepad_active = Managers.input:is_device_active("gamepad")

	if gamepad_active then
		if input_service:get("move_down_hold_continuous") then
			self:_update_difficulty_selection(1)
		elseif input_service:get("move_up_hold_continuous") then
			self:_update_difficulty_selection(-1)
		end
	end

	local difficulties = self:_get_difficulty_options()
	local widgets_by_name = self._widgets_by_name
	local widget_index_counter = 1
	local widget_prefix = "difficulty_option_"

	for i = STARTING_DIFFICULTY_INDEX, #difficulties, 1 do
		local widget_name = widget_prefix .. widget_index_counter
		local widget = widgets_by_name[widget_name]
		local content = widget.content

		if not content.is_selected and self:_is_button_hover_enter(widget) then
			self:_update_difficulty_selection(nil, i)
		end

		if self:_is_button_pressed(widget) and self._difficulty_approved then
			self:_on_difficulty_selection_confirmed()

			return
		end

		widget_index_counter = widget_index_counter + 1
	end

	local gamepad_confirm_pressed = gamepad_active and self._difficulty_approved and input_service:get(SELECTION_INPUT, true)

	if gamepad_confirm_pressed then
		self:_on_difficulty_selection_confirmed()
	end
end

StartGameWindowDifficultyConsole._on_difficulty_selection_confirmed = function (self)
	local parent = self.parent

	parent:set_difficulty_option(self._selected_difficulty_key)

	local sound_event = difficulties_select_sounds[self._difficulty_navigation_id]

	self:_play_sound(sound_event)

	local game_mode_layout_name = parent:get_selected_game_mode_layout_name()

	parent:set_layout_by_name(game_mode_layout_name)
end

StartGameWindowDifficultyConsole._update_difficulty_selection = function (self, navigation_id_change, new_navigation_id)
	local difficulties = self:_get_difficulty_options()

	if not new_navigation_id then
		new_navigation_id = self._difficulty_navigation_id + navigation_id_change
		local num_difficulties = #difficulties
		new_navigation_id = math.clamp(new_navigation_id, 1, num_difficulties)
	end

	if new_navigation_id ~= self._difficulty_navigation_id then
		local difficulty_key = difficulties[new_navigation_id]

		self:_update_selected_difficulty_option(difficulty_key)
		self:_play_sound("play_gui_lobby_button_02_mission_act_click")

		self._difficulty_navigation_id = new_navigation_id
	end
end

StartGameWindowDifficultyConsole._get_difficulty_navigation_id_from_difficulty_key = function (self, difficulty_key)
	local difficulties = self:_get_difficulty_options()

	for i = 1, #difficulties, 1 do
		if difficulty_key == difficulties[i] then
			return i
		end
	end

	ferror("Difficulty Key not found %s", difficulty_key)
end

StartGameWindowDifficultyConsole._set_selected_difficulty_option = function (self, new_difficulty_key)
	local difficulties = self:_get_difficulty_options()
	local widgets_by_name = self._widgets_by_name
	local widget_index_counter = 1
	local widget_prefix = "difficulty_option_"

	for i = STARTING_DIFFICULTY_INDEX, #difficulties, 1 do
		local difficulty_key = difficulties[i]
		local widget_name = widget_prefix .. widget_index_counter
		local widget = widgets_by_name[widget_name]
		local content = widget.content
		content.is_selected = difficulty_key == new_difficulty_key
		widget_index_counter = widget_index_counter + 1
	end
end

StartGameWindowDifficultyConsole._set_info_window = function (self, difficulty_key)
	local difficulty_settings = DifficultySettings[difficulty_key]
	local description = difficulty_settings.description
	local display_name = difficulty_settings.display_name
	local display_image = difficulty_settings.display_image
	local xp_multiplier_number = difficulty_settings.xp_multiplier
	local chest_max_powerlevel = difficulty_settings.max_chest_power_level
	local widgets_by_name = self._widgets_by_name
	widgets_by_name.difficulty_title.content.text = Localize(display_name)
	widgets_by_name.difficulty_texture.content.texture_id = display_image
	widgets_by_name.description_text.content.text = Localize(description)
	widgets_by_name.difficulty_chest_info.content.text = Localize("difficulty_chest_max_powerlevel") .. ": " .. tostring(chest_max_powerlevel)
	widgets_by_name.xp_multiplier.content.text = Localize("difficulty_xp_multiplier") .. ": " .. tostring(xp_multiplier_number * 100) .. "%"
end

StartGameWindowDifficultyConsole._update_difficulty_lock = function (self)
	local widgets_by_name = self._widgets_by_name
	local selected_difficulty_key = self._selected_difficulty_key

	if selected_difficulty_key then
		local difficulty_approved = self._difficulty_approved
		local approved = self.parent:is_difficulty_approved(selected_difficulty_key)

		if approved ~= difficulty_approved then
			if not approved then
				local difficulty_settings = DifficultySettings[selected_difficulty_key]
				local required_power_level = difficulty_settings.required_power_level
				local difficulty_lock_text = Localize("required_power_level")
				widgets_by_name.difficulty_lock_text.content.text = string.format("%s: %s", difficulty_lock_text, tostring(UIUtils.presentable_hero_power_level(required_power_level)))
				widgets_by_name.difficulty_is_locked_text.content.text = Localize("required_power_level_not_met_in_party")

				self.parent:set_input_description("select_difficulty")
			else
				widgets_by_name.difficulty_lock_text.content.text = ""
				widgets_by_name.difficulty_is_locked_text.content.text = ""

				self.parent:set_input_description("select_difficulty_confirm")
			end
		end

		self._difficulty_approved = approved
	end
end

StartGameWindowDifficultyConsole._update_selected_difficulty_option = function (self, difficulty_key)
	difficulty_key = difficulty_key or Managers.state.difficulty:get_difficulty()

	if difficulty_key ~= self._selected_difficulty_key then
		self:_set_selected_difficulty_option(difficulty_key)

		self._selected_difficulty_key = difficulty_key

		self:_set_info_window(difficulty_key)
	end
end

StartGameWindowDifficultyConsole.draw = function (self, dt)
	local ui_top_renderer = self.ui_top_renderer
	local ui_scenegraph = self.ui_scenegraph
	local input_service = self.parent:window_input_service()

	UIRenderer.begin_pass(ui_top_renderer, ui_scenegraph, input_service, dt, nil, self.render_settings)

	local widgets = self._widgets

	for i = 1, #widgets, 1 do
		local widget = widgets[i]

		UIRenderer.draw_widget(ui_top_renderer, widget)
	end

	UIRenderer.end_pass(ui_top_renderer)
end

StartGameWindowDifficultyConsole._play_sound = function (self, event)
	self.parent:play_sound(event)
end

return
