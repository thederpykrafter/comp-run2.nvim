local comp_run2 = require("comp_run2")
local module = require("comp_run2.module")

describe("greet", function()
	it("returns message with config value", function()
		comp_run2.setup()
		assert(module.greet() == "Hello World!")
	end)

	it("returns message with user arg", function()
		comp_run2.setup()
		assert(module.greet("Neovim") == "Hello Neovim")
	end)
end)
