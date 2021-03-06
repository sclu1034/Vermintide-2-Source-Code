require("scripts/helpers/ui_atlas_helper")

DeusMapUI = class(DeusMapUI)
local definitions = local_require("scripts/ui/views/deus_menu/deus_map_ui_definitions_v2")

local function update_portrait(widget, frame_name, offset)
	local frame_settings = UIPlayerPortraitFrameSettings[frame_name] or UIPlayerPortraitFrameSettings.default

	for index, frame_data in ipairs(frame_settings) do
		local name = "texture_" .. index
		local texture_name = frame_data.texture or "icons_placeholder"
		local size = nil

		if UIAtlasHelper.has_atlas_settings_by_texture_name(texture_name) then
			local texture_settings = UIAtlasHelper.get_atlas_settings_by_texture_name(texture_name)
			size = texture_settings.size
		else
			size = frame_data.size
		end

		size = (size and table.clone(size)) or {
			0,
			0
		}
		offset = (offset and table.clone(offset)) or {
			0,
			0,
			0
		}

		if frame_data.offset then
			offset[1] = offset[1] + frame_data.offset[1]
			offset[2] = offset[2] + frame_data.offset[2]
			offset[3] = offset[3] + frame_data.offset[3]
		end

		offset[1] = -(size[1] / 2) + offset[1]
		offset[2] = offset[2]
		offset[3] = frame_data.layer or 0
		widget.content[name] = texture_name
		widget.style[name] = {
			color = frame_data.color or {
				255,
				255,
				255,
				255
			},
			offset = offset,
			size = size
		}
	end
end

DeusMapUI.init = function (self, ui_renderer)
	self._ui_renderer = ui_renderer
	self._render_content = false
	self._render_full_screen_rect = false

	self:_create_ui_elements()
end

DeusMapUI._create_ui_elements = function (self)
	local scenegraph_definition = definitions.scenegraph_definition
	local ui_scenegraph = UISceneGraph.init_scenegraph(scenegraph_definition)
	local _, widgets_by_name = UIUtils.create_widgets(definitions.widget_definitions)
	local render_settings = {
		alpha_multiplier = 1,
		snap_pixel_positions = true
	}
	local anim_data = {
		alpha_multiplier = 1
	}
	self._ui_scenegraph = ui_scenegraph
	self._widgets_by_name = widgets_by_name
	self._anim_data = anim_data
	self._render_settings = render_settings
end

DeusMapUI.on_enter = function (self, input_service)
	self._input_service = input_service
end

DeusMapUI.on_exit = function (self)
	return
end

DeusMapUI.update = function (self, dt, t)
	if RESOLUTION_LOOKUP.modified then
		self:_on_resolution_changed()
	end

	self:_update_animations(dt, t)
	self:_draw(dt, t)
end

DeusMapUI._update_animations = function (self, dt, t)
	local anim_data = self._anim_data

	if not anim_data.alpha_multiplier_animation_duration then
		return
	end

	if not anim_data.alpha_multiplier_animation_start_time then
		anim_data.alpha_multiplier_animation_start_time = t
		anim_data.alpha_multiplier_animation_end_time = t + anim_data.alpha_multiplier_animation_duration
	end

	local progress = nil
	local interpolation_time = anim_data.alpha_multiplier_animation_end_time - anim_data.alpha_multiplier_animation_start_time

	if interpolation_time <= 0.001 then
		progress = 1
	else
		progress = math.clamp((t - anim_data.alpha_multiplier_animation_start_time) / interpolation_time, 0, 1)
	end

	local new_value = math.lerp(anim_data.source_alpha_multiplier, anim_data.target_alpha_multiplier, progress)
	anim_data.alpha_multiplier = new_value

	if progress == 1 then
		anim_data.alpha_multiplier_animation_duration = nil
		anim_data.alpha_multiplier_animation_start_time = nil
		anim_data.alpha_multiplier_animation_end_time = nil
		anim_data.source_alpha_multiplier = nil
		anim_data.target_alpha_multiplier = nil
	end
end

