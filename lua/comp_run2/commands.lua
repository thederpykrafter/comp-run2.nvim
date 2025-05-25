local comp_run2_module = require("comp_run2.module")
local config = require("comp_run2.config").config

local M = {}

M.setup = function()
	-- Add all user commands here
	vim.api.nvim_create_user_command(
		"CompRun2Hello",
		function(opts) comp_run2_module.greet(opts.args) end,
		{ nargs = "?" }
	)

	if config.add_default_keybindings then
		local function add_keymap(keys, cmd, desc)
			vim.api.nvim_set_keymap(
				"n",
				keys,
				cmd,
				{ noremap = true, silent = true, desc = desc }
			)
		end

		-- Add all keybindings here
		add_keymap(
			"<leader>Th",
			":CompRun2Hello Neovim (btw!)<CR>",
			"comp-run2 says hi"
		)
	end
end

return M
