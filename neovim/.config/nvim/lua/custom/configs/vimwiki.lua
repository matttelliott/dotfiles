
vim.cmd([[
let wiki_path = "~/_wiki_/"

" let docsdir = finddir('.git/../docs', expand('%:p:h').';')
" if len(docsdir)
"   let wiki_path = docsdir
" else
"   let dir = finddir('.git/..', expand('%:p:h').';')
"   if len(dir)
"     let wiki_path = dir."/_wiki_/"
"   endif
" endif

let g:vimwiki_list = [{'path':wiki_path, 'syntax': 'markdown', 'ext': '.md'}]

"" allow multiple wikis via g:vimwiki_list
"" see :h vimwiki

" let home_wiki_path = "~/_wiki_/"
" let local_docs_path = finddir('.git/../docs', expand('%:p:h').';')
" let local_wiki_path = finddir('.git/../docs', expand('%:p:h').';')
" let g:vimwiki_list = [{'path':wiki_path, 'syntax': 'markdown', 'ext': '.md'},
" \{'path':home_wiki_path, 'syntax': 'markdown', 'ext': '.md'},
" \{'path':local_docs_path, 'syntax': 'markdown', 'ext': '.md'},
" \{'path':local_wiki_path, 'syntax': 'markdown', 'ext': '.md'}]

let g:vimwiki_conceallevel=0
]])

--[[ local set_keymap = function(keymap)
	keymap.leader["i"] = { ":VimwikiTabIndex<CR>", "open Wiki", noremap = false }
	keymap.leader["I"] = { ":VimwikiTabMakeDiaryNote<CR>", "make Wiki diary", noremap = false }
end ]]

