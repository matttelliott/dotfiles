M = {}

M.plugins = {
	"scrooloose/nerdtree",
	"Xuyuanp/nerdtree-git-plugin",
}

M.set_keymap = function(keymap)
	keymap.leader["e"] = { ":NERDTreeToggle<CR>", "toggle Explorer" }
	keymap.leader["E"] = { ":NERDTreeFind<CR>", "Explore current File" }

	keymap.localleader["e"] = {
		["name"] = "+Explore",
		["c"] = { ":NERDTreeCWD<CR>", "Explore CWD" },
		["e"] = { ":NERDTreeToggle<CR>", "Toggle Explorer" },
		["f"] = { ":NERDTreeFind<CR>", "Explore current File" },
		["r"] = { ":NERDTreeToggleVCS<CR>", "Explore Repo" },
	}
	return keymap
end

vim.g.NERDTreeShowHidden = 1
-- When using a context menu to delete or rename a file you may also want to
-- delete the buffer which is no more valid. If the setting is not set you will
-- see a confirmation if you really want to delete an old buffer. If you always
-- press 'y' then it's worth it to set this setting to 1. Use one of the
-- following lines for this setting: >
vim.g.NERDTreeAutoDeleteBuffer = 1
vim.g.NERDTreeWinSize = 35

return M
