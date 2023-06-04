#!/usr/bin/env nu
cd $"($env.HOME)/dotfiles"
cat bat/README.md
cargo binstall bat
stow bat