DeusMapUI._draw = function (self, dt, t)
	local input_service = self._input_service
	local ui_renderer = self._ui_renderer
	local ui_scenegraph = self._ui_scenegraph
	local render_settings = self._render_settings
	local anim_data = self._anim_data
	local parent_scenegraph_id = nil

	UIRenderer.begin_pass(ui_renderer, ui_scenegraph, input_service, dt, parent_scenegraph_id, render_settings)

	render_settings.alpha_multiplier = anim_data.alpha_multiplier or 0

	if self._render_full_screen_rect then
		UIRenderer.draw_rect(ui_renderer, Vector2(0, 0), UISceneGraph.get_size_scaled(ui_scenegraph, "screen"), Colors.color_definitions.black)
	end

	if self._render_content then
		UIRenderer.draw_all_widgets(ui_renderer, self._widgets_by_name)
	end

	render_settings.alpha_multiplier = 1

	UIRenderer.end_pass(ui_renderer)
end

DeusMapUI.enable_hover_text = function (self, screen_pos, type, level, theme, minor_modifier_group, director_name, terror_event_power_up, selected, selectable, profile_index, career_index)
	local ui_pos = UIInverseScaleVectorToResolution(screen_pos)
	local scene_graph_position = self._ui_scenegraph.node_info_pivot.position
	scene_graph_position[1] = ui_pos[1]
	scene_graph_position[2] = ui_pos[2]
	local widget = self._widgets_by_name.node_info
	widget.content.visible = true
	local content_node_info = widget.content.node_info

	if level then
		content_node_info.title = Localize(level .. "_title")
		content_node_info.description = Localize(level .. "_desc")
	else
		content_node_info.title = Localize("undiscovered_level_title")
		content_node_info.description = Localize("undiscovered_level_desc")
	end

	if not theme or theme == "wastes" then
		content_node_info.curse_text = ""
	else
		content_node_info.curse_text = Localize("deus_map_node_info_god_" .. theme)
		content_node_info.curse_icon = "deus_icons_map_" .. theme
		widget.style.node_info.curse_section.curse_icon.color = Colors.get_color_table_with_alpha(theme, 255)
		widget.style.node_info.curse_section.curse_text.text_color = Colors.get_color_table_with_alpha(theme, 255)
	end

	if minor_modifier_group then
		content_node_info.minor_modifier_1_section.text = (minor_modifier_group[1] and Localize("mutator_" .. minor_modifier_group[1] .. "_name")) or ""
		content_node_info.minor_modifier_2_section.text = (minor_modifier_group[2] and Localize("mutator_" .. minor_modifier_group[2] .. "_name")) or ""
		content_node_info.minor_modifier_3_section.text = (minor_modifier_group[3] and Localize("mutator_" .. minor_modifier_group[3] .. "_name")) or ""
	else
		content_node_info.minor_modifier_1_section.text = ""
		content_node_info.minor_modifier_2_section.text = ""
		content_node_info.minor_modifier_3_section.text = ""
	end

	if terror_event_power_up then
		local power_up = table.clone(DeusPowerUpTemplates[terror_event_power_up])
		widget.content.node_info.terror_event_power_up_text = DeusPowerUpUtils.get_power_up_name_text(terror_event_power_up, power_up.talent_index, power_up.talent_tier, profile_index, career_index)
		widget.content.node_info.terror_event_power_up_icon = power_up.icon
	else
		content_node_info.terror_event_power_up_text = ""
	end

	content_node_info.shrine_text = ""
	local conflict_director = ConflictDirectors[director_name]
	local conflict_director_description = conflict_director and conflict_director.description

	if conflict_director_description then
		content_node_info.breed_text = Localize(conflict_director_description) or ""
	else
		content_node_info.breed_text = ""
	end

	content_node_info.click_to_vote = (selectable and "deus_map_node_info_click_to_vote") or ""
	content_node_info.frame_settings_name = (selected and "menu_frame_12_gold") or "menu_frame_12"
end

