local window_default_settings = UISettings.game_start_windows
local window_frame = window_default_settings.frame
local window_size = window_default_settings.size
local window_frame_height = UIFrameSettings[window_frame].texture_sizes.horizontal[2]
local game_option_size = {
	window_size[1],
	194
}
local window_text_width = window_size[1]
local animation_definitions = {
	on_enter = {
		{
			name = "fade_in",
			start_progress = 0,
			end_progress = 0.3,
			init = function (ui_scenegraph, scenegraph_definition, widgets, params)
				params.render_settings.alpha_multiplier = 0
			end,
			update = function (ui_scenegraph, scenegraph_definition, widgets, progress, params)
				local anim_progress = math.easeOutCubic(progress)
				params.render_settings.alpha_multiplier = anim_progress
			end,
			on_complete = function (ui_scenegraph, scenegraph_definition, widgets, params)
				return
			end
		}
	},
	on_exit = {
		{
			name = "fade_out",
			start_progress = 0,
			end_progress = 0.3,
			init = function (ui_scenegraph, scenegraph_definition, widgets, params)
				params.render_settings.alpha_multiplier = 1
			end,
			update = function (ui_scenegraph, scenegraph_definition, widgets, progress, params)
				params.render_settings.alpha_multiplier = 1
			end,
			on_complete = function (ui_scenegraph, scenegraph_definition, widgets, params)
				return
			end
		}
	}
}
local scenegraph_definition = {
	root = {
		is_root = true,
		size = {
			1920,
			1080
		},
		position = {
			0,
			0,
			UILayer.default
		}
	},
	root_fit = {
		scale = "fit",
		size = {
			1920,
			1080
		},
		position = {
			0,
			0,
			UILayer.default
		}
	},
	menu_root = {
		vertical_alignment = "center",
		parent = "root",
		horizontal_alignment = "center",
		size = {
			1920,
			1080
		},
		position = {
			0,
			0,
			0
		}
	},
	window = {
		vertical_alignment = "center",
		parent = "menu_root",
		horizontal_alignment = "left",
		size = window_size,
		position = {
			220,
			0,
			1
		}
	},
	window_game_mode_root = {
		vertical_alignment = "top",
		parent = "window",
		horizontal_alignment = "center",
		size = {
			window_size[1],
			window_frame_height
		},
		position = {
			0,
			-window_frame_height,
			1
		}
	},
	window_info_background = {
		vertical_alignment = "top",
		parent = "window",
		horizontal_alignment = "center",
		size = {
			window_size[1] + 70,
			300
		},
		position = {
			0,
			0,
			1
		}
	},
	info_title = {
		vertical_alignment = "top",
		parent = "window_info_background",
		horizontal_alignment = "center",
		size = {
			window_text_width,
			50
		},
		position = {
			0,
			-30,
			1
		}
	},
	info_divider = {
		vertical_alignment = "top",
		parent = "info_title",
		horizontal_alignment = "center",
		size = {
			264,
			32
		},
		position = {
			0,
			-36,
			1
		}
	},
	info_description = {
		vertical_alignment = "top",
		parent = "info_divider",
		horizontal_alignment = "center",
		size = {
			window_text_width,
			200
		},
		position = {
			0,
			-36,
			1
		}
	},
	game_option_3 = {
		vertical_alignment = "bottom",
		parent = "window",
		horizontal_alignment = "center",
		size = {
			game_option_size[1],
			game_option_size[2]
		},
		position = {
			-15,
			-90,
			1
		}
	},
	game_option_2 = {
		vertical_alignment = "bottom",
		parent = "window",
		horizontal_alignment = "center",
		size = {
			game_option_size[1],
			game_option_size[2]
		},
		position = {
			-15,
			-90 + game_option_size[2],
			1
		}
	},
	game_option_1 = {
		vertical_alignment = "bottom",
		parent = "window",
		horizontal_alignment = "center",
		size = {
			game_option_size[1],
			game_option_size[2]
		},
		position = {
			-15,
			-90 + game_option_size[2] * 2,
			1
		}
	},
	play_button_console = {
		vertical_alignment = "bottom",
		parent = "window",
		horizontal_alignment = "center",
		size = {
			game_option_size[1],
			game_option_size[2]
		},
		position = {
			0,
			140,
			1
		}
	},
	play_button = {
		vertical_alignment = "center",
		parent = "play_button_console",
		horizontal_alignment = "center",
		size = {
			0,
			0
		},
		position = {
			-165,
			0,
			1
		}
	}
}

