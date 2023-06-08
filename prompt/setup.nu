#!/usr/bin/env nu
cd $"($env.HOME)/dotfiles"

let title = "Prompt \n"
let description = "Built with Starship  \n"
let url = "https://github.com/pvolok/mprocs \n"
let color = 8
rtx x golang@latest -- gum style --foreground $color --border-foreground $color --border double --align center --width 50 --margin "1 2" --padding "2 4" $title $description $url
  

cat prompt/README.md
cargo install starship
stow --no-folding prompt
