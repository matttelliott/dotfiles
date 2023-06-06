#!/usr/bin/env nu
cd $"($env.HOME)/dotfiles"

let title = "Kitty \n"
let description = "## A GPU accelerated linux terminal \n"
let url = " https://sw.kovidgoyal.net/kitty/ \n"
let color = 3
rtx x golang@latest -- gum style --foreground $color --border-foreground $color --border double --align center --width 50 --margin "1 2" --padding "2 4" $title $description $url

curl -L https://sw.kovidgoyal.net/kitty/installer.sh | sh /dev/stdin launch=n
stow kitty

  
