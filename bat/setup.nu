#!/usr/bin/env nu
cd $"($env.HOME)/dotfiles"

let title = "bat\n"
let description = "A cat(1) clone with syntax highlighting and Git integration.\n"
let url = "https://github.com/sharkdp/bat\n"
let color = 212
gum style --foreground $color --border-foreground $color --border double --align center --width 50 --margin "1 2" --padding "2 4" $title $description $url
  
cat bat/README.md
cargo binstall bat -y
stow bat
