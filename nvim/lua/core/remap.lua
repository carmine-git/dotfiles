local opts = { silent = true, noremap = true }
vim.keymap.set('n', '<leader>pv', '<cmd>Ex<cr>', opts)
vim.keymap.set('n', '<leader>f', function()
	local format = require('conform').format
	return format()
end, opts)
