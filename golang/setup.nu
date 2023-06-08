#!/usr/bin/env nu
cd $"($env.HOME)/dotfiles"

cat golang/README.md
stow --no-folding golang
rtx use --global golang@latest