local function create_setting_button(scenegraph_id, title_text, input_text, icon_texture, icon_frame_texture)
	icon_texture = icon_texture or "level_icon_01"
	local icon_texture_settings = UIAtlasHelper.get_atlas_settings_by_texture_name(icon_texture)
	local icon_texture_size = (icon_texture_settings and icon_texture_settings.size) or {
		168,
		168
	}
	local button_size = scenegraph_definition[scenegraph_id].size
	local passes = {}
	local content = {}
	local style = {}
	local hotspot_name = "button_hotspot"
	passes[#passes + 1] = {
		pass_type = "hotspot",
		content_id = hotspot_name
	}
	content[hotspot_name] = {}
	local background_name = "selection_background"
	passes[#passes + 1] = {
		pass_type = "texture_uv",
		content_id = background_name,
		style_id = background_name
	}
	content[background_name] = {
		texture_id = "item_slot_side_fade",
		uvs = {
			{
				0,
				0
			},
			{
				1,
				1
			}
		}
	}
	local bg_offset = {
		168,
		0,
		-2
	}
	style[background_name] = {
		vertical_alignment = "center",
		horizontal_alignment = "left",
		texture_size = {
			414,
			118
		},
		color = UISettings.console_start_game_menu_rect_color,
		offset = bg_offset
	}
	local bg_effect_name = "bg_effect"
	passes[#passes + 1] = {
		pass_type = "texture",
		texture_id = bg_effect_name,
		style_id = bg_effect_name,
		content_check_function = function (content)
			return content.is_selected
		end
	}
	style[bg_effect_name] = {
		vertical_alignment = "center",
		horizontal_alignment = "left",
		texture_size = {
			414,
			126
		},
		color = Colors.get_color_table_with_alpha("font_title", 255),
		offset = {
			bg_offset[1],
			bg_offset[2],
			bg_offset[3] + 1
		}
	}
	content[bg_effect_name] = "item_slot_side_effect"
	local text_title_name = "text_title"
	local text_title_shadow_name = text_title_name .. "_shadow"
	passes[#passes + 1] = {
		pass_type = "text",
		text_id = text_title_name,
		style_id = text_title_name,
		content_change_function = function (content, style)
			if content.is_selected then
				style.text_color = style.selected_color
			else
				style.text_color = style.default_color
			end
		end
	}
	passes[#passes + 1] = {
		pass_type = "text",
		text_id = text_title_name,
		style_id = text_title_shadow_name
	}
	content[text_title_name] = title_text
	local title_text_offset = {
		225,
		86,
		5
	}
	local title_text_style = {
		word_wrap = false,
		upper_case = true,
		localize = false,
		font_size = 32,
		horizontal_alignment = "left",
		vertical_alignment = "bottom",
		dynamic_font_size = true,
		font_type = "hell_shark_header",
		text_color = Colors.get_color_table_with_alpha("font_title", 255),
		selected_color = Colors.get_color_table_with_alpha("white", 255),
		default_color = Colors.get_color_table_with_alpha("font_title", 255),
		offset = {
			title_text_offset[1],
			title_text_offset[2],
			title_text_offset[3]
		},
		size = {
			button_size[1] - 100,
			button_size[2]
		}
	}
	local title_text_shadow_style = table.clone(title_text_style)
	title_text_shadow_style.text_color = {
		255,
		0,
		0,
		0
	}
	title_text_shadow_style.offset = {
		title_text_offset[1] + 2,
		title_text_offset[2] - 2,
		title_text_offset[3] - 1
	}
	style[text_title_name] = title_text_style
	style[text_title_shadow_name] = title_text_shadow_style
	local input_text_name = "input_text"
	local input_text_shadow_name = input_text_name .. "shadow"
	passes[#passes + 1] = {
		pass_type = "text",
		text_id = input_text_name,
		style_id = input_text_name
	}
	passes[#passes + 1] = {
		pass_type = "text",
		text_id = input_text_name,
		style_id = input_text_shadow_name
	}
	content[input_text_name] = "n/a"
	local input_text_style = {
		word_wrap = false,
		horizontal_alignment = "left",
		localize = false,
		font_size = 22,
		vertical_alignment = "top",
		font_type = "hell_shark",
		text_color = Colors.get_color_table_with_alpha("font_default", 255),
		offset = {
			title_text_offset[1],
			-100,
			title_text_offset[3]
		},
		size = {
			button_size[1] - 100,
			button_size[2]
		}
	}
	local input_text_offset = input_text_style.offset
	local input_text_shadow_style = table.clone(input_text_style)
	input_text_shadow_style.text_color = {
		255,
		0,
		0,
		0
	}
	input_text_shadow_style.offset = {
		input_text_offset[1] + 2,
		input_text_offset[2] - 2,
		input_text_offset[3] - 1
	}
	style[input_text_name] = input_text_style
	style[input_text_shadow_name] = input_text_shadow_style
	local icon_offset = {
		-(button_size[1] / 2) + 108,
		0,
		5
	}
	local icon_background_offset = {
		icon_offset[1],
		icon_offset[2],
		icon_offset[3] - 2
	}
	local icon_frame_offset = {
		icon_offset[1],
		icon_offset[2],
		icon_offset[3] + 2
	}
	local icon_glow_offset = {
		icon_offset[1],
		icon_offset[2],
		icon_offset[3] + 1
	}
	local icon_texture_name = "icon_texture"
	local icon_texture_frame_name = "icon_texture_frame"
	passes[#passes + 1] = {
		pass_type = "texture",
		style_id = icon_texture_name,
		texture_id = icon_texture_name,
		content_check_function = function (content, style)
			return content[icon_texture_name]
		end,
		content_change_function = function (content, style)
			if content.button_hotspot.disable_button then
				style.saturated = true
			else
				style.saturated = false
			end
		end
	}
	content[icon_texture_name] = nil
	style[icon_texture_name] = {
		vertical_alignment = "center",
		horizontal_alignment = "center",
		texture_size = icon_texture_size,
		color = {
			255,
			255,
			255,
			255
		},
		offset = icon_offset
	}
	local icon_background_name = "icon_background"
	passes[#passes + 1] = {
		pass_type = "texture",
		texture_id = icon_background_name,
		style_id = icon_background_name
	}
	content[icon_background_name] = "level_icon_09"
	style[icon_background_name] = {
		vertical_alignment = "center",
		horizontal_alignment = "center",
		texture_size = {
			150,
			150
		},
		color = UISettings.console_start_game_menu_rect_color,
		offset = icon_background_offset
	}
	local icon_frame_texture_name = "icon_frame_texture"
	passes[#passes + 1] = {
		pass_type = "texture",
		style_id = icon_frame_texture_name,
		texture_id = icon_frame_texture_name,
		content_check_function = function (content, style)
			return content[icon_frame_texture_name]
		end,
		content_change_function = function (content, style)
			if content.button_hotspot.disable_button then
				style.saturated = true
			else
				style.saturated = false
			end
		end
	}
	content[icon_frame_texture_name] = icon_frame_texture or "map_frame_00"
	style[icon_frame_texture_name] = {
		vertical_alignment = "center",
		horizontal_alignment = "center",
		texture_size = {
			180,
			180
		},
		color = {
			255,
			255,
			255,
			255
		},
		offset = icon_frame_offset
	}
	local icon_texture_glow_name = "icon_texture_glow"
	passes[#passes + 1] = {
		pass_type = "texture",
		style_id = icon_texture_glow_name,
		texture_id = icon_texture_glow_name,
		content_check_function = function (content)
			return content.is_selected
		end
	}
	content[icon_texture_glow_name] = "map_frame_glow_02"
	style[icon_texture_glow_name] = {
		vertical_alignment = "center",
		horizontal_alignment = "center",
		texture_size = {
			270,
			270
		},
		color = {
			255,
			255,
			255,
			255
		},
		offset = icon_glow_offset
	}
	local widget = {
		element = {
			passes = passes
		},
		content = content,
		style = style,
		offset = {
			0,
			0,
			0
		},
		scenegraph_id = scenegraph_id
	}

	return widget
