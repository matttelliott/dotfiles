#!/usr/bin/env nu
cd $"($env.HOME)/dotfiles"
bat prompt/README.md
cargo install starship
stow prompt