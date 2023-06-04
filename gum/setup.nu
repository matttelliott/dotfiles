#!/usr/bin/env nu
cd $"($env.HOME)/dotfiles"
cat gum/README.md

stow gum

rtx hook-env
rtx use golang@latest
go install github.com/charmbracelet/gum@latest
