local friend_entry_size = {
	350,
	40
}
local num_visible_friends = 6
local scenegraph_definition = {
	screen = {
		scale = "fit",
		size = {
			1920,
			1080
		},
		position = {
			0,
			0,
			UILayer.chat
		}
	},
	background = {
		vertical_alignment = "center",
		parent = "screen",
		horizontal_alignment = "center",
		size = {
			500,
			700
		},
		position = {
			0,
			0,
			1
		}
	},
	header = {
		vertical_alignment = "top",
		parent = "background",
		horizontal_alignment = "center"
	},
	party_header = {
		vertical_alignment = "center",
		parent = "background",
		horizontal_alignment = "center",
		position = {
			75,
			210,
			2
		}
	},
	header_divider = {
		vertical_alignment = "top",
		parent = "header",
		horizontal_alignment = "center",
		size = {
			264,
			32
		},
		position = {
			0,
			-80,
			1
		}
	},
	bottom_rect = {
		vertical_alignment = "bottom",
		parent = "screen",
		horizontal_alignment = "center",
		size = {
			1920,
			65
		}
	},
	party_divider = {
		vertical_alignment = "center",
		parent = "background",
		horizontal_alignment = "center",
		size = {
			264,
			32
		},
		position = {
			0,
			0,
			1
		}
	},
	friends_header = {
		vertical_alignment = "center",
		parent = "background",
		horizontal_alignment = "left",
		size = {
			350,
			100
		},
		position = {
			75,
			-32,
			2
		}
	},
	friends_base = {
		vertical_alignment = "bottom",
		parent = "background",
		horizontal_alignment = "center",
		size = friend_entry_size,
		position = {
			0,
			friend_entry_size[2] * num_visible_friends + 40,
			10
		}
	},
	friends_mask = {
		vertical_alignment = "bottom",
		parent = "background",
		horizontal_alignment = "center",
		size = {
			friend_entry_size[1],
			friend_entry_size[2] * num_visible_friends
		},
		position = {
			0,
			40,
			4
		}
	}
}

local function create_party_entry(name, career, offset_y)
	local career_portrait = "small_unit_frame_portrait_default"

	if career then
		career_portrait = "small_" .. career.portrait_image
	end

	return {
		scenegraph_id = "party_header",
		element = {
			passes = {
				{
					style_id = "text",
					pass_type = "text",
					text_id = "text_id"
				},
				{
					pass_type = "texture",
					style_id = "texture",
					texture_id = "texture_id"
				}
			}
		},
		content = {
			text_id = name or Localize("friends_view_free_slot"),
			texture_id = career_portrait
		},
		style = {
			text = {
				vertical_alignment = "center",
				font_size = 24,
				localize = false,
				horizontal_alignment = "left",
				word_wrap = true,
				font_type = "hell_shark",
				text_color = (career and Colors.get_color_table_with_alpha("white", 255)) or {
					255,
					80,
					80,
					80
				},
				offset = {
					35,
					0,
					1
				}
			},
			texture = {
				vertical_alignment = "center",
				horizontal_alignment = "left",
				texture_size = {
					30,
					35
				},
				color = Colors.get_color_table_with_alpha("white", 255),
				offset = {
					0,
					0,
					0
				}
			}
		},
		offset = {
			0,
			(offset_y and offset_y) or 0,
			0
		}
	}
end

local function create_friend_entry(name, online, offset_y, friend)
	return {
		scenegraph_id = "friends_base",
		element = {
			passes = {
				{
					pass_type = "texture",
					style_id = "indicator_texture",
					texture_id = "indicator_texture_id"
				},
				{
					pass_type = "texture",
					style_id = "invite_texture",
					texture_id = "invite_texture_id"
				},
				{
					pass_type = "texture",
					style_id = "selected_texture",
					texture_id = "texture_id",
					content_check_function = function (content)
						return content.selected
					end
				},
				{
					style_id = "text",
					pass_type = "text",
					text_id = "text_id"
				}
			}
		},
		content = {
			indicator_texture_id = "page_indicator",
			texture_id = "rect_masked",
			selected = false,
			invite_texture_id = "friends_icon_invite",
			text_id = name,
			friend = friend
		},
		style = {
			text = {
				vertical_alignment = "center",
				font_size = 20,
				localize = false,
				horizontal_alignment = "left",
				word_wrap = true,
				font_type = "hell_shark_masked",
				text_color = (online and Colors.get_color_table_with_alpha("font_title", 255)) or {
					255,
					80,
					80,
					80
				},
				offset = {
					35,
					0,
					2
				}
			},
			texture = {
				color = (online and {
					255,
					0,
					255,
					0
				}) or {
					255,
					255,
					0,
					0
				},
				offset = {
					0,
					0,
					0
				}
			},
			selected_texture = {
				color = {
					200,
					255,
					255,
					255
				},
				offset = {
					0,
					0,
					1
				}
			},
			invite_texture = {
				vertical_alignment = "center",
				horizontal_alignment = "right",
				texture_size = {
					32,
					32
				},
				color = {
					0,
					255,
					255,
					255
				},
				offset = {
					40,
					0,
					10
				}
			},
			indicator_texture = {
				vertical_alignment = "center",
				masked = true,
				horizontal_alignment = "left",
				texture_size = {
					20,
					20
				},
				color = (online and {
					255,
					0,
					255,
					0
				}) or {
					255,
					255,
					0,
					0
				},
				offset = {
					10,
					0,
					2
				}
			}
		},
		offset = {
			0,
			(offset_y and offset_y) or 0,
			0
		}
	}
