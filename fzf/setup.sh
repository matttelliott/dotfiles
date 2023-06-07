#!/usr/bin/env bash
cd "$HOME/dotfiles"

title="fzf \n"
description="Terminal fuzzy finder  \n"
url="https://github.com/junegunn/fzf \n"
color=12
gum style --foreground $color --border-foreground $color --border double --align center --width 50 --margin "1 2" --padding "2 4" $title $description $url

git clone --depth 1 https://github.com/junegunn/fzf ~/.fzf
~/.fzf/install --no-key-bindings --completion --no-update-rc

stow fzf