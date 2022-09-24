M = {}

M.plugins = {
  'simnalamburt/vim-mundo'
  }

M.set_keymap = function(keymap)
  keymap.leader['u'] = {':MundoToggle<CR>', 'toggle Undo tree'}
end


vim.opt.undofile=true
vim.cmd[[set undodir=$HOME/.temp/nvim-undodir]]
vim.g.mundo_playback_delay=500
return M
