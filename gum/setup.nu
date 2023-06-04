#!/usr/bin/env nu
cd $"($env.HOME)/dotfiles"
cat gum/README.md

stow gum

rtx activate nu
rtx use golang@latest
nu $"($env.HOME)/.config/nushell/rtx.nu"
go install github.com/charmbracelet/gum@latest
