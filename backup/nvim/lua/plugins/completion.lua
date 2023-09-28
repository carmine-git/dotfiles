return {
	{
		"hrsh7th/cmp-nvim-lsp",
		dependencies = {
			"hrsh7th/cmp-buffer",
			"hrsh7th/cmp-path",
			"hrsh7th/cmp-cmdline",
			"hrsh7th/nvim-cmp",
		},
		config = function()
			require('configs.snippets').cmp_config()
		end,
	},
	{
		"L3MON4D3/LuaSnip",
		version = "2.*",
		build = "make install_jsregexp",
		dependencies = {
			"saadparwaiz1/cmp_luasnip",
		},
		config = function()
			require('configs.snippets').vscsnippets()
		end
	},
}
