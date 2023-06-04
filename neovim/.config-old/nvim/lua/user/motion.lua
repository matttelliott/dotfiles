M = {}
M.plugins = {
'easymotion/vim-easymotion'
}
local _, lightspeed = pcall(require, 'lightspeed')
if not lightspeed then
  return M
end
vim.cmd[[
let g:EasyMotion_do_mapping = 0 " Disable default mappings

" Jump to anywhere you want with minimal keystrokes, with just one key binding.
" `s{char}{label}`
nmap ; <Plug>(easymotion-overwin-f)
vmap ; <Plug>(easymotion-f)
" or
" `s{char}{char}{label}`
" Need one more keystroke, but on average, it may be more comfortable.
" nmap ; <Plug>(easymotion-overwin-f2)

" Use uppercase target labels and type as a lower case
let g:EasyMotion_use_upper = 0

" Turn on case-insensitive feature
 " type `l` and match `l`&`L`
let g:EasyMotion_smartcase = 1

" Smartsign (type `3` and match `3`&`#`)
let g:EasyMotion_use_smartsign_us = 1

]]

return M

