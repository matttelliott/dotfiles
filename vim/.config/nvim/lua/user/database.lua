M = {}

-- vim.g.db_ui_save_location = vim.cmd[[pwd]]
vim.cmd([[let db_ui_save_location=$PWD . '/_db_']])
-- TODO: setup dontenv.vim and use .env files for db connection urls
--https://github.com/kristijanhusak/vim-dadbod-ui#through-environment-variables

M.plugins = {
	"tpope/vim-dadbod",
	"kristijanhusak/vim-dadbod-ui",
	"kristijanhusak/vim-dadbod-completion",
}

M.set_keymap = function(keymap)
	keymap.leader["d"] = {
		":DBUIToggle<CR>",
		"toggle Database UI",
	}
end

-- vim.cmd[[
-- let g:db_ui_save_location = '~/Database/db_ui_queries'
-- ]]

return M
