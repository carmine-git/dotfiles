return {
	"neovim/nvim-lspconfig",
	name = "lspconfig",
	config = function()
		require('configs.lsp').lsp_config()
	end,
}
