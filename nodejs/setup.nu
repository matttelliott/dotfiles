#!/usr/bin/env nu
cd $"($env.HOME)/dotfiles"

let title = "NodeJS\n"
let description = "Node.js® is an open-source, cross-platform JavaScript runtime environment. \n"
let url = "https://nodejs.org/en \n"
let color = 3
rtx x golang@latest -- gum style --foreground $color --border-foreground $color --border double --align center --width 50 --margin "1 2" --padding "2 4" $title $description $url
  

cat nodejs/README.md
rtx use --global node@lts
stow nodejs

rtx x node@lts -- npm install -g neovim
rtx x node@lts -- npm install -g typescript-language-server
rtx x node@lts -- npm install -g vscode-langservers-extracted
rtx x node@lts -- npm install -g sql-formatter
rtx x node@lts -- npm install -g eslint_d
rtx x node@lts -- npm install -g prettier
