#!/usr/bin/env nu
cd $"($env.HOME)/dotfiles"

let title = "GitUi \n"
let description = "terminal git client written in Rust \n"
let url = "https://github.com/extrawurst/gitui \n"
let color = 4
rtx x golang@latest -- gum style --foreground $color --border-foreground $color --border double --align center --width 50 --margin "1 2" --padding "2 4" $title $description $url

cat gitui/README.md
stow --no-folding gitui
cargo install gitui
