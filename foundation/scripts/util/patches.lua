require("foundation/scripts/util/misc_util")

local function auto_patch_missing_methods(library_name)
	local library = rawget(_G, library_name) or {}

	assert(getmetatable(library) == nil, "It's not safe auto-patching methods on a table that already has a metatable. Set them to NOP manually.")

	return rawset(_G, library_name, setmetatable(library, {
		__index = function (self, key)
			if not script_data.disable_auto_patch_missing_methods then
				Application.error("Missing method key autovivified with NOP: %s.%s\n%s", library_name, key, Script.callstack())

				self[key] = NOP

				return NOP
			end
		end
	}))
end

if not _G.FOUNDATION_patches_applied and (PLATFORM == "ps4" or PLATFORM == "xb1" or DEDICATED_SERVER) then
	_G.FOUNDATION_patches_applied = true

	if not Wwise then
		auto_patch_missing_methods("Wwise")
	end

	if not WwiseWorld then
		auto_patch_missing_methods("WwiseWorld")
	end

	if not TerrainDecoration then
		auto_patch_missing_methods("TerrainDecoration")
	end

	if not LandscapeDecoration then
		auto_patch_missing_methods("LandscapeDecoration")
	end

	auto_patch_missing_methods("Application")

	Application.apply_user_settings = NOP
	Application.enum_display_modes = TNEW
	Application.open_url_in_browser = NOP
	Application.process_id = CONST(4919)
	Application.restart_file_log = NOP
	Application.save_render_target = NOP
	Application.set_max_frame_stacking = NOP
	Application.user_settings_load_error = NOP

	auto_patch_missing_methods("Window")

	Window.KEYSTROKE_ALT_ENTER = 0
	Window.KEYSTROKE_ALT_F4 = 0
	Window.KEYSTROKE_ALT_TAB = 0
	Window.KEYSTROKE_WINDOWS = 0
	Window.clip_cursor = NOP
	Window.close = NOP
	Window.has_focus = NOP
	Window.is_closing = NOP
	Window.is_resizable = NOP
	Window.minimize = NOP
	Window.mouse_focus = NOP
	Window.open = NOP
	Window.set_clip_cursor = NOP
	Window.set_cursor = NOP
	Window.set_focus = NOP
	Window.set_ime_enabled = NOP
	Window.set_keystroke_enabled = NOP
	Window.set_mouse_focus = NOP
	Window.set_resizable = NOP
	Window.set_show_cursor = NOP
	Window.set_title = NOP
	Window.show_cursor = NOP

	auto_patch_missing_methods("DisplayAdapter")

	DisplayAdapter.num_adapters = CONST(0)
	DisplayAdapter.name = CONST("function patched out")
	DisplayAdapter.num_outputs = CONST(0)
	DisplayAdapter.num_modes = CONST(0)

	DisplayAdapter.mode = function ()
		return 1, 1
	end

	if not DEDICATED_SERVER then
		auto_patch_missing_methods("CommandWindow")

		CommandWindow.close = NOP
		CommandWindow.open = NOP
		CommandWindow.print = NOP
		CommandWindow.read_line = NOP
		CommandWindow.title = CONST("function patched out")
		CommandWindow.update = NOP
	end
end

if not EAC then
	auto_patch_missing_methods("EAC")

	EAC.is_initialized = CONST(true)

	EAC.initialization_error = function ()
		return false, "No error"
	end

	EAC.before_join = NOP
	EAC.after_leave = NOP

	EAC.state = function ()
		return "untrusted", "No Steam", "", "not_running"
	end

	EAC.set_host = NOP
	EAC.validate_host = NOP
end

if not EACServer then
	auto_patch_missing_methods("EACServer")

	EACServer.create = NOP
	EACServer.destroy = NOP
	EACServer.add_peer = NOP
	EACServer.remove_peer = NOP
	EACServer.update = NOP

	EACServer.state = function ()
		return "untrusted", "No Steam"
	end
end

ColorBox = QuaternionBox

return
