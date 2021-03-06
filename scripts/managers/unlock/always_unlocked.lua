AlwaysUnlocked = class(AlwaysUnlocked)

AlwaysUnlocked.init = function (self, name, app_id, backend_reward_id, cosmetic)
	self._name = name
	self._id = app_id or "0"
end

AlwaysUnlocked.ready = function (self)
	return true
end

AlwaysUnlocked.has_error = function (self)
	return false
end

AlwaysUnlocked.id = function (self)
	return self._id
end

AlwaysUnlocked.backend_reward_id = function (self)
	return
end

AlwaysUnlocked.remove_backend_reward_id = function (self)
	return
end

AlwaysUnlocked.unlocked = function (self)
	return true
end

AlwaysUnlocked.installed = function (self)
	return true
end

AlwaysUnlocked.is_cosmetic = function (self)
	return true
end

AlwaysUnlocked.requires_restart = function (self)
	return false
end

return
