local window_default_settings = UISettings.game_start_windows
local window_background = window_default_settings.background
local window_frame = window_default_settings.frame
local default_window_size = window_default_settings.size
local window_size = {
	default_window_size[1] + 70,
	default_window_size[2]
}
local list_size = {
	default_window_size[1],
	window_size[2] - 120
}
local list_entry_size = {
	default_window_size[1] - 50,
	64
}
local list_scrollbar_size = {
	16,
	list_size[2]
}
local weave_entry_spacing = 10
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
			185,
			0,
			1
		}
	},
	list_window = {
		vertical_alignment = "bottom",
		parent = "window",
		horizontal_alignment = "left",
		size = list_size,
		position = {
			30,
			20,
			10
		}
	},
	list = {
		vertical_alignment = "top",
		parent = "list_window",
		horizontal_alignment = "left",
		size = list_size,
		position = {
			0,
			-list_size[2],
			0
		}
	},
	list_anchor = {
		vertical_alignment = "top",
		parent = "list_window",
		horizontal_alignment = "left",
		size = list_entry_size,
		position = {
			0,
			0,
			0
		}
	},
	list_scrollbar = {
		vertical_alignment = "top",
		parent = "list_window",
		horizontal_alignment = "right",
		size = list_scrollbar_size,
		position = {
			10,
			0,
			10
		}
	},
	info_title = {
		vertical_alignment = "top",
		parent = "window",
		horizontal_alignment = "center",
		size = {
			window_size[1] - 40,
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
	}
}
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
local wind_colors = {
	life = Colors.get_color_table_with_alpha("lime_green", 255),
	metal = Colors.get_color_table_with_alpha("yellow", 255),
	death = Colors.get_color_table_with_alpha("dark_magenta", 255),
	heavens = Colors.get_color_table_with_alpha("deep_sky_blue", 255),
	light = Colors.get_color_table_with_alpha("white", 255),
	beasts = Colors.get_color_table_with_alpha("saddle_brown", 255),
	fire = Colors.get_color_table_with_alpha("crimson", 255),
	shadow = Colors.get_color_table_with_alpha("gray", 255)
}

local function apply_color_values(color, color_multiplier, include_alpha)
	local target = {
		255,
		255,
		255,
		255
	}
	color_multiplier = color_multiplier or 1

	if include_alpha then
		target[1] = color[1]
	end

	target[2] = math.floor(color[2] * color_multiplier)
	target[3] = math.floor(color[3] * color_multiplier)
	target[4] = math.floor(color[4] * color_multiplier)

	return target
end

