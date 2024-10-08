---@type MappingsTable
local M = {}

M.general = {
	n = {
		["<localleader>w"] = { ":wa<CR>", "Write all files" },
		["<localleader>g"] = { ":tabnew<CR>:terminal lazygit<CR>i", "Git gui" },

		["<localleader>d"] = {
			function()
				require("dapui").toggle()
			end,
			"Debug UI",
		},
		["<localleader>f"] = {
			function()
				vim.lsp.buf.format({ async = true })
			end,
			"LSP formatting",
		},
	},
	i = {
		["jk"] = { "<esc>", "enter normal mode", opts = { nowait = true } },
		["JK"] = { "<esc>", "enter normal mode", opts = { nowait = true } },
		["jK"] = { "<esc>", "enter normal mode", opts = { nowait = true } },
		["Jk"] = { "<esc>", "enter normal mode", opts = { nowait = true } },
	},
}

M.telescope = {
	plugin = true,
	n = {
		["<localleader>o"] = { "<cmd> Telescope find_files hidden=true<CR>", "Open file" },
		["<localleader>/"] = { "<cmd> Telescope live_grep hidden=true<CR>", "Live grep" },
	},
}

M.nvimtree = {
	plugin = true,
	n = {
		["<localleader>e"] = { "<cmd> NvimTreeToggle <CR>", "toggle Explorer" },
		["<localleader>E"] = { "<cmd> NvimTreeFindFile <CR>", "find current file in Explorer" },
	},
}
-- more keybinds!

return M
