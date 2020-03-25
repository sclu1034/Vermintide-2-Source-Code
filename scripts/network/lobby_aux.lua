LobbyAux = LobbyAux or {}

local function concatenate_dlcs()
	local concatenate_dlcs_str = nil

	for name, _ in pairs(DLCSettings) do
		concatenate_dlcs_str = (concatenate_dlcs_str and concatenate_dlcs_str .. "__") or ""
		concatenate_dlcs_str = concatenate_dlcs_str .. name
	end

	return concatenate_dlcs_str
end

LobbyAux.create_network_hash = function (config_file_name, project_hash, disable_print)
	local network_hash = Network.config_hash(config_file_name)
	local settings = Application.settings()
	local trunk_revision = settings and settings.content_revision
	local ignore_engine_revision = Development.parameter("ignore_engine_revision_in_network_hash")
	local engine_revision = (ignore_engine_revision and 0) or Application.build_identifier()
	local combined_hash = nil
	local use_trunk_revision = GameSettingsDevelopment.network_revision_check_enabled or (trunk_revision ~= nil and trunk_revision ~= "")
	local concatenated_dlc_string = (GameSettingsDevelopment.network_concatenated_dlc_check_enabled and concatenate_dlcs()) or ""

	if use_trunk_revision then
		fassert(trunk_revision, "No trunk_revision even though it needs to exist!")

		combined_hash = Application.make_hash(network_hash, trunk_revision, engine_revision, project_hash, concatenated_dlc_string)

		if not disable_print then
			printf("[LobbyAux] Making combined_hash: %s from network_hash=%s, trunk_revision=%s, engine_revision=%s, project_hash=%s", tostring(combined_hash), tostring(network_hash), tostring(trunk_revision), tostring(engine_revision), tostring(project_hash))
		end
	else
		combined_hash = Application.make_hash(network_hash, engine_revision, project_hash, concatenated_dlc_string)

		if not disable_print then
			printf("[LobbyAux] Making combined_hash: %s from network_hash=%s, engine_revision=%s, project_hash=%s", tostring(combined_hash), tostring(network_hash), tostring(engine_revision), tostring(project_hash))
		end
	end

	return combined_hash
end

LobbyFinderState = LobbyFinderState or {}
LobbyFinderState.SEARCHING = "searching"
LobbyFinderState.IDLE = "idle"
LobbyState = LobbyState or {}

if PLATFORM == "xb1" then
	LobbyState.WORKING = "working"
	LobbyState.JOINED = "joined"
	LobbyState.FAILED = "failed"
	LobbyState.SHUTDOWN = "shutdown"
elseif PLATFORM == "ps4" then
	LobbyState.WAITING_TO_CREATE = "waiting_to_create"
	LobbyState.CREATING = "creating"
	LobbyState.JOINING = "joining"
	LobbyState.JOINED = "joined"
	LobbyState.FAILED = "failed"
else
	LobbyState.CREATING = "creating"
	LobbyState.JOINING = "joining"
	LobbyState.JOINED = "joined"
	LobbyState.FAILED = "failed"
end

LobbyPrivacy = LobbyPrivacy or {}
LobbyPrivacy.PRIVATE = "private"
LobbyPrivacy.FRIENDS = "friends"
LobbyPrivacy.PUBLIC = "public"
LobbyPrivacy.INVISIBLE = "invisible"
LobbyComparison = LobbyComparison or {}
LobbyComparison.EQUAL = "equal"
LobbyComparison.NOT_EQUAL = "not_equal"
LobbyComparison.LESS = "less"
LobbyComparison.LESS_OR_EQUAL = "less_or_equal"
LobbyComparison.GREATER = "greater"
LobbyComparison.GREATER_OR_EQUAL = "greater_or_equal"
LobbyDistanceFilter = LobbyDistanceFilter or {}
LobbyDistanceFilter.CLOSE = "close"
LobbyDistanceFilter.MEDIUM = "medium"
LobbyDistanceFilter.FAR = "far"
LobbyDistanceFilter.WORLD = "world"
LobbyGameModes = {
	"adventure",
	"custom",
	"n/a",
	"tutorial",
	"event",
	"deed",
	"weave",
	"twitch"
}
local lookup = {}

for idx, game_mode in pairs(LobbyGameModes) do
	lookup[idx] = game_mode
	lookup[game_mode] = idx
end

LobbyGameModes = lookup

LobbyDistanceFilter.get_next = function (current_filter, max_filter)
	if current_filter == LobbyDistanceFilter.CLOSE and max_filter ~= LobbyDistanceFilter.CLOSE then
		return LobbyDistanceFilter.MEDIUM
	elseif current_filter == LobbyDistanceFilter.MEDIUM and max_filter ~= LobbyDistanceFilter.MEDIUM then
		return LobbyDistanceFilter.FAR
	elseif current_filter == LobbyDistanceFilter.FAR and max_filter ~= LobbyDistanceFilter.FAR then
		return LobbyDistanceFilter.WORLD
	end
end

LobbyAux.get_unique_server_name = function ()
	local unique_name = Development.parameter("unique_server_name")

	if not unique_name or unique_name == "" then
		if rawget(_G, "Steam") then
			unique_name = Steam.user_name()
		elseif PLATFORM == "xb1" then
			unique_name = LobbyInternal.SESSION_NAME
		else
			unique_name = Network.peer_id()
		end
	end

	return unique_name
end

local function level_exists_locally(lobby)
	return not not rawget(LevelSettings, lobby.selected_level_key)
end

local function difficulty_exists_locally(lobby)
	local difficulty = lobby.difficulty

	if difficulty and not DifficultySettings[difficulty] then
		return false
	end

	return true
end

LobbyAux.verify_lobby_data = function (lobby)
	if not level_exists_locally(lobby) then
		return false
	end

	if not difficulty_exists_locally(lobby) then
		return false
	end

	return true
end

return
