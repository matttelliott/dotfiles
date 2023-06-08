#!/usr/bin/env nu
cd $"($env.HOME)/dotfiles"

let title = "lazygit \n"
let description = "Terminal git client  \n"
let url = "https://github.com/jesseduffield/lazygit \n"
let color = 10
rtx x golang@latest -- gum style --foreground $color --border-foreground $color --border double --align center --width 50 --margin "1 2" --padding "2 4" $title $description $url

cat lazygit/README.md
stow --no-folding lazygit

rtx x golang@latest -- go install github.com/jesseduffield/lazygit@latest

