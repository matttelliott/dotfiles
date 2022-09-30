local explorer = require("user.explorer")
local undo = require("user.undo")
local quickfix = require("user.quickfix")
local search = require("user.search")
local git = require("user.git")
local database = require("user.database")
local terminal = require("user.terminal")

M = {}

M.plugins = {
	"liuchengxu/vim-which-key",
	"AckslD/nvim-whichkey-setup.lua",
}

local options = { noremap = true, silent = false }
local set_keymap = vim.api.nvim_set_keymap

set_keymap("", "<Space>", "<Nop>", {})
set_keymap("", "\\", "<Nop>", {})
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

--exit insert mode with jk
set_keymap("i", "jk", "<esc>", options)
set_keymap("i", "JK", "<esc>", options)
set_keymap("i", "Jk", "<esc>", options)
set_keymap("i", "jK", "<esc>", options)

-- move vertically by visual line
set_keymap("n", "j", "gj", options)
set_keymap("n", "k", "gk", options)
--
-- navigate tabs with H/L
set_keymap("n", "H", "gT", options)
set_keymap("n", "L", "gt", options)

-- navigate splits with Ctrl-hjkl
set_keymap("n", "<C-h>", ":wincmd h<CR>", options)
set_keymap("n", "<C-j>", ":wincmd j<CR>", options)
set_keymap("n", "<C-k>", ":wincmd k<CR>", options)
set_keymap("n", "<C-l>", ":wincmd l<CR>", options)

set_keymap("n", "<leader>", ":<c-u>WhichKey '<Space>'<CR>", options)

local keymap = {}
keymap.leader = {
	["%"] = { ":let @+=@%<CR>", "copy current Path to clipboard" },
	-- reminder: register "%	Contains the name of the current file. see :help registers
	["."] = { ":tabnew ~/.config/nvim/init.lua<CR>", "Open neovim config" },
	["m"] = { ":Telescope man_pages<CR><c-w>T", "search Man pages" },
	["s"] = { "z=", "Spellcheck Suggestions" },
	["f"] = { ":lua vim.lsp.buf.formatting()<CR>", "Format current file" },
	["j"] = { ":cn<CR>", "quickfix next" },
	["k"] = { ":cp<CR>", "quickfix previous" },
  ["o"] = { ":Telescope find_files hidden=true<CR>", "Open file" },
	["w"] = { ":wa<CR>", "Write all buffers" },
}

keymap.localleader = {
	["w"] = {
		["name"] = "+Write",
		["a"] = { ":wa<CR>", "Write All" },
		["b"] = { ":w<CR>", "Write Buffer" },
		["q"] = { ":wqa<CR>", "Write Quit All" },
		["w"] = { ":wa<CR>", "Write All" },
	},
	["?"] = {
		["name"] = "+Docs",
		["m"] = { ":Telescope find_files cwd=~/.docs/mdn<CR>", "MDN" },
		["M"] = { ":Telescope live_grep cwd=~/.docs/mdn<CR>", "MDN (grep)" },
		["t"] = { ":Telescope find_files cwd=~/.docs/typescript<CR>", "Typescript" },
		["T"] = { ":Telescope live_grep cwd=~/.docs/typescript<CR>", "Typescript (grep)" },
	},
	["."] = {
		["name"] = "+Dotfiles",
		["."] = { ":tabnew ~/.config/nvim/init.vim<CR>", "open init.vim" },
		["z"] = { ":tabnew ~/.config<CR>", "open ~/.config/" },
	},
}

vim.opt.timeoutlen = 300

M.setup_keymap = function(modules)
	for _, module in pairs(modules) do
		if module.set_keymap then
			module.set_keymap(keymap)
		end
	end

	-- Use a protected call so we don't error out on first use
	local status_ok, wk = pcall(require, "whichkey_setup")
	if not status_ok then
		return M
	end
	wk.config({
		hide_statusline = false,
		default_keymap_settings = {
			silent = true,
			noremap = true,
		},
		default_mode = "n",
	})

	wk.register_keymap("leader", keymap.leader)
	wk.register_keymap("localleader", keymap.localleader)

end

return M
