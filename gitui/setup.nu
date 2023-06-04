#!/usr/bin/env nu
cd $"($env.HOME)/dotfiles"
cat gitui/README.md
stow gitui
cargo binstall gitui -y
