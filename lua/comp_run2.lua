return {
	setup = function(opts)
		require("comp_run2.config").setup(opts)
		require("comp_run2.commands").setup()
	end,
}
