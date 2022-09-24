M = {}

M.plugins = {
	{
		"NTBBloodbath/rest.nvim",
		requires = { "nvim-lua/plenary.nvim" },
		config = function()
      local _, module = pcall(require, "rest-nvim")
      if not module then
        return
      end
      if not module.setup then
        return
      end

			module.setup({
				-- Open request results in a horizontal split
				result_split_horizontal = false,
				-- Skip SSL verification, useful for unknown certificates
				skip_ssl_verification = false,
				-- Highlight request on run
				highlight = {
					enabled = true,
					timeout = 150,
				},
				result = {
					-- toggle showing URL, HTTP info, headers at top the of result window
					show_url = true,
					show_http_info = true,
					show_headers = true,
				},
				-- Jump to request line on run
				jump_to_request = false,
				env_file = ".env",
				custom_dynamic_variables = {},
				yank_dry_run = true,
			})
		end,
	},
}

vim.cmd[[
" Jump to anywhere you want with minimal keystrokes, with just one key binding.
" `s{char}{label}`
nmap <leader>r <Plug>(RestNvim)

]]

-- M.set_keymap = function(keymap)
	-- keymap.leader["r"] = {
	-- 	"<Plug>(RestNvim)",
	-- 	"run the request under the cursor",
	-- }
	-- , run the request under the cursor
-- end

return M
-- <Plug>RestNvim, run the request under the cursor
-- <Plug>RestNvimPreview, preview the request cURL command
-- <Plug>RestNvimLast, re-run the last request
