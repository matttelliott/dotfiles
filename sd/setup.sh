#!/usr/bin/env bash
cd "$HOME/dotfiles"

title="sd \n"
description=" rust based Modern alternative to sed  \n"
url="https://github.com/chmln/sd \n"
color=14
gum style --foreground $color --border-foreground $color --border double --align center --width 50 --margin "1 2" --padding "2 4" $title $description $url

cargo install sd
stow sd
