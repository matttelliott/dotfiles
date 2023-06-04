#!/usr/bin/env nu
cd $"($env.HOME)/dotfiles"

let title = "GO\n"
let description = "An open-source programming language supported by Google\n"
let url = "https://go.dev/\n"
let foreground = 5
let background = 15
gum style --foreground $foreground --border-foreground $background --border double --align center --width 50 --margin "1 2" --padding "2 4" $title $description $url

bat golang/README.md
stow golang
rtx hook-env
rtx use golang@latest
