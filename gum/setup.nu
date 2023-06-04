#!/usr/bin/env nu
cd $"($env.HOME)/dotfiles"
cat gum/README.md

stow gum

rtx x golang@latest -- go install github.com/charmbracelet/gum@latest

rtx x golang@latest -- gum style  --foreground 212 --border-foreground 212 --border double --align center --width 50 --margin "1 2" --padding "2 4" 'Bubble Gum (1¢)' 'So sweet and so fresh!'
