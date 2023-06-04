#!/usr/bin/env nu
cd $"($env.HOME)/dotfiles"
cat gum/README.md

stow gum

go install github.com/charmbracelet/gum@latest
