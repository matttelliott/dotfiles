#!/usr/bin/env nu
cd $"($env.HOME)/dotfiles"
cat nodejs/README.md
rtx use -g node@lts
stow nodejs

rtx x node@lts -- npm install -g neovim
rtx x node@lts -- npm install -g typescript-language-server
rtx x node@lts -- npm install -g vscode-langservers-extracted
rtx x node@lts -- npm install -g sql-formatter
rtx x node@lts -- npm install -g eslint_d
rtx x node@lts -- npm install -g prettier
