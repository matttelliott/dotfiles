M = {}

M.plugins = {
	"nvim-telescope/telescope.nvim",
	"tpope/vim-abolish",
	"BurntSushi/ripgrep",
	{ "nvim-telescope/telescope-fzf-native.nvim", run = "make" },
	"junegunn/fzf.vim",
	"mileszs/ack.vim",
	{ "junegunn/fzf", run = "./install --all" },
}
vim.cmd([[
let g:fzf_action = {
\ 'ctrl-t': 'tab split',
\ 'ctrl-x': 'split',
\ 'ctrl-v': 'vsplit' }


if executable('ag')
let g:ackprg = 'ag --vimgrep --ignore-dir node_modules'
endif
]])

local _, actions = pcall(require, "telescope.actions")
local _, trouble = pcall(require, "trouble.providers.telescope")
local _, telescope = pcall(require, "telescope")
if not actions then
	return M
end
if not trouble then
	return M
end
if not telescope then
	return M
end
if not telescope.setup then
	return M
end

telescope.setup({
	defaults = {
		mappings = {
			i = { ["<c-q>"] = trouble.open_with_trouble },
			n = { ["<c-q>"] = trouble.open_with_trouble },
		},
	},
})

M.set_keymap = function(keymap)
	keymap.leader["*"] = {
		"<cmd>lua require('telescope.builtin').grep_string()<CR>",
		"search for string under cursor",
	}

	keymap.leader["?"] = { ":Telescope help_tags layout_strategy=bottom_pane<CR>", "search Helptags" }
	keymap.leader["h"] = { ":Telescope help_tags<CR>", "search Helptags" }

	keymap.localleader["s"] = {
		["name"] = "+Search",
		["/"] = { ":Telescope live_grep<CR>", "Search Text" },
		["t"] = { ":Telescope live_grep<CR>", "Search Text" },
		["f"] = { ":Telescope git_files<CR>", "Search files in Repo" },
		["F"] = { ":Telescope find_files<CR>", "Search files in folder" },
		["g"] = { ":Telescope git_status<CR>", "Search Git status" },
		["c"] = { ":Telescope git_commits<CR>", "Search Commits" },
		["h"] = { ":Telescope help_tags<CR>", "Search Help" },
	}
end

return M
