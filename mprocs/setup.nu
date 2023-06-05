#!/usr/bin/env nu
cd $"($env.HOME)/dotfiles"
cat mprocs/README.md
cargo install mprocs
stow mprocs
