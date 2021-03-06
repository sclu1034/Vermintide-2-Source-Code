DeusSwapWeaponInteractionUI = class(DeusSwapWeaponInteractionUI)
local definitions = local_require("scripts/settings/dlcs/morris/deus_swap_weapon_interaction_ui_definitions")
local scenegraph_definition = definitions.scenegraph_definition
local widget_definitions = definitions.widgets
local animation_definitions = definitions.animation_definitions
DeusSwapWeaponInteractionUI.TYPE = "swap_melee"

DeusSwapWeaponInteractionUI.init = function (self, parent, ingame_ui_context)
	self._parent = parent
	self._ingame_ui_context = ingame_ui_context
	self._ui_renderer = ingame_ui_context.ui_renderer
	self._current_interactable_unit = nil
	self._render_settings = {
		alpha_multiplier = 0
	}
	self._animations = {}
	self._type = "melee"
	self._soft_currency_amount = nil

	self:_create_ui_elements()
	Managers.state.event:register(self, "chest_unlock_failed", "chest_unlock_failed")
end

DeusSwapWeaponInteractionUI.destroy = function (self)
	Managers.state.event:unregister("chest_unlock_failed", self)
end

DeusSwapWeaponInteractionUI.chest_unlock_failed = function (self, chest_type)
	if chest_type == DeusSwapWeaponInteractionUI.TYPE then
		self:_start_animation("chest_unlock_failed")
	end
end

DeusSwapWeaponInteractionUI._create_ui_elements = function (self)
	UIRenderer.clear_scenegraph_queue(self._ui_renderer)

	self._ui_scenegraph = UISceneGraph.init_scenegraph(scenegraph_definition)
	self._widgets_by_name = {}
	self._widgets = {}

	for name, widget_definition in pairs(widget_definitions) do
		local widget = UIWidget.init(widget_definition)
		self._widgets[#self._widgets + 1] = widget
		self._widgets_by_name[name] = widget
	end

	self._ui_animator = UIAnimator:new(self._ui_scenegraph, animation_definitions)
	self._current_interactable_unit = nil
end

DeusSwapWeaponInteractionUI._evaluate_interactable = function (self, player_unit)
	if Managers.mechanism:current_mechanism_name() ~= "deus" then
		return
	end

	local interactable_ext = ScriptUnit.extension(player_unit, "interactor_system")
	local interactable_unit = interactable_ext:interactable_unit()

	if self._current_interactable_unit ~= interactable_unit then
		self:_populate_widget(interactable_unit)
		self:_start_animation("on_enter")
	else
		self:_check_currency(interactable_unit)
	end
end

DeusSwapWeaponInteractionUI._check_currency = function (self, interactable_unit)
	local mechanism = Managers.mechanism:game_mechanism()
	local deus_run_controller = mechanism:get_deus_run_controller()

	if not deus_run_controller then
		return
	end

	local peer_id = deus_run_controller:get_own_peer_id()
	local soft_currency = deus_run_controller:get_player_soft_currency(peer_id)

	if soft_currency ~= self._soft_currency_amount then
		self:_populate_widget(interactable_unit)
	end
end

DeusSwapWeaponInteractionUI._start_animation = function (self, animation_name)
	self._render_settings = self._render_settings or {
		alpha_multiplier = 0
	}
	local params = {
		render_settings = self._render_settings
	}
	self._animations[animation_name] = self._ui_animator:start_animation(animation_name, self._widgets, self._ui_scenegraph, params, nil, 0)
end

DeusSwapWeaponInteractionUI._populate_widget = function (self, interactable_unit)
	local mechanism = Managers.mechanism:game_mechanism()
	local deus_run_controller = mechanism:get_deus_run_controller()

	if not deus_run_controller then
		return
	end

	local peer_id = deus_run_controller:get_own_peer_id()
	local soft_currency_amount = deus_run_controller:get_player_soft_currency(peer_id)
	local pickup_ext = ScriptUnit.extension(interactable_unit, "pickup_system")
	local cost = pickup_ext:get_purchase_cost()
	local stored_purchase = pickup_ext:get_stored_purchase()
	local melee, ranged = deus_run_controller:get_own_loadout()
	local equipped_item = (self._type == "melee" and melee) or ranged
	local tooltip_widget = self._widgets_by_name.weapon_tooltip
	tooltip_widget.content.item = equipped_item
	tooltip_widget.style.item.draw_end_passes = true
	local chest_info_widget = self._widgets_by_name.chest_content
	local rarity = stored_purchase.rarity
	local rarity_color = Colors.get_table(rarity)
	chest_info_widget.content.rarity_text = RaritySettings[rarity].display_name
	chest_info_widget.style.rarity.text_color = rarity_color
	chest_info_widget.content.cost_text = soft_currency_amount .. "/" .. cost
	chest_info_widget.style.cost_text.text_color = (cost <= soft_currency_amount and {
		255,
		255,
		255,
		255
	}) or {
		255,
		255,
		0,
		0
	}
	local power_level = stored_purchase.power_level
	chest_info_widget.content.reward_info_text = power_level .. " " .. Localize("deus_weapon_chest_" .. self._type .. "_weapon_description")
	self._current_interactable_unit = interactable_unit
	self._soft_currency_amount = soft_currency_amount
end

DeusSwapWeaponInteractionUI.update = function (self, player_unit, dt, t)
	self:_evaluate_interactable(player_unit)
	self:_update_animations(dt, t)
	self:_draw(dt, t)
end

DeusSwapWeaponInteractionUI._update_animations = function (self, dt, t)
	local ui_animator = self._ui_animator

	ui_animator:update(dt)

	local animations = self._animations

	for animation_name, animation_id in pairs(animations) do
		if ui_animator:is_animation_completed(animation_id) then
			animations[animation_name] = nil
		end
	end
end

DeusSwapWeaponInteractionUI._draw = function (self, dt, t)
	local ui_renderer = self._ui_renderer
	local ui_scenegraph = self._ui_scenegraph
	local input_service = Managers.input:get_service("Player")
	local render_settings = self._render_settings

	UIRenderer.begin_pass(ui_renderer, ui_scenegraph, input_service, dt, nil, render_settings)

	for i = 1, #self._widgets, 1 do
		UIRenderer.draw_widget(ui_renderer, self._widgets[i])
	end

	UIRenderer.end_pass(ui_renderer)
end

return
