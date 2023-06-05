---@type MappingsTable
local M = {}

M.general = {
	n = {
		[";"] = { ":", "enter command mode", opts = { nowait = true } },
	},
}

M.telescope = {
	plugin = true,
	n = {
		["<leader>ff"] = { "<cmd> Telescope find_files hidden=true<CR>", "Find files" },
		["<leader>fw"] = { "<cmd> Telescope live_grep hidden=true<CR>", "Live grep" },
	},
}

M.nvimtree = {
	plugin = true,
	n = {
		["<leader>e"] = { "<cmd> NvimTreeToggle <CR>", "Focus nvimtree" },
	},
}
-- more keybinds!

return M
