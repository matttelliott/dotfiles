#!/usr/bin/env nu
cd $"($env.HOME)/dotfiles"
cat bat/README.md
cargo install bat
stow bat
