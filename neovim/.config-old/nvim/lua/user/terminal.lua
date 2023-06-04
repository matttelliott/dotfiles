M = {}
M.plugins = {
	"akinsho/toggleterm.nvim",
}

local status_ok, toggleterm = pcall(require, "toggleterm")
if not status_ok then
	return M
end

toggleterm.setup({
	-- size can be a number or function which is passed the current terminal
	size = function(term)
		if term.direction == "horizontal" then
			return vim.o.lines * 0.3
		elseif term.direction == "vertical" then
			return vim.o.columns * 0.3
		end
	end,
	open_mapping = [[<c-\>]],
	hide_numbers = true, -- hide the number column in toggleterm buffers
	shade_filetypes = {},
	shade_terminals = true,
	shading_factor = "1", -- the degree by which to darken to terminal colour, default: 1 for dark backgrounds, 3 for light
	start_in_insert = true,
	insert_mappings = true, -- whether or not the open mapping applies in insert mode
	persist_size = false,
	direction = "vertical", -- vertical | horizontal | float | tab
	close_on_exit = true, -- close the terminal window when the process exits
	shell = vim.o.shell, -- change the default shell
	-- This field is only relevant if direction is set to 'float'
	float_opts = {
		-- The border key is *almost* the same as 'nvim_open_win'
		-- see :h nvim_open_win for details on borders however
		-- the 'curved' border is a custom border type
		-- not natively supported but implemented in this plugin.
		border = "double",
		-- width = math.floor(vim.o.columns * 0.75) < math.floor(vim.o.lines * 0.75) and math.floor(vim.o.columns * 0.75) or math.floor(vim.o.lines * 0.75 * 5),
		-- height = math.floor(vim.o.lines * 0.75),
		winblend = 3,
		highlights = {
			border = "Normal",
			background = "Normal",
		},
	},
})

-- if you only want these mappings for toggle term use term://*toggleterm#* instead

local _, terminal = pcall(require, "toggleterm.terminal")
if not terminal then
	return M
end

M.set_keymap = function(keymap)
	keymap.leader["!"] = { ':TermExec cmd="go run %" width=50<CR>', "run current file" }
  keymap.leader["<cr>"] = { ":ToggleTerm direction=float width=7<CR>", "toggle Terminal" }

end
function _G.set_terminal_keymaps()
	local opts = { noremap = true }
	vim.api.nvim_buf_set_keymap(0, "t", "jk", [[<C-\><C-n>]], opts)
	vim.api.nvim_buf_set_keymap(0, "t", "<C-h>", [[<C-\><C-n><C-W>h]], opts)
	vim.api.nvim_buf_set_keymap(0, "t", "<C-j>", [[<C-\><C-n><C-W>j]], opts)
	vim.api.nvim_buf_set_keymap(0, "t", "<C-k>", [[<C-\><C-n><C-W>k]], opts)
	vim.api.nvim_buf_set_keymap(0, "t", "<C-l>", [[<C-\><C-n><C-W>l]], opts)
end
vim.cmd("autocmd! TermOpen term://* lua set_terminal_keymaps()")

return M
