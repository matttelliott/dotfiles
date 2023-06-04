#!/usr/bin/env nu
cd $"($env.HOME)/dotfiles"

let title = "Gum \n"
let description = "A tool for glamorous shell scripts \n"
let url = "https://github.com/charmbracelet/gum \n"
let foreground = 10
let background = 14
gum style --foreground $foreground --border-foreground $background --border double --align center --width 50 --margin "1 2" --padding "2 4" $title $description $url

stow gum

go install github.com/charmbracelet/gum@latest
