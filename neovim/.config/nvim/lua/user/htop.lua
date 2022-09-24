M = {}
local status_ok, terminal = pcall(require, "toggleterm.terminal")
if not status_ok then
	return M
end
if not terminal.Terminal then
	return M
end

local htop = terminal.Terminal:new({
	cmd = "htop",
	dir = ".",
	direction = "float",
	close_on_exit = true,
	float_opts = {
		border = "double",
	},
	-- function to run on opening the terminal
	on_open = function(_)
		vim.cmd("startinsert!")
	end,
	-- function to run on closing the terminal
	on_close = function(_) end,
})

function _htop_toggle()
	htop:toggle()
end

M.set_keymap = function(keymap)
	keymap.leader["h"] = { ":<cmd>lua _htop_toggle()<CR><CR>", "htop" }
end

return M
