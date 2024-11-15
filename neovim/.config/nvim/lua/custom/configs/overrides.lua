local M = {}

M.treesitter = {
	ensure_installed = {
		"vim",
		"lua",
		"html",
		"css",
		"javascript",
		"typescript",
		"tsx",
		"rust",
		"python",
		"bash",
		"markdown",
		"markdown_inline",
		"htmldjango",
	},
	indent = {
		enable = true,
		-- disable = {
		--   "python"
		-- },
	},
}

M.mason = {
	ensure_installed = {
		-- lua stuff
		"lua-language-server",
		"stylua",

		-- web dev stuff
		"css-lsp",
		"html-lsp",
		"typescript-language-server",
		"angular-language-server",
		"deno",
		"prettier",
		"angular-language-server",
		"emmet-ls",

		-- docker
		"docker-compose-language-service",
		"dockerfile-language-server",

		-- shell stuff
		"bash-debug-adapter",
		"bash-language-server",

		-- json/yaml/toml
		"json-lsp",
		"taplo",
		"yaml-language-server",

		--rust
		"rust-analyzer",
		"rustfmt",
		"codelldb",

		--sql
		"sqlls",
		"sqlfmt",

		--python
		"mypy",
		"jedi-language-server",
	},
}

-- git support in nvimtree
M.nvimtree = {
	git = {
		enable = true,
	},

	renderer = {
		highlight_git = true,
		icons = {
			show = {
				git = true,
			},
		},
	},
}

M.telescope = {
	vimgrep_arguments = {
		"rg",
		"-L",
		"--color=never",
		"--no-heading",
		"--with-filename",
		"--line-number",
		"--column",
		"--smart-case",
		"--hidden",
	},
}

return M
