#!/usr/bin/env nu
cd $"($env.HOME)/dotfiles"

let title = "zellij \n"
let description = "## a terminal workspace with batteries included \n"
let url = "https://zellij.dev \n"
let color = 4
rtx x golang@latest -- gum style --foreground $color --border-foreground $color --border double --align center --width 50 --margin "1 2" --padding "2 4" $title $description $url
  

cat zellij/README.md
cargo install zellij
stow zellij
