#!/usr/bin/env bash
cd "$HOME/dotfiles"

title="fd \n"
description=" rust based Modern alternative to find  \n"
url="https://github.com/sharkdp/fd \n"
color=14
gum style --foreground $color --border-foreground $color --border double --align center --width 50 --margin "1 2" --padding "2 4" $title $description $url

cargo install fd-find
stow fd
