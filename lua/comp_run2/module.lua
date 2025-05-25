---@class comp_run2Module
local M = {}
local config = require("comp_run2.config").config

---@return string
M.greet = function(name)
	name = name and #name > 0 and name or config.name

	M.show_notification("Hello " .. name)
	return "Hello " .. name
end

M.show_notification = function(message)
	vim.notify(message, vim.log.levels.INFO, {
		title = "comp_run2",
		timeout = 5000,
	})
end

return M
