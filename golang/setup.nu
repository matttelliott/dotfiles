#!/usr/bin/env nu
cd $"($env.HOME)/dotfiles"

cat golang/README.md
stow golang
rtx hook-env
rtx use golang@latest
