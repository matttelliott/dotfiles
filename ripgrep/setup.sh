#!/usr/bin/env bash
cd "$HOME/dotfiles"

title="ripgrep \n"
description=" rust based Modern alternative to grep  \n"
url="https://github.com/BurntSushi/ripgrep \n"
color=14
gum style --foreground $color --border-foreground $color --border double --align center --width 50 --margin "1 2" --padding "2 4" $title $description $url

cargo install ripgrep
stow ripgrep
