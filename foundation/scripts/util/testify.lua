local SIGNALS = {
	reply = "reply",
	ready = "ready"
}
Testify = {
	_requests = {},
	_responses = {},
	init = function (self)
		self._requests = {}
		self._responses = {}
	end,
	ready = function (self)
		printf("[Testify] Ready!")
		self:_signal(SIGNALS.ready)
	end,
	reply = function (self, message)
		self:_signal(SIGNALS.reply, message)
	end,
	run_case = function (self, func)
		self:init()

		self._thread = coroutine.create(func)
	end,
	update = function (self, dt, t)
		if self._thread then
			local success, result = coroutine.resume(self._thread, dt, t)

			if not success then
				error(debug.traceback(self._thread, result))
			elseif coroutine.status(self._thread) == "dead" then
				self._thread = nil

				self:_signal(SIGNALS.reply, result)
			end
		end
	end,
	make_request = function (self, request_name, request_parameter)
		self:_print("Requesting %s %s Waiting for response.", request_name, request_parameter)

		self._requests[request_name] = (request_parameter == nil and "") or request_parameter
		self._responses[request_name] = nil

		return self:_wait_for_response(request_name)
	end,
	_wait_for_response = function (self, request_name)
		while true do
			coroutine.yield()

			local response = self._responses[request_name]

			if response ~= nil then
				return response
			end
		end
	end,
	poll_request = function (self, request_name)
		return self._requests[request_name]
	end,
	handle_request = function (self, request_name)
		self:_print("Handling request %s", request_name)

		self._requests[request_name] = nil
	end,
	respond_to_request = function (self, request_name, response_value)
		self:_print("Responding to %s %s", request_name, response_value)

		self._requests[request_name] = nil
		self._responses[request_name] = (response_value == nil and "") or response_value
	end,
	clear_all_requests = function (self)
		self:_print("Clearing all requests")

		for key, _ in pairs(self._requests) do
			self._responses[key] = ""
			self._requests[key] = nil
		end
	end,
	inspect = function (self)
		printf("[Testify] Test case running? %s", self._thread ~= nil)
		table.dump(self._requests, "[Testify] Requests", 2)
		table.dump(self._responses, "[Testify] Responses", 2)
	end,
	_signal = function (self, signal, message)
		if Application.console_send == nil then
			return
		end

		Application.console_send({
			system = "Testify",
			type = "signal",
			signal = signal,
			message = tostring(message)
		})
	end,
	_print = function (self, ...)
		if Development.parameter("debug_testify") then
			printf("[Testify] %s", string.format(...))
		end
	end
}

return
