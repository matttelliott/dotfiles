#!/usr/bin/env nu
cd $"($env.HOME)/dotfiles"
cat zoxide/README.md
cargo binstall zoxide -y
stow zoxide

