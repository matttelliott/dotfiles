---@type MappingsTable
local M = {}

M.general = {
	n = {
		[";"] = { ":", "enter command mode", opts = { nowait = true } },
	},
}

M.telescope = {
	n = {
		["<leader>ff"] = { "<cmd> Telescope find_files hidden=true<CR>", "Find files" },
		["<leader>fw"] = { "<cmd> Telescope live_grep hidden=true<CR>", "Live grep" },
	},
}
-- more keybinds!

return M