end

local function create_loading_icon()
	return {
		scenegraph_id = "friends_mask",
		element = {
			passes = {
				{
					style_id = "loading_icon",
					texture_id = "loading_icon_id",
					pass_type = "rotated_texture",
					content_change_function = function (content, style)
						style.angle = style.angle + 0.25
					end
				}
			}
		},
		content = {
			loading_icon_id = "friends_icon_refresh"
		},
		style = {
			loading_icon = {
				vertical_alignment = "center",
				horizontal_alignment = "center",
				angle = 0,
				pivot = {
					16,
					16
				},
				texture_size = {
					32,
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
					0,
					10
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

local generic_input_actions = {
	default = {
		{
			input_action = "back",
			priority = 5,
			description_text = "input_description_back"
		}
	},
	only_refresh = {
		actions = {
			{
				input_action = "special_1",
				priority = 1,
				description_text = (PLATFORM == "ps4" and "matchmaking_join_game") or "menu_description_refresh"
			}
		}
	},
	friend = {
		actions = {
			{
				input_action = "confirm",
				priority = 2,
				description_text = "input_description_show_profile"
			}
		}
	},
	friend_refresh = {
		actions = {
			{
				input_action = "special_1",
				priority = 1,
				description_text = (PLATFORM == "ps4" and "matchmaking_join_game") or "menu_description_refresh"
			},
			{
				input_action = "confirm",
				priority = 2,
				description_text = "input_description_show_profile"
			}
		}
	},
	friend_invite = {
		actions = {
			{
				input_action = "confirm",
				priority = 2,
				description_text = "input_description_show_profile"
			},
			{
				input_action = "refresh",
				priority = 3,
				description_text = "input_description_invite"
			}
		}
	},
	friend_invite_refresh = {
		actions = {
			{
				input_action = "special_1",
				priority = 1,
				description_text = (PLATFORM == "ps4" and "matchmaking_join_game") or "menu_description_refresh"
			},
			{
				input_action = "confirm",
				priority = 2,
				description_text = "input_description_show_profile"
			},
			{
				input_action = "refresh",
				priority = 3,
				description_text = "input_description_invite"
			}
		}
	}
}
local header_text_style = {
	vertical_alignment = "top",
	font_size = 56,
	localize = true,
	horizontal_alignment = "center",
	word_wrap = true,
	font_type = "hell_shark_header",
	text_color = Colors.get_color_table_with_alpha("font_title", 255),
	offset = {
		0,
		-20,
		2
	}
}
local party_header_text_style = {
	vertical_alignment = "center",
	font_size = 36,
	localize = false,
	horizontal_alignment = "left",
	word_wrap = true,
	font_type = "hell_shark_header",
	text_color = Colors.get_color_table_with_alpha("font_title", 255),
	offset = {
		0,
		0,
		0
	}
}
local widget_definitions = {
	background = UIWidgets.create_background_with_frame("background", {
		500,
		700
	}, "mission_select_screen_bg", "menu_frame_12"),
	header = UIWidgets.create_simple_text("friend_list_friends", "header", nil, nil, header_text_style),
	party_header = UIWidgets.create_simple_text(string.upper(Localize("hero_view_player_list_party")), "party_header", nil, nil, party_header_text_style),
	friends_header = UIWidgets.create_simple_text(string.upper(Localize("lb_search_type_friends")), "friends_header", nil, nil, party_header_text_style),
	header_divider = UIWidgets.create_simple_texture("divider_01_top", "header_divider"),
	party_divider = UIWidgets.create_simple_texture("divider_01_top", "party_divider"),
	mask = UIWidgets.create_simple_texture("mask_rect", "friends_mask"),
	friends_bg = UIWidgets.create_background_with_frame("friends_mask", {
		friend_entry_size[1] + 20,
		friend_entry_size[2] * num_visible_friends + 20
	}, "mission_select_screen_bg", "menu_frame_12"),
	loading_icon = create_loading_icon(),
	screen_fade = UIWidgets.create_simple_texture("gradient_dice_game_reward", "screen")
}
local entry_definitions = {
	create_party_entry = create_party_entry,
	create_friend_entry = create_friend_entry,
	friend_entry_size = friend_entry_size
}

return {
	generic_input_actions = generic_input_actions,
	widget_definitions = widget_definitions,
	scenegraph_definition = scenegraph_definition,
	entry_definitions = entry_definitions,
	num_visible_friends = num_visible_friends
}
