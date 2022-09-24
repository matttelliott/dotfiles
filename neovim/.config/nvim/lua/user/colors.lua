M = {}

M.plugins = {
  'nanotech/jellybeans.vim',
  'folke/lsp-colors.nvim',
  'folke/tokyonight.nvim'
}

vim.cmd [[
try
  colorscheme tokyonight
catch /^Vim\%((\a\+)\)\=:E185/
  colorscheme default
set background=dark
endtry
]]

local _, colors = pcall(require, 'lsp-colors')
if not colors then
  return M
end
if not colors.setup then
  return M
end
colors.setup({
  Error = "#db4b4b",
  Warning = "#e0af68",
  Information = "#0db9d7",
  Hint = "#10B981"
})
return M