DeusMapUI.update_player_data = function (self, player_data)
	self._player_data = player_data
	local ui_renderer = self._ui_renderer
	local widgets_by_name = self._widgets_by_name

	for i = 1, 4, 1 do
		local data = player_data[i]
		local player_portrait = widgets_by_name["player_" .. i .. "_portrait"]
		local player_texts = widgets_by_name["player_" .. i .. "_texts"]
		local should_be_visible = not not data
		player_portrait.content.visible = should_be_visible
		player_texts.content.visible = should_be_visible

		if should_be_visible then
			local frame_settings_name = data.frame or "default"
			local level = data.level or "-"

			if player_portrait.content.frame_settings_name ~= frame_settings_name or player_portrait.content.level ~= level then
				update_portrait(player_portrait, frame_settings_name)

				player_portrait.content.level = level
			end

			player_texts.content.name_text = data.name or ""
			player_portrait.style.token_icon.saturated = not not data.vote

			if data.profile_index ~= 0 then
				local profile_data = SPProfiles[data.profile_index]
				local careers = profile_data.careers
				local career_data = careers[data.career_index]
				player_portrait.content.character_portrait = career_data.portrait_image
				player_portrait.content.token_icon = profile_data.hero_selection_image
			else
				player_portrait.content.character_portrait = "unit_frame_portrait_default"
				player_portrait.content.token_icon = nil
			end

			player_portrait.content.hp_bar.bar_value = data.health_percentage
			player_portrait.content.ammo_percentage = data.ammo_percentage
			player_texts.content.coins_text = string.format("%d", data.soft_currency)
			local healthkit_item = data.healthkit_consumable
			player_portrait.content.healthkit_slot = healthkit_item and ItemMasterList[healthkit_item].hud_icon
			player_portrait.style.healthkit_slot_bg.color = UIUtils.get_color_for_consumable_item(healthkit_item)
			local potion_item = data.potion_consumable
			player_portrait.content.potion_slot = potion_item and ItemMasterList[potion_item].hud_icon
			player_portrait.style.potion_slot_bg.color = UIUtils.get_color_for_consumable_item(potion_item)
			local grenade_item = data.grenade_consumable
			player_portrait.content.grenade_slot = grenade_item and ItemMasterList[grenade_item].hud_icon
			player_portrait.style.grenade_slot_bg.color = UIUtils.get_color_for_consumable_item(grenade_item)
		end
	end
end

DeusMapUI.set_journey_name = function (self, journey_name)
	local widget = self._widgets_by_name.top_info
	widget.content.journey_name_label = journey_name .. "_name"
end

DeusMapUI.set_general_info = function (self, title, description)
	local widget = self._widgets_by_name.general_info
	widget.content.title = title
	widget.content.description = description
end

DeusMapUI._on_resolution_changed = function (self)
	local player_data = self._player_data

	if player_data then
		self:update_player_data(player_data)
	end
end

DeusMapUI.update_timer = function (self, time_left, optional_override_text)
	local widget = self._widgets_by_name.general_info

	if optional_override_text then
		widget.content.time = optional_override_text
	else
		local timer_text = string.format("%.2d:%.2d", (time_left / 60) % 60, time_left % 60)
		widget.content.time = timer_text
	end
end

DeusMapUI.hide_timer = function (self)
	local widget = self._widgets_by_name.general_info
	widget.content.time = ""
end

DeusMapUI.disable_hover_text = function (self)
	local widget = self._widgets_by_name.node_info
	widget.content.visible = false
end

DeusMapUI.set_alpha_multiplier = function (self, alpha)
	self._anim_data.alpha_multiplier = alpha
end

DeusMapUI.show_full_screen_rect = function (self)
	return self:set_full_screen_rect_visibility(true)
end

DeusMapUI.hide_full_screen_rect = function (self)
	return self:set_full_screen_rect_visibility(false)
end

DeusMapUI.set_full_screen_rect_visibility = function (self, is_visible)
	self._render_full_screen_rect = is_visible
end

DeusMapUI.show_content = function (self)
	self:_set_content_visibility(true)
end

DeusMapUI.hide_content = function (self)
	self:_set_content_visibility(false)
end

DeusMapUI._set_content_visibility = function (self, is_visible)
	self._render_content = is_visible
	local ui_renderer = self._ui_renderer

	for _, widget in pairs(self._widgets_by_name) do
		UIRenderer.set_element_visible(ui_renderer, widget.element, is_visible)
	end
end

DeusMapUI.fade_out = function (self, duration)
	local anim_data = self._anim_data
	anim_data.source_alpha_multiplier = anim_data.alpha_multiplier
	anim_data.target_alpha_multiplier = 0
	anim_data.alpha_multiplier_animation_duration = duration
	anim_data.alpha_multiplier_animation_start_time = nil
	anim_data.alpha_multiplier_animation_end_time = nil
end

DeusMapUI.fade_in = function (self, duration)
	local anim_data = self._anim_data
	anim_data.source_alpha_multiplier = anim_data.alpha_multiplier
	anim_data.target_alpha_multiplier = 1
	anim_data.alpha_multiplier_animation_duration = duration
	anim_data.alpha_multiplier_animation_start_time = nil
	anim_data.alpha_multiplier_animation_end_time = nil
end

return
