#!/usr/bin/env bash
cd "$HOME/dotfiles"

title="NodeJs"
url="https://nodejs.org/en"
color=5
gum style --foreground $color --border-foreground $color --border double --align center --width 50 --margin "1 2" --padding "2 4" $title $url

eval "$(rtx activate bash)"
eval "$(rtx hook-env)"
gum spin --spinner dot --title "Setting Up NodeJs" --title.foreground $color -- rtx use --global nodejs@lts
stow nodejs



gum spin --spinner dot --title "Installing Npm Packages" --title.foreground $color --  npm install -g neovim typescript-language-server vscode-langservers-extracted eslint_d prettier ts-node

