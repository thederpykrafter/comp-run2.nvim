-- Define config structure here, setup function will override defaults with user config
---@class comp_run2
local M = {}

---@class comp_run2Config
---@field name string Name to greet. Default: 'World!'
---@field add_default_keybindings boolean Whether to add default keybindings. Default: true
local config = {
	name = "World!",
	add_default_keybindings = true,
}

---@type comp_run2Config
M.config = config

---@param args comp_run2Config?
M.setup = function(args)
	M.config = vim.tbl_deep_extend("force", M.config, args or {})
end

return M
