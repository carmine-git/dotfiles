local M = {}

function M.remap(map, command)
	vim.keymap.set("n", map, command, { silent = true, noremap = true })
end

return M
