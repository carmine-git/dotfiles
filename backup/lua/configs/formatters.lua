local remap = require('utils').remap
local formatter = require('formatter')
local M = {}

function M.keybinds()
	remap('<C-f>', '<cmd>Format<CR>')
end

function M.formatter()
	formatter.setup({
		logging = true,
		log_level = vim.log.levels.WARN,
		filetype = {
			lua = { require('formatter.filetypes.lua').stylua },
			typescript = { require('formatter.filetypes.typescript').prettier }
		}
	})
end

return M
