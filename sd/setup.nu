#!/usr/bin/env bash
cd "$HOME/dotfiles"

let title = "sd \n"
let description = " rust based Modern alternative to sed  \n"
let url = "https://github.com/chmln/sd \n"
let color = 14
rtx x golang@latest -- gum style --foreground $color --border-foreground $color --border double --align center --width 50 --margin "1 2" --padding "2 4" $title $description $url

stow sd
cargo install sd
