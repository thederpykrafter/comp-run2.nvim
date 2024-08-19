local M = {}


function M.setup(opts)
	opts = opts or {}

	vim.keymap.set("n", opts.keymaps.runDefault or "<leader>RR", function()
		if true then print("Hello") end
	end, { desc = "Hello" })
end

return M
