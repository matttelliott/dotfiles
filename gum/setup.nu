#!/usr/bin/env nu
cd $"($env.HOME)/dotfiles"
cat gum/README.md

stow gum

rtx x golang@latest -- go install github.com/charmbracelet/gum@latest

