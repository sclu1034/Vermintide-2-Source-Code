local definitions = local_require("scripts/ui/views/hero_view/windows/definitions/hero_window_panel_console_definitions")
local widget_definitions = definitions.widgets
local title_button_definitions = definitions.title_button_definitions
local scenegraph_definition = definitions.scenegraph_definition
local animation_definitions = definitions.animation_definitions
local layout_name_by_index = {
	"equipment",
	"talents",
	"forge",
	"cosmetics",
	"system"
}
local layout_index_by_name = {}

for i, name in ipairs(layout_name_by_index) do
	layout_index_by_name[name] = i
end

local INPUT_ACTION_NEXT = "cycle_next"
local INPUT_ACTION_PREVIOUS = "cycle_previous"
local INPUT_ACTION_PURCHASE = "show_gamercard"
local DO_RELOAD = false
HeroWindowPanelConsole = class(HeroWindowPanelConsole)
HeroWindowPanelConsole.NAME = "HeroWindowPanelConsole"

HeroWindowPanelConsole.on_enter = function (self, params, offset)
	print("[HeroViewWindow] Enter Substate HeroWindowPanelConsole")

	self.parent = params.parent
	local ingame_ui_context = params.ingame_ui_context
	self.ui_renderer = ingame_ui_context.ui_top_renderer
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
	self.is_in_inn = ingame_ui_context.is_in_inn
	self.hero_name = params.hero_name
	self.career_index = params.career_index
	self.profile_index = params.profile_index
	local hero_name = self.hero_name
	local career_index = self.career_index
	local profile_index = FindProfileIndex(hero_name)
	local profile = SPProfiles[profile_index]
	local career_data = profile.careers[career_index]
	local career_name = career_data.name
	self._animations = {}
	self._ui_animations = {}

	self:create_ui_elements(params, offset)

	self.conditions_params = {
		hero_name = self.hero_name,
		career_name = career_name
	}
	local title_button_widgets = self._title_button_widgets
	self.button_widgets_by_news_template = {
		equipment = title_button_widgets[1],
		talent = title_button_widgets[2],
		cosmetics = title_button_widgets[4]
	}

	if self.is_in_inn then
		self:_setup_text_buttons_width()
		self:_setup_input_buttons()
	else
		local system_button = self._widgets_by_name.system_button
		system_button.content.button_hotspot.is_selected = true
	end

	self:_validate_product_owner()
end

