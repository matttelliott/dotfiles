M = {}

M.plugins = {
	"tpope/vim-fugitive",
	"tpope/vim-rhubarb",
	{
		"lewis6991/gitsigns.nvim",
		requires = {
			"nvim-lua/plenary.nvim",
		},
		config = function()
			local _, module = pcall(require, "gitsigns")
			if not module then
				return
			end
			if not module.setup then
				return
			end

			module.setup({
				signs = {
					add = { hl = "GitSignsAdd", text = "│", numhl = "GitSignsAddNr", linehl = "GitSignsAddLn" },
					change = {
						hl = "GitSignsChange",
						text = "│",
						numhl = "GitSignsChangeNr",
						linehl = "GitSignsChangeLn",
					},
					delete = {
						hl = "GitSignsDelete",
						text = "_",
						numhl = "GitSignsDeleteNr",
						linehl = "GitSignsDeleteLn",
					},
					topdelete = {
						hl = "GitSignsDelete",
						text = "‾",
						numhl = "GitSignsDeleteNr",
						linehl = "GitSignsDeleteLn",
					},
					changedelete = {
						hl = "GitSignsChange",
						text = "~",
						numhl = "GitSignsChangeNr",
						linehl = "GitSignsChangeLn",
					},
				},
				signcolumn = true, -- Toggle with `:Gitsigns toggle_signs`
				numhl = false, -- Toggle with `:Gitsigns toggle_numhl`
				linehl = false, -- Toggle with `:Gitsigns toggle_linehl`
				word_diff = false, -- Toggle with `:Gitsigns toggle_word_diff`
				-- TODO: set these up
				-- keymaps = {
				-- 	-- Default keymap options
				-- 	noremap = true,
				--
				-- 	["n ]c"] = { expr = true, "&diff ? ']c' : '<cmd>Gitsigns next_hunk<CR>'" },
				-- 	["n [c"] = { expr = true, "&diff ? '[c' : '<cmd>Gitsigns prev_hunk<CR>'" },
				--
				-- 	["n <leader>hs"] = "<cmd>Gitsigns stage_hunk<CR>",
				-- 	["v <leader>hs"] = ":Gitsigns stage_hunk<CR>",
				-- 	["n <leader>hu"] = "<cmd>Gitsigns undo_stage_hunk<CR>",
				-- 	["n <leader>hr"] = "<cmd>Gitsigns reset_hunk<CR>",
				-- 	["v <leader>hr"] = ":Gitsigns reset_hunk<CR>",
				-- 	["n <leader>hR"] = "<cmd>Gitsigns reset_buffer<CR>",
				-- 	["n <leader>hp"] = "<cmd>Gitsigns preview_hunk<CR>",
				-- 	["n <leader>hb"] = '<cmd>lua require"gitsigns".blame_line{full=true}<CR>',
				-- 	["n <leader>hS"] = "<cmd>Gitsigns stage_buffer<CR>",
				-- 	["n <leader>hU"] = "<cmd>Gitsigns reset_buffer_index<CR>",
				--
				-- 	-- Text objects
				-- 	["o ih"] = ":<C-U>Gitsigns select_hunk<CR>",
				-- 	["x ih"] = ":<C-U>Gitsigns select_hunk<CR>",
				-- },
				watch_gitdir = {
					interval = 1000,
					follow_files = true,
				},
				attach_to_untracked = true,
				current_line_blame = false, -- Toggle with `:Gitsigns toggle_current_line_blame`
				current_line_blame_opts = {
					virt_text = true,
					virt_text_pos = "eol", -- 'eol' | 'overlay' | 'right_align'
					delay = 1000,
					ignore_whitespace = false,
				},
				current_line_blame_formatter_opts = {
					relative_time = false,
				},
				sign_priority = 6,
				update_debounce = 100,
				status_formatter = nil, -- Use default
				max_file_length = 40000,
				preview_config = {
					-- Options passed to nvim_open_win
					border = "single",
					style = "minimal",
					relative = "cursor",
					row = 0,
					col = 1,
				},
				yadm = {
					enable = false,
				},
			})
		end,
	},
}

vim.opt.updatetime = 100

local status_ok, terminal = pcall(require, "toggleterm.terminal")
if not status_ok then
	return M
end

local lazygit = terminal.Terminal:new({
	cmd = "lazygit",
	dir = "git_dir",
	direction = "float",
	close_on_exit = true,
	float_opts = {
		border = "double",
	},
	-- function to run on opening the terminal
	on_open = function(term)
		vim.cmd("startinsert!")
	end,
	-- function to run on closing the terminal
	on_close = function(term)
		return
	end,
})

function _lazygit_toggle()
	print("lazygit")
	lazygit:toggle()
end

M.set_keymap = function(keymap)
	keymap.leader["g"] = { ":<cmd>lua _lazygit_toggle()<CR><CR>", "lazygit" }
	keymap.localleader["g"] = {
		["name"] = "+Git",
		["h"] = {
			["name"] = "+Github",
			["<space>"] = { ":Octo actions<CR>", "Show all github actions (via Octo)" },
			["i"] = {
				["name"] = "+Issue",
				["l"] = { ":Octo issue list<CR>", "List issues" },
			},
			["p"] = {
				["name"] = "+Pull request",
				["l"] = { ":Octo pr list<CR>", "List pull requests" },
			},
		},
		["s"] = {
			["name"] = "+Search",
			["s"] = { ":Telescope git_status<CR>", "Status" },
			["S"] = { ":Telescope git_stash<CR>", "Stash" },
			["f"] = { ":Telescope git_files<CR>", "Files" },
			["c"] = { ":Telescope git_commits<CR>", "Commits" },
			["b"] = { ":Telescope git_branches<CR>", "Branches" },
		},
		["l"] = { ":Gclog<CR>", "Log" },
		["b"] = { ":Git blame<CR>", "Blame" },
		["B"] = { ":Gbrowse<CR>", "Browse" },
		["p"] = { ":Gpush<CR>", "Push" },
		["P"] = { ":Gpull<CR>", "Pull" },
		["r"] = { ":Gread<CR>", "Read" },
		["w"] = { ":Gwrite<CR>", "Write" },
		["c"] = {
			["name"] = "+Commit",
			["c"] = { ":Git commit", "Commit" },
			["a"] = { ":Git add . | Git commit<CR>", "commit All" },
		},
		["C"] = {
			["name"] = "+Checkout",
			["m"] = { ":Git checkout master<CR>", "Master" },
		},
		["d"] = {
			["name"] = "+Diff",
			["v"] = { ":Gvdiff<CR>", "Git Diff Vsplit" },
			["s"] = { ":Gdiff<CR>", "Git Diff Split" },
		},
	}
end

return M
