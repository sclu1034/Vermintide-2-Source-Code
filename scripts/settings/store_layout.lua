if not rawget(_G, "StoreLayoutConfig") then
	require("scripts/settings/store_dlc_settings")

	StoreLayoutConfig = {
		menu_options = {
			"featured",
			"cosmetics",
			"bundles",
			"dlc"
		},
		pages = {},
		structure = {},
		structure = {
			featured = 1,
			bundles = 1,
			dlc = 1,
			cosmetics = {
				bardin = {
					ranger = {
						weapon_skins = "item_details",
						hats = "item_details",
						skins = "item_details"
					},
					ironbreaker = {
						weapon_skins = "item_details",
						hats = "item_details",
						skins = "item_details"
					},
					slayer = {
						weapon_skins = "item_details",
						hats = "item_details",
						skins = "item_details"
					},
					engineer = {
						weapon_skins = "item_details"
					}
				},
				kruber = {
					mercenary = {
						weapon_skins = "item_details",
						hats = "item_details",
						skins = "item_details"
					},
					huntsman = {
						weapon_skins = "item_details",
						hats = "item_details",
						skins = "item_details"
					},
					knight = {
						weapon_skins = "item_details",
						hats = "item_details",
						skins = "item_details"
					},
					questingknight = {
						weapon_skins = "item_details"
					}
				},
				kerillian = {
					waywatcher = {
						weapon_skins = "item_details",
						hats = "item_details",
						skins = "item_details"
					},
					maidenguard = {
						weapon_skins = "item_details",
						hats = "item_details",
						skins = "item_details"
					},
					shade = {
						weapon_skins = "item_details",
						hats = "item_details",
						skins = "item_details"
					}
				},
				victor = {
					captain = {
						weapon_skins = "item_details",
						hats = "item_details",
						skins = "item_details"
					},
					bountyhunter = {
						weapon_skins = "item_details",
						hats = "item_details",
						skins = "item_details"
					},
					zealot = {
						weapon_skins = "item_details",
						hats = "item_details",
						skins = "item_details"
					}
				},
				sienna = {
					scholar = {
						weapon_skins = "item_details",
						hats = "item_details",
						skins = "item_details"
					},
					adept = {
						weapon_skins = "item_details",
						hats = "item_details",
						skins = "item_details"
					},
					unchained = {
						weapon_skins = "item_details",
						hats = "item_details",
						skins = "item_details"
					}
				}
			}
		}
	}
	StoreLayoutConfig.pages.featured = {
		sound_event_enter = "Play_hud_store_category_front",
		layout = "featured",
		display_name = "menu_store_panel_title_featured",
		slideshow = {},
		grid = {}
	}
	StoreLayoutConfig.pages.cosmetics = {
		sound_event_enter = "Play_hud_store_category_cosmetics",
		layout = "category",
		display_name = "menu_store_panel_title_cosmetics",
		item_filter = "item_type ~= bundle"
	}
	StoreLayoutConfig.pages.bundles = {
		sound_event_enter = "Play_hud_store_category_button",
		layout = "bundle_list",
		display_name = "menu_store_category_title_bundles",
		type = "item",
		item_filter = "item_type == bundle",
		sort_order = 3,
		category_button_texture = "store_category_icon_weapons"
	}
	local dlc_content = {}
	local platform = PLATFORM

	for _, settings in ipairs(StoreDlcSettings) do
		local unavailable_platforms = settings.unavailable_platforms

		if not unavailable_platforms or not table.find(unavailable_platforms, platform) then
			dlc_content[#dlc_content + 1] = settings.dlc_name
		end
	end

	StoreLayoutConfig.pages.dlc = {
		sound_event_enter = "Play_hud_store_category_dlc",
		layout = "dlc_list",
		display_name = "menu_store_panel_title_dlcs",
		type = "dlc",
		content = dlc_content
	}
	StoreLayoutConfig.pages.item_details = {
		layout = "item_detailed",
		display_name = "item_details",
		type = "item"
	}
	StoreLayoutConfig.pages.all_items = {
		layout = "item_list",
		display_name = "menu_store_category_title_all",
		type = "item"
	}
	StoreLayoutConfig.pages.hats = {
		sound_event_enter = "Play_hud_store_category_button",
		layout = "item_list",
		display_name = "menu_store_category_title_character_hats",
		type = "item",
		item_filter = "item_type == hat",
		sort_order = 1,
		category_button_texture = "store_category_icon_hats"
	}
	StoreLayoutConfig.pages.skins = {
		sound_event_enter = "Play_hud_store_category_button",
		layout = "item_list",
		display_name = "menu_store_category_title_character_skins",
		type = "item",
		item_filter = "item_type == skin",
		sort_order = 2,
		category_button_texture = "store_category_icon_skins"
	}
	StoreLayoutConfig.pages.weapon_skins = {
		sound_event_enter = "Play_hud_store_category_button",
		layout = "item_list",
		display_name = "menu_store_category_title_weapon_illusions",
		type = "item",
		item_filter = "item_type == weapon_skin",
		sort_order = 3,
		category_button_texture = "store_category_icon_weapons"
	}
	StoreLayoutConfig.pages.bardin = {
		sound_event_enter = "Play_hud_store_bardin",
		layout = "category",
		display_name = "inventory_name_dwarf_ranger",
		item_filter = "can_wield_dwarf_ranger",
		sort_order = 2,
		category_button_texture = "store_category_icon_bardin_ranger"
	}
	StoreLayoutConfig.pages.ironbreaker = {
		sound_event_enter = "Play_hud_store_category_button",
		layout = "category",
		display_name = "dr_ironbreaker",
		item_filter = "can_wield_dr_ironbreaker",
		sort_order = 2,
		category_button_texture = "store_category_icon_bardin_ironbreaker"
	}
	StoreLayoutConfig.pages.slayer = {
		sound_event_enter = "Play_hud_store_category_button",
		layout = "category",
		display_name = "dr_slayer",
		item_filter = "can_wield_dr_slayer",
		sort_order = 3,
		category_button_texture = "store_category_icon_bardin_slayer"
	}
	StoreLayoutConfig.pages.ranger = {
		sound_event_enter = "Play_hud_store_category_button",
		layout = "category",
		display_name = "dr_ranger",
		item_filter = "can_wield_dr_ranger",
		sort_order = 1,
		category_button_texture = "store_category_icon_bardin_ranger"
	}
	StoreLayoutConfig.pages.engineer = {
		sound_event_enter = "Play_hud_store_category_button",
		layout = "category",
		display_name = "dr_engineer",
		item_filter = "can_wield_dr_engineer",
		sort_order = 4,
		category_button_texture = "store_category_icon_bardin_engineer"
	}
	StoreLayoutConfig.pages.kruber = {
		sound_event_enter = "Play_hud_store_kruber",
		layout = "category",
		display_name = "inventory_name_empire_soldier",
		item_filter = "can_wield_empire_soldier",
		sort_order = 1,
		category_button_texture = "store_category_icon_kruber_mercenary"
	}
	StoreLayoutConfig.pages.huntsman = {
		sound_event_enter = "Play_hud_store_category_button",
		layout = "category",
		display_name = "es_huntsman",
		item_filter = "can_wield_es_huntsman",
		sort_order = 2,
		category_button_texture = "store_category_icon_kruber_huntsman"
	}
	StoreLayoutConfig.pages.knight = {
		sound_event_enter = "Play_hud_store_category_button",
		layout = "category",
		display_name = "es_knight",
		item_filter = "can_wield_es_knight",
		sort_order = 3,
		category_button_texture = "store_category_icon_kruber_knight"
	}
	StoreLayoutConfig.pages.mercenary = {
		sound_event_enter = "Play_hud_store_category_button",
		layout = "category",
		display_name = "es_mercenary",
		item_filter = "can_wield_es_mercenary",
		sort_order = 1,
		category_button_texture = "store_category_icon_kruber_mercenary"
	}
	StoreLayoutConfig.pages.questingknight = {
		sound_event_enter = "Play_hud_store_category_button",
		layout = "category",
		display_name = "es_questingknight",
		item_filter = "can_wield_es_questingknight",
		sort_order = 4,
		category_button_texture = "store_category_icon_kruber_questingknight"
	}
	StoreLayoutConfig.pages.kerillian = {
		sound_event_enter = "Play_hud_store_kerillian",
		layout = "category",
		display_name = "inventory_name_wood_elf",
		item_filter = "can_wield_wood_elf",
		sort_order = 3,
		category_button_texture = "store_category_icon_kerillian_waystalker"
	}
	StoreLayoutConfig.pages.waywatcher = {
		sound_event_enter = "Play_hud_store_category_button",
		layout = "category",
		display_name = "we_waywatcher",
		item_filter = "can_wield_we_waywatcher",
		sort_order = 1,
		category_button_texture = "store_category_icon_kerillian_waystalker"
	}
	StoreLayoutConfig.pages.maidenguard = {
		sound_event_enter = "Play_hud_store_category_button",
		layout = "category",
		display_name = "we_maidenguard",
		item_filter = "can_wield_we_maidenguard",
		sort_order = 2,
		category_button_texture = "store_category_icon_kerillian_handmaiden"
	}
	StoreLayoutConfig.pages.shade = {
		sound_event_enter = "Play_hud_store_category_button",
		layout = "category",
		display_name = "we_shade",
		item_filter = "can_wield_we_shade",
		sort_order = 3,
		category_button_texture = "store_category_icon_kerillian_shade"
	}
	StoreLayoutConfig.pages.victor = {
		sound_event_enter = "Play_hud_store_saltzpyre",
		layout = "category",
		display_name = "inventory_name_witch_hunter",
		item_filter = "can_wield_witch_hunter",
		sort_order = 4,
		category_button_texture = "store_category_icon_victor_captain"
	}
	StoreLayoutConfig.pages.captain = {
		sound_event_enter = "Play_hud_store_category_button",
		layout = "category",
		display_name = "wh_captain",
		item_filter = "can_wield_wh_captain",
		sort_order = 1,
		category_button_texture = "store_category_icon_victor_captain"
	}
	StoreLayoutConfig.pages.bountyhunter = {
		sound_event_enter = "Play_hud_store_category_button",
		layout = "category",
		display_name = "wh_bountyhunter",
		item_filter = "can_wield_wh_bountyhunter",
		sort_order = 2,
		category_button_texture = "store_category_icon_victor_bountyhunter"
	}
	StoreLayoutConfig.pages.zealot = {
		sound_event_enter = "Play_hud_store_category_button",
		layout = "category",
		display_name = "wh_zealot",
		item_filter = "can_wield_wh_zealot",
		sort_order = 3,
		category_button_texture = "store_category_icon_victor_zealot"
	}
	StoreLayoutConfig.pages.sienna = {
		sound_event_enter = "Play_hud_store_sienna",
		layout = "category",
		display_name = "inventory_name_bright_wizard",
		item_filter = "can_wield_bright_wizard",
		sort_order = 5,
		category_button_texture = "store_category_icon_sienna_scholar"
	}
	StoreLayoutConfig.pages.scholar = {
		sound_event_enter = "Play_hud_store_category_button",
		layout = "category",
		display_name = "bw_scholar",
		item_filter = "can_wield_bw_scholar",
		sort_order = 2,
		category_button_texture = "store_category_icon_sienna_scholar"
	}
	StoreLayoutConfig.pages.adept = {
		sound_event_enter = "Play_hud_store_category_button",
		layout = "category",
		display_name = "bw_adept",
		item_filter = "can_wield_bw_adept",
		sort_order = 1,
		category_button_texture = "store_category_icon_sienna_adept"
	}
	StoreLayoutConfig.pages.unchained = {
		sound_event_enter = "Play_hud_store_category_button",
		layout = "category",
		display_name = "bw_unchained",
		item_filter = "can_wield_bw_unchained",
		sort_order = 3,
		category_button_texture = "store_category_icon_sienna_unchained"
	}
end

local ORDER_RARITY = {
	common = 2,
	promo = 7,
	magic = 5,
	plentiful = 1,
	exotic = 4,
	rare = 3,
	unique = 6
}

local function cmp_rarity(a, b)
	local a_rarity = (a.data and a.data.rarity) or "plentiful"
	local b_rarity = (b.data and b.data.rarity) or "plentiful"

	return ORDER_RARITY[a_rarity] - ORDER_RARITY[b_rarity]
end

local function cmp_price(a, b)
	local a_price = (a.current_prices and a.current_prices.SM) or 0
	local b_price = (b.current_prices and b.current_prices.SM) or 0

	return b_price - a_price
end

local function cmp_prio(a, b)
	local a_prio = a.prio or (a.data and a.data.prio) or 0
	local b_prio = b.prio or (b.data and b.data.prio) or 0

	return a_prio - b_prio
end

local function item_get_type_order_key(item)
	local data = item.data
	local item_type = nil

	if data then
		item_type = data.item_type

		if item_type == "weapon_skin" then
			return data.matching_item_key or "weapon_skin"
		elseif item_type == "bundle" then
			return "2.bundle"
		elseif item_type == "skin" then
			return "1.skin"
		elseif item_type == "hat" then
			return "0.hat"
		end
	end

	return item_type or "~.unknown"
end

local function cmp_type(a, b)
	local a_type = item_get_type_order_key(a)
	local b_type = item_get_type_order_key(b)

	return (a_type < b_type and 1) or (b_type < a_type and -1) or 0
end

local function item_get_owned(item)
	local backend_items = Managers.backend:get_interface("items")
	local item_key = item.key

	return backend_items:has_item(item_key) or backend_items:has_weapon_illusion(item_key)
end

local function cmp_unowned(a, b)
	return ((item_get_owned(b) and 1) or 0) - ((item_get_owned(a) and 1) or 0)
end

local function cmp_item(a, b)
	local diff = cmp_unowned(a, b)

	if diff ~= 0 then
		return diff > 0
	end

	diff = cmp_type(a, b)

	if diff ~= 0 then
		return diff > 0
	end

	diff = cmp_prio(a, b)

	if diff ~= 0 then
		return diff > 0
	end

	diff = cmp_price(a, b)

	if diff ~= 0 then
		return diff > 0
	end

	return cmp_rarity(a, b) > 0
end

local function cmp_layout_item(a, b)
	return cmp_item(a.item, b.item)
end

StoreLayoutConfig.sort = {
	cmp_prio = cmp_prio,
	cmp_rarity = cmp_rarity,
	cmp_price = cmp_price,
	cmp_type = cmp_type,
	cmp_unowned = cmp_unowned,
	cmp_item = cmp_item,
	cmp_layout_item = cmp_layout_item
}

return
