#!/usr/bin/env bash
cd "$HOME/dotfiles"
cat lsd/README.md
stow --no-folding lsd

let title = "lsd \n"
let description = " Modern alternative to ls  \n"
let url = "https://github.com/lsd-rs/lsd \n"
let color = 15
rtx x golang@latest -- gum style --foreground $color --border-foreground $color --border double --align center --width 50 --margin "1 2" --padding "2 4" $title $description $url

cargo install lsd
