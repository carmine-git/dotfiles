return {
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		opts = function()
			local treesitter_config = require("nvim-treesitter.configs")

			treesitter_config.setup({
				ensure_installed = { "c", "python", "java", "vim", "vimdoc", "javascript", "typescript", "lua" },
				sync_install = true,
				additional_vim_regex_highlighting = false,

				highlight = {
					enable = true,

					disable = function(lang, buf)
						local max_filesize = 100 * 1024 -- 100 KB
						local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
						if ok and stats and stats.size > max_filesize then
							return true
						end
					end,
				},
			})
		end,
	},
}
