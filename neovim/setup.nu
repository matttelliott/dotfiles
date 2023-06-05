#!/usr/bin/env nu
cd $"($env.HOME)/dotfiles"

let title = "NeoVim \n"
let description = "More modern Vim \n"
let url = "https://neovim.io/ \n"
let color = 5
rtx x golang@latest -- gum style --foreground $color --border-foreground $color --border double --align center --width 50 --margin "1 2" --padding "2 4" $title $description $url
  

cat neovim/README.md
cargo install bob-nvim
bob use stable

let title = "NVChad \n"
let description = "More modern NeoVim \n"
let url = "https://github.com/NvChad/NvChad \n"
let color = 6
rtx x golang@latest -- gum style --foreground $color --border-foreground $color --border double --align center --width 50 --margin "1 2" --padding "2 4" $title $description $url


git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1
