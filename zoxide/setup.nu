#!/usr/bin/env nu
cd $"($env.HOME)/dotfiles"

let title = "Zoxide \n"
let description = "## zoxide is a smarter cd command, inspired by z and autojump. \n"
let url = "https://github.com/ajeetdsouza/zoxide \n"
let color = 3
rtx x golang@latest -- gum style --foreground $color --border-foreground $color --border double --align center --width 50 --margin "1 2" --padding "2 4" $title $description $url

cat zoxide/README.md
cargo install zoxide
stow --no-folding zoxide

  