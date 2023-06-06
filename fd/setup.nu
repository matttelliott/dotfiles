#!/usr/bin/env bash
cd "$HOME/dotfiles"

let title = "fd \n"
let description = " rust based Modern alternative to find  \n"
let url = "https://github.com/sharkdp/fd \n"
let color = 14
rtx x golang@latest -- gum style --foreground $color --border-foreground $color --border double --align center --width 50 --margin "1 2" --padding "2 4" $title $description $url

stow fd
cargo install fd-find
