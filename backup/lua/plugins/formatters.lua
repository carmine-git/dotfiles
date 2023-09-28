return {
	"mhartington/formatter.nvim",
	config = function()
		local config = require("configs.formatters")
		config.keybinds()
		config.formatter()
	end,
}