local function create_weave_entry(index, weave_template_id, weave_template, masked, scenegraph_id)
	local scenegraph_id = scenegraph_id or "list_anchor"
	local entry_spacing = weave_entry_spacing
	local masked = masked
	local entry_icon_size = {
		64,
		64
	}
	local entry_size = list_entry_size
	local title = weave_template.tier .. ". " .. Localize(weave_template.display_name)
	local objectives = weave_template.objectives
	local level_id = objectives[1].level_id
	local wind_name = weave_template.wind
	local wind_settings = WindSettings[wind_name]
	local thumbnail_icon = wind_settings.thumbnail_icon
	local wind_color = wind_colors[wind_name]
	local thumbnail_icon_settings = UIAtlasHelper.get_atlas_settings_by_texture_name(thumbnail_icon)
	local thumbnail_icon_size = thumbnail_icon_settings.size
	local level_settings = LevelSettings[level_id]
	local level_display_name = Localize(level_settings.display_name)
	local wind_symbol_glow_color = apply_color_values(wind_color)
	local symbol_bg_glow_color = apply_color_values(wind_color, 0.7)
	local background_effect_color = apply_color_values(wind_color, 0.7)
	local symbol_frame_selected_glow_color = apply_color_values(wind_color, 0.7)
	local entry_frame_settings = UIFrameSettings.menu_frame_09
	local entry_frame_spacing = entry_frame_settings.texture_sizes.horizontal[2]
	local entry_hover_frame_settings = UIFrameSettings.frame_outer_glow_04
	local entry_hover_frame_spacing = entry_hover_frame_settings.texture_sizes.horizontal[2]
	local entry_new_frame_settings = UIFrameSettings.frame_outer_glow_01
	local entry_new_frame_spacing = entry_new_frame_settings.texture_sizes.horizontal[2]
	local element = {
		passes = {
			{
				style_id = "background",
				pass_type = "hotspot",
				content_id = "button_hotspot"
			},
			{
				pass_type = "tiled_texture",
				style_id = "background",
				texture_id = "background"
			},
			{
				pass_type = "texture",
				style_id = "background_fade",
				texture_id = "background_fade"
			},
			{
				pass_type = "texture",
				style_id = "background_effect",
				texture_id = "background_effect"
			},
			{
				pass_type = "texture_frame",
				style_id = "entry_frame",
				texture_id = "entry_frame"
			},
			{
				pass_type = "texture_frame",
				style_id = "hover_frame",
				texture_id = "hover_frame"
			},
			{
				pass_type = "texture",
				style_id = "symbol_frame",
				texture_id = "symbol_frame"
			},
			{
				pass_type = "texture",
				style_id = "symbol_frame_selected",
				texture_id = "symbol_frame_selected"
			},
			{
				pass_type = "texture",
				style_id = "symbol_frame_selected_glow",
				texture_id = "symbol_frame_selected_glow"
			},
			{
				pass_type = "texture",
				style_id = "symbol_bg",
				texture_id = "symbol_bg"
			},
			{
				pass_type = "texture",
				style_id = "symbol_bg_glow",
				texture_id = "symbol_bg_glow"
			},
			{
				pass_type = "texture",
				style_id = "wind_symbol",
				texture_id = "wind_symbol"
			},
			{
				style_id = "title",
				pass_type = "text",
				text_id = "title"
			},
			{
				style_id = "title_shadow",
				pass_type = "text",
				text_id = "title"
			},
			{
				style_id = "level_name",
				pass_type = "text",
				text_id = "level_name"
			},
			{
				style_id = "level_name_shadow",
				pass_type = "text",
				text_id = "level_name"
			},
			{
				style_id = "new_frame",
				texture_id = "new_frame",
				pass_type = "texture_frame",
				content_check_function = function (content)
					return content.new
				end,
				content_change_function = function (content, style)
					local progress = 0.5 + math.sin(Application.time_since_launch() * 5) * 0.5
					style.color[1] = 55 + progress * 200
				end
			},
			{
				pass_type = "texture",
				style_id = "lock_texture",
				texture_id = "lock_texture",
				content_check_function = function (content)
					return content.locked
				end
			},
			{
				pass_type = "texture",
				style_id = "equipped_texture",
				texture_id = "equipped_texture",
				content_check_function = function (content)
					return content.equipped
				end
			},
			{
				pass_type = "texture",
				style_id = "new_texture",
				texture_id = "new_texture",
				content_check_function = function (content)
					return content.new
				end
			}
		}
	}
	local content = {
		symbol_frame = "weave_item_icon_border",
		symbol_frame_selected_glow = "weave_item_selected_glow",
		symbol_frame_selected = "weave_item_icon_border_selected",
		new_texture = "list_item_tag_new",
		symbol_bg_glow = "winds_icon_background_glow",
		lock_texture = "achievement_symbol_lock",
		equipped_texture = "matchmaking_checkbox",
		symbol_bg = "weave_item_icon_border_center",
		background_fade = "button_bg_fade",
		background = "button_bg_01",
		template_id = weave_template_id,
		weave_template_name = weave_template.name,
		button_hotspot = {},
		title = title,
		level_name = level_display_name,
		background_effect = (masked and "weave_button_passive_glow") or "weave_button_passive_glow_unmasked",
		hover_frame = entry_hover_frame_settings.texture,
		new_frame = entry_new_frame_settings.texture,
		entry_frame = entry_frame_settings.texture,
		wind_symbol = thumbnail_icon,
		wind_symbol_glow = thumbnail_icon .. "_glow"
	}
	local color_multiplier = 0.8
	local title_select_color = Colors.get_color_table_with_alpha("font_title", 255)
	local title_normal_color = {
		255,
		title_select_color[2] * color_multiplier,
		title_select_color[3] * color_multiplier,
		title_select_color[4] * color_multiplier
	}
	local style = {
		hotspot = {
			size = {
				entry_size[1],
				entry_size[2]
			},
			offset = {
				0,
				0,
				0
			}
		},
		title = {
			word_wrap = false,
			upper_case = false,
			localize = false,
			font_size = 26,
			horizontal_alignment = "left",
			vertical_alignment = "bottom",
			dynamic_font_size = true,
			font_type = (masked and "hell_shark_header_masked") or "hell_shark_header",
			text_color = title_normal_color,
			default_text_color = title_normal_color,
			select_text_color = title_select_color,
			offset = {
				entry_icon_size[1] + 10,
				entry_size[2] / 2 - 5,
				4
			},
			size = {
				entry_size[1] - (entry_icon_size[1] + 20),
				entry_size[2]
			}
		},
		title_shadow = {
			word_wrap = false,
			upper_case = false,
			localize = false,
			font_size = 26,
			horizontal_alignment = "left",
			vertical_alignment = "bottom",
			dynamic_font_size = true,
			font_type = (masked and "hell_shark_header_masked") or "hell_shark_header",
			text_color = Colors.get_color_table_with_alpha("black", 255),
			normal_color = Colors.get_color_table_with_alpha("black", 255),
			offset = {
				entry_icon_size[1] + 10 + 2,
				entry_size[2] / 2 - 7,
				3
			},
			size = {
				entry_size[1] - (entry_icon_size[1] + 20),
				entry_size[2]
			}
		},
		level_name = {
			word_wrap = true,
			font_size = 22,
			localize = false,
			horizontal_alignment = "left",
			vertical_alignment = "top",
			dynamic_font_size = true,
			font_type = (masked and "hell_shark_masked") or "hell_shark",
			text_color = Colors.get_color_table_with_alpha("font_default", 255),
			default_text_color = Colors.get_color_table_with_alpha("font_default", 255),
			select_text_color = Colors.get_color_table_with_alpha("white", 255),
			offset = {
				entry_icon_size[1] + 10,
				-(entry_size[2] / 2 + 0),
				4
			},
			size = {
				entry_size[1] - (entry_icon_size[1] + 20),
				entry_size[2]
			}
		},
		level_name_shadow = {
			word_wrap = true,
			font_size = 22,
			localize = false,
			horizontal_alignment = "left",
			vertical_alignment = "top",
			dynamic_font_size = true,
			font_type = (masked and "hell_shark_masked") or "hell_shark",
			text_color = Colors.get_color_table_with_alpha("black", 255),
			normal_color = Colors.get_color_table_with_alpha("black", 255),
			offset = {
				entry_icon_size[1] + 10 + 2,
				-(entry_size[2] / 2 + 2),
				3
			},
			size = {
				entry_size[1] - (entry_icon_size[1] + 20),
				entry_size[2]
			}
		},
		background = {
			masked = masked,
			size = {
				entry_size[1],
				entry_size[2]
			},
			color = {
				255,
				255,
				255,
				255
			},
			texture_tiling_size = {
				480,
				270
			},
			offset = {
				0,
				0,
				0
			}
		},
		background_fade = {
			masked = masked,
			size = {
				entry_size[1],
				entry_size[2]
			},
			color = {
				200,
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
		background_effect = {
			masked = masked,
			size = {
				entry_size[1],
				entry_size[2]
			},
			color = background_effect_color,
			offset = {
				0,
				0,
				1
			}
		},
		hover_frame = {
			masked = masked,
			texture_size = entry_hover_frame_settings.texture_size,
			texture_sizes = entry_hover_frame_settings.texture_sizes,
			color = {
				0,
				255,
				255,
				255
			},
			offset = {
				0,
				0,
				0
			},
			size = {
				entry_size[1],
				entry_size[2]
			},
			frame_margins = {
				-entry_hover_frame_spacing,
				-entry_hover_frame_spacing
			}
		},
		new_frame = {
			masked = masked,
			texture_size = entry_new_frame_settings.texture_size,
			texture_sizes = entry_new_frame_settings.texture_sizes,
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
			},
			size = {
				entry_size[1],
				entry_size[2]
			},
			frame_margins = {
				-entry_new_frame_spacing,
				-entry_new_frame_spacing
			}
		},
		entry_frame = {
			masked = masked,
			texture_size = entry_frame_settings.texture_size,
			texture_sizes = entry_frame_settings.texture_sizes,
			color = {
				255,
				255,
				255,
				255
			},
			size = {
				entry_size[1],
				entry_size[2]
			},
			offset = {
				0,
				0,
				3
			}
		},
		lock_texture = {
			masked = masked,
			size = {
				56,
				40
			},
			color = {
				255,
				255,
				255,
				255
			},
			offset = {
				entry_size[1] - 56,
				entry_size[2] / 2 - 20,
				2
			}
		},
		equipped_texture = {
			masked = masked,
			size = {
				37,
				31
			},
			color = Colors.get_color_table_with_alpha("green", 255),
			offset = {
				entry_size[1] - 37,
				entry_size[2] / 2 - 15.5,
				2
			}
		},
		new_texture = {
			masked = masked,
			size = {
				126,
				51
			},
			color = Colors.get_color_table_with_alpha("white", 255),
			offset = {
				entry_size[1] - 120,
				entry_size[2] / 2 - 25.5,
				2
			}
		},
		symbol_frame = {
			masked = masked,
			size = {
				64,
				64
			},
			color = Colors.get_color_table_with_alpha("white", 255),
			offset = {
				0,
				entry_size[2] / 2 - 32,
				5
			}
		},
		symbol_frame_selected = {
			vertical_alignment = "center",
			horizontal_alignment = "left",
			masked = masked,
			texture_size = {
				73,
				73
			},
			default_size = {
				73,
				73
			},
			color = Colors.get_color_table_with_alpha("white", 255),
			offset = {
				-4.5,
				0,
				6
			},
			default_offset = {
				-4.5,
				0,
				6
			}
		},
		symbol_frame_selected_glow = {
			vertical_alignment = "center",
			horizontal_alignment = "left",
			masked = masked,
			texture_size = {
				73,
				73
			},
			default_size = {
				73,
				73
			},
			color = symbol_frame_selected_glow_color,
			offset = {
				-4.5,
				0,
				6
			},
			default_offset = {
				-4.5,
				0,
				7
			}
		},
		symbol_bg = {
			masked = masked,
			size = {
				64,
				64
			},
			color = Colors.get_color_table_with_alpha("white", 255),
			offset = {
				0,
				entry_size[2] / 2 - 32,
				8
			}
		},
		symbol_bg_glow = {
			masked = masked,
			size = {
				51,
				53
			},
			color = symbol_bg_glow_color,
			offset = {
				7,
				entry_size[2] / 2 - 26.5,
				9
			}
		},
		wind_symbol = {
			masked = masked,
			size = thumbnail_icon_size,
			color = wind_symbol_glow_color,
			offset = {
				32 - thumbnail_icon_size[1] / 2,
				32 - thumbnail_icon_size[2] / 2,
				10
			}
		}
	}
	local entry_widget = {
		element = element,
		content = content,
		style = style,
		offset = {
			entry_spacing + 2,
			-(index - 1) * list_entry_size[2] - index * entry_spacing,
			0
		},
		scenegraph_id = scenegraph_id
	}

	return entry_widget
end

local function create_simple_hotspot(scenegraph_id)
	local size = scenegraph_definition[scenegraph_id].size

	return {
		element = {
			passes = {
				{
					style_id = "hotspot",
					pass_type = "hotspot",
					content_id = "hotspot"
				}
			}
		},
		content = {
			hotspot = {}
		},
		style = {
			hotspot = {
				color = {
					128,
					255,
					255,
					255
				},
				size = {
					size[1],
					size[2]
				},
				offset = {
					0,
					0,
					0
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

local widgets = {
	mask = UIWidgets.create_simple_texture("mask_rect", "list_window"),
	info_title = UIWidgets.create_simple_text(Localize("start_game_window_weave_title"), "info_title", nil, nil, info_title_style),
	info_divider = UIWidgets.create_simple_texture("divider_01_top", "info_divider"),
	list_hotspot = create_simple_hotspot("list_window"),
	list_scrollbar = UIWidgets.create_chain_scrollbar("list_scrollbar", "list_window", scenegraph_definition.list_scrollbar.size),
	window = UIWidgets.create_rect_with_outer_frame("window", scenegraph_definition.window.size, "frame_outer_fade_02", nil, UISettings.console_start_game_menu_rect_color)
}
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
				local anim_progress = math.easeOutCubic(progress)
				params.render_settings.alpha_multiplier = 1 - anim_progress
			end,
			on_complete = function (ui_scenegraph, scenegraph_definition, widgets, params)
				return
			end
		}
	}
}

return {
	num_visible_weave_entries = 10,
	entry_size = list_entry_size,
	entry_spacing = weave_entry_spacing,
	widgets = widgets,
	create_weave_entry_func = create_weave_entry,
	scenegraph_definition = scenegraph_definition,
	animation_definitions = animation_definitions
}
