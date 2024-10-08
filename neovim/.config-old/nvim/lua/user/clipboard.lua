M = {}
M.plugins = {{
  "AckslD/nvim-neoclip.lua",
  config = function()
    require('neoclip').setup({
      history = 1000,
      enable_persistant_history = false,
      db_path = vim.fn.stdpath("data") .. "/databases/neoclip.sqlite3",
      filter = nil,
      preview = true,
      default_register = '"',
      default_register_macros = 'q',
      enable_macro_history = true,
      content_spec_column = false,
      on_paste = {
        set_reg = false,
      },
      on_replay = {
        set_reg = false,
      },
      keys = {
        telescope = {
          i = {
            select = '<cr>',
            paste = '<c-p>',
            paste_behind = '<c-k>',
            replay = '<c-q>',
            custom = {},
          },
          n = {
            select = '<cr>',
            paste = 'p',
            paste_behind = 'P',
            replay = 'q',
            custom = {},
          },
        },
        fzf = {
          select = 'default',
          paste = 'ctrl-p',
          paste_behind = 'ctrl-k',
          custom = {},
        },
      },
    })
  end,
}}

M.set_keymap = function(keymap)
  keymap.leader['p'] = {':Telescope neoclip<CR>', 'Clipboard'}
end
return M
