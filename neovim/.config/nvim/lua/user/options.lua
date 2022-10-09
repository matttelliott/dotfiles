vim.opt.backup=false -- autocreation of backup files
vim.opt.writebackup=false -- autocreation of backup files
vim.opt.cmdheight=1 --give more space for messages
vim.opt.colorcolumn='0' -- 'colorcolumn' is a comma separated list of screen columns that are highlighted with ColorColumn
vim.opt.conceallevel=0 --don't hide characters in json/wiki
vim.opt.cursorline=true -- Highlight the screen line of the cursor with CursorLine
vim.opt.expandtab=true
vim.opt.foldenable=true --If this many milliseconds nothing is typed the swap file will be written to disk Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable " delays and poor user experience.
vim.opt.foldlevelstart=10 --open most folds by default
vim.opt.foldmethod='marker' --how to fold
vim.opt.foldnestmax=10 --max nested folds
vim.opt.hidden=true --dont warn when opening a buffer from a modified buffer
vim.opt.hlsearch=true --highlight search results
vim.opt.ignorecase=true --search defaults to case insensitive
vim.opt.incsearch=true --incremental search
vim.opt.laststatus=2 --always show statusline
vim.opt.lazyredraw=true --don't redraw the screen after every change in macros
vim.opt.linebreak=true --better line wrapping
vim.opt.list=false -- show hidden characters
vim.opt.number=false -- Print the line number in front of each line.
vim.opt.relativenumber=false -- Show the line number relative to the line with the cursor in front of each line.
vim.opt.ruler=true -- Show the ruler
vim.opt.scrolloff=5 --scroll when cursor is 5 lines from edge
vim.opt.shiftwidth=2
vim.opt.showcmd=true --Show (partial) command in the last line of the screen.
vim.opt.sidescroll=5 --scroll when cursor is 5 columns from edge
vim.opt.smartcase=true --search is case sensitive if input is mixed case
vim.opt.softtabstop=2
vim.opt.splitbelow=true --open horiontal splits below
vim.opt.splitright=true --open vertical splits to right
vim.opt.tabstop=2
vim.opt.updatetime=300 --If this many milliseconds nothing is typed the swap file will be written to disk Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable " delays and poor user experience.
vim.opt.wildmenu=true --show autocomple for commands
vim.opt.wrap=false --don't wrap automatically
vim.opt.mouse='a'--use mouse in all modes
vim.opt.swapfile=false--don't use swapfiles
vim.opt.shada='NONE'--don't use shada

vim.cmd([[
    set clipboard+=unnamedplus
]])