end

local function create_icon_and_name_button(scenegraph_id, icon, text)
	return {
		element = {
			passes = {
				{
					style_id = "button_hotspot",
					pass_type = "hotspot",
					content_id = "button_hotspot"
				},
				{
					pass_type = "texture",
					style_id = "texture_id",
					texture_id = "texture_id",
					content_check_function = function (content)
						return not content.button_hotspot.disable_button
					end
				},
				{
					pass_type = "texture",
					style_id = "texture_disabled_id",
					texture_id = "texture_id",
					content_check_function = function (content)
						return content.button_hotspot.disable_button
					end
				},
				{
					pass_type = "texture",
					style_id = "texture_hover_id",
					texture_id = "texture_hover_id"
				},
				{
					pass_type = "texture",
					style_id = "texture_icon_id",
					texture_id = "texture_icon_id",
					content_check_function = function (content)
						local button_hotspot = content.button_hotspot

						return not button_hotspot.disable_button
					end
				},
				{
					pass_type = "texture",
					style_id = "texture_icon_hover_id",
					texture_id = "texture_icon_id",
					content_check_function = function (content)
						local button_hotspot = content.button_hotspot

						return not button_hotspot.disable_button
					end
				},
				{
					pass_type = "texture",
					style_id = "texture_icon_disabled_id",
					texture_id = "texture_icon_id",
					content_check_function = function (content)
						return content.button_hotspot.disable_button
					end
				},
				{
					pass_type = "texture",
					style_id = "texture_text_bg_id",
					texture_id = "texture_text_bg_id"
				},
				{
					pass_type = "texture",
					style_id = "texture_text_bg_effect_id",
					texture_id = "texture_text_bg_effect_id"
				},
				{
					style_id = "text",
					pass_type = "text",
					text_id = "text",
					content_check_function = function (content)
						local button_hotspot = content.button_hotspot

						return not button_hotspot.disable_button
					end
				},
				{
					style_id = "text_hover",
					pass_type = "text",
					text_id = "text",
					content_check_function = function (content)
						local button_hotspot = content.button_hotspot

						return not button_hotspot.disable_button
					end
				},
				{
					style_id = "text_disabled",
					pass_type = "text",
					text_id = "text",
					content_check_function = function (content)
						return content.button_hotspot.disable_button
					end
				},
				{
					style_id = "text_shadow",
					pass_type = "text",
					text_id = "text"
				}
			}
		},
		content = {
			texture_id = "button_small",
			texture_text_bg_id = "item_slot_side_fade",
			texture_hover_id = "button_small_glow",
			texture_text_bg_effect_id = "item_slot_side_effect",
			text = text or "n/a",
			texture_icon_id = icon or "icons_placeholder",
			button_hotspot = {}
		},
		style = {
			button_hotspot = {
				size = {
					350,
					114
				},
				offset = {
					-50,
					-57,
					0
				}
			},
			texture_icon_id = {
				vertical_alignment = "center",
				horizontal_alignment = "center",
				texture_size = {
					50,
					50
				},
				color = {
					255,
					255,
					255,
					255
				},
				offset = {
					0,
					5,
					3
				}
			},
			texture_icon_id = {
				vertical_alignment = "center",
				horizontal_alignment = "center",
				texture_size = {
					50,
					50
				},
				color = Colors.get_color_table_with_alpha("font_button_normal", 255),
				offset = {
					0,
					5,
					3
				}
			},
			texture_icon_hover_id = {
				vertical_alignment = "center",
				horizontal_alignment = "center",
				texture_size = {
					50,
					50
				},
				color = Colors.get_color_table_with_alpha("white", 255),
				offset = {
					0,
					5,
					4
				}
			},
			texture_icon_disabled_id = {
				vertical_alignment = "center",
				horizontal_alignment = "center",
				texture_size = {
					50,
					50
				},
				color = {
					255,
					70,
					70,
					70
				},
				offset = {
					0,
					5,
					4
				}
			},
			texture_id = {
				vertical_alignment = "center",
				horizontal_alignment = "center",
				texture_size = {
					113,
					114
				},
				color = {
					255,
					255,
					255,
					255
				},
				offset = {
					0,
					0,
					2
				}
			},
			texture_disabled_id = {
				vertical_alignment = "center",
				horizontal_alignment = "center",
				texture_size = {
					113,
					114
				},
				color = {
					255,
					120,
					120,
					120
				},
				offset = {
					0,
					0,
					2
				}
			},
			texture_hover_id = {
				vertical_alignment = "center",
				horizontal_alignment = "center",
				texture_size = {
					113,
					114
				},
				color = {
					0,
					255,
					255,
					255
				},
				offset = {
					0,
					0,
					3
				}
			},
			texture_text_bg_id = {
				vertical_alignment = "center",
				horizontal_alignment = "left",
				texture_size = {
					300,
					72
				},
				color = {
					255,
					0,
					0,
					0
				},
				offset = {
					0,
					5,
					0
				}
			},
			texture_text_bg_effect_id = {
				vertical_alignment = "center",
				horizontal_alignment = "left",
				texture_size = {
					300,
					76
				},
				color = Colors.get_color_table_with_alpha("font_title", 0),
				offset = {
					0,
					5,
					1
				}
			},
			text = {
				font_size = 52,
				upper_case = true,
				localize = false,
				word_wrap = false,
				horizontal_alignment = "left",
				vertical_alignment = "bottom",
				font_type = "hell_shark",
				size = {
					300,
					50
				},
				text_color = Colors.get_color_table_with_alpha("font_button_normal", 255),
				offset = {
					60,
					-28,
					3
				}
			},
			text_hover = {
				font_size = 52,
				upper_case = true,
				localize = false,
				word_wrap = false,
				horizontal_alignment = "left",
				vertical_alignment = "bottom",
				font_type = "hell_shark",
				size = {
					300,
					50
				},
				text_color = Colors.get_color_table_with_alpha("white", 0),
				offset = {
					60,
					-28,
					4
				}
			},
			text_disabled = {
				font_size = 52,
				upper_case = true,
				localize = false,
				word_wrap = false,
				horizontal_alignment = "left",
				vertical_alignment = "bottom",
				font_type = "hell_shark",
				size = {
					300,
					50
				},
				text_color = {
					255,
					70,
					70,
					70
				},
				offset = {
					60,
					-28,
					3
				}
			},
			text_shadow = {
				font_size = 52,
				upper_case = true,
				localize = false,
				word_wrap = false,
				horizontal_alignment = "left",
				vertical_alignment = "bottom",
				font_type = "hell_shark",
				size = {
					300,
					50
				},
				text_color = Colors.get_color_table_with_alpha("black", 255),
				offset = {
					62,
					-30,
					2
				}
			}
		},
		offset = {
			0,
			0,
			0
		},
		scenegraph_id = scenegraph_id
	}