HeroWindowPanelConsole.create_ui_elements = function (self, params, offset)
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
	local title_button_widgets = {}

	for name, widget_definition in pairs(title_button_definitions) do
		local widget = UIWidget.init(widget_definition)
		title_button_widgets[#title_button_widgets + 1] = widget
	end

	self._title_button_widgets = title_button_widgets

	UIRenderer.clear_scenegraph_queue(self.ui_renderer)

	self.ui_animator = UIAnimator:new(self.ui_scenegraph, animation_definitions)

	if offset then
		local window_position = self.ui_scenegraph.window.local_position
		window_position[1] = window_position[1] + offset[1]
		window_position[2] = window_position[2] + offset[2]
		window_position[3] = window_position[3] + offset[3]
	end
end

HeroWindowPanelConsole.on_exit = function (self, params)
	print("[HeroViewWindow] Exit Substate HeroWindowPanelConsole")

	self.ui_animator = nil
end

HeroWindowPanelConsole.update = function (self, dt, t)
	if DO_RELOAD then
		DO_RELOAD = false

		self:create_ui_elements()
	end

	self:_handle_gamepad_activity()
	self:_handle_back_button_visibility()

	if self.is_in_inn then
		self:_sync_news(dt, t)
		self:_update_selected_option()
	end

	self:_update_animations(dt)
	self:draw(dt)
end

HeroWindowPanelConsole.post_update = function (self, dt, t)
	self:_handle_input(dt, t)
end

HeroWindowPanelConsole._update_animations = function (self, dt)
	local ui_animations = self._ui_animations
	local animations = self._animations
	local ui_animator = self.ui_animator

	for name, animation in pairs(self._ui_animations) do
		UIAnimation.update(animation, dt)

		if UIAnimation.completed(animation) then
			self._ui_animations[name] = nil
		end
	end

	ui_animator:update(dt)

	for animation_name, animation_id in pairs(animations) do
		if ui_animator:is_animation_completed(animation_id) then
			ui_animator:stop_animation(animation_id)

			animations[animation_name] = nil
		end
	end

	local title_button_widgets = self._title_button_widgets

	for i, widget in ipairs(title_button_widgets) do
		self:_animate_title_entry(widget, dt)
	end

	self:_animate_title_entry(self._widgets_by_name.system_button, dt)
	self:_animate_back_button(self._widgets_by_name.back_button, dt)
	self:_animate_back_button(self._widgets_by_name.close_button, dt)

	if self._present_purchase_add then
		self:_animate_purchase_add(dt)
	end
end

HeroWindowPanelConsole._is_button_pressed = function (self, widget)
	local content = widget.content
	local hotspot = content.button_hotspot or content.button_text

	if hotspot.on_release then
		hotspot.on_release = false

		return true
	end
end

HeroWindowPanelConsole._is_stepper_button_pressed = function (self, widget)
	local content = widget.content
	local hotspot_left = content.button_hotspot_left
	local hotspot_right = content.button_hotspot_right

	if hotspot_left.on_release then
		hotspot_left.on_release = false

		return true, -1
	elseif hotspot_right.on_release then
		hotspot_right.on_release = false

		return true, 1
	end
end

HeroWindowPanelConsole._is_button_hover_enter = function (self, widget)
	local content = widget.content
	local hotspot = content.button_hotspot

	return hotspot.on_hover_enter
end

HeroWindowPanelConsole._is_button_hover_exit = function (self, widget)
	local content = widget.content
	local hotspot = content.button_hotspot

	return hotspot.on_hover_exit
end

HeroWindowPanelConsole._is_button_selected = function (self, widget)
	local content = widget.content
	local hotspot = content.button_hotspot

	return hotspot.is_selected
end

HeroWindowPanelConsole._handle_input = function (self, dt, t)
	local parent = self.parent
	local widgets_by_name = self._widgets_by_name
	local title_button_widgets = self._title_button_widgets
	local input_service = self.parent:window_input_service()
	local input_made = false
	local close_button = widgets_by_name.close_button
	local back_button = widgets_by_name.back_button

	if self:_is_button_hover_enter(back_button) or self:_is_button_hover_enter(close_button) then
		self:_play_sound("Play_hud_hover")
	end

	if not input_made and self:_is_button_pressed(close_button) then
		parent:close_menu()

		input_made = true
	end

	if self.is_in_inn then
		local close_on_exit = parent:close_on_exit()

		if not close_on_exit and not input_made and self:_is_button_pressed(back_button) then
			local previous_selected_game_mode_index = parent:get_previous_selected_game_mode_index()

			if previous_selected_game_mode_index then
				self:_reset_back_button()
				self:_on_panel_button_selected(previous_selected_game_mode_index)

				input_made = true
			end
		end

		local title_button_widgets = self._title_button_widgets

		for i, widget in ipairs(title_button_widgets) do
			if self:_is_button_hover_enter(widget) then
				self:_play_sound("Play_hud_hover")
			end

			if self:_is_button_pressed(widget) then
				self:_on_panel_button_selected(i)

				input_made = true
			end
		end

		local system_button = widgets_by_name.system_button

		if self:_is_button_hover_enter(system_button) then
			self:_play_sound("Play_hud_hover")
		end

		if not input_made and self:_is_button_pressed(system_button) then
			local system_layout_index = layout_index_by_name.system

			self:_on_panel_button_selected(system_layout_index)

			input_made = true
		end

		if not input_made then
			local current_index = self._selected_index or 1
			local max_index = 5

			if input_service:get(INPUT_ACTION_PREVIOUS) then
				local next_index = (current_index > 1 and current_index - 1) or max_index

				self:_on_panel_button_selected(next_index)
			elseif input_service:get(INPUT_ACTION_NEXT) then
				local next_index = current_index % max_index + 1

				self:_on_panel_button_selected(next_index)
			end
		end

		if not input_made and self._present_purchase_add and input_service:get(INPUT_ACTION_PURCHASE) and IS_XB1 then
			input_made = true

			self:_open_marketplace_xb1()
		end
	end
end

HeroWindowPanelConsole._on_panel_button_selected = function (self, index)
	local parent = self.parent
	local selected_layout_name = parent:get_layout_name()
	local layout_name = layout_name_by_index[index]

	if layout_name ~= selected_layout_name then
		self.parent:set_layout_by_name(layout_name)
	end
end

HeroWindowPanelConsole._set_selected_option = function (self, index)
	local system_button = self._widgets_by_name.system_button
	system_button.content.button_hotspot.is_selected = layout_name_by_index[index] == "system"
	local title_button_widgets = self._title_button_widgets

	for i, widget in ipairs(title_button_widgets) do
		widget.content.button_hotspot.is_selected = i == index
	end
end

HeroWindowPanelConsole._update_selected_option = function (self)
	local parent = self.parent
	local selected_layout_name = parent:get_layout_name()
	local selected_index = table.find(layout_name_by_index, selected_layout_name)

	if selected_index and selected_index ~= self._selected_index then
		self:_set_selected_option(selected_index)

		self._selected_index = selected_index
	end
end

HeroWindowPanelConsole.draw = function (self, dt)
	local ui_renderer = self.ui_renderer
	local ui_scenegraph = self.ui_scenegraph
	local input_service = self.parent:window_input_service()

	UIRenderer.begin_pass(ui_renderer, ui_scenegraph, input_service, dt, nil, self.render_settings)

	for _, widget in ipairs(self._widgets) do
		UIRenderer.draw_widget(ui_renderer, widget)
	end

	if self.is_in_inn then
		for _, widget in ipairs(self._title_button_widgets) do
			UIRenderer.draw_widget(ui_renderer, widget)
		end
	end

	UIRenderer.end_pass(ui_renderer)
end

HeroWindowPanelConsole._play_sound = function (self, event)
	self.parent:play_sound(event)
end

HeroWindowPanelConsole._sync_news = function (self, dt, t)
	local sync_delay = self._sync_delay

	if sync_delay then
		sync_delay = math.max(0, sync_delay - dt)

		if sync_delay == 0 then
			self._sync_delay = nil
		else
			self._sync_delay = sync_delay
		end

		return
	end

	local player = Managers.player:local_player(1)
	local player_unit = player.player_unit
	local news_templates = NewsFeedTemplates
	local conditions_params = self.conditions_params
	local button_widgets_by_news_template = self.button_widgets_by_news_template

	if player_unit then
		for template_name, widget in pairs(button_widgets_by_news_template) do
			local template_index = FindNewsTemplateIndex(template_name)
			local template = news_templates[template_index]
			local condition_func = template.condition_func
			widget.content.new = condition_func(conditions_params)
		end
	end

	self._sync_delay = 4
end

HeroWindowPanelConsole._setup_input_buttons = function (self)
	local input_service = self.parent:window_input_service()
	local input_1_texture_data = UISettings.get_gamepad_input_texture_data(input_service, INPUT_ACTION_PREVIOUS, true)
	local input_2_texture_data = UISettings.get_gamepad_input_texture_data(input_service, INPUT_ACTION_NEXT, true)
	local widgets_by_name = self._widgets_by_name
	local input_1_widget = widgets_by_name.panel_input_area_1
	local input_2_widget = widgets_by_name.panel_input_area_2
	local icon_style_input_1 = input_1_widget.style.texture_id
	icon_style_input_1.horizontal_alignment = "center"
	icon_style_input_1.vertical_alignment = "center"
	icon_style_input_1.texture_size = {
		input_1_texture_data.size[1],
		input_1_texture_data.size[2]
	}
	input_1_widget.content.texture_id = input_1_texture_data.texture
	local icon_style_input_2 = input_2_widget.style.texture_id
	icon_style_input_2.horizontal_alignment = "center"
	icon_style_input_2.vertical_alignment = "center"
	icon_style_input_2.texture_size = {
		input_2_texture_data.size[1],
		input_2_texture_data.size[2]
	}
	input_2_widget.content.texture_id = input_2_texture_data.texture
end

HeroWindowPanelConsole._handle_back_button_visibility = function (self)
	if not self.gamepad_active_last_frame then
		local close_on_exit = self.parent:close_on_exit()
		local back_button = self._widgets_by_name.back_button
		local new_visibility = not close_on_exit
		back_button.content.visible = new_visibility
	end
end

HeroWindowPanelConsole._reset_back_button = function (self)
	local back_button = self._widgets_by_name.back_button
	local hotspot = back_button.content.button_hotspot

	table.clear(hotspot)
end

HeroWindowPanelConsole._handle_gamepad_activity = function (self)
	local gamepad_active = Managers.input:is_device_active("gamepad")
	local force_update = self.gamepad_active_last_frame == nil

	if gamepad_active then
		if not self.gamepad_active_last_frame or force_update then
			self.gamepad_active_last_frame = true
			local widgets_by_name = self._widgets_by_name
			widgets_by_name.panel_input_area_1.content.visible = true
			widgets_by_name.panel_input_area_2.content.visible = true
			widgets_by_name.back_button.content.visible = false
			widgets_by_name.close_button.content.visible = false
		end
	elseif self.gamepad_active_last_frame or force_update then
		self.gamepad_active_last_frame = false
		local widgets_by_name = self._widgets_by_name
		widgets_by_name.panel_input_area_1.content.visible = false
		widgets_by_name.panel_input_area_2.content.visible = false
		widgets_by_name.close_button.content.visible = true
	end
end

HeroWindowPanelConsole._setup_text_buttons_width = function (self)
	local ui_scenegraph = self.ui_scenegraph
	local area_size = ui_scenegraph.panel_entry_area.size
	local total_width = area_size[1]
	local total_menu_panel_length = 0
	local title_button_widgets = self._title_button_widgets
	local num_buttons = #title_button_widgets
	local entry_width = math.floor(total_width / num_buttons)

	for index, widget in ipairs(title_button_widgets) do
		self:_set_text_button_size(widget, entry_width)

		local position_x = entry_width * (index - 1)

		self:_set_text_button_horizontal_position(widget, position_x)
	end
end

HeroWindowPanelConsole._set_text_button_size = function (self, widget, width)
	local ui_scenegraph = self.ui_scenegraph
	local scenegraph_id = widget.scenegraph_id
	ui_scenegraph[scenegraph_id].size[1] = width
	local style = widget.style
	style.selected_texture.texture_size[1] = width
	local text_width_offset = 5
	local text_width = width - text_width_offset * 2
	style.text.size[1] = text_width
	style.text_shadow.size[1] = text_width
	style.text_hover.size[1] = text_width
	style.text_disabled.size[1] = text_width
	style.text.offset[1] = style.text.default_offset[1] + text_width_offset
	style.text_shadow.offset[1] = style.text_shadow.default_offset[1] + text_width_offset
	style.text_hover.offset[1] = style.text_hover.default_offset[1] + text_width_offset
	style.text_disabled.offset[1] = style.text_disabled.default_offset[1] + text_width_offset
end

local default_font_color = Colors.get_color_table_with_alpha("white", 255)

HeroWindowPanelConsole._animate_purchase_add = function (self, dt)
	local widgets_by_name = self._widgets_by_name
	local style = widgets_by_name.preorder_text.style
	local progress = 0.5 + math.sin(Managers.time:time("ui") * 3) * 0.5
	local font_increase = math.easeOutCubic(progress) * 10
	local text_color = style.text.text_color
	local shadow_text_color = style.text_shadow.text_color
	local color_progress = math.easeOutCubic(progress) * 0.5
	text_color[2] = default_font_color[2] * 0.5 + default_font_color[2] * color_progress
	text_color[3] = default_font_color[3] * 0.5 + default_font_color[3] * color_progress
	text_color[4] = default_font_color[4] * 0.5 + default_font_color[4] * color_progress
end

HeroWindowPanelConsole._set_text_button_horizontal_position = function (self, widget, x_position)
	local ui_scenegraph = self.ui_scenegraph
	local scenegraph_id = widget.scenegraph_id
	ui_scenegraph[scenegraph_id].local_position[1] = x_position
end

HeroWindowPanelConsole._validate_product_owner = function (self)
	local present_purchase_add = nil

	if IS_XB1 and script_data.settings.use_beta_mode then
		local owns_game = Managers.unlock:is_dlc_unlocked("vt2")
		present_purchase_add = not owns_game
	else
		present_purchase_add = false
	end

	self._present_purchase_add = present_purchase_add

	self:_set_purchase_add_visibility(present_purchase_add)
end

HeroWindowPanelConsole._open_marketplace_xb1 = function (self)
	local user_id = Managers.account:user_id()
	local preorder_product_id = "dc4149cc-19c1-4a90-885f-6883868b053a"

	XboxLive.show_product_details(user_id, preorder_product_id)
end

HeroWindowPanelConsole._set_purchase_add_visibility = function (self, visible)
	local widgets_by_name = self._widgets_by_name
	widgets_by_name.preorder_text.content.visible = visible
	widgets_by_name.preorder_input.content.visible = visible
	widgets_by_name.preorder_text_bg.content.visible = visible
	widgets_by_name.preorder_divider.content.visible = visible
	widgets_by_name.preorder_divider_top.content.visible = visible
	widgets_by_name.preorder_divider_effect.content.visible = visible
	widgets_by_name.preorder_divider_top_effect.content.visible = visible
end

HeroWindowPanelConsole._animate_title_entry = function (self, widget, dt)
	local content = widget.content
	local style = widget.style
	local hotspot = content.button_hotspot
	local is_hover = hotspot.is_hover
	local is_selected = hotspot.is_selected
	local input_pressed = not is_selected and hotspot.is_clicked and hotspot.is_clicked == 0
	local input_progress = hotspot.input_progress or 0
	local hover_progress = hotspot.hover_progress or 0
	local selection_progress = hotspot.selection_progress or 0
	local speed = 8
	local input_speed = 20

	if input_pressed then
		input_progress = math.min(input_progress + dt * input_speed, 1)
	else
		input_progress = math.max(input_progress - dt * input_speed, 0)
	end

	local input_easing_out_progress = math.easeOutCubic(input_progress)
	local input_easing_in_progress = math.easeInCubic(input_progress)

	if is_hover then
		hover_progress = math.min(hover_progress + dt * speed, 1)
	else
		hover_progress = math.max(hover_progress - dt * speed, 0)
	end

	local hover_easing_out_progress = math.easeOutCubic(hover_progress)
	local hover_easing_in_progress = math.easeInCubic(hover_progress)

	if is_selected then
		selection_progress = math.min(selection_progress + dt * speed, 1)
	else
		selection_progress = math.max(selection_progress - dt * speed, 0)
	end

	local select_easing_out_progress = math.easeOutCubic(selection_progress)
	local select_easing_in_progress = math.easeInCubic(selection_progress)
	local combined_progress = math.max(hover_progress, selection_progress)
	local combined_out_progress = math.max(select_easing_out_progress, hover_easing_out_progress)
	local combined_in_progress = math.max(hover_easing_in_progress, select_easing_in_progress)
	local hover_alpha = 255 * combined_progress
	style.selected_texture.color[1] = hover_alpha

	if style.text then
		local text_height_offset = 4 * combined_progress
		style.text.offset[2] = 5 - text_height_offset
		style.text_shadow.offset[2] = 3 - text_height_offset
		style.text_hover.offset[2] = 5 - text_height_offset
		style.text_disabled.offset[2] = 5 - text_height_offset
	end

	if style.new_marker then
		local new_marker_progress = 0.5 + math.sin(Managers.time:time("ui") * 5) * 0.5
		style.new_marker.color[1] = 100 + 155 * new_marker_progress
	end

	hotspot.hover_progress = hover_progress
	hotspot.input_progress = input_progress
	hotspot.selection_progress = selection_progress
end

HeroWindowPanelConsole._animate_back_button = function (self, widget, dt)
	local content = widget.content
	local style = widget.style
	local hotspot = content.button_hotspot
	local is_hover = hotspot.is_hover
	local is_selected = hotspot.is_selected
	local input_pressed = not is_selected and hotspot.is_clicked and hotspot.is_clicked == 0
	local input_progress = hotspot.input_progress or 0
	local hover_progress = hotspot.hover_progress or 0
	local selection_progress = hotspot.selection_progress or 0
	local speed = 8
	local input_speed = 20

	if input_pressed then
		input_progress = math.min(input_progress + dt * input_speed, 1)
	else
		input_progress = math.max(input_progress - dt * input_speed, 0)
	end

	local input_easing_out_progress = math.easeOutCubic(input_progress)
	local input_easing_in_progress = math.easeInCubic(input_progress)

	if is_hover then
		hover_progress = math.min(hover_progress + dt * speed, 1)
	else
		hover_progress = math.max(hover_progress - dt * speed, 0)
	end

	local hover_easing_out_progress = math.easeOutCubic(hover_progress)
	local hover_easing_in_progress = math.easeInCubic(hover_progress)

	if is_selected then
		selection_progress = math.min(selection_progress + dt * speed, 1)
	else
		selection_progress = math.max(selection_progress - dt * speed, 0)
	end

	local select_easing_out_progress = math.easeOutCubic(selection_progress)
	local select_easing_in_progress = math.easeInCubic(selection_progress)
	local combined_progress = math.max(hover_progress, selection_progress)
	local combined_out_progress = math.max(select_easing_out_progress, hover_easing_out_progress)
	local combined_in_progress = math.max(hover_easing_in_progress, select_easing_in_progress)
	local hover_alpha = 255 * combined_progress
	style.texture_id.color[1] = 255 - hover_alpha
	style.texture_hover_id.color[1] = hover_alpha
	style.selected_texture.color[1] = hover_alpha
	hotspot.hover_progress = hover_progress
	hotspot.input_progress = input_progress
	hotspot.selection_progress = selection_progress
end

return
