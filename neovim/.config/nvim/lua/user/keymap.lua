local explorer = require("user.explorer")
local undo = require("user.undo")
local quickfix = require("user.quickfix")
local search = require("user.search")
local git = require("user.git")
local database = require("user.database")
local terminal = require("user.terminal")

M = {}

M.plugins = {
	"folke/which-key.nvim",
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


-- navigate and delete buffers
set_keymap("n", "gn", ":bn<cr>", options)
set_keymap("n", "gp", ":bp<cr>", options)
set_keymap("n", "gd", ":bd<cr>", options)

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

-- set_keymap("n", "<leader>", ":<c-u>WhichKey '<Space>'<CR>", options)

local keymap = {}
keymap.leader = {
	-- reminder: register "%	Contains the name of the current file. see :help registers
	["%"] = { ":let @+=@%<CR>", "copy current Path to clipboard" },
	["."] = { ":tabnew ~/.config/nvim/init.lua<CR>", "Open neovim config" },
	["/"] = { ":Telescope live_grep<CR>", "grep" },
	["m"] = { ":Telescope man_pages<CR><c-w>T", "search Man pages" },
	["s"] = { "z=", "Spellcheck Suggestions" },
	["f"] = { ":lua vim.lsp.buf.format({async=true})<CR>", "Format current file" },
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
	local status_ok, wk = pcall(require, "which-key")
	if not status_ok then
		return M
	end
	wk.setup({
		{
			plugins = {
				marks = true, -- shows a list of your marks on ' and `
				registers = true, -- shows your registers on " in NORMAL or <C-r> in INSERT mode
				spelling = {
					enabled = false, -- enabling this will show WhichKey when pressing z= to select spelling suggestions
					suggestions = 20, -- how many suggestions should be shown in the list?
				},
				-- the presets plugin, adds help for a bunch of default keybindings in Neovim
				-- No actual key bindings are created
				presets = {
					operators = true, -- adds help for operators like d, y, ... and registers them for motion / text object completion
					motions = true, -- adds help for motions
					text_objects = true, -- help for text objects triggered after entering an operator
					windows = true, -- default bindings on <c-w>
					nav = true, -- misc bindings to work with windows
					z = true, -- bindings for folds, spelling and others prefixed with z
					g = true, -- bindings for prefixed with g
				},
			},
			-- add operators that will trigger motion and text object completion
			-- to enable all native operators, set the preset / operators plugin above
			operators = { gc = "Comments" },
			key_labels = {
				-- override the label used to display some keys. It doesn't effect WK in any other way.
				-- For example:
				-- ["<space>"] = "SPC",
				-- ["<cr>"] = "RET",
				-- ["<tab>"] = "TAB",
			},
			icons = {
				breadcrumb = "»", -- symbol used in the command line area that shows your active key combo
				separator = "➜", -- symbol used between a key and it's label
				group = "+", -- symbol prepended to a group
			},
			popup_mappings = {
				scroll_down = "<c-d>", -- binding to scroll down inside the popup
				scroll_up = "<c-u>", -- binding to scroll up inside the popup
			},
			window = {
				border = "none", -- none, single, double, shadow
				position = "bottom", -- bottom, top
				margin = { 1, 0, 1, 0 }, -- extra window margin [top, right, bottom, left]
				padding = { 2, 2, 2, 2 }, -- extra window padding [top, right, bottom, left]
				winblend = 0,
			},
			layout = {
				height = { min = 4, max = 25 }, -- min and max height of the columns
				width = { min = 20, max = 50 }, -- min and max width of the columns
				spacing = 3, -- spacing between columns
				align = "left", -- align columns left, center or right
			},
			ignore_missing = false, -- enable this to hide mappings for which you didn't specify a label
			hidden = { "<silent>", "<cmd>", "<Cmd>", "<CR>", "call", "lua", "^:", "^ " }, -- hide mapping boilerplate
			show_help = true, -- show help message on the command line when the popup is visible
			show_keys = true, -- show the currently pressed key and its label as a message in the command line
			triggers = "auto", -- automatically setup triggers
			-- triggers = {"<leader>"} -- or specify a list manually
			triggers_blacklist = {
				-- list of mode / prefixes that should never be hooked by WhichKey
				-- this is mostly relevant for key maps that start with a native binding
				-- most people should not need to change this
				i = { "j", "k" },
				v = { "j", "k" },
			},
			-- disable the WhichKey popup for certain buf types and file types.
			-- Disabled by deafult for Telescope
			disable = {
				buftypes = {},
				filetypes = { "TelescopePrompt" },
			},
		},
	})

	wk.register(keymap.leader, { prefix = "<leader>" })
	wk.register( keymap.localleader, { prefix = "<localleader>" })
end

return M