end

function create_start_game_console_play_button(scenegraph_id, text)
	local passes = {}
	local content = {}
	local style = {}
	local text_name = "text"
	local text_name_shadow = text_name .. "_shadow"
	passes[#passes + 1] = {
		pass_type = "text",
		text_id = text_name,
		style_id = text_name,
		content_change_function = function (content, style)
			if content.locked then
				style.text_color = style.disabled_color
			else
				style.text_color = style.normal_color
			end
		end
	}
	passes[#passes + 1] = {
		pass_type = "text",
		text_id = text_name,
		style_id = text_name_shadow
	}
	content[text_name] = text
	local text_offset = {
		0,
		6,
		1
	}
	local text_style = {
		word_wrap = false,
		upper_case = true,
		localize = false,
		font_size = 48,
		horizontal_alignment = "center",
		vertical_alignment = "center",
		font_type = "hell_shark",
		text_color = Colors.get_color_table_with_alpha("white", 255),
		disabled_color = Colors.get_color_table_with_alpha("dark_gray", 255),
		normal_color = Colors.get_color_table_with_alpha("white", 255),
		offset = {
			text_offset[1],
			text_offset[2],
			text_offset[3]
		}
	}
	local text_shadow_style = table.clone(text_style)
	text_shadow_style.text_color = {
		255,
		0,
		0,
		0
	}
	text_shadow_style.offset = {
		text_offset[1] + 2,
		text_offset[2] - 2,
		text_offset[3] - 1
	}
	style[text_name] = text_style
	style[text_name_shadow] = text_shadow_style
	local divider_name = "divider"
	passes[#passes + 1] = {
		pass_type = "texture",
		texture_id = divider_name,
		style_id = divider_name
	}
	content[divider_name] = "divider_01_top"
	style[divider_name] = {
		vertical_alignment = "center",
		horizontal_alignment = "center",
		texture_size = {
			264,
			32
		},
		color = {
			255,
			255,
			255,
			255
		},
		offset = {
			0,
			-36,
			1
		}
	}
	local input_texture_name = "input_texture"
	passes[#passes + 1] = {
		pass_type = "texture",
		texture_id = input_texture_name,
		style_id = input_texture_name,
		content_change_function = function (content, style)
			if content.locked then
				style.saturated = true
			else
				style.saturated = false
			end
		end
	}
	content[input_texture_name] = ""
	style[input_texture_name] = {
		vertical_alignment = "center",
		horizontal_alignment = "center",
		texture_size = {
			64,
			64
		},
		color = {
			255,
			255,
			255,
			255
		},
		offset = {
			0,
			-34,
			2
		}
	}
	local glow_name = "glow"
	passes[#passes + 1] = {
		pass_type = "texture",
		texture_id = glow_name,
		style_id = glow_name,
		content_check_function = function (content)
			return not content.locked
		end
	}
	content[glow_name] = "play_glow_mask"
	style[glow_name] = {
		vertical_alignment = "center",
		horizontal_alignment = "center",
		texture_size = {
			256,
			126
		},
		color = Colors.get_color_table_with_alpha("font_title", 255),
		offset = {
			0,
			33,
			-1
		}
	}
	local widget = {
		element = {
			passes = passes
		},
		content = content,
		style = style,
		offset = {
			0,
			0,
			0
		},
		scenegraph_id = scenegraph_id
	}

	return widget
