return {
	'nvim-treesitter/nvim-treesitter',
	config = function()
		local config = require('nvim-treesitter.configs')
		require 'nvim-treesitter.install'.compilers = { 'clang' }
		config.setup({
			ensure_installed = {'lua', 'vim', 'vimdoc'},
			sync_install = true,
			auto_install = true,
			highlight = {
				enable = true,
			}
		})
	end
}
