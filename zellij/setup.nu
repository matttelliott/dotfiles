#!/usr/bin/env nu
cd $"($env.HOME)/dotfiles"
cat zellij/README.md
cargo install zellij
stow zellij