end

local info_title_style = {
	font_size = 50,
	upper_case = true,
	localize = false,
	use_shadow = true,
	word_wrap = false,
	horizontal_alignment = "center",
	vertical_alignment = "bottom",
	dynamic_font_size = true,
	font_type = "hell_shark_header",
	text_color = Colors.get_color_table_with_alpha("font_title", 255),
	offset = {
		0,
		0,
		2
	}
}
local info_description_style = {
	font_size = 28,
	upper_case = false,
	localize = false,
	use_shadow = true,
	word_wrap = true,
	horizontal_alignment = "center",
	vertical_alignment = "top",
	font_type = "hell_shark_header",
	text_color = Colors.get_color_table_with_alpha("font_default", 255),
	offset = {
		0,
		0,
		2
	}
}
local widgets = {
	info_description_background = UIWidgets.create_rect_with_outer_frame("window_info_background", scenegraph_definition.window_info_background.size, "frame_outer_fade_02", nil, UISettings.console_start_game_menu_rect_color),
	info_title = UIWidgets.create_simple_text(Localize("start_game_window_weave_title"), "info_title", nil, nil, info_title_style),
	info_divider = UIWidgets.create_simple_texture("divider_01_top", "info_divider"),
	info_description = UIWidgets.create_simple_text(Localize("start_game_window_weave_desc"), "info_description", nil, nil, info_description_style),
	weave_setting = create_setting_button("game_option_1", Localize("start_game_window_weave_title"), nil, "level_image_any"),
	play_button_console = create_start_game_console_play_button("play_button_console"),
	play_button = create_icon_and_name_button("play_button", "options_button_icon_quickplay", Localize("start_game_window_play"))
}
local selector_input_definition = {
	"weave_setting"
}

return {
	scenegraph_definition = scenegraph_definition,
	widgets = widgets,
	animation_definitions = animation_definitions,
	selector_input_definition = selector_input_definition
}
