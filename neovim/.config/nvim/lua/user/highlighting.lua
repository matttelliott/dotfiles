M = {}
M.plugins = {
	{
		"nvim-treesitter/nvim-treesitter",
		run = ":TSUpdate",
	},
	"p00f/nvim-ts-rainbow",
	{
		"lewis6991/spellsitter.nvim",
		config = function()
			require("spellsitter").setup({
				-- Whether enabled, can be a list of filetypes, e.g. {'python', 'lua'}
				enable = true,
			})
		end,
	},
}

local status_ok, configs = pcall(require, "nvim-treesitter.configs")
if not status_ok then
	return M
end
if not configs.setup then
	return M
end

configs.setup({
	ensure_installed = "all", -- one of "all", "maintained" (parsers with maintainers), or a list of languages
	sync_install = false, -- install languages synchronously (only applied to `ensure_installed`)
	ignore_install = { "phpdoc" }, -- List of parsers to ignore installing
	autopairs = {
		enable = true,
	},
	highlight = {
		enable = true, -- false will disable the whole extension
		disable = { "" }, -- list of language that will be disabled
		additional_vim_regex_highlighting = true,
	},
	indent = { enable = true, disable = { "yaml" } },
	context_commentstring = {
		enable = true,
		enable_autocmd = false,
		config = {
			sql = "-- %s",
		},
	},
	rainbow = {
		enable = true,
		-- disable = { "jsx", "cpp" }, list of languages you want to disable the plugin for
		extended_mode = true, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
		max_file_lines = nil, -- Do not enable for files with more than n lines, int
		-- colors = {}, -- table of hex strings
		-- termcolors = {} -- table of colour name strings
	},
})

vim.cmd([[
" Set the filetype based on the file's extension, but only if
" 'filetype' has not already been set
au BufRead,BufNewFile *.mdx setfiletype markdown
au BufRead,BufNewFile *.md setfiletype markdown
au BufRead,BufNewFile *.md :set ft=markdown
autocmd FileType vimwiki setfiletype markdown
autocmd FileType vimwiki :set filetype=markdown
]])
return M
