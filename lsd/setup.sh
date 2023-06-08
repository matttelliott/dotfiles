#!/usr/bin/env bash
cd "$HOME/dotfiles"

title="lsd \n"
description =" Modern alternative to ls  \n"
url="https://github.com/lsd-rs/lsd \n"
color=15
gum style --foreground $color --border-foreground $color --border double --align center --width 50 --margin "1 2" --padding "2 4" $title $description $url

cargo install lsd
stow --no-folding lsd
