local SIZE_X = 1920
local SIZE_Y = 1080
local RETAINED_MODE_ENABLED = true
local scenegraph_definition = {
	root = {
		scale = "hud_scale_fit",
		position = {
			0,
			0,
			UILayer.hud
		},
		size = {
			SIZE_X,
			SIZE_Y
		}
	},
	ability_root = {
		vertical_alignment = "bottom",
		parent = "root",
		horizontal_alignment = "right",
		size = {
			0,
			0
		},
		position = {
			0,
			60,
			0
		}
	}
}

if not IS_WINDOWS then
	scenegraph_definition.root.scale = "hud_fit"
	scenegraph_definition.root.is_root = false
end

local function create_cooldown_widget(scenegraph_id, amount)
	local scenegraph_id = scenegraph_id
	local size = scenegraph_definition[scenegraph_id].size
	local definition = {
		element = {
			passes = {
				{
					pass_type = "texture",
					style_id = "texture_background",
					texture_id = "texture_background",
					retained_mode = RETAINED_MODE_ENABLED
				}
			}
		},
		content = {
			texture_background = "hud_ability_bg"
		},
		style = {
			texture_background = {
				color = {
					255,
					255,
					255,
					255
				}
			}
		},
		offset = {
			0,
			0,
			20
		},
		scenegraph_id = scenegraph_id
	}
	local icon_size = {
		25,
		25
	}
	local icon_center_position = {
		size[1] / 2 - icon_size[1] / 2,
		size[2] / 2 - icon_size[2] / 2
	}
	local x = 0
	local y = 0
	local r = 40
	local start_progress = 0.75

	for i = 1, amount, 1 do
		local real_index = i - 1
		local fraction = real_index / amount
		local rotation_progress = (start_progress + fraction) % 1
		local degress = rotation_progress * 360
		local angle = -((degress * math.pi) / 180)
		local ptx = x + r * math.cos(angle)
		local pty = y + r * math.sin(angle)
		local passes = definition.element.passes
		local content = definition.content
		local style = definition.style
		local style_name = "icon_" .. i
		passes[#passes + 1] = {
			pass_type = "texture",
			texture_id = "icon",
			style_id = style_name,
			retained_mode = RETAINED_MODE_ENABLED
		}
		style[style_name] = {
			size = icon_size,
			offset = {
				icon_center_position[1] + ptx,
				icon_center_position[2] + pty,
				1
			},
			color = {
				255,
				255,
				255,
				255
			}
		}
		content.icon = "mask_rect"
		content.amount = amount
	end

	return definition
end

local career_specific_data = {
	dr_engineer = {
		always_show_activated_ability_input = true,
		ability_top_texture_id = "icon_rotarygun",
		ability_effect = "gamepad_ability_effect_cog",
		lit_frame_id = "lit_frame_engineer"
	},
	default = {
		always_show_activated_ability_input = false,
		ability_top_texture_id = "ability_glow",
		ability_effect = "gamepad_ability_effect",
		lit_frame_id = false
	}
}

