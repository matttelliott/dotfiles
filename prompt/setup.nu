#!/usr/bin/env nu
cd $"($env.HOME)/dotfiles"
bat prompt/README.md
cargo binstall starship
stow prompt
