#!/usr/bin/env nu
cd $"($env.HOME)/dotfiles"

let title = "mprocs \n"
let description = " Run multiple commands in parallel  \n"
let url = "https://github.com/pvolok/mprocs \n"
let color = 5
rtx x golang@latest -- gum style --foreground $color --border-foreground $color --border double --align center --width 50 --margin "1 2" --padding "2 4" $title $description $url
  

cat mprocs/README.md
cargo install mprocs
stow --no-folding mprocs