local function create_ability_widget()
	return {
		scenegraph_id = "ability_root",
		element = {
			passes = {
				{
					style_id = "ability_effect",
					texture_id = "ability_effect",
					pass_type = "texture",
					retained_mode = RETAINED_MODE_ENABLED,
					content_check_function = function (content)
						return not content.on_cooldown
					end,
					content_change_function = function (content, style)
						content.gamepad_active = Managers.input:is_device_active("gamepad")
						local player = Managers.player:local_player()
						local player_unit = player and player.player_unit

						if not ALIVE[player_unit] then
							return
						end

						local career_ext = ScriptUnit.extension(player_unit, "career_system")
						local career_name = career_ext:career_name()
						local career_data = career_specific_data[career_name] or career_specific_data.default

						for content_id, content_value in pairs(career_data) do
							content[content_id] = content_value
						end
					end
				},
				{
					pass_type = "texture",
					style_id = "ability_effect_top",
					texture_id = "ability_top_texture_id",
					retained_mode = RETAINED_MODE_ENABLED,
					content_check_function = function (content)
						return not content.on_cooldown
					end
				},
				{
					pass_type = "texture",
					style_id = "ability_effect_top",
					texture_id = "lit_frame_id",
					retained_mode = RETAINED_MODE_ENABLED,
					content_check_function = function (content)
						return not content.on_cooldown and content.lit_frame_id
					end
				},
				{
					pass_type = "texture",
					style_id = "activate_ability",
					texture_id = "activate_ability_id",
					retained_mode = RETAINED_MODE_ENABLED,
					content_check_function = function (content, style)
						return (not content.on_cooldown or content.always_show_activated_ability_input) and content.activate_ability_id and content.gamepad_active
					end
				},
				{
					style_id = "input_text",
					pass_type = "text",
					text_id = "input_text",
					retained_mode = RETAINED_MODE_ENABLED,
					content_check_function = function (content)
						return (not content.on_cooldown or content.always_show_activated_ability_input) and not content.gamepad_active
					end
				},
				{
					style_id = "input_text_shadow",
					pass_type = "text",
					text_id = "input_text",
					retained_mode = RETAINED_MODE_ENABLED,
					content_check_function = function (content)
						return (not content.on_cooldown or content.always_show_activated_ability_input) and not content.gamepad_active
					end
				}
			}
		},
		content = {
			on_cooldown = true,
			ability_bar_highlight = "hud_player_ability_bar_glow",
			ability_effect = "gamepad_ability_effect_cog",
			input_text = "",
			ability_top_texture_id = "icon_rotarygun"
		},
		style = {
			input_text = {
				word_wrap = false,
				font_size = 24,
				localize = false,
				horizontal_alignment = "center",
				vertical_alignment = "center",
				font_type = "hell_shark",
				text_color = Colors.get_color_table_with_alpha("white", 255),
				size = {
					22,
					18
				},
				offset = {
					-77,
					150,
					105
				}
			},
			input_text_shadow = {
				word_wrap = false,
				font_size = 24,
				localize = false,
				horizontal_alignment = "center",
				vertical_alignment = "center",
				font_type = "hell_shark",
				text_color = Colors.get_color_table_with_alpha("black", 255),
				size = {
					22,
					18
				},
				offset = {
					-75,
					148,
					104
				}
			},
			ability_effect = {
				vertical_alignment = "bottom",
				horizontal_alignment = "right",
				texture_size = {
					152,
					240
				},
				offset = {
					13,
					-10,
					100
				},
				color = {
					255,
					255,
					255,
					255
				}
			},
			ability_effect_top = {
				vertical_alignment = "bottom",
				horizontal_alignment = "right",
				texture_size = {
					118,
					136
				},
				offset = {
					-3,
					2,
					101
				},
				color = {
					255,
					255,
					255,
					255
				}
			},
			activate_ability = {
				vertical_alignment = "bottom",
				horizontal_alignment = "right",
				texture_size = {
					0,
					0
				},
				color = {
					255,
					255,
					255,
					255
				},
				offset = {
					-45,
					140,
					102
				}
			},
			ability_effect_right = {
				vertical_alignment = "center",
				horizontal_alignment = "center",
				texture_size = {
					110,
					170
				},
				offset = {
					0,
					-2,
					0
				},
				color = {
					0,
					255,
					255,
					255
				}
			},
			ability_effect_top_right = {
				vertical_alignment = "center",
				horizontal_alignment = "center",
				texture_size = {
					110,
					170
				},
				offset = {
					0,
					-2,
					1
				},
				color = {
					0,
					255,
					255,
					255
				}
			},
			ability_effect_left = {
				vertical_alignment = "bottom",
				horizontal_alignment = "left",
				texture_size = {
					110,
					170
				},
				offset = {
					-9,
					-2,
					0
				},
				color = {
					0,
					255,
					255,
					255
				}
			},
			ability_effect_top_left = {
				vertical_alignment = "bottom",
				horizontal_alignment = "left",
				texture_size = {
					110,
					170
				},
				offset = {
					-9,
					-2,
					1
				},
				color = {
					0,
					255,
					255,
					255
				}
			},
			ability_bar_highlight = {
				vertical_alignment = "bottom",
				horizontal_alignment = "center",
				texture_size = {
					488,
					70
				},
				color = {
					0,
					255,
					255,
					255
				},
				offset = {
					0,
					22,
					2
				}
			}
		},
		offset = {
			0,
			0,
			0
		}
	}
end

local widget_definitions = {
	ability = create_ability_widget()
}

return {
	scenegraph_definition = scenegraph_definition,
	widget_definitions = widget_definitions
}
