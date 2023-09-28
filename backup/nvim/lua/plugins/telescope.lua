return {
	'nvim-telescope/telescope.nvim',
	tag = '0.1.1',
	dependencies = { 'nvim-lua/plenary.nvim' },
	config = function()
		local builtin = require('telescope.builtin')
		local remap = require("utils").remap

		remap('<leader>ff', builtin.find_files)
		remap('<leader>fg', builtin.live_grep)
	end
}
